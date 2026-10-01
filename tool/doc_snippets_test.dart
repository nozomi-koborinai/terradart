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
      expect(
        lib("final topic = add(GooglePubsubTopic(localName: 'o'));"),
        isFalse,
      );
      expect(lib("addOutput('x', .ref(topic.id));"), isFalse);
      expect(lib('GoogleStorageBucket(localName: "a");'), isFalse);
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
  localName: 'orders',
  nmae: .literal('orders'),
));
```
''');
      final failures = await checkDocSnippets(root, docs: [doc]);
      expect(
        failures,
        contains(startsWith("$doc:6: The named parameter 'nmae'")),
      );
      expect(failures, contains(startsWith('$doc:4: ')));
    },
  );

  test('every Dart snippet in the README and website docs compiles', () async {
    final failures = await checkDocSnippets(Directory.current.path);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });
}
