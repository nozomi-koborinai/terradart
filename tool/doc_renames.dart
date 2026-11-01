// doc_renames.dart — fails when a doc names a Dart symbol that a MIGRATING.md
// rename or removal table took away, so a guide cannot keep teaching a type
// an upgrade removed.
//
// Run from repo root: dart tool/doc_renames.dart
// tool/doc_renames_test.dart runs the same check (CI: `dart test tool/`).
//
// A rename table is any MIGRATING.md table whose header has a before column
// (`Before`, `Old`, `Removed factory`, a version such as `0.31` or `0.34.x`,
// each with an optional note in parentheses). Its after column is the next
// one with an after label (`After`, `New`, `Move to`, `Instead`, a later
// version); a removal table may have none. A row removes each symbol its
// before cell names and its after cell does not: every type (`OldName`,
// `Foo<Bar>`, `OldName(...)`) outside string literals, and every whole-span
// member (`Type.member`, `addExport`). A symbol the workspace packages or
// `dart:core` still declare is not removed (a name another type reuses, a
// class the row only reshapes).
//
// A mention is a name in code: a fence or a backtick span of a document
// outside the before column of its rename tables (an upgrade table records
// the old API), a fence or a `[Symbol]` reference of a `///` doc comment (a doc comment's
// backtick spans carry Terraform and API names, upstream descriptions
// included). The documents are those tool/doc_snippets.dart compiles, the
// example READMEs, and the `## Unreleased` section of MIGRATING.md, where
// only the section that removes a symbol may name it; the doc comments are those of its doc-comment packages.
// The released sections of MIGRATING.md and the CHANGELOG.md files are the
// record of what each release shipped and keep the old names.
// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;

import 'doc_snippets.dart' show docCommentPackages, snippetDocuments;

const migratingPath = 'MIGRATING.md';

/// One row of a rename table: the symbols its before cell names that its
/// after cell does not, and the line of the heading it sits under.
typedef RenameRow = ({int line, int section, Set<String> removed});

/// The rename tables of a document (MIGRATING.md, or a guide with a
/// before / after table).
final class RenameRecord {
  RenameRecord._(this.rows, this.beforeCells, this.unreleased, this._sections);

  final List<RenameRow> rows;

  /// Table line → the column that holds its before cell.
  final Map<int, int> beforeCells;

  /// The first and last line of the `## Unreleased` section, if any.
  final (int, int)? unreleased;

  final List<int> _sections;

  /// The line of the heading [line] sits under (0 before the first).
  int sectionOf(int line) {
    var section = 0;
    for (final s in _sections) {
      if (s > line) break;
      section = s;
    }
    return section;
  }

  factory RenameRecord.parse(String migratingMd) {
    final lines = migratingMd.split('\n');
    final rows = <RenameRow>[];
    final beforeCells = <int, int>{};
    final sections = <int>[];
    int? unreleasedStart;
    int? unreleasedEnd;
    (int, int?)? columns;
    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      final n = i + 1;
      if (line.startsWith('#')) {
        sections.add(n);
        if (line.startsWith('## ')) {
          if (unreleasedStart != null) unreleasedEnd ??= n - 1;
          if (line.trim() == '## Unreleased') unreleasedStart = n;
        }
      }
      if (!line.startsWith('|')) {
        columns = null;
        continue;
      }
      if (i > 0 && lines[i - 1].startsWith('|')) {
        if (columns == null || _separator.hasMatch(line)) continue;
        final cells = _cells(line);
        final (b, a) = columns;
        if (b >= cells.length) continue;
        beforeCells[n] = b;
        final after = a != null && a < cells.length
            ? cellSymbols(cells[a], types: true)
            : <String>{};
        final removed = cellSymbols(cells[b]).difference(after);
        if (removed.isNotEmpty) {
          rows.add((
            line: n,
            section: sections.isEmpty ? 0 : sections.last,
            removed: removed,
          ));
        }
        continue;
      }
      columns = i + 1 < lines.length && _separator.hasMatch(lines[i + 1])
          ? renameColumns(_cells(line))
          : null;
    }
    final unreleased = unreleasedStart == null
        ? null
        : (unreleasedStart, unreleasedEnd ?? lines.length);
    return RenameRecord._(rows, beforeCells, unreleased, sections);
  }
}

/// A doc line that names a removed symbol.
typedef StaleMention = ({String file, int line, String symbol, int row});

const _note = r'(?: *\([^()|]*\))?';
final _version = RegExp(r'^\d+\.\d+(\.(\d+|x))?$');
final _beforeLabel = RegExp(
  '^(Before|Old|Removed factory|Removed)$_note\$',
  caseSensitive: false,
);
final _afterLabel = RegExp(
  '^(After|New|Move to|Instead|Replacement)$_note\$',
  caseSensitive: false,
);
final _separator = RegExp(r'^\|[-: |]+\|$');
final _span = RegExp(r'`([^`]+)`');
final _type = RegExp(r'(?<![\w$.*])[A-Z][A-Z0-9]*[a-z][A-Za-z0-9]*(?![\w$*])');
final _quoted = RegExp(r'''\'[^']*'|"[^"]*"''');
final _template = RegExp(r'>[A-Za-z]');
final _member = RegExp(r'^([A-Z]\w*\.[a-z]\w*|[a-z][a-zA-Z0-9]*[A-Z]\w*)$');
final _words = RegExp(r'^[\w-]+( [\w-]+)+$');
final _docComment = RegExp(r'^\s*/// ?(.*)$');
final _fence = RegExp(r'^\s*(`{3,}|~{3,})');
final _reference = RegExp(r'\[([A-Za-z][\w.]*)\]');

