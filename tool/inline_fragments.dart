// inline_fragments.dart — a guide teaches an argument in a compiled fence,
// never in an inline code span.
//
// A fragment is a backtick span outside a fence of a document
// tool/doc_snippets.dart compiles that holds a `name: value` argument, on
// its own or inside a call (`Foo(name: value)`), where `name`
// is a lowerCamel argument and `value` is Dart: a dot shorthand
// (`.literal('x')`), a constructor or static call (`Foo(...)`, `Foo.bar`),
// a getter read (`scope.ref`), a variable (`memory`), a closure, a raw
// string, a list or a `const` value. A snake_case key or a bare `true`,
// `false`, `null` or number (`skip_wait: true`, `regions: 2`) reads the same
// in YAML, JSON and Terraform, so it is no fragment.
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

import 'doc_renames.dart' show beforeColumns;
import 'doc_snippets.dart' show snippetDocuments;

final _span = RegExp(r'(?<!`)`([^`\n]+)`(?!`)');
final _fence = RegExp(r'^\s*(`{3,}|~{3,})');
final _fragment = RegExp(
  r'''(^|[(,{\[]\s*)[a-z][A-Za-z0-9]*: (\.|r'|\[|\(|const\b|[A-Z]\w*[(.<]|[a-z]\w*\.[a-z]|(?!(true|false|null)\b)[a-z][A-Za-z0-9]*(?=$|\s*[,)\]}]))''',
);

/// The fragments of [text] outside fences and before cells, with their line.
List<({int line, String fragment})> inlineFragments(String text) {
  final out = <({int line, String fragment})>[];
  final before = beforeColumns(text);
  final lines = text.split('\n');
  String? fence;
  for (var i = 0; i < lines.length; i++) {
    final marker = _fence.firstMatch(lines[i])?.group(1);
    if (marker != null) {
      if (fence == null) {
        fence = marker;
      } else if (marker.startsWith(fence)) {
        fence = null;
      }
      continue;
    }
    if (fence != null) continue;
    var line = lines[i];
    if (before[i + 1] case final column?) {
      final cells = line.split('|');
      // `| a | b |` splits into an empty first cell.
      if (column + 1 < cells.length) cells[column + 1] = '';
      line = cells.join('|');
    }
    for (final m in _span.allMatches(line)) {
      final span = m.group(1)!.trim().replaceFirst(RegExp(r',$'), '');
      if (_fragment.hasMatch(span)) out.add((line: i + 1, fragment: span));
    }
  }
  return out;
}

/// One message per fragment of [docs] (default: [snippetDocuments]).
List<String> checkInlineFragments(String root, {List<String>? docs}) => [
  for (final d in docs ?? snippetDocuments(root))
    for (final (:line, :fragment) in inlineFragments(
      File(p.isAbsolute(d) ? d : p.join(root, d)).readAsStringSync(),
    ))
      '$d:$line: `$fragment` is an argument in an inline span; show it in '
          'a compiled fence of the document, or say it in prose',
];
