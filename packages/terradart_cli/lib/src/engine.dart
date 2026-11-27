import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'output/exit_codes.dart';
import 'host.dart';
import 'opentofu.dart';
import 'process_runner.dart';

enum EngineKind {
  tofu('OpenTofu'),
  terraform('Terraform');

  const EngineKind(this.label);

  final String label;

  static EngineKind parse(String value, String where) => switch (value) {
    'tofu' || 'opentofu' => tofu,
    'terraform' => terraform,
    _ => throw CliException(
      '$where must be "tofu" or "terraform", not "$value".',
      kind: where.startsWith('--') ? ExitCode.usage : ExitCode.projectConfig,
    ),
  };
}

enum EngineSource {
  enginePath('engine_path'),

  setting('setting'),

  state('state'),

  path('path'),

  managed('managed');

  const EngineSource(this.id);

  final String id;
}

final class Engine {
  const Engine(
    this.kind,
    this.path, {
    this.managed = false,
    this.reason = '',
    this.source = EngineSource.path,
  });

  final EngineKind kind;
  final String path;

  final bool managed;

  final String reason;

  final EngineSource source;

  @override
  String toString() => '${kind.label} ($path)';
}

final class EngineSettings {
  const EngineSettings({this.kind, this.path, this.openTofuVersion});

  final EngineKind? kind;

  final String? path;

  final String? openTofuVersion;
}

final class EngineResolver {
  EngineResolver({
    required this.settings,
    Map<String, String>? environment,
    HostPlatform? platform,
    this.log = _noLog,
    this.warn = _noLog,
  }) : environment = environment ?? Platform.environment,
       platform = platform ?? HostPlatform.current();

  final EngineSettings settings;
  final Map<String, String> environment;
  final HostPlatform platform;
  final void Function(String) log;
  final void Function(String) warn;

  Future<Engine> resolve({
    EngineRecord? recorded,
    List<String> terraformOnly = const [],
  }) async {
    if (settings.path case final path?) {
      final kind =
          settings.kind ??
          (p.basename(path).toLowerCase().startsWith('tofu')
              ? EngineKind.tofu
              : EngineKind.terraform);
      if (!File(path).existsSync()) {
        throw CliException(
          'engine_path $path does not exist.',
          kind: ExitCode.engineUnavailable,
        );
      }
      if (kind == EngineKind.tofu && terraformOnly.isNotEmpty) {
        throw CliException(
          terraformOnlyMessage(terraformOnly, 'engine_path $path is OpenTofu'),
          kind: ExitCode.projectConfig,
        );
      }
      return Engine(
        kind,
        path,
        reason: 'engine_path',
        source: EngineSource.enginePath,
      );
    }
    if (settings.kind case final kind?) {
      if (kind == EngineKind.tofu && terraformOnly.isNotEmpty) {
        throw CliException(
          terraformOnlyMessage(terraformOnly, 'the engine is set to tofu'),
          kind: ExitCode.projectConfig,
        );
      }
      return await _byKind(
            kind,
            'engine: ${kind.name}',
            EngineSource.setting,
          ) ??
          (throw CliException(
            terraformOnly.isNotEmpty
                ? terraformOnlyMessage(terraformOnly, 'no terraform is on PATH')
                : 'terradart.engine is ${kind.name}, but no ${kind.name} '
                      'is on PATH. Install ${kind.label}, or set '
                      'engine_path.',
            kind: ExitCode.engineUnavailable,
          ));
    }
    if (terraformOnly.isNotEmpty) {
      return await _byKind(
            EngineKind.terraform,
            'the Stack uses ${terraformOnly.join(', ')}',
            EngineSource.path,
          ) ??
          (throw CliException(
            terraformOnlyMessage(terraformOnly, 'no terraform is on PATH'),
            kind: ExitCode.engineUnavailable,
          ));
    }
    if (recorded != null) {
      final engine = await _byKind(
        recorded.kind,
        'the state was last applied with ${recorded.kind.label}',
        EngineSource.state,
      );
      if (engine != null) return engine;
      warn(
        'The state was last applied with ${recorded.kind.label} '
        '${recorded.version}, which is not on PATH; using another engine.',
      );
    }
    if (findOnPath('tofu', environment: environment, platform: platform)
        case final tofu?) {
      return Engine(EngineKind.tofu, tofu, reason: 'tofu on PATH');
    }
    if (findOnPath('terraform', environment: environment, platform: platform)
        case final terraform?) {
      return Engine(
        EngineKind.terraform,
        terraform,
        reason: 'terraform on PATH',
      );
    }
    return _managed('no tofu or terraform on PATH');
  }

  Future<Engine?> _byKind(
    EngineKind kind,
    String reason,
    EngineSource source,
  ) async {
    final onPath = findOnPath(
      kind.name,
      environment: environment,
      platform: platform,
    );
    if (onPath != null) {
      return Engine(kind, onPath, reason: reason, source: source);
    }
    if (kind == EngineKind.terraform || !platform.hasManaged) return null;
    return _managed(reason);
  }

