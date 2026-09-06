import 'package:test/test.dart';

import 'select_changed_examples.dart';

void main() {
  group('selectExamples', () {
    test('non-PR events select the full quickstart set', () {
      final all = selectExamples(event: 'push', changed: const []);
      expect(all, isNotEmpty);
      expect(all, contains('pubsub'));
      expect(all, equals([...all]..sort()), reason: 'sorted');
      expect(
        all.any((s) => s.endsWith('_quickstart')),
        isFalse,
        reason: 'matrix slugs carry no suffix',
      );
    });

    test('packages/ change fans out to the full set', () {
      final sel = selectExamples(
        event: 'pull_request',
        changed: const ['packages/terradart_core/lib/src/stack.dart'],
      );
      expect(sel, equals(allSlugs()));
    });

    test('tool/ change fans out to the full set', () {
      final sel = selectExamples(
        event: 'pull_request',
        changed: const ['tool/example_synth_gates.dart'],
      );
      expect(sel, equals(allSlugs()));
    });

    test('ci.yml itself fans out to the full set', () {
      final sel = selectExamples(
        event: 'pull_request',
        changed: const ['.github/workflows/ci.yml'],
      );
      expect(sel, equals(allSlugs()));
    });

    test('another workflow does NOT fan out', () {
      final sel = selectExamples(
        event: 'pull_request',
        changed: const ['.github/workflows/docs-consistency.yml'],
      );
      expect(sel, isEmpty);
    });

    test('changed examples select exactly their slugs, deduped and sorted', () {
      final sel = selectExamples(
        event: 'pull_request',
        changed: const [
          'examples/pubsub_quickstart/bin/infra.dart',
          'examples/dns_quickstart/lib/main.dart',
          'examples/dns_quickstart/pubspec.yaml',
          'README.md',
        ],
      );
      expect(sel, equals(['dns', 'pubsub']));
    });

    test('docs-only PR selects nothing (the historical cost-leak class)', () {
      // The apply-smoke twin of this selector once fanned a pubspec-only
      // bump out to every example via a broken awk regex. The validate
      // matrix intentionally DOES select an example for its own pubspec
      // (cheap), but repo-level docs must select nothing.
      final sel = selectExamples(
        event: 'pull_request',
        changed: const ['README.md', 'MIGRATING.md', 'website/src/a.md'],
      );
      expect(sel, isEmpty);
    });

    test('a deleted example is in the diff but not in the matrix', () {
      // Deleting examples/<slug>_quickstart/ lists its files as changed while
      // the directory is gone from the checkout; validating it would fail.
      final sel = selectExamples(
        event: 'pull_request',
        changed: const [
          'examples/gone_quickstart/lib/main.dart',
          'examples/gone_quickstart/pubspec.yaml',
          'examples/pubsub_quickstart/lib/main.dart',
        ],
        exists: (slug) => slug == 'pubsub',
      );
      expect(sel, equals(['pubsub']));
    });

    test('the default existence check consults the checkout', () {
      final sel = selectExamples(
        event: 'pull_request',
        changed: const ['examples/no_such_example_quickstart/lib/main.dart'],
      );
      expect(sel, isEmpty);
    });

    test('a file directly under examples/ (no quickstart dir) is ignored', () {
      final sel = selectExamples(
        event: 'pull_request',
        changed: const ['examples/README.md'],
      );
      expect(sel, isEmpty);
    });
  });
}
