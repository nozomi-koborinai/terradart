// migrating_cells.dart — compiles the Dart code of every Before / After cell
// of the top section of MIGRATING.md, so an upgrade table cannot show a call
// or a type its release does not have. The top section is `## Unreleased`,
// or `## <from> → <to>` (`## 0.35.x → 0.36.0`) once a release PR names it; any
// other heading, a top section without a cell, or a first line other than
// `# Migrating terradart`, fails.
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
// Dart. A lowerCamel name a cell leaves undefined (`topic`, `push`) is a
// `dynamic` stand-in; an undefined capitalized name (`NoSuchType`) fails.
//
// After cells compile against the workspace packages. Before cells compile
// against each package pub.dev has in the series the heading allows (any
// version under `## Unreleased`, `<from>` under `## <from> → <to>`), at its
// newest release there. A release PR moves the CHANGELOGs to a version
// pub.dev does not have yet, and the CI checkout has no tags, so pub.dev,
// which the Before compile resolves against anyway, is the source. A package
// with no release in the series has no Before API anywhere CI can read, so a
// Before cell of it is skipped only when tool/migrating_unpublished_cells.yaml
// lists its exact text, with the package and a reason; it is counted and
// listed. Every other Before cell compiles, and any failure is red. An entry
// fails when it matches no Before cell of the top section, when its package
// has a release in the series, or when its cell compiles.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'doc_snippets.dart' show AnalyzerDiagnostic, analyzeDiagnostics;
import 'http_retry.dart';
import 'lane_surface.dart';
import 'wrap_lanes.dart';

const migratingPath = 'MIGRATING.md';
const migratingLedgerPath = 'tool/migrating_unpublished_cells.yaml';

/// One code span of a Before or After cell.
typedef MigratingCell = ({int line, String section, bool before, String code});

final _typeSpan = RegExp(r'^[A-Z]\w*(<[\w<>, ?]*>)?\??$');
final _terraformSpan = RegExp(r'^[a-z0-9_]+$');
final _namedArgument = RegExp(r'^[a-z]\w*:\s');

/// The first `##` heading of [text] and its line.
({int line, String heading})? topMigratingHeading(String text) {
  for (final (i, line) in text.split('\n').indexed) {
    if (line.startsWith('## ')) return (line: i + 1, heading: line.trim());
  }
  return null;
}

