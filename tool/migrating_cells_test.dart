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

    test('takes the packages of a lead that spans lines', () {
      final cells = extractMigratingCells(doc);
      expect(cells.first.packages, {'terradart_google', 'terradart_azure'});
      expect(cells.last.packages, {'terradart_aws'});
      expect(cells.first.section, 'A change');
    });
  });

  group('cellShapeError', () {
    MigratingCell cell(String code) =>
        (line: 1, section: 's', before: false, code: code, packages: const {});

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

  test('lastRelease reads the version every released CHANGELOG tops', () {
    final release = lastRelease(Directory.current.path, [
      'terradart_core',
      'terradart_google',
    ]);
    expect(release.packages, {'terradart_core', 'terradart_google'});
    expect(release.version, matches(RegExp(r'^\d+\.\d+\.\d+$')));
  });

  test('every Before and After cell of MIGRATING.md compiles', () async {
    final failures = await checkMigratingCells(Directory.current.path);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });

  test('a cell that does not compile fails', () async {
    const seeded = '''
## Unreleased

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
| `AzurermNotReleased('x')` | `GooglePubsubTopic('t', name: name)` |
''';
    final failures = await checkMigratingCells(
      Directory.current.path,
      migrating: seeded,
    );
    String at(int line) => failures.where((f) => f.contains(':$line:')).join();
    expect(at(9), contains('UNDEFINED_NAMED_PARAMETER'));
    expect(at(10), contains("'literal'"));
    expect(at(11), contains('MISSING_REQUIRED_ARGUMENT'));
    expect(at(12), contains('named-argument fragment'));
    expect(at(13), contains("Undefined class 'NoSuchType'"));
    expect(
      {
        for (final f in failures)
          int.parse(RegExp(r'^MIGRATING\.md:(\d+):').firstMatch(f)![1]!),
      },
      {9, 10, 11, 12, 13},
      reason: failures.join('\n'),
    );
    expect(failures.where((f) => f.contains(' Before ')), isEmpty);
  });
}
