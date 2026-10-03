import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'cli_exception.dart';
import 'engine.dart';
import 'output/exit_codes.dart';

/// The optional `terradart:` section of a project's `pubspec.yaml`.
///
/// ```yaml
/// terradart:
///   entrypoint: bin/infra.dart
///   engine: tofu
///   dart_defines:
///     output: dart_defines
///     file: .terradart/dart_defines.json
/// ```
///
/// Environments are not declared here: the entry point declares them in
/// Dart with `runEnvironments`, and tells `terradart` what it wrote.
final class ProjectConfig {
  const ProjectConfig({
    required this.root,
    this.entrypoint = 'bin/infra.dart',
    this.out = 'tf-out',
    this.engine = const EngineSettings(),
    this.defineOutput,
    this.defineFile,
  });

  /// The directory holding `pubspec.yaml`, absolute.
  final String root;

  /// The Dart file whose `main` synthesizes the Stacks, relative to [root].
  final String entrypoint;

  /// The directory an entry point that calls neither `runStack` nor
  /// `runEnvironments` writes, relative to [root].
  final String out;

  final EngineSettings engine;

  /// The `addDartDefineOutput` output `apply` and `outputs` write; `null`
  /// is the one the Stack declares (`dart_defines` among several).
  final String? defineOutput;

  /// The define file, relative to [root]; `null` is
  /// `.terradart/<output>.json`.
  final String? defineFile;

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
          kind: ExitCode.noProject,
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
      throw CliException(
        '${file.path}: ${e.message}',
        kind: ExitCode.projectConfig,
      );
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
      defineOutput: _string(defines['output'], 'terradart.dart_defines.output'),
      defineFile: _string(defines['file'], 'terradart.dart_defines.file'),
    );
  }

  static Map<String, Object?> _map(
    Object? value,
    String where,
    Set<String> keys,
  ) {
    if (value is! Map) {
      throw CliException('$where must be a map.', kind: ExitCode.projectConfig);
    }
    final unknown = [
      for (final k in value.keys)
        if (!keys.contains(k)) '$k',
    ];
    if (unknown.isNotEmpty) {
      throw CliException(
        '$where: unknown key${unknown.length == 1 ? '' : 's'} '
        '${unknown.join(', ')}; expected ${keys.join(', ')}.'
        '${unknown.contains('environments') ? ' Environments are declared in Dart: call runEnvironments in the entry point.' : ''}',
        kind: ExitCode.projectConfig,
      );
    }
    if (value is YamlMap) {
      return {
        for (final MapEntry(:key, value: node) in value.nodes.entries)
          '${key is YamlNode ? key.value : key}': _scalar(node),
      };
    }
    return {for (final MapEntry(:key, :value) in value.entries) '$key': value};
  }

  /// A number as it is written, so `1.10` stays `1.10` and is not `1.1`.
  static Object? _scalar(YamlNode node) => switch (node) {
    YamlScalar(value: num()) => node.span.text,
    YamlScalar(:final value) => value,
    _ => node,
  };

  static String? _string(Object? value, String where) => switch (value) {
    null => null,
    final String s when s.isNotEmpty => s,
    final num n => '$n',
    _ => throw CliException(
      '$where must be a string.',
      kind: ExitCode.projectConfig,
    ),
  };
}
