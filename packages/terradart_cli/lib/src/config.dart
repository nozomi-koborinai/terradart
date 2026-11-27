import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'cli_exception.dart';
import 'engine.dart';
import 'output/exit_codes.dart';

final class ProjectConfig {
  const ProjectConfig({
    required this.root,
    this.entrypoint = 'bin/infra.dart',
    this.out = 'tf-out',
    this.engine = const EngineSettings(),
    this.defineOutput,
    this.defineFile,
  });

  final String root;

  final String entrypoint;

  final String out;

  final EngineSettings engine;

  final String? defineOutput;

  final String? defineFile;

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
          '${key is YamlNode ? key.value : key}': _scalarPreservingNumberText(
            node,
          ),
      };
    }
    return {for (final MapEntry(:key, :value) in value.entries) '$key': value};
  }

  static Object? _scalarPreservingNumberText(YamlNode node) => switch (node) {
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
