import 'dart:io';

import 'package:terradart_codegen/src/cli/lint_override_command.dart';
import 'package:test/test.dart';

/// Runs `terradart lint-override` against the real bundled registry as a
/// subprocess (the same way `wrap` is exercised), so the command wiring +
/// package-URI resolution are covered end-to-end.
void main() {
  test('lint-override exits 0 on the clean committed registry', () {
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', 'lint-override'],
      workingDirectory: Directory.current.path,
    );
    expect(
      result.exitCode,
      0,
      reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
    );
    expect(result.stdout, contains('lint-override:'));
  });

  test('lint-override is a registered subcommand in --help', () {
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', '--help'],
      workingDirectory: Directory.current.path,
    );
    expect('${result.stdout}${result.stderr}', contains('lint-override'));
  });

  test('lint-override exits 65 and lists violations on a dead config', () {
    final dir = Directory.systemTemp.createTempSync('a5lint');
    addTearDown(() => dir.deleteSync(recursive: true));
    File('${dir.path}/google_bad.yaml').writeAsStringSync(
      'outputDir: x\ncuratedDoc: |-\n  /// dead (deriveClassDoc is off)\n',
    );
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', 'lint-override', '--dir', dir.path],
      workingDirectory: Directory.current.path,
    );
    expect(
      result.exitCode,
      65,
      reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
    );
    expect(result.stderr, contains('curated-doc-without-derive-class-doc'));
  });

  test('lint-override exits 65 with a clean message on a missing --dir', () {
    final missing = '${Directory.systemTemp.path}/a5-does-not-exist-xyz';
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', 'lint-override', '--dir', missing],
      workingDirectory: Directory.current.path,
    );
    expect(
      result.exitCode,
      65,
      reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
    );
    expect(result.stderr, contains('terradart lint-override:'));
  });

  test('lint-override exits 65 on an underivable migration shape', () {
    final dir = Directory.systemTemp.createTempSync('a5lint_migrate');
    addTearDown(() => dir.deleteSync(recursive: true));
    File('${dir.path}/google_bad.yaml').writeAsStringSync('''
outputDir: x
prelude: |
  class Fanout {
    const Fanout({required this.protocol, this.additionalRules});
    final TfArg<String> protocol;
    final List<Fanout>? additionalRules;
    List<Map<String, Object?>> encode() => [
      {'protocol': protocol.toTfJson()},
      ...?additionalRules?.map((r) => r.encode().single),
    ];
  }
''');
    final result = Process.runSync(
      'dart',
      ['run', 'bin/terradart.dart', 'lint-override', '--dir', dir.path],
      workingDirectory: Directory.current.path,
    );
    expect(
      result.exitCode,
      65,
      reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
    );
    expect(result.stderr, contains('migrate-shape-underivable'));
    expect(result.stderr, contains('`Fanout`'));
  });

  test('migrate ledger resolves beside the exactly-one ledger', () {
    const root = '/repo/packages/terradart_codegen/lib/src/codegen/'
        'wrapper_overrides/yaml';
    expect(
      migrateManifestDebtPathForOverrideRoot(root),
      '/repo/tool/migrate_manifest_debt.yaml',
    );
    expect(
      exactlyOneLintDebtPathForOverrideRoot(root),
      '/repo/tool/exactly_one_lint_debt.yaml',
    );
  });

  test('a lane directory resolves the same shared ledgers', () {
    const lane = '/repo/packages/terradart_codegen/lib/src/codegen/'
        'wrapper_overrides/cloudflare/yaml';
    expect(lintDebtToolDirForOverrideRoot(lane), '/repo/tool');
    expect(
      migrateManifestDebtPathForOverrideRoot(lane),
      '/repo/tool/migrate_manifest_debt.yaml',
    );
  });

  test('an override dir outside wrapper_overrides reads no ledger', () {
    expect(lintDebtToolDirForOverrideRoot('/tmp/overrides/yaml'), isNull);
    expect(exactlyOneLintDebtPathForOverrideRoot('/tmp/overrides'), isNull);
  });

  test('laneLedgerEntries keeps only the entries naming the lane overrides',
      () {
    expect(
      laneLedgerEntries(
        {'aws_thing': 'a', 'google_other': 'b'},
        ['aws_thing', 'aws_else'],
      ),
      {'aws_thing': 'a'},
    );
  });

  group('a lane reads the shared ledgers', () {
    late Directory repo;
    late String laneDir;

    setUp(() {
      repo = Directory.systemTemp.createTempSync('lint_lane_ledger');
      laneDir = '${repo.path}/packages/terradart_codegen/lib/src/codegen/'
          'wrapper_overrides/aws/yaml';
      Directory(laneDir).createSync(recursive: true);
      File('$laneDir/aws_thing.yaml').writeAsStringSync('outputDir: x\n');
      Directory('${repo.path}/tool').createSync();
    });
    tearDown(() => repo.deleteSync(recursive: true));

    ProcessResult lint() => Process.runSync(
          'dart',
          ['run', 'bin/terradart.dart', 'lint-override', '--dir', laneDir],
          workingDirectory: Directory.current.path,
        );

    for (final (ledger, rule) in [
      ('exactly_one_lint_debt.yaml', 'exactly-one-optional-fanout'),
      ('migrate_manifest_debt.yaml', 'migrate-shape-underivable'),
    ]) {
      test('a planted $ledger entry for a clean lane override is stale', () {
        File('${repo.path}/tool/$ledger')
            .writeAsStringSync('aws_thing: planted\n');
        final result = lint();
        expect(
          result.exitCode,
          65,
          reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
        );
        expect(result.stderr, contains('stale tool/$ledger entries'));
        expect(
          result.stderr,
          contains('aws_thing (override no longer violates $rule)'),
        );
      });
    }

    test('entries naming another lane are left to wrap_lanes', () {
      for (final ledger in lintDebtLedgerFileNames) {
        File('${repo.path}/tool/$ledger')
            .writeAsStringSync('google_elsewhere: owned by another lane\n');
      }
      final result = lint();
      expect(
        result.exitCode,
        0,
        reason: 'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
      );
      expect(result.stdout, contains('lint-override: 1 overrides clean.'));
    });
  });

  test('loadLintDebtLedger parses name: reason lines and rejects bare names',
      () {
    final dir = Directory.systemTemp.createTempSync('a5lint_ledger');
    addTearDown(() => dir.deleteSync(recursive: true));
    final file = File('${dir.path}/migrate_manifest_debt.yaml')
      ..writeAsStringSync(
        '# comment\n\ngoogle_a: reason a\ngoogle_b:   reason b  \n',
      );
    expect(
      loadLintDebtLedger(file.path),
      {'google_a': 'reason a', 'google_b': 'reason b'},
    );
    expect(loadLintDebtLedger('${dir.path}/missing.yaml'), isEmpty);
    file.writeAsStringSync('google_c:\n');
    expect(
      () => loadLintDebtLedger(file.path),
      throwsA(
        isA<FormatException>().having(
          (e) => e.message,
          'message',
          contains('tool/migrate_manifest_debt.yaml: google_c needs a reason'),
        ),
      ),
    );
  });
}
