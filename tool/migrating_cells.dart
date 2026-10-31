// migrating_cells.dart — compiles the Dart code of every Before / After cell
// of the Unreleased section of MIGRATING.md, so an upgrade table cannot show
// a call or a type its release does not have.
//
// Run from repo root: dart tool/migrating_cells.dart
// tool/migrating_cells_test.dart runs the same check (CI: `dart test tool/`).
//
// A cell's code is each of its backtick spans. A span that is a type
// (`TfArg<String>`, `EnumList<X>`, `PubsubTopicSource`) becomes a typedef;
// any other span is an expression (a factory or helper call, an enum member)
// and must stand on its own: a named-argument fragment (`warmType: ...`)
// fails, so the cell names its receiver. `...` elides what the row does not
// change: as an argument (`Foo(a: x, ...)`) it drops out, as a value
// (`b: ...`) it is a `dynamic` stand-in, and a cell with any elision may
// leave required arguments unset; every argument it spells must compile.
// A member named through its class (`DataFoo.limit`) may be an instance
// getter.
// A snake_case span is a Terraform name and is not
// Dart. As in tool/doc_snippets.dart, a lowerCamel name a cell leaves
// undefined (`topic`, `push`) is a `dynamic` stand-in.
//
// After cells compile against the workspace packages. Before cells compile
// against the published packages of the last release (the version whose
// `## <version> - <date>` heading tops every released package's
// CHANGELOG.md); a section whose packages were not released then has no
// Before API and its Before cells are not compiled.
// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;

import 'doc_snippets.dart' show AnalyzerDiagnostic, analyzeDiagnostics;
import 'lane_surface.dart';
import 'wrap_lanes.dart';

const migratingPath = 'MIGRATING.md';

/// One code span of a Before or After cell.
typedef MigratingCell = ({
  int line,
  String section,
  bool before,
  String code,
  Set<String> packages,
});

final _typeSpan = RegExp(r'^[A-Z]\w*(<[\w<>, ?]*>)?\??$');
final _terraformSpan = RegExp(r'^[a-z0-9_]+$');
final _namedArgument = RegExp(r'^[a-z]\w*:\s');

/// The Before / After code spans of the `## Unreleased` section of [text].
List<MigratingCell> extractMigratingCells(String text) {
  final lines = text.split('\n');
  final out = <MigratingCell>[];
  var inUnreleased = false;
  var section = '';
  var packages = <String>{};
  var readPackages = false;
  StringBuffer? lead;
  List<String>? header;
  for (final (i, line) in lines.indexed) {
    if (line.startsWith('## ')) {
      inUnreleased = line.trim() == '## Unreleased';
      continue;
    }
    if (!inUnreleased) continue;
    if (line.startsWith('### ')) {
      section = line.substring(4).trim();
      packages = {};
      readPackages = true;
      lead = null;
      header = null;
      continue;
    }
    if (readPackages && lead == null && line.startsWith('**')) {
      lead = StringBuffer();
    }
    if (lead != null) {
      lead.writeln(line);
      final bold = RegExp(
        r'^\*\*(.*?)\*\*',
        dotAll: true,
      ).firstMatch(lead.toString())?.group(1);
      if (bold != null || line.trim().isEmpty) {
        packages = {
          for (final m in RegExp(r'terradart_\w+').allMatches(bold ?? ''))
            m.group(0)!,
        };
        readPackages = false;
        lead = null;
      }
    }
    if (!line.startsWith('|')) {
      if (line.trim().isEmpty) header = null;
      continue;
    }
    final cells = _cells(line);
    if (header == null) {
      header = cells;
      continue;
    }
    if (cells.every((c) => RegExp(r'^:?-+:?$').hasMatch(c))) continue;
    for (final (j, cell) in cells.indexed) {
      final column = j < header.length ? header[j] : '';
      if (column != 'Before' && column != 'After') continue;
      for (final m in RegExp(r'`([^`]+)`').allMatches(cell)) {
        final code = m.group(1)!.trim();
        if (_terraformSpan.hasMatch(code)) continue;
        out.add((
          line: i + 1,
          section: section,
          before: column == 'Before',
          code: code,
          packages: packages,
        ));
      }
    }
  }
  return out;
}

List<String> _cells(String row) {
  final out = <String>[];
  final buf = StringBuffer();
  var inCode = false;
  for (var i = 1; i < row.length; i++) {
    final c = row[i];
    if (c == '`') inCode = !inCode;
    if (c == '|' && !inCode && row[i - 1] != r'\') {
      out.add(buf.toString().trim());
      buf.clear();
    } else {
      buf.write(c);
    }
  }
  return out;
}

