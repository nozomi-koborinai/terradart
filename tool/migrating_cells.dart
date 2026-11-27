// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'doc_snippets.dart' show AnalyzerDiagnostic, analyzeDiagnostics;
import 'http_retry.dart';
import 'lane_surface.dart';
import 'wrap_lanes.dart';

const migratingPath = 'MIGRATING.md';

typedef MigratingCell = ({int line, String section, bool before, String code});

final _typeSpan = RegExp(r'^[A-Z]\w*(<[\w<>, ?]*>)?\??$');
final _terraformSpan = RegExp(r'^[a-z0-9_]+$');
final _namedArgument = RegExp(r'^[a-z]\w*:\s');

({int line, String heading})? topMigratingHeading(String text) {
  for (final (i, line) in text.split('\n').indexed) {
    if (line.startsWith('## ')) return (line: i + 1, heading: line.trim());
  }
  return null;
}

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

String? cellShapeError(MigratingCell cell) {
  if (_namedArgument.hasMatch(cell.code)) {
    return 'is a named-argument fragment; write the call that takes it';
  }
  return null;
}

final _releaseHeading = RegExp(r'^## (\d+\.\d+\.(?:\d+|x)) → \d+\.\d+\.\d+$');
final _stableVersion = RegExp(r'^\d+\.\d+\.\d+$');

String? beforeSeries(String heading) => heading == '## Unreleased'
    ? 'x'
    : _releaseHeading.firstMatch(heading)?.group(1);

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

Map<String, String> previousRelease(
  String migrating,
  Map<String, List<String>> published,
) {
  final top = topMigratingHeading(migrating);
  final series = top == null ? null : beforeSeries(top.heading);
  if (series == null) {
    throw StateError(
      '$migratingPath: the top section is neither `## Unreleased` nor '
      '`## <from> → <to>`',
    );
  }
  return beforeRelease(series, published);
}

<<<<<<< HEAD
typedef PublishedVersionsLookup =
    Future<Map<String, List<String>>> Function(List<String> packages);

/// Every version [pubHostedUrl] (default: `https://pub.dev`) lists for each
/// of [packages]; none for a package it does not have.
=======
>>>>>>> bdf5e2d77 (chore(tool): clean comments and dead ignores in tool scripts and tests)
Future<Map<String, List<String>>> publishedVersions(
  List<String> packages, {
  Uri? pubHostedUrl,
  HttpClient? client,
}) async {
  final base = pubHostedUrl ?? Uri.https('pub.dev');
  final owned = client == null;
  final http = client ?? HttpClient();
  final versions = <String, List<String>>{};
  try {
    for (final pkg in packages) {
      final url = base.resolve('/api/packages/$pkg');
      final response = await getRetryingTransient(http, url);
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
    if (owned) http.close();
  }
  return versions;
}

final _elidedArgument = RegExp(r'(,\s*)?\.\.\.(?=\s*[)\]])');
final _elidedValue = RegExp(r'(?<=:\s*)\.\.\.');

({String code, bool elided}) resolveElisions(String code) {
  final values = code.replaceAll(_elidedValue, '_elided');
  final args = values.replaceAllMapped(_elidedArgument, (m) => '');
  return (code: args, elided: code.contains('...'));
}

final _memberSpan = RegExp(r'^[A-Z]\w*\.[a-z]\w*$');

const elisionCodes = {
  'MISSING_REQUIRED_ARGUMENT',
  'NOT_ENOUGH_POSITIONAL_ARGUMENTS',
};

const _ignores =
    '// ignore_for_file: unused_import, unused_local_variable, '
    'unused_element, unused_field, dead_code, no_leading_underscores_for_local_identifiers';

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

String _hostedPubspec(
  Map<String, String> versions, {
  Map<String, String>? pathOverrides,
}) {
  final b = StringBuffer(_pubspecHead)..writeln('dependencies:');
  for (final MapEntry(key: pkg, value: version) in versions.entries) {
    b.writeln('  $pkg: ${pathOverrides != null ? 'any' : version}');
  }
  if (pathOverrides != null && pathOverrides.isNotEmpty) {
    b.writeln('dependency_overrides:');
    for (final MapEntry(key: pkg, value: dir) in pathOverrides.entries) {
      b
        ..writeln('  $pkg:')
        ..writeln('    path: $dir');
    }
  }
  return b.toString();
}

const _pubspecHead = '''
name: migrating_cells
publish_to: none
environment:
  sdk: ^3.12.0
''';

typedef MigratingReport = ({
  List<String> failures,
  Map<String, String> before,
  int beforeCompiled,
  int beforeFailed,
});

const migratingTitle = '# Migrating terradart';

const _undefinedNameCodes = {
  'UNDEFINED_CLASS',
  'UNDEFINED_FUNCTION',
  'UNDEFINED_IDENTIFIER',
};

Future<MigratingReport> checkMigratingCells(
  String root, {
  String? migrating,
  PublishedVersionsLookup? lookupPublished,
  Map<String, String>? beforePathOverrides,
}) async {
  MigratingReport failed(List<String> failures) =>
      (failures: failures, before: {}, beforeCompiled: 0, beforeFailed: 0);
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
  final packages = docSnippetPackages(
    File(p.join(root, 'pubspec.yaml')).readAsStringSync(),
  );
  final release = previousRelease(
    text,
    await (lookupPublished ?? publishedVersions)(packages),
  );
  if (release.isEmpty) return failed(['$at: pub.dev has no $series release']);

  final failures = <String>[];
  final unreleased = [
    for (final pkg in packages)
      if (!release.containsKey(pkg)) pkg,
  ];
  final notBelonging = unreleased.isEmpty
      ? ''
      : '; ${unreleased.join(', ')} ${unreleased.length == 1 ? 'has' : 'have'} '
            'no ${series == 'x' ? '' : '$series '}release on pub.dev, so no '
            'upgrading user has its code, and a row about it does not belong '
            'in $migratingPath';

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
        _hostedPubspec(release, pathOverrides: beforePathOverrides),
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
      if (cell != null && cell.before) failedBefore.add(cell);
      final docLine = inCell ? r.docLines[d.line - 1] : null;
      failures.add(
        docLine == null || cell == null
            ? '${d.file}:${d.line}: ${d.message} (${d.code})'
            : '$migratingPath:$docLine: ${cell.before ? 'Before' : 'After'} '
                  '`${cell.code}`: ${d.message} (${d.code})'
                  '${cell.before && _undefinedNameCodes.contains(d.code) ? notBelonging : ''}',
      );
    }
  } finally {
    sandbox.deleteSync(recursive: true);
  }
  return (
    failures: failures,
    before: release,
    beforeCompiled: before.where((c) => !failedBefore.contains(c)).length,
    beforeFailed: failedBefore.length,
  );
}

