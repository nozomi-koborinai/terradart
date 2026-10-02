import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'cli_exception.dart';
import 'host.dart';
import 'opentofu.dart';
import 'process_runner.dart';

/// The Terraform-compatible CLI that runs `init`, `plan` and `apply`.
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
      exitCode: 64,
    ),
  };
}

/// One resolved engine binary.
final class Engine {
  const Engine(this.kind, this.path, {this.managed = false, this.reason = ''});

  final EngineKind kind;
  final String path;

  /// Whether terradart downloaded it into its cache.
  final bool managed;

  /// Why this engine was picked, for the log line.
  final String reason;

  @override
  String toString() => '${kind.label} ($path)';
}

/// What the engine settings of a project and its command line ask for.
final class EngineSettings {
  const EngineSettings({this.kind, this.path, this.openTofuVersion});

  /// `tofu` / `terraform`, or `null` to pick one.
  final EngineKind? kind;

  /// A binary to run instead of looking on `PATH`.
  final String? path;

  /// The OpenTofu release to download instead of [kOpenTofuVersion].
  final String? openTofuVersion;
}

/// Picks the engine: the project's setting, then the engine recorded for the
/// state, then `tofu` on `PATH`, `terraform` on `PATH`, and finally a managed
/// OpenTofu download.
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

  /// Resolves the engine, preferring the one [recorded] ran the state last.
  Future<Engine> resolve({EngineRecord? recorded}) async {
    if (settings.path case final path?) {
      final kind =
          settings.kind ??
          (p.basename(path).toLowerCase().startsWith('tofu')
              ? EngineKind.tofu
              : EngineKind.terraform);
      if (!File(path).existsSync()) {
        throw CliException('engine_path $path does not exist.');
      }
      return Engine(kind, path, reason: 'engine_path');
    }
    if (settings.kind case final kind?) {
      return await _byKind(kind, 'engine: ${kind.name}') ??
          (throw CliException(
            'terradart.engine is ${kind.name}, but no ${kind.name} is on '
            'PATH. Install ${kind.label}, or set engine_path.',
          ));
    }
    if (recorded != null) {
      final engine = await _byKind(
        recorded.kind,
        'the state was last applied with ${recorded.kind.label}',
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

  Future<Engine?> _byKind(EngineKind kind, String reason) async {
    final onPath = findOnPath(
      kind.name,
      environment: environment,
      platform: platform,
    );
    if (onPath != null) return Engine(kind, onPath, reason: reason);
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
    );
  }
}

/// The engine version `<engine> version -json` reports, or `null`.
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

/// The engine that last applied one state.
final class EngineRecord {
  const EngineRecord(this.kind, this.version);

  final EngineKind kind;
  final String version;

  Map<String, Object?> toJson() => {'engine': kind.name, 'version': version};
}

/// `.terradart/engines.json`: the engine and version that last applied each
/// state of the project, so a later run keeps using it and warns before
/// switching.
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

/// The warning for running [now] (at [version]) on a state [recorded] last
/// applied, or `null` when nothing changes for the state.
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

/// Compares `x.y.z` versions numerically; a prerelease suffix is ignored.
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