List<String> _cells(String row) {
  final inner = row.trim();
  return inner
      .substring(1, inner.endsWith('|') ? inner.length - 1 : inner.length)
      .split('|')
      .map((c) => c.trim())
      .toList();
}

/// The before and after column of a table [header], or `null` when it is no
/// rename table.
(int, int?)? renameColumns(List<String> header) {
  for (var i = 0; i < header.length; i++) {
    final cell = header[i];
    final versioned = _version.hasMatch(cell);
    if (!versioned && !_beforeLabel.hasMatch(cell)) continue;
    for (var j = i + 1; j < header.length; j++) {
      final after = header[j];
      if (versioned ? _version.hasMatch(after) : _afterLabel.hasMatch(after)) {
        return (i, j);
      }
    }
    return versioned ? null : (i, null);
  }
  return null;
}

/// The symbols the code spans of [cell] name; with [types], also the type
/// of each member it names.
Set<String> cellSymbols(String cell, {bool types = false}) => {
  for (final m in _span.allMatches(cell)) ...[
    ...spanSymbols(m.group(1)!),
    if (types)
      for (final t in _type.allMatches(m.group(1)!)) t.group(0)!,
  ],
};

/// The symbols one code span names: a whole-span member (`Type.member`,
/// `addExport`), else every type name outside its string literals. A
/// pattern (`Foo<Protocol>Config`) or a run of plain words (`Zone Settings
/// Read`) names none.
Set<String> spanSymbols(String span) {
  final code = span.trim();
  if (_member.hasMatch(code)) return {code};
  if (_template.hasMatch(code) || _words.hasMatch(code)) return const {};
  return {
    for (final m in _type.allMatches(code.replaceAll(_quoted, "''")))
      m.group(0)!,
  };
}

/// The symbols a doc may still name: the types the workspace packages'
/// `lib/` and the SDK's `dart:core` declare, the lowerCamel names their code
/// spells, and the words of each type's declaring files as its members.
final class PublicApi {
  PublicApi(this.types, this.functions, this.members);

  final Set<String> types;

  /// The lowerCamel names the code (not the comments) spells: functions,
  /// methods, getters, parameters.
  final Set<String> functions;

  /// Type → the lowerCamel words its declaring files spell.
  final Map<String, Set<String>> members;

  static final _decl = RegExp(
    r'\b(?:class|enum|typedef|mixin|extension type(?: const)?|extension)\s+'
    r'([A-Z]\w*)',
  );
  static final _word = RegExp(r'(?<![\w$])([a-z][A-Za-z0-9]*)(?![\w$])');
  static final _comment = RegExp(r'^\s*//.*$', multiLine: true);

  factory PublicApi.read(String root) {
    final types = <String>{};
    final functions = <String>{};
    final members = <String, Set<String>>{};
    void read(Directory dir) {
      if (!dir.existsSync()) return;
      for (final f in dir.listSync(recursive: true).whereType<File>()) {
        if (!f.path.endsWith('.dart')) continue;
        final text = f.readAsStringSync();
        final words = {for (final m in _word.allMatches(text)) m.group(1)!};
        functions.addAll([
          for (final m in _word.allMatches(text.replaceAll(_comment, '')))
            m.group(1)!,
        ]);
        for (final m in _decl.allMatches(text)) {
          final type = m.group(1)!;
          types.add(type);
          members.putIfAbsent(type, () => {}).addAll(words);
        }
      }
    }

    for (final pkg in Directory(p.join(root, 'packages')).listSync()) {
      if (pkg is Directory) read(Directory(p.join(pkg.path, 'lib')));
    }
    final sdk = File(Platform.resolvedExecutable).parent.parent.path;
    read(Directory(p.join(sdk, 'lib', 'core')));
    return PublicApi(types, functions, members);
  }

  bool declares(String symbol) {
    final dot = symbol.indexOf('.');
    if (dot >= 0) {
      final type = symbol.substring(0, dot);
      return members[type]?.contains(symbol.substring(dot + 1)) ?? false;
    }
    return symbol.startsWith(RegExp('[A-Z]'))
        ? types.contains(symbol)
        : functions.contains(symbol);
  }
}

/// Each symbol a row of [record] removes that [api] no longer declares, with
/// the rows that remove it.
Map<String, List<RenameRow>> removedSymbols(
  RenameRecord record,
  PublicApi api,
) {
  final out = <String, List<RenameRow>>{};
  for (final row in record.rows) {
    for (final s in row.removed) {
      if (!api.declares(s)) out.putIfAbsent(s, () => []).add(row);
    }
  }
  return out;
}