  Future<Engine> _managed(String reason) async {
    platform.checkManaged();
    final mirror = environment['TERRADART_OPENTOFU_MIRROR'];
    final installer = OpenTofuInstaller(
      cacheDir: cacheDirectory(environment: environment, platform: platform),
      platform: platform,
      version: settings.openTofuVersion ?? kOpenTofuVersion,
      releases: mirror == null || mirror.isEmpty
          ? null
          : Uri.parse(mirror.endsWith('/') ? mirror : '$mirror/'),
      log: log,
    );
    return Engine(
      EngineKind.tofu,
      await installer.ensure(),
      managed: true,
      reason: '$reason; managed OpenTofu ${installer.version}',
      source: EngineSource.managed,
    );
  }
}

const kTerraformOnlyProviders = {'appwrite/appwrite'};

List<String> terraformOnlyProviders(String dir) {
  final found = <String>{};
  final directory = Directory(dir);
  if (!directory.existsSync()) return const [];
  for (final file in directory.listSync().whereType<File>()) {
    if (!file.path.endsWith('.tf.json')) continue;
    final Object? json;
    try {
      json = jsonDecode(file.readAsStringSync());
    } on FormatException {
      continue;
    }
    if (json is! Map) continue;
    final terraform = json['terraform'];
    for (final block in terraform is List ? terraform : [terraform]) {
      if (block is! Map || block['required_providers'] is! Map) continue;
      for (final provider in (block['required_providers'] as Map).values) {
        if (provider case {'source': final String source}) {
          final address = source.toLowerCase().replaceFirst(
            'registry.terraform.io/',
            '',
          );
          if (kTerraformOnlyProviders.contains(address)) found.add(address);
        }
      }
    }
  }
  return found.toList()..sort();
}

String terraformOnlyMessage(List<String> providers, String problem) =>
    'This Stack uses ${providers.join(', ')}, which is published to the '
    'Terraform registry only, so OpenTofu cannot install it: Appwrite '
    'currently needs Terraform on PATH, but $problem. Install Terraform '
    '(https://developer.hashicorp.com/terraform/install) and run with '
    '--engine terraform, or set terradart.engine: terraform in '
    'pubspec.yaml.';

Future<String?> engineVersion(Engine engine, ProcessRunner runner) async {
  final result = await runner.capture(engine.path, ['version', '-json']);
  if (result.exitCode != 0) return null;
  try {
    final json = jsonDecode(result.stdout);
    if (json is Map && json['terraform_version'] is String) {
      return json['terraform_version'] as String;
    }
  } on FormatException {
    return null;
  }
  return null;
}

final class EngineRecord {
  const EngineRecord(this.kind, this.version);

  final EngineKind kind;
  final String version;

  Map<String, Object?> toJson() => {'engine': kind.name, 'version': version};
}

final class EngineRecords {
  EngineRecords(this.file);

  final File file;

  Map<String, EngineRecord> read() {
    if (!file.existsSync()) return {};
    try {
      final json = jsonDecode(file.readAsStringSync());
      if (json is! Map) return {};
      return {
        for (final MapEntry(:key, :value) in json.entries)
          if (value case {
            'engine': final String engine,
            'version': final String version,
          })
            key as String: EngineRecord(
              EngineKind.parse(engine, file.path),
              version,
            ),
      };
    } on FormatException {
      return {};
    } on CliException {
      return {};
    }
  }

  void write(String state, EngineRecord record) {
    final all = read()..[state] = record;
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(
      '${const JsonEncoder.withIndent('  ').convert({for (final MapEntry(:key, :value) in all.entries) key: value.toJson()})}\n',
    );
  }
}

String? engineSwitchWarning(
  EngineRecord recorded,
  EngineKind now,
  String? version,
) {
  if (recorded.kind != now) {
    return 'This state was last applied with ${recorded.kind.label} '
        '${recorded.version}; now running ${now.label} ${version ?? ''}. '
        'Terraform 1.6+ and OpenTofu states can diverge; set '
        'terradart.engine: ${recorded.kind.name} in pubspec.yaml to keep '
        'using ${recorded.kind.label}.';
  }
  if (version != null && compareVersions(version, recorded.version) < 0) {
    return 'This state was last applied with ${recorded.kind.label} '
        '${recorded.version}, newer than $version; an older engine may not '
        'read it.';
  }
  return null;
}

int compareVersions(String a, String b) {
  List<int> parts(String v) => [
    for (final s in v.split('-').first.split('.')) int.tryParse(s) ?? 0,
  ];
  final x = parts(a);
  final y = parts(b);
  for (var i = 0; i < 3; i++) {
    final d = (i < x.length ? x[i] : 0) - (i < y.length ? y[i] : 0);
    if (d != 0) return d.sign;
  }
  return 0;
}

void _noLog(String _) {}