/// The Before / After code spans of the top `##` section of [text].
List<MigratingCell> extractMigratingCells(String text) {
  final lines = text.split('\n');
  final out = <MigratingCell>[];
  var inTop = false;
  var section = '';
  List<String>? header;
  for (final (i, line) in lines.indexed) {
    if (line.startsWith('## ')) {
      if (inTop) break;
      inTop = true;
      continue;
    }
    if (!inTop) continue;
    if (line.startsWith('### ')) {
      section = line.substring(4).trim();
      header = null;
      continue;
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

final _releaseHeading = RegExp(r'^## (\d+\.\d+\.(?:\d+|x)) → \d+\.\d+\.\d+$');
final _stableVersion = RegExp(r'^\d+\.\d+\.\d+$');

/// The versions the Before cells under [heading] describe, as dotted parts
/// where `x` matches any: `x` under `## Unreleased`, `<from>` under
/// `## <from> → <to>` (`0.35.x`, `0.27.0`); null under any other heading.
String? beforeSeries(String heading) => heading == '## Unreleased'
    ? 'x'
    : _releaseHeading.firstMatch(heading)?.group(1);

/// Each package of [published] (package → its pub.dev versions) with a
/// stable release in [series], at its newest one: the version a `^` pin of
/// that series installs, even when a partial publish left the lockstep
/// packages on different patches.
Map<String, String> beforeRelease(
  String series,
  Map<String, List<String>> published,
) {
  final want = series.split('.');
  List<int>? parts(String version) {
    if (!_stableVersion.hasMatch(version)) return null;
    final have = version.split('.');
    for (final (i, w) in want.indexed) {
      if (w != 'x' && w != have[i]) return null;
    }
    return [for (final n in have) int.parse(n)];
  }

  int byParts(List<int> a, List<int> b) => [
    for (final (i, n) in a.indexed) n.compareTo(b[i]),
  ].firstWhere((c) => c != 0, orElse: () => 0);
  return {
    for (final MapEntry(key: pkg, value: versions) in published.entries)
      if (([
            for (final version in versions)
              if (parts(version) case final v?) (version: version, parts: v),
          ]..sort((a, b) => byParts(a.parts, b.parts))).lastOrNull
          case final newest?)
        pkg: newest.version,
  };
}

/// A reviewed Before cell of a package with no release in the series.
typedef MigratingLedgerEntry = ({String before, String package, String reason});

/// The entries of the ledger [text]; throws [FormatException] on any other
/// shape.
List<MigratingLedgerEntry> parseMigratingLedger(String text) {
  final doc = loadYaml(text, sourceUrl: Uri.file(migratingLedgerPath));
  if (doc == null) return [];
  if (doc is! YamlList) {
    throw const FormatException('$migratingLedgerPath: is not a list');
  }
  const keys = {'before', 'package', 'reason'};
  return [
    for (final (i, node) in doc.indexed)
      if (node is YamlMap &&
          node.keys.toSet().containsAll(keys) &&
          keys.containsAll(node.keys) &&
          node.values.every((v) => v is String && v.trim().isNotEmpty))
        (
          before: node['before'] as String,
          package: node['package'] as String,
          reason: node['reason'] as String,
        )
      else
        throw FormatException(
          '$migratingLedgerPath: entry ${i + 1} needs exactly a non-empty '
          '`before`, `package` and `reason`',
        ),
  ];
}

/// Every version pub.dev lists for each of [packages]; none for a package
/// pub.dev does not have.
Future<Map<String, List<String>>> publishedVersions(
  List<String> packages,
) async {
  final client = HttpClient();
  final versions = <String, List<String>>{};
  try {
    for (final pkg in packages) {
      final url = Uri.https('pub.dev', '/api/packages/$pkg');
      final response = await getRetryingTransient(client, url);
      final body = await response.transform(utf8.decoder).join();
      if (response.statusCode == HttpStatus.notFound) {
        versions[pkg] = [];
        continue;
      }
      if (response.statusCode != HttpStatus.ok) {
        throw HttpException('${response.statusCode} $body', uri: url);
      }
      versions[pkg] = [
        for (final v in (jsonDecode(body) as Map)['versions'] as List)
          (v as Map)['version'] as String,
      ];
    }
  } finally {
    client.close();
  }
  return versions;
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

String _workspacePubspec(String root, List<String> packages) {
  final b = StringBuffer(_pubspecHead)..writeln('dependencies:');
  for (final pkg in packages) {
    b.writeln('  $pkg: any');
  }
  b.writeln('dependency_overrides:');
  for (final pkg in packages) {
    b
      ..writeln('  $pkg:')
      ..writeln('    path: ${p.join(root, 'packages', pkg)}');
  }
  return b.toString();
}

String _hostedPubspec(Map<String, String> versions) {
  final b = StringBuffer(_pubspecHead)..writeln('dependencies:');
  for (final MapEntry(key: pkg, value: version) in versions.entries) {
    b.writeln('  $pkg: $version');
  }
  return b.toString();
}

const _pubspecHead = '''
name: migrating_cells
publish_to: none
environment:
  sdk: ^3.10.0
''';

/// A Before cell the ledger lists: it does not compile because [package] has
/// no release in the series.
typedef MigratingSkip = ({MigratingCell cell, String package, String reason});

String describeSkip(MigratingSkip skip) =>
    '$migratingPath:${skip.cell.line}: Before `${skip.cell.code}` needs '
    '${skip.package}: ${skip.reason}';

/// The outcome of [checkMigratingCells]: its failures, the version each
/// Before package compiled at, and how many Before cells compiled, failed and
/// were skipped.
typedef MigratingReport = ({
  List<String> failures,
  Map<String, String> before,
  int beforeCompiled,
  int beforeFailed,
  List<MigratingSkip> beforeSkipped,
});

const migratingTitle = '# Migrating terradart';

/// Compiles the cells of [migrating] (default: the repo's MIGRATING.md)
/// against [ledger] (default: the repo's ledger with the repo's MIGRATING.md,
/// else none).
///
/// A Before cell is skipped, and listed in `beforeSkipped`, only when the
/// ledger lists its exact text and it does not compile. Every other Before
/// cell compiles against the published packages.
Future<MigratingReport> checkMigratingCells(
  String root, {
  String? migrating,
  String? ledger,
}) async {
  MigratingReport failed(List<String> failures) => (
    failures: failures,
    before: {},
    beforeCompiled: 0,
    beforeFailed: 0,
    beforeSkipped: [],
  );
  final text =
      migrating ?? File(p.join(root, migratingPath)).readAsStringSync();
  if (text.split('\n').first.trim() != migratingTitle) {
    return failed(['$migratingPath:1: the title is not `$migratingTitle`']);
  }
  final top = topMigratingHeading(text);
  if (top == null) return failed(['$migratingPath: has no `##` section']);
  final at = '$migratingPath:${top.line}: `${top.heading}`';
  final cells = extractMigratingCells(text);
  if (cells.isEmpty) return failed(['$at has no Before or After cell']);
  final series = beforeSeries(top.heading);
  if (series == null) {
    return failed(['$at is neither `## Unreleased` nor `## <from> → <to>`']);
  }
  final List<MigratingLedgerEntry> entries;
  try {
    entries = parseMigratingLedger(
      ledger ??
          (migrating == null
              ? File(p.join(root, migratingLedgerPath)).readAsStringSync()
              : ''),
    );
  } on FormatException catch (e) {
    return failed([e.message]);
  }
  final packages = docSnippetPackages(
    File(p.join(root, 'pubspec.yaml')).readAsStringSync(),
  );
  final release = beforeRelease(series, await publishedVersions(packages));
  if (release.isEmpty) return failed(['$at: pub.dev has no $series release']);

  final failures = <String>[];
  final listed = <String, MigratingLedgerEntry>{};
  for (final entry in entries) {
    final what = '$migratingLedgerPath: Before `${entry.before}`';
    if (listed.containsKey(entry.before)) {
      failures.add('$what is listed twice');
    }
    listed[entry.before] = entry;
    if (!packages.contains(entry.package)) {
      failures.add('$what names ${entry.package}, not a workspace package');
    } else if (release[entry.package] case final version?) {
      failures.add(
        '$what: ${entry.package} has a $series release ($version) on '
        'pub.dev; compile the cell and delete the entry',
      );
    }
    if (!cells.any((c) => c.before && c.code == entry.before)) {
      failures.add(
        '$what matches no Before cell of the top section of $migratingPath',
      );
    }
  }

  final barrels = docSnippetBarrels(
    parseWrapLanes(File(p.join(root, providersPath)).readAsStringSync()),
  );
  bool releasedImport(String line) {
    final m = RegExp(r"package:(\w+)/").firstMatch(line);
    return m == null || release.containsKey(m.group(1));
  }

  final after = <MigratingCell>[];
  final before = <MigratingCell>[];
  final failedBefore = <MigratingCell>{};
  for (final cell in cells) {
    if (cellShapeError(cell) case final error?) {
      if (cell.before) failedBefore.add(cell);
      failures.add(
        '$migratingPath:${cell.line}: `${cell.code}` $error (${cell.section})',
      );
    } else {
      (cell.before ? before : after).add(cell);
    }
  }

  final skipped = <MigratingSkip>[];
  final sandbox = await Directory.systemTemp.createTemp('migrating_cells_');
  try {
    final rendered =
        <String, ({List<int?> docLines, List<MigratingCell?> cells})>{};
    final dirs = <String>[];
    for (final (name, group, imports, pubspec) in [
      ('after', after, barrels, _workspacePubspec(root, packages)),
      (
        'before',
        before,
        barrels.where(releasedImport).toList(),
        _hostedPubspec(release),
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
        return failed([
          ...failures,
          'dart pub get failed in $dir:\n${get.stderr}',
        ]);
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

    final errors = <MigratingCell?, List<String>>{};
    for (final d in diagnostics) {
      if (d.severity != 'ERROR' && d.severity != 'WARNING') continue;
      final r = rendered[d.file];
      final inCell = r != null && d.line <= r.cells.length;
      final cell = inCell ? r.cells[d.line - 1] : null;
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
      final docLine = inCell ? r.docLines[d.line - 1] : null;
      errors
          .putIfAbsent(cell, () => [])
          .add(
            docLine == null || cell == null
                ? '${d.file}:${d.line}: ${d.message} (${d.code})'
                : '$migratingPath:$docLine: ${cell.before ? 'Before' : 'After'} '
                      '`${cell.code}`: ${d.message} (${d.code})',
          );
    }
    for (final cell in before) {
      final entry = listed[cell.code];
      if (entry == null) continue;
      if (errors.remove(cell) == null) {
        failures.add(
          '$migratingLedgerPath: Before `${cell.code}` compiles against '
          '${release.values.toSet().join(', ')} ($migratingPath:${cell.line}); '
          'delete the entry',
        );
      } else {
        skipped.add((cell: cell, package: entry.package, reason: entry.reason));
      }
    }
    for (final MapEntry(key: cell, value: messages) in errors.entries) {
      if (cell != null && cell.before) failedBefore.add(cell);
      failures.addAll(messages);
    }
  } finally {
    sandbox.deleteSync(recursive: true);
  }
  final skippedCells = {for (final s in skipped) s.cell};
  return (
    failures: failures,
    before: release,
    beforeCompiled: before
        .where((c) => !skippedCells.contains(c) && !failedBefore.contains(c))
        .length,
    beforeFailed: failedBefore.length,
    beforeSkipped: skipped,
  );
}

Future<void> main() async {
  final report = await checkMigratingCells(Directory.current.path);
  for (final skip in report.beforeSkipped) {
    print('  skipped: ${describeSkip(skip)}');
  }
  print(
    'migrating_cells: Before cells: ${report.beforeCompiled} compiled against '
    '${report.before.values.toSet().join(', ')}, ${report.beforeFailed} '
    'failed, ${report.beforeSkipped.length} skipped by $migratingLedgerPath',
  );
  if (report.failures.isEmpty) {
    print('migrating_cells: OK');
    return;
  }
  stderr.writeln('migrating_cells: FAILED');
  for (final f in report.failures) {
    stderr.writeln('  - $f');
  }
  exit(1);
}
