@Timeout(Duration(minutes: 10))
library;

import 'dart:io';

import 'package:test/test.dart';

import 'migrating_cells.dart';

void main() {
  group('extractMigratingCells', () {
    const doc = '''
# Migrating

## Unreleased

### A change

**Breaking (`terradart_google`,
`terradart_azure`).** Prose with `NotACell(x)`.

| Input | Before | After |
|---|---|---|
| `google_foo` | `TfArg<String>` | `FooKind` |
| `Foo.bar` | `Foo(a: x \\| y, ...)` and `snake_name` | `Foo(a: .literal('|'))` |

### Another

**Additive (`terradart_aws`).** Text.

| Before | After |
|---|---|
| *(not available)* | `Bar('b')` |

## 0.35.0

| Before | After |
|---|---|
| `Old()` | `New()` |
''';

    test('reads the Before and After spans of the Unreleased section', () {
      final cells = extractMigratingCells(doc);
      expect(
        [for (final c in cells) (c.line, c.before, c.code)],
        [
          (12, true, 'TfArg<String>'),
          (12, false, 'FooKind'),
          (13, true, r'Foo(a: x \| y, ...)'),
          (13, false, "Foo(a: .literal('|'))"),
          (21, false, "Bar('b')"),
        ],
      );
    });

    List<String> spans(String text) => [
      for (final c in extractMigratingCells(text))
        '${c.line} ${c.section} ${c.before} ${c.code}',
    ];

    test('reads the top section once a release names it', () {
      final released = doc.replaceFirst('## Unreleased', '## 0.35.x → 0.36.0');
      expect(spans(released), spans(doc));
    });

    test('reads the same cells of MIGRATING.md after the release rename', () {
      final text = File(migratingPath).readAsStringSync();
      final released = text.replaceFirst(
        RegExp(r'^## Unreleased$', multiLine: true),
        '## 0.35.x → 0.36.0',
      );
      expect(spans(text), isNotEmpty);
      expect(spans(released), spans(text));
    });
  });

  group('cellShapeError', () {
    MigratingCell cell(String code) =>
        (line: 1, section: 's', before: false, code: code, after: '');

    test('fails a named-argument fragment', () {
      expect(cellShapeError(cell('warmType: .literal(x)')), isNotNull);
      expect(cellShapeError(cell('Foo(warmType: .literal(x))')), isNull);
      expect(cellShapeError(cell('Foo.limit')), isNull);
    });
  });

  group('resolveElisions', () {
    test('drops an elided argument and stands in for an elided value', () {
      expect(resolveElisions("Foo('f', a: x, ...)"), (
        code: "Foo('f', a: x)",
        elided: true,
      ));
      expect(resolveElisions('Foo(a: ..., b: ...)'), (
        code: 'Foo(a: _elided, b: _elided)',
        elided: true,
      ));
      expect(resolveElisions('Foo(...)'), (code: 'Foo()', elided: true));
      expect(resolveElisions('Foo(a: x)'), (code: 'Foo(a: x)', elided: false));
    });
  });

  test('beforeSeries reads the release a top heading upgrades from', () {
    expect(beforeSeries('## Unreleased'), 'x');
    expect(beforeSeries('## 0.35.x → 0.36.0'), '0.35.x');
    expect(beforeSeries('## 0.27.0 → 0.28.0'), '0.27.0');
    expect(beforeSeries('## 0.36.0'), isNull);
    expect(beforeSeries('## Unreleased changes'), isNull);
  });

  test(
    'beforeRelease takes each package at its newest release in the series',
    () {
      const published = {
        'terradart_core': ['0.9.0', '0.34.0', '0.35.0', '0.35.1', '0.36.0-dev'],
        'terradart_google': ['0.9.0', '0.34.0', '0.35.0'],
        'terradart_azure': <String>[],
      };
      const newest = {'terradart_core': '0.35.1', 'terradart_google': '0.35.0'};
      expect(beforeRelease('x', published), newest);
      expect(beforeRelease('0.35.x', published), newest);
      expect(beforeRelease('0.34.x', published), {
        'terradart_core': '0.34.0',
        'terradart_google': '0.34.0',
      });
      expect(beforeRelease('0.35.0', published), {
        'terradart_core': '0.35.0',
        'terradart_google': '0.35.0',
      });
      expect(beforeRelease('0.36.x', published), isEmpty);
    },
  );

  test('a section that names an unpublished package still compiles the '
      'Before cells of published packages', () async {
    const seeded = '''
# Migrating terradart

## 0.35.x → 0.36.0

### Mixed

**Breaking (`terradart_google`, `terradart_azure`).** Text.

| Input | Before | After |
|---|---|---|
| `GooglePubsubTopic.name` | `DefinitelyNoSuchType()` | `GooglePubsubTopic.name` |
| `AzurermResourceGroup.name` | `TfArg<String>` | `AzurermResourceGroup.name` |
| `AzurermResourceGroup.location` | `AzurermResourceGroup('rg', location: .literal('x'))` | `AzurermResourceGroup.location` |
| `AzurermMssqlVirtualMachine.dayOfWeek` | `MssqlVirtualMachineDayOfWeek` | `MssqlVirtualMachineScheduleDayOfWeek` |
''';
    final report = await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
      ledger: '''
- before: "AzurermResourceGroup('rg', location: .literal('x'))"
  after: "`AzurermResourceGroup.location`"
  package: terradart_azure
  reason: Unpublished.
- before: MssqlVirtualMachineDayOfWeek
  after: "`MssqlVirtualMachineScheduleDayOfWeek`"
  package: terradart_azure
  reason: Unpublished.
''',
    );
    expect(report.failures, [
      allOf(
        contains('MIGRATING.md:11: Before'),
        contains('DefinitelyNoSuchType'),
      ),
    ]);
    expect(report.beforeCompiled, 1);
    expect(report.beforeFailed, 1);
    expect(
      [for (final s in report.beforeSkipped) (s.cell.line, s.package)],
      [(13, 'terradart_azure'), (14, 'terradart_azure')],
    );
  });

  test(
    'an unpublished type elsewhere in the row does not hide a typo',
    () async {
      const seeded = '''
# Migrating terradart

## 0.35.x → 0.36.0

### Mixed

**Breaking (`terradart_google`, `terradart_azure`).** Text.

| Before | After |
|---|---|
| `GooglePubsubTopik('t')` | `ApplicationGatewayProbeProtocol` |
''';
      final failures = (await checkMigratingCells(
        Directory.current.path,
        migrating: seeded,
      )).failures;
      expect(failures, [
        allOf(
          contains('MIGRATING.md:11: Before'),
          contains('GooglePubsubTopik'),
        ),
      ]);
    },
  );

  group('the unpublished Before ledger', () {
    String doc(List<String> rows) => [
      '# Migrating terradart',
      '',
      '## 0.35.x → 0.36.0',
      '',
      '| Before | After |',
      '|---|---|',
      ...rows,
      '',
    ].join('\n');
    String entry(
      String before, {
      String after = 'AzurermResourceGroup.name',
      String package = 'terradart_azure',
    }) =>
        '''
- before: "$before"
  after: "`$after`"
  package: $package
  reason: The Before API was never published.
''';
    Future<MigratingReport> check(List<String> rows, [String ledger = '']) =>
        checkMigratingCells(
          Directory.current.path,
          migrating: doc(rows),
          ledger: ledger,
        );

    test('an unpublished name in the After cell does not hide a typo of a '
        'bare Before name', () async {
      final report = await check([
        '| `GooglePubsubTopik` | `ApplicationGatewayProbeProtocol` |',
      ]);
      expect(report.failures, [
        allOf(
          contains('MIGRATING.md:7: Before'),
          contains('GooglePubsubTopik'),
        ),
      ]);
      expect(report.beforeSkipped, isEmpty);
    });

    test('an unpublished type in a Before cell does not hide a typo beside '
        'it', () async {
      final report = await check([
        "| `AzurermResourceGroup('rg', location: GooglePubsubTopik('t'))` "
            '| `AzurermResourceGroup.name` |',
      ]);
      expect(
        report.failures,
        contains(
          allOf(
            contains('MIGRATING.md:7: Before'),
            contains("'GooglePubsubTopik'"),
          ),
        ),
      );
      expect(report.beforeFailed, 1);
      expect(report.beforeSkipped, isEmpty);
    });

    test('an unlisted Before cell of an unpublished package fails', () async {
      final report = await check([
        "| `AzurermResourceGroup('rg')` | `AzurermResourceGroup.name` |",
      ]);
      expect(report.failures, [
        allOf(
          contains('MIGRATING.md:7: Before'),
          contains('AzurermResourceGroup'),
        ),
      ]);
      expect(report.beforeFailed, 1);
    });

    test(
      'a listed Before cell is skipped with its package and reason',
      () async {
        final report = await check([
          "| `AzurermResourceGroup('rg')` | `AzurermResourceGroup.name` |",
          '| `TfArg<String>` | `AzurermResourceGroup.name` |',
        ], entry("AzurermResourceGroup('rg')"));
        expect(report.failures, isEmpty, reason: report.failures.join('\n'));
        expect(report.beforeCompiled, 1);
        expect(
          [for (final s in report.beforeSkipped) describeSkip(s)],
          [
            allOf(
              contains('MIGRATING.md:7:'),
              contains('terradart_azure'),
              contains('The Before API was never published.'),
            ),
          ],
        );
      },
    );

    test('an entry that matches no Before cell fails', () async {
      final report = await check(
        ["| `AzurermResourceGroup('rg')` | `AzurermResourceGroup.name` |"],
        entry("AzurermResourceGroup('rg')") +
            entry("AzurermResourceGroup('renamed')"),
      );
      expect(report.failures, [
        allOf(
          contains(migratingLedgerPath),
          contains("AzurermResourceGroup('renamed')"),
          contains('matches no Before cell'),
        ),
      ]);
    });

    test('an entry whose package has a release in the series fails', () async {
      final report = await check(
        ["| `GooglePubsubTopic('t', nosuch: x)` | `GooglePubsubTopic.name` |"],
        entry(
          "GooglePubsubTopic('t', nosuch: x)",
          after: 'GooglePubsubTopic.name',
          package: 'terradart_google',
        ),
      );
      expect(
        report.failures,
        contains(
          allOf(
            contains(migratingLedgerPath),
            contains('terradart_google'),
            contains('has a 0.35.x release'),
          ),
        ),
      );
      expect(report.beforeFailed, 1);
      expect(report.beforeSkipped, isEmpty);
    });

    test('an entry whose Before cell compiles fails', () async {
      final report = await check([
        '| `TfArg<String>` | `AzurermResourceGroup.name` |',
      ], entry('TfArg<String>'));
      expect(report.failures, [
        allOf(
          contains(migratingLedgerPath),
          contains('TfArg<String>'),
          contains('compiles'),
        ),
      ]);
    });

    test('an entry covers only the row it was reviewed for', () async {
      final report = await check(
        [
          '| `ApplicationGatewayProbeProtocol` | `AzurermResourceGroup.name` |',
          '| `ApplicationGatewayProbeProtocol` | `GooglePubsubTopic.name` |',
        ],
        '''
- before: ApplicationGatewayProbeProtocol
  after: "`AzurermResourceGroup.name`"
  package: terradart_azure
  reason: Unpublished.
''',
      );
      expect(report.failures, [
        allOf(
          contains('MIGRATING.md:8: Before'),
          contains('ApplicationGatewayProbeProtocol'),
        ),
      ]);
      expect(report.beforeFailed, 1);
      expect([for (final s in report.beforeSkipped) s.cell.line], [7]);
    });

    test('a listed cell keeps a typo beside its unpublished call', () async {
      final report = await check([
        "| `AzurermResourceGroup('rg', location: GooglePubsubTopik('t'))` "
            '| `AzurermResourceGroup.name` |',
      ], entry("AzurermResourceGroup('rg', location: GooglePubsubTopik('t'))"));
      expect(report.failures, [
        allOf(
          contains('MIGRATING.md:7: Before'),
          contains("'GooglePubsubTopik'"),
        ),
      ]);
      expect(report.beforeFailed, 1);
      expect(report.beforeSkipped, isEmpty);
    });

    test('a listed cell keeps a name the unpublished package does not '
        'export', () async {
      final report = await check([
        '| `AzurermNoSuchGroup` | `AzurermResourceGroup.name` |',
      ], entry('AzurermNoSuchGroup'));
      expect(report.failures, [
        allOf(
          contains('MIGRATING.md:7: Before'),
          contains("'AzurermNoSuchGroup'"),
        ),
      ]);
      expect(report.beforeFailed, 1);
      expect(report.beforeSkipped, isEmpty);
    });

    test('a listed cell keeps a dot shorthand outside its unpublished '
        'call', () async {
      final report = await check([
        "| `[AzurermResourceGroup('rg'), .literal('x')]` "
            '| `AzurermResourceGroup.name` |',
      ], entry("[AzurermResourceGroup('rg'), .literal('x')]"));
      expect(
        report.failures,
        contains(
          allOf(contains('MIGRATING.md:7: Before'), contains('DOT_SHORTHAND')),
        ),
      );
      expect(report.beforeFailed, 1);
      expect(report.beforeSkipped, isEmpty);
    });

    test('an entry that matches more cells than one fails', () async {
      final report = await check(
        [
          '| `ApplicationGatewayProbeProtocol` | `AzurermResourceGroup.name` |',
          '| `ApplicationGatewayProbeProtocol` | `AzurermResourceGroup.name` |',
        ],
        '''
- before: ApplicationGatewayProbeProtocol
  after: "`AzurermResourceGroup.name`"
  package: terradart_azure
  reason: Unpublished.
''',
      );
      expect(report.failures, [
        allOf(
          contains(migratingLedgerPath),
          contains('ApplicationGatewayProbeProtocol'),
          contains('matches 2 Before cells'),
        ),
      ]);
    });
  });

  test('a document without the `# Migrating terradart` title fails', () async {
    const seeded = '''
# Migrating

## Unreleased

| Before | After |
|---|---|
| `GooglePubsubTopic.name` | `GooglePubsubTopic.name` |
''';
    final failures = (await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
    )).failures;
    expect(failures, [contains('MIGRATING.md:1:')]);
  });

  test('every Before and After cell of MIGRATING.md compiles', () async {
    final report = await checkMigratingCells(Directory.current.path);
    expect(report.failures, isEmpty, reason: report.failures.join('\n'));
    final before = extractMigratingCells(
      File(migratingPath).readAsStringSync(),
    ).where((c) => c.before);
    expect(report.beforeFailed, 0);
    expect(report.beforeCompiled + report.beforeSkipped.length, before.length);
    final ledger = parseMigratingLedger(
      File(migratingLedgerPath).readAsStringSync(),
    );
    for (final skip in report.beforeSkipped) {
      expect(
        ledger,
        contains((
          before: skip.cell.code,
          after: skip.cell.after,
          package: skip.package,
          reason: skip.reason,
        )),
        reason: describeSkip(skip),
      );
      expect(
        report.before,
        isNot(contains(skip.package)),
        reason: describeSkip(skip),
      );
    }
  });

  test('an empty top section fails', () async {
    const seeded = '''
# Migrating terradart

## Unreleased

## 0.34.x → 0.35.0

| Before | After |
|---|---|
| `GooglePubsubTopic.name` | `GooglePubsubTopic.name` |
''';
    final failures = (await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
    )).failures;
    expect(failures, [contains('MIGRATING.md:3:')]);
  });

  test('a top section with an unknown heading fails', () async {
    const seeded = '''
# Migrating terradart

## Next release

| Before | After |
|---|---|
| `GooglePubsubTopic.name` | `GooglePubsubTopic.name` |
''';
    final failures = (await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
    )).failures;
    expect(failures, [contains('MIGRATING.md:3:')]);
  });

  test('a cell that does not compile fails', () async {
    const seeded = '''
# Migrating terradart

## 0.35.x → 0.36.0

### Seeded

**Breaking (`terradart_google`).** Text.

| Before | After |
|---|---|
| `PubsubSubscriptionDeliveryPushConfig(push)` | `PubsubSubscriptionDeliveryPushConfig(pushConfig: push)` |
| `GoogleStorageFtpUser('u', ...)` | `StorageFtpUserCredentials(credentialType: .literal('ssh'))` |
| `GooglePubsubTopic('t', name: name)` | `PubsubSubscriptionBigqueryConfig(useTopicSchema: .literal(true))` |
| `GooglePubsubTopic('t', name: name, ...)` | `warmType: .literal('ultrawarm1.medium.search')` |
| `GooglePubsubTopic.name` | `NoSuchType` |

### Azure only

**Breaking (`terradart_azure`).** Text.

| Before | After |
|---|---|
| `AzurermResourceGroup('rg')` | `GooglePubsubTopic('t', name: name)` |
''';
    final failures = (await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
      ledger: '''
- before: "AzurermResourceGroup('rg')"
  after: "`GooglePubsubTopic('t', name: name)`"
  package: terradart_azure
  reason: Unpublished.
''',
    )).failures;
    String at(int line) => failures.where((f) => f.contains(':$line:')).join();
    expect(at(11), contains('UNDEFINED_NAMED_PARAMETER'));
    expect(at(12), contains("'literal'"));
    expect(at(13), contains('MISSING_REQUIRED_ARGUMENT'));
    expect(at(14), contains('named-argument fragment'));
    expect(at(15), contains("Undefined class 'NoSuchType'"));
    expect(
      {
        for (final f in failures)
          int.parse(RegExp(r'^MIGRATING\.md:(\d+):').firstMatch(f)![1]!),
      },
      {11, 12, 13, 14, 15},
      reason: failures.join('\n'),
    );
    expect(failures.where((f) => f.contains(' Before ')), isEmpty);
  });
}