Future<({List<String> failures, Set<int> failingLines})>
checkMigratingAfterCells(String root, {String? migrating}) async {
  final text =
      migrating ?? File(p.join(root, migratingPath)).readAsStringSync();
  final cells = [
    for (final c in extractMigratingCells(text))
      if (!c.before) c,
  ];
  if (cells.isEmpty) {
    return (failures: const <String>[], failingLines: const <int>{});
  }
  final packages = docSnippetPackages(
    File(p.join(root, 'pubspec.yaml')).readAsStringSync(),
  );
  final barrels = docSnippetBarrels(
    parseWrapLanes(File(p.join(root, providersPath)).readAsStringSync()),
  );
  final failures = <String>[];
  final failingLines = <int>{};
  final after = <MigratingCell>[];
  for (final cell in cells) {
    if (cellShapeError(cell) case final error?) {
      failingLines.add(cell.line);
      failures.add(
        '$migratingPath:${cell.line}: `${cell.code}` $error (${cell.section})',
      );
    } else {
      after.add(cell);
    }
  }
  if (after.isEmpty) return (failures: failures, failingLines: failingLines);

  final sandbox = await Directory.systemTemp.createTemp('migrating_after_');
  try {
    final dir = p.join(sandbox.path, 'after');
    Directory(p.join(dir, 'lib')).createSync(recursive: true);
    File(
      p.join(dir, 'pubspec.yaml'),
    ).writeAsStringSync(_workspacePubspec(root, packages));
    final r = renderCells(after, barrels);
    final file = p.canonicalize(p.join(dir, 'lib', 'cells.dart'));
    File(file).writeAsStringSync(r.contents);
    var get = await Process.run('dart', [
      'pub',
      'get',
      '--offline',
    ], workingDirectory: dir);
    if (get.exitCode != 0) {
      get = await Process.run('dart', ['pub', 'get'], workingDirectory: dir);
    }
    if (get.exitCode != 0) {
      return (
        failures: [...failures, 'dart pub get failed in $dir:\n${get.stderr}'],
        failingLines: failingLines,
      );
    }

    var diagnostics = await analyzeDiagnostics(dir);
    final undefined = <String>{};
    for (final d in diagnostics) {
      if (d.file != file) continue;
      if (d.code != 'UNDEFINED_IDENTIFIER' && d.code != 'UNDEFINED_FUNCTION') {
        continue;
      }
      final name = RegExp(r"'([a-z]\w*)'").firstMatch(d.message)?.group(1);
      if (name != null) undefined.add(name);
    }
    if (undefined.isNotEmpty) {
      final lines = File(file).readAsStringSync().split('\n');
      lines.add('dynamic ${(undefined.toList()..sort()).join(', ')};');
      File(file).writeAsStringSync(lines.join('\n'));
      diagnostics = await analyzeDiagnostics(dir);
    }

    for (final d in diagnostics) {
      if (d.severity != 'ERROR' && d.severity != 'WARNING') continue;
      final inCell = d.file == file && d.line <= r.cells.length;
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
      if (docLine != null) failingLines.add(docLine);
      failures.add(
        docLine == null || cell == null
            ? '${d.file}:${d.line}: ${d.message} (${d.code})'
            : '$migratingPath:$docLine: After `${cell.code}`: '
                  '${d.message} (${d.code})',
      );
    }
  } finally {
    sandbox.deleteSync(recursive: true);
  }
  return (failures: failures, failingLines: failingLines);
}

Future<void> main() async {
  final report = await checkMigratingCells(Directory.current.path);
  print(
    'migrating_cells: Before cells: ${report.beforeCompiled} compiled against '
    '${report.before.values.toSet().join(', ')}, ${report.beforeFailed} '
    'failed',
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
