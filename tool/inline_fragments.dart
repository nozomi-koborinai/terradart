// inline_fragments.dart — an inline argument a guide teaches must be Dart
// that compiles.
//
// A fragment is a backtick span outside a fence of a document
// tool/doc_snippets.dart compiles, of the form `name: value`, where `name`
// is a lowerCamel argument and `value` has a form only Dart spells: a dot
// shorthand (`.literal('x')`), a constructor or static call (`Foo(...)`,
// `Foo.bar`), a getter read (`scope.ref`), a raw string, a list or a
// `const` value. A snake_case key or a bare scalar (`skip_wait: true`,
// `regions: 2`) reads the same in YAML, JSON and Terraform, so it is no
// fragment.
//
// The fragment must appear, spaces and trailing commas aside, in compiled
// Dart: a fence of the same document, else any compiled fence or an example
// or cookbook source (each synthesized by tool/example_synth_gates.dart or
// tool/check_cookbook.sh). `...` in a fragment matches what it elides. A
// cell in the before column of a rename table is the record of an old API
// and is not checked. A fragment that appears nowhere goes into a fence of
// its document, where tool/doc_snippets_test.dart compiles it.
//
// Run by tool/inline_fragments_test.dart.

import 'dart:io';

import 'package:path/path.dart' as p;

import 'doc_renames.dart' show beforeColumns;
import 'doc_snippets.dart' show extractSnippets, snippetDocuments;

final _span = RegExp(r'(?<!`)`([^`\n]+)`(?!`)');
final _fence = RegExp(r'^\s*(`{3,}|~{3,})');
final _fragment = RegExp(
  r'''^[a-z][A-Za-z0-9]*: (\.|r'|\[|const\b|[A-Z]\w*[(.<]|[a-z]\w*\.[a-z])''',
);

/// [code] without spaces and with no comma before a closing bracket.
String _normalize(String code) =>
    code.replaceAll(RegExp(r'\s+'), '').replaceAll(RegExp(r',(?=[)\]}])'), '');

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
      final span = m.group(1)!.trim();
      if (_fragment.hasMatch(span)) out.add((line: i + 1, fragment: span));
    }
  }
  return out;
}

/// Whether [fragment] appears in the normalized Dart [code].
bool appearsIn(String fragment, String code) {
  final pattern = _normalize(
    fragment,
  ).split('...').map(RegExp.escape).join(r'[\s\S]{0,400}?');
  return RegExp(pattern).hasMatch(code);
}

/// One message per fragment of [docs] (default: [snippetDocuments]) that no
/// compiled Dart spells. [sources] (default: the example and cookbook Dart
/// sources) add to the compiled fences.
List<String> checkInlineFragments(
  String root, {
  List<String>? docs,
  List<String>? sources,
}) {
  docs ??= snippetDocuments(root);
  final texts = {
    for (final d in docs)
      d: File(p.isAbsolute(d) ? d : p.join(root, d)).readAsStringSync(),
  };
  final fences = {
    for (final MapEntry(key: d, value: text) in texts.entries)
      d: _normalize(extractSnippets(d, text).map((s) => s.code).join('\n')),
  };
  final corpus = StringBuffer()..writeAll(fences.values, '\n');
  for (final f in sources ?? _exampleSources(root)) {
    corpus
      ..writeln()
      ..write(_normalize(File(f).readAsStringSync()));
  }
  final everywhere = corpus.toString();
  return [
    for (final MapEntry(key: d, value: text) in texts.entries)
      for (final (:line, :fragment) in inlineFragments(text))
        if (!appearsIn(fragment, fences[d]!) &&
            !appearsIn(fragment, everywhere))
          '$d:$line: `$fragment` appears in no compiled Dart; put it in a '
              'fence of the document, or fix it to the current API',
  ];
}

List<String> _exampleSources(String root) => [
  for (final dir in ['examples', 'cookbook'])
    if (Directory(p.join(root, dir)).existsSync())
      for (final f in Directory(p.join(root, dir)).listSync(recursive: true))
        if (f is File &&
            f.path.endsWith('.dart') &&
            !p
                .split(p.relative(f.path, from: root))
                .any((s) => s.startsWith('.') || s == 'build'))
          f.path,
];
