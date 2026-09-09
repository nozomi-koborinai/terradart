import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_migrate/terradart_migrate.dart';
import 'package:test/test.dart';

// The coverage fixtures migrated end to end, compared file by file against
// test/golden/<fixture>/<path>.golden (the package version replaced by
// `{{version}}`). `config_tree_merged` is `config_tree` again with
// `--merge-envs`: one Stack for both environment roots. Regenerate with:
//
//   UPDATE_GOLDENS=1 dart test test/golden_test.dart
const _fixtures = '../terradart_coverage/test/fixtures';
const _goldenRoot = 'test/golden';
final _update = Platform.environment['UPDATE_GOLDENS'] == '1';

void main() {
  const cases = <({String golden, String fixture, bool mergeEnvs})>[
    (golden: 'config_tree', fixture: 'config_tree', mergeEnvs: false),
    (golden: 'config_tree_merged', fixture: 'config_tree', mergeEnvs: true),
    (golden: 'real_plan_src', fixture: 'real_plan_src', mergeEnvs: false),
  ];
  for (final c in cases) {
    final fixture = c.golden;
    test('$fixture migrates to its golden output', () {
      final tree = scanModuleTree(Directory('$_fixtures/${c.fixture}'));
      final project = migrateTree(
        tree,
        name: c.fixture,
        mergeEnvs: c.mergeEnvs,
      );
      final actual = {
        for (final e in project.files.entries)
          e.key: e.value.replaceAll(packageVersion, '{{version}}'),
      };
      final dir = Directory('$_goldenRoot/$fixture');
      if (_update) {
        if (dir.existsSync()) dir.deleteSync(recursive: true);
        for (final e in actual.entries) {
          final f = File(p.join(dir.path, '${e.key}.golden'));
          f.parent.createSync(recursive: true);
          f.writeAsStringSync(e.value);
        }
      }
      final expected = <String, String>{};
      for (final f in dir.listSync(recursive: true).whereType<File>()) {
        final rel = p.relative(f.path, from: dir.path).replaceAll('\\', '/');
        expected[rel.substring(0, rel.length - '.golden'.length)] = f
            .readAsStringSync();
      }
      const hint = 'run `UPDATE_GOLDENS=1 dart test test/golden_test.dart`';
      expect(
        actual.keys.toList()..sort(),
        expected.keys.toList()..sort(),
        reason: 'the file set changed; $hint',
      );
      for (final e in expected.entries) {
        expect(actual[e.key], e.value, reason: '${e.key} changed; $hint');
      }
      expect(project.copies, isEmpty);
    });
  }
}
