import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'doc_renames.dart';

void main() {
  group('migratingSymbols', () {
    test('reads every backtick span, prose and indented tables included', () {
      expect(
        migratingSymbols('''
`OldProseType` is gone.

| Before | After |
|---|---|
| `GoogleThing('t', mode: OldThingMode.x)` | `GoogleThing('t', mode: .x)` |
| `Comparison.lt` | `Comparison.lessThan` |

1. In a list:

   | Old | New |
   |---|---|
   | `addExport` | `addOutput` |

```dart
final kind = FencedKind();
```
''').keys.toSet(),
        {
          'OldProseType',
          'GoogleThing',
          'OldThingMode',
          'OldThingMode.x',
          'Comparison.lt',
          'Comparison.lessThan',
          'addExport',
          'addOutput',
        },
      );
    });

    test('literals, patterns, labels and plain words name nothing', () {
      expect(
        migratingSymbols('''
`Foo(type: 'NONE')`, `Health<Protocol>Config`, `*IamMember`,
`{Aws,Oidc}Trust`, `…ServerTlsPolicy`, `Zone Settings Read`,
`Next: terradart plan`
''').keys.toSet(),
        {'Foo'},
      );
    });

    test('the repo MIGRATING.md names removed types in prose', () {
      expect(
        migratingSymbols(File(migratingPath).readAsStringSync()).keys,
        containsAll([
          'ResourceDependency',
          'ComputeFirewallAllowPolicy',
          'CloudRunV2WorkerPoolInstanceSplit',
        ]),
      );
    });
  });

  group('beforeColumns', () {
    test('finds the before column of every rename table form', () {
      expect(
        beforeColumns('''
| Input | Before | After |
|---|---|---|
| a | b | c |

| 0.31 | 0.32 |
|---|---|
| a | b |

  | Removed flag | Instead |
  |---|---|
  | a | b |

| Before you apply | After that |
|---|---|
| a | b |
'''),
        {3: 1, 7: 0, 11: 0},
      );
    });
  });

  group('PublicApi', () {
    final api = PublicApi.workspace(Directory.current.path);

    test('a member is declared by its type, a supertype or an extension', () {
      expect(api.declares('GoogleCloudRunV2Service.uri'), isTrue);
      expect(api.declares('GoogleCloudRunV2Service.ref'), isTrue);
      expect(api.declares('RefTo.literal'), isTrue);
      expect(api.declares('LambdaFunctionArchitectures.x8664'), isTrue);
      expect(api.declares('Stack.addOutput'), isTrue);
    });

    test('a word in the declaring file is no member', () {
      expect(api.declares('CloudflareApiShieldDiscoveryOperation.id'), isFalse);
      expect(api.declares('GoogleCloudRunV2Service.nameRef'), isFalse);
    });

    test('a type of the last release the workspace lacks is removed', () {
      final released = PublicApi.released(Directory.current.path);
      final removed = removedSymbols(
        migrating: const {},
        current: api,
        released: released,
      );
      expect(released.api.declares('GoogleCloudRunV2Service'), isTrue);
      expect(removed.keys, contains('ComputeFirewallAllowPolicy'));
      expect(removed.keys, isNot(contains('GoogleCloudRunV2Service')));
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

1. Prose in a list:

   | Before | After |
   |---|---|
   | `OldIndentedType` | `GooglePubsubTopic` |

`OldProseType` is gone; nothing replaces it.
''');
    });
    tearDown(() => tmp.deleteSync(recursive: true));

    List<String> check({List<String> docs = const [], String? lib}) =>
        checkDocRenames(
          root,
          migrating: migrating,
          docs: docs,
          libs: [?lib],
          allow: (notApi: const {}, mentions: const {}),
          released: false,
        );

    test('fails on a guide that still names a removed type', () {
      final doc = p.join(tmp.path, 'guide.md');
      File(doc).writeAsStringSync('''
# Guide

The `OldTopicKind` class is gone, and prose that says OldTopicKind is stale.

```dart
add(GooglePubsubTopic('t', retention: OldHelperType()));
```

| Before | After |
|---|---|
| `OldHelperType()` | `.new()` |

Use OldProseType, or `OldIndentedType`.

1. An upgrade:

   | Before | After |
   |---|---|
   | `OldIndentedType` | `.new()` |
''');
      expect(check(docs: [doc]), [
        startsWith('$doc:3: `OldTopicKind` was removed or renamed'),
        startsWith('$doc:6: `OldHelperType` was removed or renamed'),
        startsWith('$doc:13: `OldProseType` was removed or renamed'),
        startsWith('$doc:13: `OldIndentedType` was removed or renamed'),
      ]);
    });

    test('fails on a removed member whose name the file still spells', () {
      final doc = p.join(tmp.path, 'guide.md');
      File(
        doc,
      ).writeAsStringSync('Read `CloudflareApiShieldDiscoveryOperation.id`.\n');
      expect(checkDocRenames(root, docs: [doc], libs: [], released: false), [
        startsWith(
          '$doc:1: `CloudflareApiShieldDiscoveryOperation.id` was removed',
        ),
      ]);
    });

    test('fails on a doc comment reference, fence, span or prose', () {
      final lib = Directory(p.join(tmp.path, 'lib'))..createSync();
      final file = File(p.join(lib.path, 'a.dart'))
        ..writeAsStringSync('''
/// Takes an [OldHelperType]. A `OldTopicKind` in a description.
///
/// ```dart
/// final kind = OldTopicKind();
/// ```
///
/// Or an OldProseType.
final class A {}
''');
      final rel = p.relative(file.path, from: root);
      expect(check(lib: lib.path), [
        startsWith('$rel:1: `OldHelperType`'),
        startsWith('$rel:1: `OldTopicKind`'),
        startsWith('$rel:4: `OldTopicKind`'),
        startsWith('$rel:7: `OldProseType`'),
      ]);
    });

    test('fails on a doc comment reference no declaration resolves', () {
      final lib = Directory(p.join(tmp.path, 'lib'))..createSync();
      final file = File(p.join(lib.path, 'a.dart'))
        ..writeAsStringSync('''
/// Wraps [GooglePubsubTopic] and [GoogleCloudRunV2Service.uri], not
/// [CloudRunV2ServiceEmptyDirVolume] or [GooglePubsubTopic.nameRef].
final class A {}
''');
      final rel = p.relative(file.path, from: root);
      expect(check(lib: lib.path), [
        '$rel:2: [CloudRunV2ServiceEmptyDirVolume] names no declared symbol',
        '$rel:2: [GooglePubsubTopic.nameRef] names no declared symbol',
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

    test('a stale allow-list entry fails', () {
      expect(
        checkDocRenames(
          root,
          migrating: migrating,
          docs: const [],
          libs: const [],
          allow: (notApi: const {'NeverNamed': 'gone'}, mentions: const {}),
          released: false,
        ),
        [contains('notApi `NeverNamed`')],
      );
    });

    test('a MIGRATING.md that names no symbol fails loudly', () {
      File(migrating).writeAsStringSync('# Migrating\n');
      expect(check, throwsStateError);
    });
  });

  test('no doc names a symbol the public API removed', () {
    final failures = checkDocRenames(Directory.current.path);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });
}
