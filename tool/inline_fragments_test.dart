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
`dir: (env) => env.name`, `Bucket('b', labels: other.labels)`, not
`skip_wait: true`, `regions: 2`, `Bucket(user:a)`,
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
        (line: 2, fragment: "Bucket('b', labels: other.labels)"),
        (line: 12, fragment: 'labels: other.labels'),
      ]);
    });
  });

  group('every inline argument form fails', () {
    List<String> found(String text) => [
      for (final f in inlineFragments(text)) f.fragment,
    ];

    test('a span across lines', () {
      expect(found("Pass `name:\n.literal('x')` here.\n"), hasLength(1));
    });

    test('a double-backtick span', () {
      expect(found("Pass `` name: .literal('x') `` here.\n"), hasLength(1));
    });

    test('any spacing around the colon', () {
      expect(
        found("`name:.literal('x')`, `name:  .literal('x')`, `name : .ref`\n"),
        hasLength(3),
      );
    });

    test('a quoted string', () {
      expect(found('`name: \'orders\'` and `name: "orders"`\n'), hasLength(2));
    });

    test('a named argument inside a call span', () {
      expect(
        found(
          "`AppExports(path, name: 'Orders')` and "
          "`addOutput('url', service.uri, description: 'Cloud Run URL')`\n",
        ),
        hasLength(2),
      );
    });

    test('a lowerCamel key with a bare value', () {
      expect(
        found(
          '`proxied: true`, `analysisPercentage: 0`, '
          '`name: alpha-api-access`, `purpose: VPC_PEERING`\n',
        ),
        hasLength(4),
      );
    });

    test('a snake_case key with a scalar is no Dart argument', () {
      expect(
        found("`skip_wait: true`, `ipv4_enabled: false`, `ttl_s: 'x'`\n"),
        isEmpty,
      );
    });

    test('a doc comment of a Dart file, not its code', () {
      final tmp = Directory.systemTemp.createTempSync('inline_fragments_');
      addTearDown(() => tmp.deleteSync(recursive: true));
      final dart = p.join(tmp.path, 'identity.dart');
      File(dart).writeAsStringSync('''
/// Grant the agent a role:
/// `GoogleProjectIamMember(member:
/// identity.member, ...)`.
final grant = Foo(name: .literal('x'));
''');
      expect(checkInlineFragments(root, docs: [dart]), [
        startsWith('$dart:2: '),
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
