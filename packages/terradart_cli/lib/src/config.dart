import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'cli_exception.dart';
import 'engine.dart';

/// The `terradart:` section of a project's `pubspec.yaml`.
///
/// ```yaml
/// terradart:
///   entrypoint: bin/infra.dart
///   out: tf-out
///   engine: tofu
///   dart_defines:
///     output: dart_defines
///     file: .terradart/dart_defines.json
///   environments:
///     staging:
///       backend_config: backend/staging.tfbackend
/// ```
final class ProjectConfig {
  const ProjectConfig({
    required this.root,
    this.entrypoint = 'bin/infra.dart',
    this.out = 'tf-out',
    this.engine = const EngineSettings(),
    this.defineOutput = 'dart_defines',
    this.defineFile,
    this.environments = const {},
  });

  /// The directory holding `pubspec.yaml`, absolute.
  final String root;

  /// The Dart file whose `main` synthesizes the Stacks, relative to [root].
  final String entrypoint;

  /// The directory the entry point writes, relative to [root].
  final String out;

  final EngineSettings engine;

  /// The `addDartDefineOutput` output `apply` and `outputs` write.
  final String defineOutput;

  /// The define file, relative to [root]; `null` is
  /// `.terradart/<defineOutput>.json`.
  final String? defineFile;

  /// The environments `--env` names, in declaration order.
  final Map<String, EnvironmentConfig> environments;

  /// The nearest directory from [start] upward that holds a `pubspec.yaml`.
  static String findRoot(String start) {
    var dir = p.absolute(start);
    while (true) {
      if (File(p.join(dir, 'pubspec.yaml')).existsSync()) return dir;
      final parent = p.dirname(dir);
      if (parent == dir) {
        throw CliException(
          'No pubspec.yaml in $start or above it. Run terradart inside a '
          'Dart project, or pass --project <dir>.',
          exitCode: 64,
        );
      }
      dir = parent;
    }
  }

  /// Reads the `terradart:` section of `<root>/pubspec.yaml`.
  static ProjectConfig load(String root) {
    final file = File(p.join(root, 'pubspec.yaml'));
    final Object? doc;
    try {
      doc = loadYaml(file.readAsStringSync(), sourceUrl: file.uri);
    } on YamlException catch (e) {
      throw CliException('${file.path}: ${e.message}', exitCode: 64);
    }
    final section = doc is YamlMap ? doc['terradart'] : null;
    return parse(root, section);
  }

  /// Reads a `terradart:` section that has already been decoded.
  static ProjectConfig parse(String root, Object? section) {
    if (section == null) return ProjectConfig(root: root);
    final map = _map(section, 'terradart', const {
      'entrypoint',
      'out',
      'engine',
      'engine_path',
      'opentofu_version',
      'dart_defines',
      'environments',
    });
    final defines = map['dart_defines'] == null
        ? const <String, Object?>{}
        : _map(map['dart_defines'], 'terradart.dart_defines', const {
            'output',
            'file',
          });
    final engine = _string(map['engine'], 'terradart.engine');
    return ProjectConfig(
      root: root,
      entrypoint:
          _string(map['entrypoint'], 'terradart.entrypoint') ??
          'bin/infra.dart',
      out: _string(map['out'], 'terradart.out') ?? 'tf-out',
      engine: EngineSettings(
        kind: engine == null
            ? null
            : EngineKind.parse(engine, 'terradart.engine'),
        path: switch (_string(map['engine_path'], 'terradart.engine_path')) {
          null => null,
          final path => p.normalize(p.join(root, path)),
        },
        openTofuVersion: _string(
          map['opentofu_version'],
          'terradart.opentofu_version',
        ),
      ),
      defineOutput:
          _string(defines['output'], 'terradart.dart_defines.output') ??
          'dart_defines',
      defineFile: _string(defines['file'], 'terradart.dart_defines.file'),
      environments: _environments(map['environments']),
    );
  }

  static Map<String, EnvironmentConfig> _environments(Object? value) {
    if (value == null) return const {};
    const where = 'terradart.environments';
    if (value is List) {
      return {
        for (final name in value)
          _envName(name, where): EnvironmentConfig(_envName(name, where)),
      };
    }
    if (value is! Map) {
      throw const CliException(
        '$where must be a list of names or a map of name to settings.',
        exitCode: 64,
      );
    }
    final envs = <String, EnvironmentConfig>{};
    for (final MapEntry(:key, value: settings) in value.entries) {
      final name = _envName(key, where);
      final map = settings == null
          ? const <String, Object?>{}
          : _map(settings, '$where.$name', const {
              'args',
              'dir',
              'backend_config',
              'workspace',
            });
      envs[name] = EnvironmentConfig(
        name,
        args: switch (map['args']) {
          null => null,
          final args => _strings(args, '$where.$name.args'),
        },
        dir: _string(map['dir'], '$where.$name.dir'),
        backendConfig: switch (map['backend_config']) {
          null => const [],
          final String one => [one],
          final many => _strings(many, '$where.$name.backend_config'),
        },
        workspace: _string(map['workspace'], '$where.$name.workspace'),
      );
    }
    return envs;
  }

  static final _validName = RegExp(r'^[A-Za-z0-9][A-Za-z0-9_.-]*$');

  /// Throws unless [name] can name an environment, and so a file.
  static String checkEnvironmentName(String name, String where) {
    if (!_validName.hasMatch(name)) {
      throw CliException(
        '$where: "$name" is not an environment name; use letters, digits, '
        '"_", "-" and ".", starting with a letter or digit.',
        exitCode: 64,
      );
    }
    return name;
  }

  static String _envName(Object? value, String where) {
    if (value is! String && value is! num) {
      throw CliException(
        '$where: an environment name must be a string.',
        exitCode: 64,
      );
    }
    return checkEnvironmentName('$value', where);
  }

  static Map<String, Object?> _map(
    Object? value,
    String where,
    Set<String> keys,
  ) {
    if (value is! Map) {
      throw CliException('$where must be a map.', exitCode: 64);
    }
    final unknown = [
      for (final k in value.keys)
        if (!keys.contains(k)) '$k',
    ];
    if (unknown.isNotEmpty) {
      throw CliException(
        '$where: unknown key${unknown.length == 1 ? '' : 's'} '
        '${unknown.join(', ')}; expected ${keys.join(', ')}.',
        exitCode: 64,
      );
    }
    return {for (final MapEntry(:key, :value) in value.entries) '$key': value};
  }

  static String? _string(Object? value, String where) => switch (value) {
    null => null,
    final String s when s.isNotEmpty => s,
    final num n => '$n',
    _ => throw CliException('$where must be a string.', exitCode: 64),
  };

  static List<String> _strings(Object? value, String where) {
    if (value is! List) {
      throw CliException('$where must be a list of strings.', exitCode: 64);
    }
    return [for (final v in value) _string(v, where) ?? ''];
  }
}

/// One entry of `terradart.environments`.
final class EnvironmentConfig {
  const EnvironmentConfig(
    this.name, {
    this.args,
    this.dir,
    this.backendConfig = const [],
    this.workspace,
  });

  /// The name `--env` takes, and the define file's infix.
  final String name;

  /// The entry point's arguments; `null` is `--env <name>`.
  final List<String>? args;

  /// The Terraform directory, relative to the project; `null` finds it under
  /// the output directory.
  final String? dir;

  /// `-backend-config` values for `init`: files (relative to the project)
  /// or `key=value` pairs.
  final List<String> backendConfig;

  /// The Terraform workspace to select.
  final String? workspace;
}
