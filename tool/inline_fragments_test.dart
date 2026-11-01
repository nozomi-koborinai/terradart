import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'inline_fragments.dart';

void main() {
  final root = Directory.current.path;

  group('inlineFragments', () {
    test('reads Dart argument spans, not keys, scalars or before cells', () {
      const text = '''
Pass `role: role.ref`, `name: .literal('x')`, `memorySize: memory` and
`dir: (env) => env.name`, not `skip_wait: true`, `regions: 2`,
`deriveEnums: true` or `env: dev (default)`.

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
        (line: 1, fragment: 'memorySize: memory'),
        (line: 2, fragment: 'dir: (env) => env.name'),
        (line: 11, fragment: 'labels: other.labels'),
      ]);
    });
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

  test('a fragment fails even where a fence of the document compiles it', () {
    final tmp = Directory.systemTemp.createTempSync('inline_fragments_');
    addTearDown(() => tmp.deleteSync(recursive: true));
    final doc = p.join(tmp.path, 'guide.md');
    File(doc).writeAsStringSync('''
The namespace takes the scope (`scopeId: scope.ref`):

```dart
final scope = add(GoogleGkeHubScope('s', scopeId: .literal('s')));
```
''');
    expect(checkInlineFragments(root, docs: [doc]), [
      startsWith('$doc:1: `scopeId: scope.ref` is an argument'),
    ]);
  });

  test('no guide teaches an argument in an inline span', () {
    final failures = checkInlineFragments(root);
    expect(failures, isEmpty, reason: failures.join('\n'));
  });
}
