import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'inline_fragments.dart';

void main() {
  final root = Directory.current.path;

  group('inlineFragments', () {
    test('reads Dart argument spans, not keys, scalars or before cells', () {
      const text = '''
Pass `role: role.ref` and `name: .literal('x')`, not `skip_wait: true`,
`regions: 2` or `deriveEnums: true`.

```dart
final inFence = `ignored: .literal(1)`;
```

| Before | After |
| --- | --- |
| `labels: .ref(other.labels)` | `labels: other.labels` |
''';
      expect(inlineFragments(text), [
        (line: 1, fragment: 'role: role.ref'),
        (line: 1, fragment: "name: .literal('x')"),
        (line: 10, fragment: 'labels: other.labels'),
      ]);
    });
  });

  test('an elision matches what it leaves out', () {
    expect(
      appearsIn('body: .content(...)', "body:.content(.literal('{}'))"),
      isTrue,
    );
    expect(appearsIn('scopeId: scope.scopeId', 'scopeId:scope.ref'), isFalse);
  });

  test('fails on a fragment no compiled Dart spells', () {
    final tmp = Directory.systemTemp.createTempSync('inline_fragments_');
    addTearDown(() => tmp.deleteSync(recursive: true));
    final doc = p.join(tmp.path, 'guide.md');
    File(doc).writeAsStringSync('''
Other resources take it too (`scopeId: scope.scopeId`), as the fence shows
with `scopeId: scope.ref` and `location: .literal(region)`.

```dart
final scope = GoogleGkeHubScope('s', scopeId: .literal('s'));
add(scope);
add(
  GoogleGkeHubNamespace(
    'n',
    scopeNamespaceId: .literal('n'),
    scopeId: scope.ref,
    scope: .literal('s'),
  ),
);
```
''');
    final source = File(p.join(tmp.path, 'main.dart'))
      ..writeAsStringSync("final x = Foo(location: .literal(region),);\n");
    expect(checkInlineFragments(root, docs: [doc], sources: [source.path]), [
      startsWith('$doc:1: `scopeId: scope.scopeId` appears in no compiled'),
    ]);
  });

  test('a fragment cannot borrow validity from another resource', () {
    final tmp = Directory.systemTemp.createTempSync('inline_fragments_');
    addTearDown(() => tmp.deleteSync(recursive: true));
    final doc = p.join(tmp.path, 'google.md');
    File(doc).writeAsStringSync(
      'For a Cloud Run IAM member, pass `service: apiService.serviceId`.\n',
    );
    expect(checkInlineFragments(root, docs: [doc]), [
      startsWith('$doc:1: `service: apiService.serviceId`'),
    ]);
  });

  test('every inline argument a guide teaches is compiled Dart', () {
    final failures = checkInlineFragments(root);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });
}
