import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'doc_renames.dart';

void main() {
  Set<String> removed(String md) => {
    for (final r in RenameRecord.parse(md).rows) ...r.removed,
  };

  group('RenameRecord', () {
    test('reads every rename table header form', () {
      expect(
        removed('''
| Before | After |
|---|---|
| `OldMode` (google-beta) | `NewMode` |

| 0.31 | 0.32 |
|---|---|
| `dependsOn: [ResourceDependency(api)]` | `dependsOn: [api]` |

| Old (0.8.0-dev) | New (0.9.0) | Barrel |
|---|---|---|
| `Settings(` | `SqlDatabaseInstanceSettings(` | `sql` |

| Input | Before | After |
|---|---|---|
| `Foo.mode` | `OldFooMode` | `FooMode` |

| Removed factory (google 8.0) | Move to |
|---|---|
| `GoogleNotebooksInstance` | `GoogleWorkbenchInstance` |

| Removed factory | Terraform type |
|---|---|
| `GoogleIapBrand` | `google_iap_brand` |
'''),
        {
          'OldMode',
          'ResourceDependency',
          'Settings',
          'OldFooMode',
          'GoogleNotebooksInstance',
          'GoogleIapBrand',
        },
      );
    });

    test('a type both cells name is kept, a renamed member is removed', () {
      expect(
        removed('''
| Before | After |
|---|---|
| `Comparison.lt` | `Comparison.lessThan` |
| `GoogleThing('t', mode: OldThingMode.x)` | `GoogleThing('t', mode: .x)` |
'''),
        {'Comparison.lt', 'OldThingMode'},
      );
    });

    test('string literals, patterns, globs and plain words name nothing', () {
      expect(
        removed('''
| Before | After |
|---|---|
| `Foo(type: 'NONE')` | `Foo(type: .none)` |
| `Health<Protocol>Config` | `HealthCheck<Protocol>Config` |
| `*IamMember` factories | `IamMember` |
| `Zone Settings Read` | `Zone Settings Write` |
'''),
        isEmpty,
      );
    });

    test('a table without a before column is no rename table', () {
      expect(
        removed('''
| Before you apply | After that |
|---|---|
| `OldMode` | `NewMode` |

| Change | Why |
|---|---|
| `OldKind` | renamed |
'''),
        isEmpty,
      );
    });

    test('finds the Unreleased section', () {
      final record = RenameRecord.parse(
        '# M\n\n## Unreleased\n\n### A\n\ntext\n\n## 0.1.x → 0.2.0\n',
      );
      expect(record.unreleased, (3, 8));
      expect(record.sectionOf(7), 5);
    });

    test('the repo MIGRATING.md has rename rows', () {
      expect(
        removed(File(migratingPath).readAsStringSync()),
        containsAll([
          'ResourceDependency',
          'CloudRunV2ServiceServiceContainer',
        ]),
      );
    });
  });

  group('checkDocRenames', () {
    late Directory tmp;
    late String migrating;
    final root = Directory.current.path;

    setUp(() {
      tmp = Directory.systemTemp.createTempSync('doc_renames_');
      migrating = p.join(tmp.path, 'MIGRATING.md');
      File(migrating).writeAsStringSync('''
# Migrating

## Unreleased

### Helpers are renamed

`OldHelperType` is removed.

| Before | After |
|---|---|
| `GooglePubsubTopic('t', retention: OldHelperType())` | `GooglePubsubTopic('t', retention: .new())` |

### Enums

| Input | Before | After |
|---|---|---|
| `OldHelperType.mode` | `TfArg<String>` | `OldHelperMode` |

## 0.1.x → 0.2.0

| Before | After |
|---|---|
| `OldTopicKind` | `GooglePubsubTopic` |

`OldTopicKind` was the old name.
''');
    });
    tearDown(() => tmp.deleteSync(recursive: true));

    List<String> check({List<String> docs = const [], String? lib}) =>
        checkDocRenames(root, migrating: migrating, docs: docs, libs: [?lib]);

    test('fails on a guide that still names a removed type', () {
      final doc = p.join(tmp.path, 'guide.md');
      File(doc).writeAsStringSync('''
# Guide

The `OldTopicKind` class is gone, and prose that says OldTopicKind is fine.

```dart
add(GooglePubsubTopic('t', retention: OldHelperType()));
```

| Before | After |
|---|---|
| `OldHelperType()` | `.new()` |
''');
      expect(check(docs: [doc]), [
        startsWith('$doc:3: `OldTopicKind` was removed or renamed'),
        startsWith('$doc:6: `OldHelperType` was removed or renamed'),
      ]);
    });

    test('fails on a doc comment fence or reference, not a backtick', () {
      final lib = Directory(p.join(tmp.path, 'lib'))..createSync();
      final file = File(p.join(lib.path, 'a.dart'))
        ..writeAsStringSync('''
/// Takes an [OldHelperType]. A `OldTopicKind` in an upstream description.
///
/// ```dart
/// final kind = OldTopicKind();
/// ```
final class A {}
''');
      final rel = p.relative(file.path, from: root);
      expect(check(lib: lib.path), [
        startsWith('$rel:1: `OldHelperType`'),
        startsWith('$rel:4: `OldTopicKind`'),
      ]);
    });

    test('in MIGRATING.md, only another Unreleased section is stale', () {
      expect(check(docs: [migrating]), [
        startsWith('$migrating:17: `OldHelperType` was removed or renamed'),
      ]);
    });

    test('a symbol the public API still declares is not removed', () {
      final doc = p.join(tmp.path, 'guide.md');
      File(doc).writeAsStringSync('Use `GooglePubsubTopic`.\n');
      File(migrating).writeAsStringSync('''
| Before | After |
|---|---|
| `GooglePubsubTopic` | `GoogleTopic` |
''');
      expect(check(docs: [doc]), isEmpty);
    });

    test('a MIGRATING.md with no rename row fails loudly', () {
      File(migrating).writeAsStringSync('# Migrating\n');
      expect(check, throwsStateError);
    });
  });

  test('no doc names a symbol a MIGRATING.md rename table removed', () {
    final failures = checkDocRenames(Directory.current.path);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });
}
