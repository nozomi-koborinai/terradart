// inline_fragments.dart — a guide teaches an argument in a compiled fence,
// never in an inline code span.
//
// A fragment is a code span, outside a fence, that holds a `name: value`
// argument, on its own or inside a call (`Foo(name: value)`): a lowerCamel
// or snake_case name, any spacing around the colon, and any value. Spans
// are read the CommonMark way (tool/code_spans.dart), so a span split
// across lines or opened by a longer backtick run counts. The documents are
// those tool/doc_snippets.dart compiles and the `///` doc comments of the
// packages it compiles doc comments for.
//
// A snake_case name with a plain scalar (`skip_wait: true`,
// `max_instances: 2`, `machine_type: e2-micro`) reads the same in YAML,
// JSON and Terraform, so it is no fragment. A lowerCamel one with the same
// value (`proxied: true`) is a Dart argument that skips its `.literal`. A
// span that opens on a colon with no space around it (`dart:io`,
// `user:<email>`, `iam:PassRole`, `localhost:8080`) is taken for a URI, a
// principal, an action or a port, unless its value is `true`, `false`,
// `null` or a lowercase dotted chain, contains a parenthesis, or opens like
// Dart (`name:.literal('x')`, `service:api.ref`, `name:make()`); a bare
// word or number (`count:2`, `name:orders`) passes. The same pair inside a
// call or collection (`Bucket(user:a)`) is an argument.
//
// Every fragment fails. A span says nothing about the call it belongs to,
// so no text match can tell `service: apiService.ref` from
// `service: apiService.serviceId`; only the compiler can, inside the call.
// Show the argument in a fence of the document, where
// tool/doc_snippets_test.dart compiles it, or say it in prose without code.
// A cell in the before column of a rename table is the record of an old API
// and is not read.
//
// Run by tool/inline_fragments_test.dart.

import 'dart:io';

import 'package:path/path.dart' as p;

import 'code_spans.dart';
import 'doc_renames.dart' show beforeColumns;
import 'doc_snippets.dart' show docCommentPackages, snippetDocuments;

final _argument = RegExp(
  r'(?:^|[(,{\[])\s*([a-z][A-Za-z0-9_]*)\s*:(?![/:])\s*',
);
final _scalar = RegExp(
  r"""^(true|false|null|-?\d[\w.]*|'[^']*'|"[^"]*"|[A-Za-z][\w.-]*)"""
  r'\s*($|[,)\]}\s])',
);
final _call = RegExp(r'\w\(');
final _dartValue = RegExp(r'''^([.\[('"]|r'|const\b|[A-Z]\w*[(.<])''');
final _tightDart = RegExp(r'^(true|false|null|[a-z]\w*(\.[A-Za-z_]\w*)+)$|\(');

/// Whether code [span] holds a `name: value` argument.
bool isFragment(String span) {
  for (final m in _argument.allMatches(span)) {
    final value = span.substring(m.end);
    if (value.isEmpty) {
      if (_call.hasMatch(span)) return true;
      continue;
    }
    if (m.group(1)!.contains('_') && _scalar.hasMatch(value)) continue;
    final tight = !m.group(0)!.contains(RegExp(r'\s'));
    if (tight &&
        m.start == 0 &&
        !_dartValue.hasMatch(value) &&
        !_tightDart.hasMatch(value)) {
      continue;
    }
    return true;
  }
  return false;
}

/// The fragments of [text] outside fences and before cells, with their
/// line; with [dart], of its `///` doc comments.
List<({int line, String fragment})> inlineFragments(
  String text, {
  bool dart = false,
}) {
  final lines = dart ? docCommentLines(text) : <String?>[...text.split('\n')];
  final before = beforeColumns([for (final l in lines) l ?? ''].join('\n'));
  for (final MapEntry(key: n, value: column) in before.entries) {
    final cells = lines[n - 1]!.split('|');
    // `| a | b |` splits into an empty first cell.
    if (column + 1 < cells.length) cells[column + 1] = '';
    lines[n - 1] = cells.join('|');
  }
  return [
    for (final (:code, :line) in scanMarkdown(lines).spans)
      if (code.trim().replaceFirst(RegExp(r',$'), '') case final span
          when isFragment(span))
        (line: line, fragment: span),
  ];
}

/// The documents [checkInlineFragments] reads by default: [snippetDocuments]
/// and the Dart files of each of [docCommentPackages].
List<String> inlineDocuments(String root) => [
  ...snippetDocuments(root),
  for (final pkg in docCommentPackages)
    for (final f in Directory(
      p.join(root, 'packages', pkg, 'lib'),
    ).listSync(recursive: true).whereType<File>())
      if (f.path.endsWith('.dart')) p.relative(f.path, from: root),
];

/// One message per fragment of [docs] (default: [inlineDocuments]).
List<String> checkInlineFragments(String root, {List<String>? docs}) => [
  for (final d in docs ?? inlineDocuments(root))
    for (final (:line, :fragment) in inlineFragments(
      File(p.isAbsolute(d) ? d : p.join(root, d)).readAsStringSync(),
      dart: d.endsWith('.dart'),
    ))
      '$d:$line: `$fragment` is an argument in an inline span; show it in '
          'a compiled fence of the document, or say it in prose',
];
