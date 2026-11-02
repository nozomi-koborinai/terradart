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
        (line: 1, section: 's', before: false, code: code);

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
| `AzurermResourceGroup.location` | `AzurermResourceGroup('rg')` | `AzurermResourceGroup.location` |
| `AzurermMssqlVirtualMachine.dayOfWeek` | `MssqlVirtualMachineDayOfWeek` | `MssqlVirtualMachineScheduleDayOfWeek` |
''';
    final report = await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
    );
    expect(report.failures, [
      allOf(
        contains('MIGRATING.md:11: Before'),
        contains('DefinitelyNoSuchType'),
      ),
      for (final line in [13, 14])
        allOf(
          contains('MIGRATING.md:$line: Before'),
          contains('does not belong in MIGRATING.md'),
        ),
    ]);
    expect(report.beforeCompiled, 1);
    expect(report.beforeFailed, 3);
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

  test('a Before cell of a package the previous release lacks does not '
      'belong in MIGRATING.md', () async {
    const seeded = '''
# Migrating terradart

## 0.35.x → 0.36.0

| Before | After |
|---|---|
| `AzurermResourceGroup('rg')` | `AzurermResourceGroup.name` |
''';
    final report = await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
    );
    expect(report.failures, [
      allOf(
        contains('MIGRATING.md:7: Before'),
        contains('terradart_azure has no 0.35.x release'),
        contains('does not belong in MIGRATING.md'),
      ),
    ]);
    expect(report.beforeFailed, 1);
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
    expect(report.beforeCompiled, before.length);
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
''';
    final failures = (await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
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
