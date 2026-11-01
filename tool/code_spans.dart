// code_spans.dart — the code spans and fences of a Markdown text, read the
// CommonMark way, for the doc gates that read inline code.
//
// A span opens on a run of n backticks and closes on the next run of
// exactly n, on the same line or a later line of the same block; its line
// endings read as spaces. A blank line, a fence, a table row, a heading or
// a list item ends a block, and a run no later run closes is literal text.
// A fence is three or more backticks or tildes, at any indentation (list
// items, doc comments), closed by a run of the same character at least as
// long.

/// A code span: its [code], and the 1-based [line] it opens on.
typedef CodeSpan = ({String code, int line});

/// One line of a scanned text.
typedef ScannedLine = ({
  /// The line with each code span blanked, or null inside a fence or on
  /// one of its markers.
  String? prose,

  /// The info string of the fence this line is the body of, or null.
  String? fence,
});

final _open = RegExp(r'^\s*(`{3,}|~{3,})(.*)$');
final _blockStart = RegExp(r'^\s*([|#]|[-*+]\s|\d+[.)]\s)');

/// The lines and code spans of [lines]; a null line (a Dart line that is
/// no doc comment) ends any block and fence.
({List<ScannedLine> lines, List<CodeSpan> spans}) scanMarkdown(
  List<String?> lines,
) {
  final out = <ScannedLine>[];
  final spans = <CodeSpan>[];
  final block = <int>[];
  final prose = <int, List<String>>{};

  void flush() {
    if (block.isEmpty) return;
    _scanBlock([for (final i in block) (i, lines[i]!)], spans, prose);
    block.clear();
  }

  String? fence;
  String? info;
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i];
    if (line == null) {
      flush();
      fence = null;
      out.add((prose: null, fence: null));
      continue;
    }
    if (fence != null) {
      final close = RegExp(
        '^\\s*${RegExp.escape(fence[0])}{${fence.length},}\\s*\$',
      );
      if (close.hasMatch(line)) {
        fence = null;
        out.add((prose: null, fence: null));
      } else {
        out.add((prose: null, fence: info));
      }
      continue;
    }
    final m = _open.firstMatch(line);
    if (m != null &&
        !(m.group(1)!.startsWith('`') && m.group(2)!.contains('`'))) {
      flush();
      fence = m.group(1);
      info = m.group(2)!.trim();
      out.add((prose: null, fence: null));
      continue;
    }
    if (line.trim().isEmpty || _blockStart.hasMatch(line)) flush();
    out.add((prose: line, fence: null));
    if (line.trim().isNotEmpty) block.add(i);
    if (line.trimLeft().startsWith(RegExp('[|#]'))) flush();
  }
  flush();
  return (
    lines: [
      for (var i = 0; i < out.length; i++)
        if (prose[i] case final chars?)
          (prose: chars.join(), fence: null)
        else
          out[i],
    ],
    spans: spans,
  );
}

/// Adds the spans of one block of `(index, line)` pairs to [spans], and
/// to [prose] each of its lines with the spans blanked.
void _scanBlock(
  List<(int, String)> block,
  List<CodeSpan> spans,
  Map<int, List<String>> prose,
) {
  final chars = <(int, int, String)>[];
  for (final (b, (i, line)) in block.indexed) {
    for (var c = 0; c < line.length; c++) {
      chars.add((i, c, line[c]));
    }
    if (b < block.length - 1) chars.add((i, line.length, '\n'));
  }
  for (final (i, line) in block) {
    prose[i] = line.split('');
  }
  int run(int at) {
    var n = 0;
    while (at + n < chars.length && chars[at + n].$3 == '`') {
      n++;
    }
    return n;
  }

  var at = 0;
  while (at < chars.length) {
    if (chars[at].$3 != '`') {
      at++;
      continue;
    }
    final n = run(at);
    var close = at + n;
    while (close < chars.length) {
      if (chars[close].$3 != '`') {
        close++;
        continue;
      }
      final m = run(close);
      if (m == n) break;
      close += m;
    }
    if (close >= chars.length) {
      at += n;
      continue;
    }
    var code = [
      for (final c in chars.sublist(at + n, close)) c.$3 == '\n' ? ' ' : c.$3,
    ].join();
    if (code.length > 1 &&
        code.startsWith(' ') &&
        code.endsWith(' ') &&
        code.trim().isNotEmpty) {
      code = code.substring(1, code.length - 1);
    }
    spans.add((code: code, line: chars[at].$1 + 1));
    for (final (i, c, ch) in chars.sublist(at, close + n)) {
      if (ch != '\n') prose[i]![c] = ' ';
    }
    at = close + n;
  }
}

final _docComment = RegExp(r'^\s*/// ?(.*)$');

/// The `///` doc-comment text of each line of Dart [text], or null for a
/// line that is none.
List<String?> docCommentLines(String text) => [
  for (final line in text.split('\n')) _docComment.firstMatch(line)?.group(1),
];
