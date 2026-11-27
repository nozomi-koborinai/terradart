import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:pub_semver/pub_semver.dart';
import 'package:terradart_appwrite/provider.dart'
    show kAppwriteProviderSource, kAppwriteProviderVersionConstraint;
import 'package:terradart_aws/provider.dart'
    show kAwsProviderSource, kAwsProviderVersionConstraint;
import 'package:terradart_azure/provider.dart'
    show kAzureProviderSource, kAzureProviderVersionConstraint;
import 'package:terradart_cloudflare/provider.dart'
    show kCloudflareProviderSource, kCloudflareProviderVersionConstraint;
import 'package:terradart_google/provider.dart'
    show kGoogleProviderSource, kGoogleProviderVersionConstraint;
import 'package:terradart_google_beta/provider.dart'
    show kBetaProviderSource, kBetaProviderVersionConstraint;
import 'package:terradart_time/terradart_time.dart'
    show kTimeProviderSource, kTimeProviderVersionConstraint;

import 'validate_engine.dart' show kNotOnOpenTofuRegistry;

enum PluginRegistry {
  opentofu('registry.opentofu.org'),
  terraform('registry.terraform.io');

  const PluginRegistry(this.host);

  final String host;

  static PluginRegistry byName(String name) => switch (name) {
    'opentofu' => PluginRegistry.opentofu,
    'terraform' => PluginRegistry.terraform,
    _ => throw const FormatException('registry must be opentofu or terraform'),
  };
}

final class ProviderPin {
  const ProviderPin(this.source, this.constraint);

  final String source;
  final String constraint;
}

final class ResolvedPlugin {
  const ResolvedPlugin({
    required this.host,
    required this.source,
    required this.version,
  });

  final String host;
  final String source;
  final String version;
}

final providerPins = <ProviderPin>[
  const ProviderPin(kGoogleProviderSource, kGoogleProviderVersionConstraint),
  const ProviderPin(kBetaProviderSource, kBetaProviderVersionConstraint),
  const ProviderPin(kAwsProviderSource, kAwsProviderVersionConstraint),
  const ProviderPin(kAzureProviderSource, kAzureProviderVersionConstraint),
  const ProviderPin(
    kCloudflareProviderSource,
    kCloudflareProviderVersionConstraint,
  ),
  const ProviderPin(
    kAppwriteProviderSource,
    kAppwriteProviderVersionConstraint,
  ),
  const ProviderPin(kTimeProviderSource, kTimeProviderVersionConstraint),
];

Set<PluginRegistry> registriesFor(String source) =>
    kNotOnOpenTofuRegistry.contains(source)
    ? const {PluginRegistry.terraform}
    : const {PluginRegistry.opentofu, PluginRegistry.terraform};

List<ProviderPin> pinsFor(PluginRegistry registry) {
  final seen = <String>{};
  final pins = <ProviderPin>[];
  for (final pin in providerPins) {
    if (!seen.add(pin.source)) {
      throw StateError('duplicate provider pin ${pin.source}');
    }
    if (registriesFor(pin.source).contains(registry)) pins.add(pin);
  }
  return pins;
}

// pub_semver does not parse Terraform's pessimistic ~> constraint.
VersionConstraint terraformConstraint(String constraint) {
  final trimmed = constraint.trim();
  if (!trimmed.startsWith('~>')) return VersionConstraint.parse(trimmed);
  final raw = trimmed.substring(2).trim();
  final lower = _padVersion(raw);
  final core = raw.split('+').first.split('-').first;
  final specified = core.split('.').where((part) => part.isNotEmpty).length;
  if (specified < 1 || specified > 3) {
    throw FormatException('unsupported constraint "$constraint"');
  }
  final bumpAt = specified == 1 ? 0 : specified - 2;
  final parts = [lower.major, lower.minor, lower.patch];
  parts[bumpAt] += 1;
  for (var i = bumpAt + 1; i < parts.length; i++) {
    parts[i] = 0;
  }
  return VersionRange(
    min: lower,
    includeMin: true,
    max: Version(parts[0], parts[1], parts[2]),
    includeMax: false,
  );
}

Version _padVersion(String raw) {
  final plus = raw.split('+');
  final build = plus.length > 1 ? plus.sublist(1).join('+') : null;
  final core = plus.first;
  final dash = core.split('-');
  final nums = dash.first.split('.');
  if (nums.isEmpty || nums.any((part) => int.tryParse(part) == null)) {
    throw FormatException('unsupported version "$raw"');
  }
  while (nums.length < 3) {
    nums.add('0');
  }
  final pre = dash.length > 1 ? dash.sublist(1).join('-') : null;
  return Version.parse(
    [
      nums.take(3).join('.'),
      if (pre != null) '-$pre',
      if (build != null) '+$build',
    ].join(),
  );
}

