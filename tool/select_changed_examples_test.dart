import 'dart:convert';
import 'dart:io';

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
      final sel = selectExamples(
        event: 'pull_request',
        changed: const ['README.md', 'MIGRATING.md', 'website/src/a.md'],
      );
      expect(sel, isEmpty);
    });

    test('a deleted example is in the diff but not in the matrix', () {
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

  group('shardExamples', () {
    test('empty list produces no shards', () {
      expect(shardExamples(const []), isEmpty);
    });

    test('single example produces one 1-example shard', () {
      expect(shardExamples(const ['pubsub']), [
        {
          'id': '1/1',
          'examples': ['pubsub'],
        },
      ]);
    });

    test('up to maxPerShard examples stay in a single shard', () {
      final slugs = [for (var i = 0; i < 10; i++) 'ex_$i'];
      final shards = shardExamples(slugs, maxPerShard: 10);
      expect(shards, hasLength(1));
      expect(shards.single['id'], '1/1');
      expect(shards.single['examples'], slugs);
    });

    test('splits into balanced contiguous shards when above maxPerShard', () {
      final slugs = [for (var i = 0; i < 11; i++) 'ex_$i'];
      final shards = shardExamples(slugs, maxPerShard: 10);
      expect(shards, hasLength(2));
      expect(shards[0]['id'], '1/2');
      expect(shards[1]['id'], '2/2');
      expect((shards[0]['examples']! as List<String>).length, 6);
      expect((shards[1]['examples']! as List<String>).length, 5);
      expect([
        ...(shards[0]['examples']! as List<String>),
        ...(shards[1]['examples']! as List<String>),
      ], slugs);
    });

    test('full quickstart catalog shards into ~10-example shards', () {
      final all = allSlugs();
      final shards = shardExamples(all);
      final expectedCount =
          (all.length + kDefaultShardSize - 1) ~/ kDefaultShardSize;
      expect(shards, hasLength(expectedCount));

      final flattened = <String>[];
      for (var i = 0; i < shards.length; i++) {
        expect(shards[i]['id'], '${i + 1}/$expectedCount');
        final examples = shards[i]['examples']! as List<String>;
        expect(examples, isNotEmpty);
        expect(examples.length, lessThanOrEqualTo(kDefaultShardSize));
        flattened.addAll(examples);
      }
      expect(flattened, all);
    });

    test('rejects non-positive maxPerShard', () {
      expect(
        () => shardExamples(const ['a'], maxPerShard: 0),
        throwsArgumentError,
      );
      expect(
        () => shardExamples(const ['a'], maxPerShard: -2),
        throwsArgumentError,
      );
    });

    test('CLI --github-output writes both examples and shards', () async {
      final tempDir = Directory.systemTemp.createTempSync('terradart_sel_');
      addTearDown(() => tempDir.deleteSync(recursive: true));
      final outputFile = File('${tempDir.path}/github_output');

      final proc = await Process.start(Platform.resolvedExecutable, [
        'tool/select_changed_examples.dart',
        '--event',
        'pull_request',
        '--github-output',
        outputFile.path,
      ]);
      proc.stdin.writeln('examples/pubsub_quickstart/bin/infra.dart');
      await proc.stdin.close();
      final exitCode = await proc.exitCode;
      expect(exitCode, 0);

      final lines = outputFile.readAsLinesSync();
      final examplesLine = lines.firstWhere((l) => l.startsWith('examples='));
      final shardsLine = lines.firstWhere((l) => l.startsWith('shards='));
      expect(jsonDecode(examplesLine.substring('examples='.length)), [
        'pubsub',
      ]);
      expect(jsonDecode(shardsLine.substring('shards='.length)), [
        {
          'id': '1/1',
          'examples': ['pubsub'],
        },
      ]);
    });
  });
}
