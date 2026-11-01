@Timeout(Duration(minutes: 10))
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'doc_snippets.dart';

void main() {
  group('extractSnippets', () {
    test('finds dart fences with their first code line', () {
      const doc = '''
# Title

```dart
final a = 1;
```

```yaml
x: 1
```

- item

  ```dart
  // lib/b.dart
  final b = 2;
  ```
''';
      final s = extractSnippets('d.md', doc);
      expect(s.map((x) => x.line), [4, 14]);
      expect(s[0].code, 'final a = 1;');
      expect(s[1].code, '// lib/b.dart\nfinal b = 2;');
    });

    test('leaves out a fence after a skip marker with a reason', () {
      const doc = '''
<!-- doc-snippets: skip: needs genkit -->
```dart
vertexAI();
```

<!-- doc-snippets: skip: -->
```dart
final kept = 1;
```
''';
      final s = extractSnippets('d.md', doc);
      expect(s.map((x) => x.code), ['final kept = 1;']);
    });

    test('reads the path comment after the pitch marker', () {
      final s = Snippet(
        doc: 'README.md',
        line: 1,
        code: '// docs:pitch:start\n// lib/app_stack.dart\nimport "x";',
      );
      expect(s.path, 'lib/app_stack.dart');
      expect(
        Snippet(doc: 'd', line: 1, code: '// a comment\nfinal x = 1;').path,
        isNull,
      );
    });
  });

  group('extractDocCommentSnippets', () {
    test('finds dart fences and flags fences without a language', () {
      const source = '''
/// A topic.
///
/// ```dart
/// add(GooglePubsubTopic('o', name: .literal('o')));
/// ```
///
/// ```text
/// a -> b
/// ```
///
/// ```
/// a -> b
/// ```
final class A {}
''';
      final found = extractDocCommentSnippets('a.dart', source);
      expect(found.snippets.map((s) => (s.line, s.code)), [
        (4, "add(GooglePubsubTopic('o', name: .literal('o')));"),
      ]);
      expect(found.unlabeled, [startsWith('a.dart:11: ')]);
    });
  });

  group('isLibrary', () {
    bool lib(String code) => Snippet(doc: 'd', line: 1, code: code).isLibrary;

    test('declarations and directives are libraries', () {
      expect(lib("import 'x.dart';"), isTrue);
      expect(lib('final class A extends Stack {}'), isTrue);
      expect(lib('enum Env { dev }'), isTrue);
      expect(lib('Future<void> main() async {}'), isTrue);
      expect(lib('String id() => "";'), isTrue);
      expect(lib('// note\nbool f(String t) => true;'), isTrue);
    });

    test('statements are Stack constructor bodies', () {
      expect(lib("final topic = add(GooglePubsubTopic('o'));"), isFalse);
      expect(lib("addOutput('x', topic.id);"), isFalse);
      expect(lib('GoogleStorageBucket("a");'), isFalse);
    });
  });

  test('renderSnippet maps sandbox lines back to the document', () {
    final s = Snippet(doc: 'd.md', line: 10, code: 'add(x);\nadd(y);');
    final f = renderSnippet(s, 1);
    expect(f.path, 'lib/snippet_1.dart');
    expect(f.contents, contains('extends Stack'));
    expect(f.docLine(f.prefix + 2), 11);
    expect(f.docLine(1), 10);
  });

  test(
    'reports a snippet that does not compile at its document line',
    () async {
      final root = Directory.current.path;
      final tmp = await Directory.systemTemp.createTemp('doc_snippets_case_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final doc = p.join(tmp.path, 'broken.md');
      File(doc).writeAsStringSync('''
Intro.

```dart
final topic = add(GooglePubsubTopic(
  'orders',
  nmae: .literal('orders'),
));
```
''');
      final failures = await checkDocSnippets(root, docs: [doc], libs: []);
      expect(
        failures,
        contains(startsWith("$doc:6: The named parameter 'nmae'")),
      );
      expect(failures, contains(startsWith('$doc:4: ')));
    },
  );

  test('a doc-comment fence may read values it does not build', () async {
    final root = Directory.current.path;
    final tmp = await Directory.systemTemp.createTemp('doc_snippets_lib_');
    addTearDown(() => tmp.deleteSync(recursive: true));
    final file = p.join(tmp.path, 'a.dart');
    File(file).writeAsStringSync('''
/// ```dart
/// final build = GoogleFirebaseAppHostingBuild(
///   'v1',
///   backend: backend.ref,
///   location: .literal(region),
///   buildId: .literal('v1'),
///   source: .container(
///     FirebaseAppHostingBuildContainer(image: .literal('img')),
///   ),
/// );
/// ```
///
/// ```dart
/// add(GooglePubsubTopic('o', nmae: .literal(topicName)));
/// ```
final class A {}
''');
    final failures = await checkDocSnippets(root, docs: [], libs: [tmp.path]);
    final rel = p.relative(file, from: root);
    expect(failures, everyElement(startsWith('$rel:14: ')));
    expect(
      failures,
      contains(startsWith("$rel:14: The named parameter 'nmae' isn't defined")),
    );
  });

  test(
    'a doc-comment fence may not call a function nothing declares',
    () async {
      final root = Directory.current.path;
      final tmp = await Directory.systemTemp.createTemp('doc_snippets_fn_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final file = p.join(tmp.path, 'a.dart');
      File(file).writeAsStringSync('''
/// ```dart
/// import 'package:terradart_core/terradart_core.dart';
///
/// final removed = removedTopLevelHelper(projectId: 'p');
/// ```
final class A {}
''');
      final failures = await checkDocSnippets(root, docs: [], libs: [tmp.path]);
      final rel = p.relative(file, from: root);
      expect(failures, [
        startsWith(
          "$rel:4: The function 'removedTopLevelHelper' isn't defined",
        ),
      ]);
    },
  );

  group('a doc-comment stand-in is a value, not an API', () {
    Future<List<String>> check(String body) async {
      final root = Directory.current.path;
      final tmp = await Directory.systemTemp.createTemp('doc_snippets_dyn_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      File(p.join(tmp.path, 'a.dart')).writeAsStringSync('''
/// ```dart
/// import 'package:terradart_google/iam.dart';
///
$body
/// ```
final class A {}
''');
      return checkDocSnippets(root, docs: [], libs: [tmp.path]);
    }

    test('a method call through it fails', () async {
      expect(
        await check(
          "/// final removed = service.removedTopLevelHelper(projectId: 'p');",
        ),
        isNotEmpty,
      );
    });

    test('a typed argument read through it fails', () async {
      expect(
        await check('''
/// final grant = GoogleProjectIamMember(
///   'grant',
///   project: .literal('p'),
///   role: .literal('roles/viewer'),
///   member: identity.member,
/// );'''),
        isNotEmpty,
      );
    });
  });

  test('a doc-comment fence compiles against its own package', () async {
    final root = Directory.current.path;
    final tmp = await Directory.systemTemp.createTemp('doc_snippets_cli_');
    addTearDown(() => tmp.deleteSync(recursive: true));
    final lib = Directory(p.join(tmp.path, 'terradart_cli', 'lib'))
      ..createSync(recursive: true);
    File(p.join(lib.path, 'a.dart')).writeAsStringSync('''
/// ```dart
/// import 'package:terradart_cli/terradart_cli.dart';
///
/// final pinned = kOpenTofuVersion;
/// ```
library;
''');
    final failures = await checkDocSnippets(root, docs: [], libs: [lib.path]);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });

  group('skip markers', () {
    Future<List<String>> check(String fence) async {
      final tmp = await Directory.systemTemp.createTemp('doc_snippets_skip_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final doc = p.join(tmp.path, 'README.md');
      File(doc).writeAsStringSync(
        '<!-- doc-snippets: skip: needs a package -->\n'
        '```dart\n$fence\n```\n',
      );
      return checkDocSnippets(Directory.current.path, docs: [doc], libs: []);
    }

    test('a skipped fence that needs only the workspace fails', () async {
      final failures = await check(
        "import 'dart:io';\n\nfinal home = Platform.environment['HOME'];",
      );
      expect(failures, [contains('outside the workspace')]);
      expect(
        await check(
          "import 'package:terradart_core/terradart_core.dart';\n\n"
          'final s = Stack;',
        ),
        [contains('outside the workspace')],
      );
    });

    test('a skipped fence that imports a package outside the workspace '
        'passes', () async {
      expect(
        await check("import 'package:flutter/material.dart';\n\nvoid f() {}"),
        isEmpty,
      );
    });
  });

  test(
    'a fence reads the generated reader checked in beside its document',
    () async {
      final tmp = await Directory.systemTemp.createTemp('doc_snippets_reader_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      File(p.join(tmp.path, 'pubspec.yaml')).writeAsStringSync('name: demo\n');
      File(p.join(tmp.path, 'app', 'lib', 'generated', 'demo_stack.app.dart'))
        ..createSync(recursive: true)
        ..writeAsStringSync('''
final class DemoStackOutputs {
  const DemoStackOutputs.fromDartDefine();
  String get apiUrl => 'https://example.com';
}
''');
      final doc = p.join(tmp.path, 'README.md');
      File(doc).writeAsStringSync('''
```dart
import 'generated/demo_stack.app.dart';

const outputs = DemoStackOutputs.fromDartDefine();
final url = outputs.apiUrl;
```
''');
      final failures = await checkDocSnippets(
        Directory.current.path,
        docs: [doc],
        libs: [],
      );
      expect(failures, isEmpty, reason: failures.join('\n'));
    },
  );

  test('doc comments of every workspace package but codegen compile', () {
    final workspace = File('pubspec.yaml').readAsStringSync();
    expect(
      docCommentPackages.toSet(),
      {
        for (final m in RegExp(
          r'^\s+-\s+packages/(terradart_\w+)\s*$',
          multiLine: true,
        ).allMatches(workspace))
          m.group(1)!,
      }..remove('terradart_codegen'),
    );
  });

  group('stablePackages', () {
    test('reads the whole promise, abbreviations included', () {
      expect(
        stablePackages(
          '| **1.0.0** | TBD | Two minors. Stable SemVer for `terradart_core`, '
          'every provider package (e.g. `terradart_aws`), and `terradart_cli`. '
          '`terradart_codegen` and `terradart_hcl` stay outside the promise. |',
        ),
        {'terradart_core', 'terradart_aws', 'terradart_cli'},
      );
    });

    test('names only workspace packages', () {
      final workspace = File('pubspec.yaml').readAsStringSync();
      for (final pkg in stablePackages(File(statusPath).readAsStringSync())) {
        expect(workspace, contains('packages/$pkg'), reason: pkg);
      }
    });

    test('reads the packages of the 1.0.0 row', () {
      expect(
        stablePackages(
          '| **1.0.0** | TBD | Two minors. Stable SemVer for `terradart_core`, '
          'every provider package (`terradart_aws`), and `terradart_cli`. '
          '`terradart_codegen` stays outside the promise. |',
        ),
        {'terradart_core', 'terradart_aws', 'terradart_cli'},
      );
    });

    test('fails loudly without a 1.0.0 row', () {
      expect(() => stablePackages('| **Beta** | TBD |'), throwsStateError);
    });

    test('every stable package has its doc comments compiled', () {
      final stable = stablePackages(File(statusPath).readAsStringSync());
      expect(stable, containsAll(['terradart_azure', 'terradart_cli']));
      expect(docCommentPackages, containsAll(stable));
    });
  });

  test('the documents include the example and cookbook READMEs', () {
    final docs = snippetDocuments(Directory.current.path);
    expect(docs, contains('examples/aws_lambda_quickstart/README.md'));
    expect(docs, contains('cookbook/single-project-app/README.md'));
  });

  test('every Dart snippet in the READMEs, the website docs and the doc '
      'comments compiles', () async {
    final failures = await checkDocSnippets(Directory.current.path);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });
}