/// Why [cell] cannot compile as written, or null.
String? cellShapeError(MigratingCell cell) {
  if (_namedArgument.hasMatch(cell.code)) {
    return 'is a named-argument fragment; write the call that takes it';
  }
  return null;
}

/// The released version: the `## <version> - <date>` heading every package
/// of [packages] with a dated top heading agrees on, and those packages.
({String version, Set<String> packages}) lastRelease(
  String root,
  List<String> packages,
) {
  final released = <String, String>{};
  for (final pkg in packages) {
    final changelog = File(p.join(root, 'packages', pkg, 'CHANGELOG.md'));
    if (!changelog.existsSync()) continue;
    final top = RegExp(
      r'^## (\S+) - \d{4}-\d{2}-\d{2}',
      multiLine: true,
    ).firstMatch(changelog.readAsStringSync());
    final heading = RegExp(
      r'^## ',
      multiLine: true,
    ).firstMatch(changelog.readAsStringSync());
    if (top != null && heading != null && top.start == heading.start) {
      released[pkg] = top.group(1)!;
    }
  }
  final versions = released.values.toSet();
  if (versions.length != 1) {
    throw StateError('released packages disagree on a version: $released');
  }
  return (version: versions.single, packages: released.keys.toSet());
}

final _elidedArgument = RegExp(r'(,\s*)?\.\.\.(?=\s*[)\]])');
final _elidedValue = RegExp(r'(?<=:\s*)\.\.\.');

/// [code] with its `...` elisions resolved, and whether it elided
/// arguments.
({String code, bool elided}) resolveElisions(String code) {
  final values = code.replaceAll(_elidedValue, '_elided');
  final args = values.replaceAllMapped(_elidedArgument, (m) => '');
  return (code: args, elided: code.contains('...'));
}

/// A span naming a member through its class (`DataFoo.limit`): the getter
/// it names may be an instance member.
final _memberSpan = RegExp(r'^[A-Z]\w*\.[a-z]\w*$');

/// Diagnostics an elided argument list (`Foo(a: x, ...)`) may raise.
const elisionCodes = {
  'MISSING_REQUIRED_ARGUMENT',
  'NOT_ENOUGH_POSITIONAL_ARGUMENTS',
};

const _ignores =
    '// ignore_for_file: unused_import, unused_local_variable, '
    'unused_element, unused_field, dead_code, no_leading_underscores_for_local_identifiers';

/// The sandbox file for [cells], and the document line of each of its lines.
({String contents, List<int?> docLines, List<MigratingCell?> cells})
renderCells(List<MigratingCell> cells, List<String> imports) {
  final lines = <String>[_ignores, ...imports, 'dynamic _elided;'];
  final docLines = List<int?>.filled(lines.length, null, growable: true);
  final owners = List<MigratingCell?>.filled(
    lines.length,
    null,
    growable: true,
  );
  for (final (i, cell) in cells.indexed) {
    final text = _typeSpan.hasMatch(cell.code)
        ? 'typedef _T$i = ${cell.code};'
        : 'void _c$i() { final _ = ${resolveElisions(cell.code).code}; }';
    for (final l in text.split('\n')) {
      lines.add(l);
      docLines.add(cell.line);
      owners.add(cell);
    }
  }
  return (contents: '${lines.join('\n')}\n', docLines: docLines, cells: owners);
}

String _pubspec(String root, List<String> packages, {String? hostedVersion}) {
  final b = StringBuffer()
    ..writeln('name: migrating_cells')
    ..writeln('publish_to: none')
    ..writeln('environment:')
    ..writeln('  sdk: ^3.10.0')
    ..writeln('dependencies:');
  for (final pkg in packages) {
    b.writeln('  $pkg: ${hostedVersion ?? 'any'}');
  }
  if (hostedVersion == null) {
    b.writeln('dependency_overrides:');
    for (final pkg in packages) {
      b
        ..writeln('  $pkg:')
        ..writeln('    path: ${p.join(root, 'packages', pkg)}');
    }
  }
  return b.toString();
}

