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

List<({int line, String fragment})> inlineFragments(
  String text, {
  bool dart = false,
}) {
  final lines = dart ? docCommentLines(text) : <String?>[...text.split('\n')];
  final before = beforeColumns([for (final l in lines) l ?? ''].join('\n'));
  for (final MapEntry(key: n, value: column) in before.entries) {
    final cells = lines[n - 1]!.split('|');
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

List<String> inlineDocuments(String root) => [
  ...snippetDocuments(root),
  for (final pkg in docCommentPackages)
    for (final f in Directory(
      p.join(root, 'packages', pkg, 'lib'),
    ).listSync(recursive: true).whereType<File>())
      if (f.path.endsWith('.dart')) p.relative(f.path, from: root),
];

List<String> checkInlineFragments(String root, {List<String>? docs}) => [
  for (final d in docs ?? inlineDocuments(root))
    for (final (:line, :fragment) in inlineFragments(
      File(p.isAbsolute(d) ? d : p.join(root, d)).readAsStringSync(),
      dart: d.endsWith('.dart'),
    ))
      '$d:$line: `$fragment` is an argument in an inline span; show it in '
          'a compiled fence of the document, or say it in prose',
];
