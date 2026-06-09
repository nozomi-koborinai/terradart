import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

/// Repo root from `packages/terradart_codegen`.
String get _repoRoot => p.normalize(p.join(Directory.current.path, '..', '..'));

void main() {
  test('mm_yaml_sources.yaml has one entry per wrapper override', () {
    final overrideDir = Directory(
      p.join(
        _repoRoot,
        'packages',
        'terradart_codegen',
        'lib',
        'src',
        'codegen',
        'wrapper_overrides',
        'yaml',
      ),
    );
    final overrides = overrideDir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.yaml'))
        .map((f) => p.basenameWithoutExtension(f.path))
        .toList()
      ..sort();

    final manifestFile =
        File(p.join(_repoRoot, 'tool', 'mm_yaml_sources.yaml'));
    final manifest = loadYaml(manifestFile.readAsStringSync()) as YamlMap;
    final files = manifest['files'] as YamlMap;
    final manifestKeys = files.keys.cast<String>().toList()..sort();

    expect(
      manifestKeys,
      overrides,
      reason: 'tool/mm_yaml_sources.yaml must list every curated override '
          '(upstream path or null). Missing: ${overrides.toSet().difference(manifestKeys.toSet())}. '
          'Extra: ${manifestKeys.toSet().difference(overrides.toSet())}.',
    );
  });
}
