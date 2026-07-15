import 'package:test/test.dart';

import 'check_wave_skiplist_gate.dart';

void main() {
  group('parseSkipSlugs', () {
    test('ignores comments and blanks', () {
      const yaml = '''
# header
foo_quickstart: reason
# bar_quickstart: not active
baz_quickstart: other
''';
      expect(
        parseSkipSlugs(yaml),
        equals({'foo_quickstart', 'baz_quickstart'}),
      );
    });
  });

  group('touchedQuickstarts', () {
    test('collects unique example slugs from changed paths', () {
      expect(
        touchedQuickstarts([
          'examples/migration_center_quickstart/lib/main.dart',
          'examples/migration_center_quickstart/README.md',
          'packages/terradart_google/lib/migration.dart',
          'examples/pubsub_quickstart/bin/infra.dart',
        ]),
        equals({
          'migration_center_quickstart',
          'pubsub_quickstart',
        }),
      );
    });
  });

  group('waveSkiplistViolations', () {
    const skip = {'migration_center_quickstart', 'ops_quickstart'};

    test('ignores non-wave branches', () {
      expect(
        waveSkiplistViolations(
          headRef: 'cursor/fix-something-fd24',
          changedFiles: const [
            'examples/migration_center_quickstart/lib/main.dart',
          ],
          skipSlugs: skip,
        ),
        isEmpty,
      );
    });

    test('passes when wave touches only applyable examples', () {
      expect(
        waveSkiplistViolations(
          headRef: 'wave/migration-center-2026-07-08',
          changedFiles: const [
            'examples/pubsub_quickstart/lib/main.dart',
            'packages/terradart_google/lib/src/migration/x.dart',
          ],
          skipSlugs: skip,
        ),
        isEmpty,
      );
    });

    test('fails when wave touches a skip-listed example', () {
      expect(
        waveSkiplistViolations(
          headRef: 'wave/migration-center-2026-07-08',
          changedFiles: const [
            'examples/migration_center_quickstart/lib/main.dart',
            'tool/apply_cost_denylist.yaml',
          ],
          skipSlugs: skip,
        ),
        equals(['migration_center_quickstart']),
      );
    });
  });

  group('runWaveSkiplistGate', () {
    test('exit 0 on non-wave head', () {
      final logs = <String>[];
      final code = runWaveSkiplistGate(
        headRef: 'main',
        changedFiles: const [
          'examples/migration_center_quickstart/lib/main.dart',
        ],
        applySkipYaml: 'migration_center_quickstart: x\n',
        prSkipYaml: '',
        writeln: logs.add,
        writelnErr: logs.add,
      );
      expect(code, 0);
      expect(logs.single, contains('skipped'));
    });

    test('exit 1 with repair hint on skip-listed wave example', () {
      final err = <String>[];
      final code = runWaveSkiplistGate(
        headRef: 'wave/foo',
        changedFiles: const [
          'examples/migration_center_quickstart/lib/main.dart',
        ],
        applySkipYaml: 'migration_center_quickstart: x\n',
        prSkipYaml: 'gke_quickstart: y\n',
        writeln: (_) {},
        writelnErr: err.add,
      );
      expect(code, 1);
      expect(err.single, contains('migration_center_quickstart'));
      expect(err.single, contains('WIP-1'));
    });
  });
}
