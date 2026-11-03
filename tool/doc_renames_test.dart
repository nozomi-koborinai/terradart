// Reading the public API resolves every package's export namespace.
@Timeout(Duration(minutes: 10))
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'doc_renames.dart';

void main() {
  group('migratingSymbols', () {
    test(
      'reads every backtick span, prose and indented tables included',
      () async {
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
      },
    );

    test('literals, patterns, labels and plain words name nothing', () async {
      expect(
        migratingSymbols('''
`Foo(type: 'NONE')`, `Health<Protocol>Config`, `*IamMember`,
`{Aws,Oidc}Trust`, `…ServerTlsPolicy`, `Zone Settings Read`,
`Next: terradart plan`
''').keys.toSet(),
        {'Foo'},
      );
    });

    test('the repo MIGRATING.md names removed types in prose', () async {
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
    test('finds the before column of every rename table form', () async {
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
    late final PublicApi api;
    setUpAll(
      () async => api = await PublicApi.workspace(Directory.current.path),
    );

    test(
      'a member is declared by its type, a supertype or an extension',
      () async {
        expect(api.declares('GoogleCloudRunV2Service.uri'), isTrue);
        expect(api.declares('GoogleCloudRunV2Service.ref'), isTrue);
        expect(api.declares('RefTo.literal'), isTrue);
        expect(api.declares('LambdaFunctionArchitectures.x8664'), isTrue);
        expect(api.declares('Stack.addOutput'), isTrue);
      },
    );

    test('a word in the declaring file is no member', () async {
      expect(api.declares('CloudflareApiShieldDiscoveryOperation.id'), isFalse);
      expect(api.declares('GoogleCloudRunV2Service.nameRef'), isFalse);
    });

    const release035 = {
      'terradart_cli': '0.35.0',
      'terradart_core': '0.35.0',
      'terradart_google': '0.35.0',
    };

    test('a type of the last release the workspace lacks is removed', () async {
      final released = await PublicApi.readReleased(release035);
      final removed = removedSymbols(
        migrating: const {},
        current: api,
        released: released,
      );
      expect(released.version, '0.35.0');
      expect(released.api.declares('GoogleCloudRunV2Service'), isTrue);
      expect(removed.keys, contains('ComputeFirewallAllowPolicy'));
      expect(removed.keys, isNot(contains('GoogleCloudRunV2Service')));
    });

    test('the last release includes the CLI and top-level names', () async {
      final released = (await PublicApi.readReleased(release035)).api;
      expect(released.symbols, containsAll(['runStack', 'runTerradart']));
    });

    test('an unexported declaration is no public API', () async {
      Directory workspace(String exports) {
        final tmp = Directory.systemTemp.createTempSync('doc_renames_cli_');
        addTearDown(() => tmp.deleteSync(recursive: true));
        final lib = p.join(tmp.path, 'packages', 'terradart_cli', 'lib');
        Directory(p.join(lib, 'src')).createSync(recursive: true);
        File(
          p.join(lib, 'terradart_cli.dart'),
        ).writeAsStringSync("export 'src/cli.dart' show $exports;\n");
        File(p.join(lib, 'src', 'cli.dart')).writeAsStringSync('''
Future<void> runStack(List<String> args) async {}
Future<int> runTerradart(List<String> args) async => 0;
''');
        return tmp;
      }

      final current = await PublicApi.workspace(workspace('runStack').path);
      expect(current.declares('runStack'), isTrue);
      expect(current.declares('runTerradart'), isFalse);
      final removed = removedSymbols(
        migrating: const {},
        current: current,
        released: (
          version: '0.35.0',
          api: await PublicApi.workspace(
            workspace('runStack, runTerradart').path,
          ),
        ),
      );
      expect(removed.keys, contains('runTerradart'));
      expect(
        staleMentions(
          'guide.md',
          'Call runTerradart(args) from your own main.\n',
          removed,
        ),
        [(file: 'guide.md', line: 1, symbol: 'runTerradart')],
      );
    });

    test('a removed top-level name in prose fails', () async {
      final tmp = Directory.systemTemp.createTempSync('doc_renames_top_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      File(p.join(tmp.path, 'old.dart')).writeAsStringSync('''
void removedTopLevelHelper({required String projectId}) {}
const removedTopLevelConstant = 1;
void _privateHelper() {}
final class Kept {
  void localOnly() {
    void nestedHelper() {}
  }
}
''');
      final removed = removedSymbols(
        migrating: const {},
        current: api,
        released: (version: '0.0.1', api: PublicApi.read([tmp.path])),
      );
      expect(
        removed.keys,
        containsAll(['removedTopLevelHelper', 'removedTopLevelConstant']),
      );
      expect(removed.keys, isNot(contains('_privateHelper')));
      expect(removed.keys, isNot(contains('nestedHelper')));
      expect(
        staleMentions(
          'guide.md',
          'Call removedTopLevelHelper before synth.\n',
          removed,
        ),
        [(file: 'guide.md', line: 1, symbol: 'removedTopLevelHelper')],
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

1. Prose in a list:

   | Before | After |
   |---|---|
   | `OldIndentedType` | `GooglePubsubTopic` |

`OldProseType` is gone; nothing replaces it.
''');
    });
    tearDown(() => tmp.deleteSync(recursive: true));

    Future<List<String>> check({List<String> docs = const [], String? lib}) =>
        checkDocRenames(
          root,
          migrating: migrating,
          docs: docs,
          libs: [?lib],
          allow: (notApi: const {}, mentions: const {}),
          released: false,
        );

    test('fails on a guide that still names a removed type', () async {
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
      expect(await check(docs: [doc]), [
        startsWith('$doc:3: `OldTopicKind` was removed or renamed'),
        startsWith('$doc:6: `OldHelperType` was removed or renamed'),
        startsWith('$doc:13: `OldProseType` was removed or renamed'),
        startsWith('$doc:13: `OldIndentedType` was removed or renamed'),
      ]);
    });

    test(
      'fails on a removed member whose name the file still spells',
      () async {
        final doc = p.join(tmp.path, 'guide.md');
        File(doc).writeAsStringSync(
          'Read `CloudflareApiShieldDiscoveryOperation.id`.\n',
        );
        expect(
          await checkDocRenames(root, docs: [doc], libs: [], released: false),
          [
            startsWith(
              '$doc:1: `CloudflareApiShieldDiscoveryOperation.id` was removed',
            ),
          ],
        );
      },
    );

    test('fails on a doc comment reference, fence, span or prose', () async {
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
      expect(await check(lib: lib.path), [
        startsWith('$rel:1: `OldHelperType`'),
        startsWith('$rel:1: `OldTopicKind`'),
        startsWith('$rel:4: `OldTopicKind`'),
        startsWith('$rel:7: `OldProseType`'),
      ]);
    });

    test('fails on a capitalized doc comment reference no declaration '
        'resolves, and reads no lowercase one', () async {
      final lib = Directory(p.join(tmp.path, 'lib'))..createSync();
      final file = File(p.join(lib.path, 'a.dart'))
        ..writeAsStringSync('''
/// Wraps [GooglePubsubTopic] and [GoogleCloudRunV2Service.uri], not
/// [CloudRunV2ServiceEmptyDirVolume] or [GooglePubsubTopic.nameRef].
/// See [noSuchFunction].
final class A {}
''');
      final rel = p.relative(file.path, from: root);
      expect(await check(lib: lib.path), [
        '$rel:2: [CloudRunV2ServiceEmptyDirVolume] names no declared symbol',
        '$rel:2: [GooglePubsubTopic.nameRef] names no declared symbol',
      ]);
    });

    test('a symbol the public API still declares is not removed', () async {
      final doc = p.join(tmp.path, 'guide.md');
      File(doc).writeAsStringSync('Use `GooglePubsubTopic`.\n');
      File(migrating).writeAsStringSync('''
| Before | After |
|---|---|
| `GooglePubsubTopic` | `GoogleTopic` |
''');
      expect(await check(docs: [doc]), isEmpty);
    });

    test('a stale allow-list entry fails', () async {
      expect(
        await checkDocRenames(
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

    test('a MIGRATING.md that names no symbol fails loudly', () async {
      File(migrating).writeAsStringSync('# Migrating\n');
      await expectLater(check(), throwsStateError);
    });
  });

  group('a doc names only the public API', () {
    Directory workspace(Map<String, String> files) {
      final tmp = Directory.systemTemp.createTempSync('doc_renames_ws_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      for (final MapEntry(key: path, value: text) in files.entries) {
        File(p.join(tmp.path, path))
          ..createSync(recursive: true)
          ..writeAsStringSync(text);
      }
      return tmp;
    }

    const migrating = '''
| Before | After |
|---|---|
| `runTerradart` | `runStack` |
''';

    test('a guide that names a never-exported declaration fails', () async {
      final ws = workspace({
        'MIGRATING.md': migrating,
        'packages/terradart_core/lib/terradart_core.dart':
            "export 'src/a.dart' show Stack;\n",
        'packages/terradart_core/lib/src/a.dart': '''
final class Stack {}

/// Written by [AppExportsEmitter.emit], which only synth calls.
final class AppExportsEmitter {
  void emit(Stack stack) {}
}
''',
        'guide.md': 'Call `AppExportsEmitter.emit(stack)` after synth.\n',
      });
      expect(
        await checkDocRenames(
          ws.path,
          migrating: p.join(ws.path, 'MIGRATING.md'),
          docs: ['guide.md'],
          libs: ['packages/terradart_core/lib'],
          allow: (notApi: const {}, mentions: const {}),
          released: false,
        ),
        [startsWith('guide.md:1: `AppExportsEmitter')],
      );
    });

    test('a public library page may not name an unexported name', () async {
      final ws = workspace({
        'MIGRATING.md': migrating,
        'packages/terradart_cli/lib/terradart_cli.dart': '''
/// Call `runTerradart(args)` from your own main.
library;

export 'src/cli.dart' show runStack;
''',
        'packages/terradart_cli/lib/src/cli.dart': '''
Future<void> runStack(List<String> args) async {}

/// The entry point [runStack] replaced; `runTerradart` stays internal.
Future<int> runTerradart(List<String> args) async => 0;
''',
      });
      expect(
        await checkDocRenames(
          ws.path,
          migrating: p.join(ws.path, 'MIGRATING.md'),
          docs: const [],
          libs: ['packages/terradart_cli/lib'],
          allow: (notApi: const {}, mentions: const {}),
          released: false,
        ),
        [
          startsWith(
            'packages/terradart_cli/lib/terradart_cli.dart:1: `runTerradart`',
          ),
        ],
      );
    });

    test('a code span split across lines is one span', () async {
      expect(
        staleMentions(
          'guide.md',
          'Read `CloudflareApiShieldDiscoveryOperation.\nid` instead.\n',
          {'CloudflareApiShieldDiscoveryOperation.id': 'gone'},
        ),
        [
          (
            file: 'guide.md',
            line: 1,
            symbol: 'CloudflareApiShieldDiscoveryOperation.id',
          ),
        ],
      );
    });

    test('a supertype outside the libraries declares no member', () async {
      final tmp = workspace({
        'lib/foo.dart': '''
import 'package:terradart_core/terradart_core.dart';

final class Foo extends Resource {
  Foo() : super('x', 'y');
  String get real => '';
}
''',
      });
      final api = PublicApi.read([tmp.path]);
      expect(api.declares('Foo.real'), isTrue);
      expect(api.declares('Foo.bogus'), isFalse);
    });

    test('a removed top-level name is not a parameter of that name', () async {
      final released = workspace({'old.dart': 'void fooHelper() {}\n'});
      final current = workspace({
        'new.dart': 'void other({String? fooHelper}) {}\n',
      });
      expect(
        removedSymbols(
          migrating: const {},
          current: PublicApi.read([current.path]),
          released: (version: '0.0.1', api: PublicApi.read([released.path])),
        ).keys,
        contains('fooHelper'),
      );
    });
  });

  group('a removed name counts however a doc spells it', () {
    Directory dir(String text) {
      final tmp = Directory.systemTemp.createTempSync('doc_renames_ws_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      File(p.join(tmp.path, 'lib.dart')).writeAsStringSync(text);
      return tmp;
    }

    Set<String> removed(String released, String current) => removedSymbols(
      migrating: const {},
      current: PublicApi.read([dir(current).path]),
      released: (version: '0.0.1', api: PublicApi.read([dir(released).path])),
    ).keys.toSet();

    test('behind an import prefix', () {
      expect(
        {
          for (final m in staleMentions(
            'guide.md',
            'Call `cli.runTerradart(args)`, read `api.OldEnum.oldValue`, '
                'or `core.AppExportsEmitter.emit`.\n',
            {
              'runTerradart': 'internal',
              'OldEnum.oldValue': 'gone',
              'AppExportsEmitter.emit': 'internal',
            },
          ))
            m.symbol,
        },
        {'runTerradart', 'OldEnum.oldValue', 'AppExportsEmitter.emit'},
      );
    });

    test('all lowercase, in code', () {
      expect(
        [
          for (final m in staleMentions(
            'guide.md',
            'Call `emit` after synth; emit is a word in prose.\n',
            {'emit': 'gone'},
          ))
            (m.line, m.symbol),
        ],
        [(1, 'emit')],
      );
    });

    test('a member a subtype inherited', () {
      expect(
        removed(
          'class Base { void gone() {} }\nclass Child extends Base {}\n',
          'class Base {}\nclass Child extends Base {}\n',
        ),
        containsAll(['Base.gone', 'Child.gone']),
      );
    });

    test('a member read through a typedef', () {
      expect(
        removed(
          'class Hidden { void gone() {} }\ntypedef PublicName = Hidden;\n',
          'class Hidden {}\ntypedef PublicName = Hidden;\n',
        ),
        contains('PublicName.gone'),
      );
    });

    test('a MIGRATING.md span wrapped across lines', () {
      expect(
        migratingSymbols(
          'Pattern: `Outer(policy:\nTfArg.literal(WrappedEnum.redirect))`.\n',
        ).keys,
        contains('WrappedEnum'),
      );
      expect(
        migratingSymbols(File(migratingPath).readAsStringSync()).keys,
        containsAll([
          'CloudfrontDistributionDefaultCacheBehaviorViewerProtocolPolicy',
          'WorkspaceswebSessionLoggerEventFilterIncludeOption',
        ]),
      );
    });
  });

  test('no doc names a symbol the public API removed', () async {
    final failures = await checkDocRenames(Directory.current.path);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });
}