/// The documents and doc-comment roots the check scans, relative to [root].
({List<String> docs, List<String> libs}) renameScanTargets(String root) {
  final docs = {...snippetDocuments(root), migratingPath};
  final examples = Directory(p.join(root, 'examples'));
  if (examples.existsSync()) {
    for (final d in examples.listSync().whereType<Directory>()) {
      final readme = File(p.join(d.path, 'README.md'));
      if (readme.existsSync()) docs.add(p.relative(readme.path, from: root));
    }
  }
  return (
    docs: docs.toList()..sort(),
    libs: [for (final pkg in docCommentPackages) 'packages/$pkg/lib'],
  );
}

/// The code of [text] ([file]) that names one of [removed], outside the
/// before cells of its rename tables. With [docComments], only `///` lines;
/// with [unreleased], only the Unreleased section, where a symbol a row of
/// the same section removes may be named.
List<StaleMention> staleMentions(
  String file,
  String text,
  Map<String, List<RenameRow>> removed, {
  bool docComments = false,
  bool unreleased = false,
}) {
  if (removed.isEmpty) return const [];
  final record = docComments ? null : RenameRecord.parse(text);
  final names = removed.keys.toList()
    ..sort((a, b) => b.length.compareTo(a.length));
  final pattern = RegExp(
    '(?<![\\w\$.])(${names.map(RegExp.escape).join('|')})(?![\\w\$])',
  );
  final range = unreleased ? record?.unreleased ?? (0, -1) : null;
  final out = <StaleMention>[];
  final lines = text.split('\n');
  String? fence;
  for (var i = 0; i < lines.length; i++) {
    final n = i + 1;
    if (range != null && (n < range.$1 || n > range.$2)) continue;
    var line = lines[i];
    if (docComments) {
      final m = _docComment.firstMatch(line);
      if (m == null) {
        fence = null;
        continue;
      }
      line = m.group(1)!;
    }
    final marker = _fence.firstMatch(line)?.group(1);
    if (marker != null) {
      if (fence == null) {
        fence = marker;
      } else if (marker.startsWith(fence)) {
        fence = null;
      }
      continue;
    }
    if (record?.beforeCells[n] case final column?) {
      line = (_cells(line)..removeAt(column)).join(' | ');
    }
    final code = fence != null
        ? [line]
        : docComments
        ? [for (final m in _reference.allMatches(line)) m.group(1)!]
        : [
            for (final m in _span.allMatches(line))
              if (!_words.hasMatch(m.group(1)!.trim())) m.group(1)!,
          ];
    final section = unreleased ? record?.sectionOf(n) : null;
    for (final c in code) {
      for (final m in pattern.allMatches(c.replaceAll(_quoted, "''"))) {
        final symbol = m.group(1)!;
        final rows = removed[symbol]!;
        if (rows.any((r) => r.section == section)) continue;
        out.add((file: file, line: n, symbol: symbol, row: rows.first.line));
      }
    }
  }
  return out;
}

/// One message per doc line that names a symbol a rename table of
/// [migrating] (default: the repo's MIGRATING.md) removed.
List<String> checkDocRenames(
  String root, {
  String? migrating,
  List<String>? docs,
  List<String>? libs,
}) {
  final record = RenameRecord.parse(
    File(migrating ?? p.join(root, migratingPath)).readAsStringSync(),
  );
  if (record.rows.isEmpty) {
    throw StateError(
      'MIGRATING.md has no rename table row; tool/doc_renames.dart cannot '
      'check the docs',
    );
  }
  final removed = removedSymbols(record, PublicApi.read(root));
  final targets = renameScanTargets(root);
  final mentions = <StaleMention>[];
  for (final doc in docs ?? targets.docs) {
    final file = File(p.isAbsolute(doc) ? doc : p.join(root, doc));
    mentions.addAll(
      staleMentions(
        doc,
        file.readAsStringSync(),
        removed,
        unreleased: p.basename(doc) == migratingPath,
      ),
    );
  }
  for (final dir in libs ?? targets.libs) {
    final lib = Directory(p.isAbsolute(dir) ? dir : p.join(root, dir));
    if (!lib.existsSync()) continue;
    final files = [
      for (final f in lib.listSync(recursive: true).whereType<File>())
        if (f.path.endsWith('.dart')) f,
    ]..sort((a, b) => a.path.compareTo(b.path));
    for (final f in files) {
      mentions.addAll(
        staleMentions(
          p.relative(f.path, from: root),
          f.readAsStringSync(),
          removed,
          docComments: true,
        ),
      );
    }
  }
  return [
    for (final m in mentions)
      '${m.file}:${m.line}: `${m.symbol}` was removed or renamed '
          '($migratingPath:${m.row})',
  ];
}

void main() {
  final failures = checkDocRenames(Directory.current.path);
  if (failures.isEmpty) {
    print('doc_renames: OK');
    return;
  }
  stderr.writeln('doc_renames: FAILED');
  for (final f in failures) {
    stderr.writeln('  - $f');
  }
  exit(1);
}