String? selectVersion(String constraint, Iterable<String> versions) {
  final parsed = terraformConstraint(constraint);
  final stableOnly = !constraint.contains('-');
  Version? best;
  for (final raw in versions) {
    final version = Version.parse(raw);
    if (stableOnly && version.isPreRelease) continue;
    if (!parsed.allows(version)) continue;
    if (best == null || version > best) best = version;
  }
  return best?.toString();
}

// Registry /versions responses may omit platforms; keep entries without it.
List<String> linuxAmd64Versions(Map<String, dynamic> body) {
  final versions = body['versions'];
  if (versions is! List) {
    throw const FormatException('registry response has no versions list');
  }
  final out = <String>[];
  for (final entry in versions) {
    if (entry is! Map) continue;
    final version = entry['version'];
    if (version is! String) continue;
    final platforms = entry['platforms'];
    if (platforms is List && platforms.isNotEmpty) {
      final ok = platforms.any(
        (platform) =>
            platform is Map &&
            platform['os'] == 'linux' &&
            platform['arch'] == 'amd64',
      );
      if (!ok) continue;
    }
    out.add(version);
  }
  return out;
}

Future<List<String>> fetchLinuxAmd64Versions(
  String host,
  String source, {
  http.Client? client,
}) async {
  final uri = Uri.https(host, '/v1/providers/$source/versions');
  final ownClient = client == null;
  final httpClient = client ?? http.Client();
  try {
    final response = await httpClient
        .get(uri, headers: const {'user-agent': 'terradart-plugin-cache-key'})
        .timeout(const Duration(seconds: 60));
    if (response.statusCode != 200) {
      throw StateError('GET $uri -> ${response.statusCode}');
    }
    final body = jsonDecode(response.body);
    if (body is! Map<String, dynamic>) {
      throw FormatException('GET $uri returned ${body.runtimeType}');
    }
    return linuxAmd64Versions(body);
  } finally {
    if (ownClient) httpClient.close();
  }
}

typedef VersionSource =
    Future<List<String>> Function(String host, String source);

Future<List<ResolvedPlugin>> resolvePins({
  required PluginRegistry registry,
  required List<ProviderPin> pins,
  required VersionSource versions,
}) async {
  final resolved = <ResolvedPlugin>[];
  for (final pin in pins) {
    final available = await versions(registry.host, pin.source);
    final version = selectVersion(pin.constraint, available);
    if (version == null) {
      throw StateError(
        'no ${registry.host} release of ${pin.source} matches ${pin.constraint}',
      );
    }
    resolved.add(
      ResolvedPlugin(host: registry.host, source: pin.source, version: version),
    );
  }
  return resolved;
}

String cacheKeyMaterial(List<ResolvedPlugin> resolved) {
  final lines = [
    for (final plugin in resolved)
      '${plugin.host} ${plugin.source} ${plugin.version}',
  ]..sort();
  return '${lines.join('\n')}\n';
}

String cacheKeyHash(String material) =>
    sha256.convert(utf8.encode(material)).toString();

String _localName(String source) {
  final slash = source.indexOf('/');
  if (slash <= 0 || slash == source.length - 1) {
    throw FormatException('provider source "$source"');
  }
  return source.substring(slash + 1);
}

String requiredProvidersJson(List<ResolvedPlugin> resolved) {
  final providers = <String, Object>{};
  for (final plugin in resolved) {
    providers[_localName(plugin.source)] = {
      'source': plugin.source,
      'version': plugin.version,
    };
  }
  return '${const JsonEncoder.withIndent('  ').convert({
    'terraform': {'required_providers': providers},
  })}\n';
}

Future<String> _hashFor(PluginRegistry registry, {String? tfPath}) async {
  final resolved = await resolvePins(
    registry: registry,
    pins: pinsFor(registry),
    versions: fetchLinuxAmd64Versions,
  );
  final material = cacheKeyMaterial(resolved);
  stderr.write(material);
  if (tfPath != null) {
    final file = File(tfPath);
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(requiredProvidersJson(resolved));
  }
  return cacheKeyHash(material);
}

Future<void> main(List<String> args) async {
  String? registryName;
  String? tfPath;
  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--registry':
        registryName = args[++i];
      case '--tf':
        tfPath = args[++i];
      default:
        stderr.writeln(
          'usage: plugin_cache_key.dart --registry opentofu|terraform [--tf main.tf.json]',
        );
        exit(64);
    }
  }
  if (registryName == null) {
    stderr.writeln('missing --registry opentofu|terraform');
    exit(64);
  }
  try {
    stdout.write(
      await _hashFor(PluginRegistry.byName(registryName), tfPath: tfPath),
    );
  } on FormatException catch (error) {
    stderr.writeln(error.message);
    exit(64);
  }
}