/// Compiles the cells of [migrating] (default: the repo's MIGRATING.md);
/// returns one message per failure.
Future<List<String>> checkMigratingCells(
  String root, {
  String? migrating,
}) async {
  final cells = extractMigratingCells(
    migrating ?? File(p.join(root, migratingPath)).readAsStringSync(),
  );
  final failures = <String>[];
  final packages = docSnippetPackages(
    File(p.join(root, 'pubspec.yaml')).readAsStringSync(),
  );
  final release = lastRelease(root, packages);
  final barrels = docSnippetBarrels(
    parseWrapLanes(File(p.join(root, providersPath)).readAsStringSync()),
  );
  bool releasedImport(String line) {
    final m = RegExp(r"package:(\w+)/").firstMatch(line);
    return m == null || release.packages.contains(m.group(1));
  }

  final after = <MigratingCell>[];
  final before = <MigratingCell>[];
  for (final cell in cells) {
    if (cellShapeError(cell) case final error?) {
      failures.add(
        '$migratingPath:${cell.line}: `${cell.code}` $error (${cell.section})',
      );
      continue;
    }
    if (!cell.before) {
      after.add(cell);
    } else if (cell.packages.every(release.packages.contains)) {
      before.add(cell);
    }
  }

  final sandbox = await Directory.systemTemp.createTemp('migrating_cells_');
  try {
    final rendered =
        <String, ({List<int?> docLines, List<MigratingCell?> cells})>{};
    final dirs = <String>[];
    for (final (name, group, imports, pubspec) in [
      ('after', after, barrels, _pubspec(root, packages)),
      (
        'before',
        before,
        barrels.where(releasedImport).toList(),
        _pubspec(root, [
          for (final pkg in packages)
            if (release.packages.contains(pkg)) pkg,
        ], hostedVersion: release.version),
      ),
    ]) {
      if (group.isEmpty) continue;
      final dir = p.join(sandbox.path, name);
      dirs.add(dir);
      Directory(p.join(dir, 'lib')).createSync(recursive: true);
      File(p.join(dir, 'pubspec.yaml')).writeAsStringSync(pubspec);
      final r = renderCells(group, imports);
      final file = p.canonicalize(p.join(dir, 'lib', 'cells.dart'));
      File(file).writeAsStringSync(r.contents);
      rendered[file] = (docLines: r.docLines, cells: r.cells);
    }
    for (final dir in dirs) {
      var get = await Process.run('dart', [
        'pub',
        'get',
        '--offline',
      ], workingDirectory: dir);
      if (get.exitCode != 0) {
        get = await Process.run('dart', ['pub', 'get'], workingDirectory: dir);
      }
      if (get.exitCode != 0) {
        failures.add('dart pub get failed in $dir:\n${get.stderr}');
        return failures;
      }
    }

    Future<List<AnalyzerDiagnostic>> analyze() async => [
      for (final dir in dirs) ...await analyzeDiagnostics(dir),
    ];
    var diagnostics = await analyze();
    final undefined = <String, Set<String>>{};
    for (final d in diagnostics) {
      if (!rendered.containsKey(d.file)) continue;
      if (d.code != 'UNDEFINED_IDENTIFIER' && d.code != 'UNDEFINED_FUNCTION') {
        continue;
      }
      final name = RegExp(r"'([a-z]\w*)'").firstMatch(d.message)?.group(1);
      if (name != null) undefined.putIfAbsent(d.file, () => {}).add(name);
    }
    if (undefined.isNotEmpty) {
      for (final MapEntry(key: path, value: names) in undefined.entries) {
        final lines = File(path).readAsStringSync().split('\n');
        lines.add('dynamic ${(names.toList()..sort()).join(', ')};');
        File(path).writeAsStringSync(lines.join('\n'));
      }
      diagnostics = await analyze();
    }
    for (final d in diagnostics) {
      if (d.severity != 'ERROR' && d.severity != 'WARNING') continue;
      final r = rendered[d.file];
      final at = r == null || d.line > r.docLines.length
          ? null
          : r.docLines[d.line - 1];
      final cell = r == null || d.line > r.cells.length
          ? null
          : r.cells[d.line - 1];
      if (cell != null &&
          elisionCodes.contains(d.code) &&
          resolveElisions(cell.code).elided) {
        continue;
      }
      if (cell != null &&
          d.code == 'STATIC_ACCESS_TO_INSTANCE_MEMBER' &&
          _memberSpan.hasMatch(cell.code)) {
        continue;
      }
      failures.add(
        at == null
            ? '${d.file}:${d.line}: ${d.message} (${d.code})'
            : '$migratingPath:$at: ${cell!.before ? 'Before' : 'After'} '
                  '`${cell.code}`: ${d.message} (${d.code})',
      );
    }
  } finally {
    sandbox.deleteSync(recursive: true);
  }
  return failures;
}

Future<void> main() async {
  final failures = await checkMigratingCells(Directory.current.path);
  if (failures.isEmpty) {
    print('migrating_cells: OK');
    return;
  }
  stderr.writeln('migrating_cells: FAILED');
  for (final f in failures) {
    stderr.writeln('  - $f');
  }
  exit(1);
}
