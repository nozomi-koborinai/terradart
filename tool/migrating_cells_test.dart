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
        '${c.line} ${c.section} ${c.before} ${c.code} ${c.renamedTo}',
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

    test('pairs a bare Before name with the bare names it was renamed to', () {
      const renames = '''
## Unreleased

| Before | After |
|---|---|
| `OldName` | `NewName` and `TfArg<String>` |
| `Old('x')` | `NewName` |
''';
      expect(
        [
          for (final c in extractMigratingCells(renames))
            if (c.before) c.renamedTo,
        ],
        [
          ['NewName'],
          <String>[],
        ],
      );
      expect(extractMigratingCells(doc).first.renamedTo, isEmpty);
    });
  });

  group('cellShapeError', () {
    MigratingCell cell(String code) =>
        (line: 1, section: 's', before: false, code: code, renamedTo: const []);

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
| `AzurermAadb2cDirectory.skuName` | `Aadb2cDirectorySkuNameBefore036` | `Aadb2cDirectorySkuName` |
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
    ]);
    expect(report.beforeCompiled, 1);
    expect(report.beforeFailed, 1);
    expect(
      [for (final s in report.beforeSkipped) (s.cell.line, s.name, s.package)],
      [
        (13, 'AzurermResourceGroup', 'terradart_azure'),
        (14, 'Aadb2cDirectorySkuNameBefore036', 'terradart_azure'),
      ],
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
    final sources = <String, String>{};
    bool names(String pkg, String name) =>
        RegExp(
          r'\b'
          '$name'
          r'\b',
        ).hasMatch(
          sources[pkg] ??= [
            for (final f in Directory(
              'packages/$pkg/lib',
            ).listSync(recursive: true).whereType<File>())
              if (f.path.endsWith('.dart')) f.readAsStringSync(),
          ].join('\n'),
        );
    for (final skip in report.beforeSkipped) {
      final reason = describeSkip(skip);
      expect(report.before, isNot(contains(skip.package)), reason: reason);
      expect(
        names(skip.package, skip.name) ||
            skip.cell.code == skip.name &&
                skip.cell.renamedTo.any((n) => names(skip.package, n)),
        isTrue,
        reason:
            '$reason: neither ${skip.package} nor the type it was renamed '
            'to there names ${skip.name}',
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
