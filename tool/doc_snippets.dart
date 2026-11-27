// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;

import 'lane_surface.dart';
import 'wrap_lanes.dart';

List<String> snippetDocuments(String root) {
  final docs = <String>['README.md', 'skills/terradart/SKILL.md'];
  for (final dir in ['packages', 'cookbook', 'examples']) {
    final base = Directory(p.join(root, dir));
    if (!base.existsSync()) continue;
    docs.addAll(
      [
        for (final d in base.listSync().whereType<Directory>())
          if (File(p.join(d.path, 'README.md')).existsSync())
            p.relative(p.join(d.path, 'README.md'), from: root),
      ]..sort(),
    );
  }
  final site = Directory(p.join(root, 'website/src/content/docs'));
  if (site.existsSync()) {
    final pages = [
      for (final f in site.listSync(recursive: true).whereType<File>())
        if ((f.path.endsWith('.md') || f.path.endsWith('.mdx')) &&
            !f.path.contains('/docs/coverage/'))
          p.relative(f.path, from: root),
    ]..sort();
    docs.addAll(pages);
  }
  return docs;
}

final class Snippet {
  Snippet({required this.doc, required this.line, required this.code});

  final String doc;
  final int line;
  final String code;

  String? get path {
    for (final raw in code.split('\n')) {
      final line = raw.trim();
      if (line.isEmpty || line.startsWith('// docs:pitch:')) continue;
      final m = RegExp(r'^//\s*([\w./-]+\.dart)\b').firstMatch(line);
      return m?.group(1);
    }
    return null;
  }

  bool get hasDirectives => RegExp(
    r'^\s*(import|export|library|part)\b',
    multiLine: true,
  ).hasMatch(code);

  bool get isLibrary {
    if (hasDirectives) return true;
    for (final raw in code.split('\n')) {
      final line = raw.trim();
      if (line.isEmpty || line.startsWith('//')) continue;
      return _declaration.hasMatch(line);
    }
    return true;
  }

  static final _declaration = RegExp(
    r'^(@|(abstract |base |final |interface |sealed |mixin )*'
    r'(class|enum|mixin|extension|typedef)\b|'
    r'(Future|FutureOr|Stream|void|bool|int|double|num|String|List|Map|Set|'
    r'Iterable|Object|dynamic|[A-Z]\w*)(<[^>]*>)?\??\s+\w+\s*[({=;]|'
    r'(const|final|var|late)\s+[A-Z]\w*(<[^>]*>)?\??\s+\w+\s*=)',
  );
}

List<Snippet> extractSnippets(
  String doc,
  String text, {
  List<Snippet>? skipped,
}) {
  final lines = text.split('\n');
  final out = <Snippet>[];
  final open = RegExp(r'^(\s*)(`{3,}|~{3,})dart\b');
  for (var i = 0; i < lines.length; i++) {
    final m = open.firstMatch(lines[i]);
    if (m == null) continue;
    final skip = i > 0 && _skip.firstMatch(lines[i - 1]) != null;
    final indent = m.group(1)!.length;
    final fence = m.group(2)!;
    final close = RegExp(
      '^\\s*${RegExp.escape(fence[0])}{${fence.length},}\\s*\$',
    );
    final body = <String>[];
    var j = i + 1;
    for (; j < lines.length && !close.hasMatch(lines[j]); j++) {
      final l = lines[j];
      body.add(
        l.length >= indent && l.substring(0, indent).trim().isEmpty
            ? l.substring(indent)
            : l.trimLeft(),
      );
    }
    final snippet = Snippet(doc: doc, line: i + 2, code: body.join('\n'));
    (skip ? skipped : out)?.add(snippet);
    i = j;
  }
  return out;
}

final _skip = RegExp(r'^\s*<!--\s*doc-snippets:\s*skip:\s*\S.*-->\s*$');

List<String> skipViolations(List<Snippet> skipped, Set<String> workspace) => [
  for (final s in skipped)
    if (!RegExp(
      r'''^\s*import\s+['"]package:(\w+)/''',
      multiLine: true,
    ).allMatches(s.code).any((m) => !workspace.contains(m.group(1))))
      '${s.doc}:${s.line}: a skip marker is only for a fence that needs a '
          'package outside the workspace; this one compiles in the sandbox',
];

const statusPath = 'website/src/content/docs/docs/status.md';

Set<String> stablePackages(String statusMd) {
  final row = statusMd
      .split('\n')
      .firstWhere((l) => l.startsWith('| **1.0.0** |'), orElse: () => '');
  final start = row.indexOf('Stable SemVer for ');
  var promise = start < 0 ? '' : row.substring(start);
  final outside = RegExp(
    r'(`terradart_\w+`(,?\s*(and\s+)?`terradart_\w+`)*),?\s*stays?\s+'
    r'outside the promise',
  ).firstMatch(promise);
  if (outside != null) promise = promise.substring(0, outside.start);
  final out = {
    for (final m in RegExp(r'`(terradart_\w+)`').allMatches(promise))
      m.group(1)!,
  };
  if (out.isEmpty) {
    throw StateError('$statusPath has no 1.0.0 row naming the stable packages');
  }
  return out;
}

final List<String> docCommentPackages = [
  for (final name in workspacePackageNames(
    File('pubspec.yaml').readAsStringSync(),
  ))
    if (name != 'terradart_codegen') name,
];

({List<Snippet> snippets, List<String> unlabeled}) extractDocCommentSnippets(
  String file,
  String text,
) {
  final lines = text.split('\n');
  final snippets = <Snippet>[];
  final unlabeled = <String>[];
  final doc = RegExp(r'^\s*/// ?(.*)$');
  final open = RegExp(r'^(`{3,}|~{3,})\s*(\S*)');
  for (var i = 0; i < lines.length; i++) {
    final m = doc.firstMatch(lines[i]);
    if (m == null) continue;
    final o = open.firstMatch(m.group(1)!);
    if (o == null) continue;
    final fence = o.group(1)!;
    final language = o.group(2)!;
    final close = RegExp('^${RegExp.escape(fence[0])}{${fence.length},}\\s*\$');
    final body = <String>[];
    var j = i + 1;
    for (; j < lines.length; j++) {
      final d = doc.firstMatch(lines[j]);
      if (d == null || close.hasMatch(d.group(1)!)) break;
      body.add(d.group(1)!);
    }
    if (language.isEmpty) {
      unlabeled.add(
        '$file:${i + 1}: a doc-comment fence needs a language; dartdoc '
        'renders an unlabeled one as Dart (use ```text for a diagram)',
      );
    } else if (language == 'dart') {
      snippets.add(Snippet(doc: file, line: i + 2, code: body.join('\n')));
    }
    i = j;
  }
  return (snippets: snippets, unlabeled: unlabeled);
}

final class SnippetFile {
  SnippetFile(this.path, this.contents, this.snippet, this.prefix);

  final String path;
  final String contents;
  final Snippet snippet;
  final int prefix;

  int docLine(int line) {
    final offset = line - 1 - prefix;
    final max = snippet.code.split('\n').length - 1;
    return snippet.line + offset.clamp(0, max);
  }
}

const _ignores =
    '// ignore_for_file: unused_import, unused_local_variable, '
    'unused_element, unused_field, dead_code';

final List<WrapLane> _lanes = parseWrapLanes(
  File(providersPath).readAsStringSync(),
);

final List<String> _barrels = docSnippetBarrels(_lanes);

final Set<String> _lanePackages = {
  for (final lane in _lanes) lane.outputPackage.split('/').last,
};

final _identifier = RegExp(r'\b[A-Za-z_]\w*\b');
final _showClause = RegExp(r'\bshow\s+([^;]+);');
final _topDecl = RegExp(
  r'^(?:(?:abstract|base|final|interface|sealed|mixin)\s+)*'
  r'(?:class|enum|mixin|typedef)\s+([A-Z]\w*)\b|'
  r'^extension\s+type\s+(?:const\s+)?([A-Z]\w*)\b|'
  r'^extension\s+([A-Z]\w*)\s+on\b|'
  r'^(?:const|final)\s+(?:[\w<>?, ]+\s+)?([a-zA-Z]\w*)\s*=|'
  r'^(?:Future(?:<[^>]+>)?|void|String|bool|int|Map<[^>]+>|List<[^>]+>|[A-Z]\w*)\s+([a-z]\w*)\s*[<(]',
  multiLine: true,
);

final Map<String, Map<String, Set<String>>> _providerExportsCache = {};

Map<String, Set<String>> _providerExports(String root) =>
    _providerExportsCache.putIfAbsent(root, () {
      final result = <String, Set<String>>{};
      for (final pkg in _lanePackages) {
        final names = <String>{};
        final libDir = Directory(p.join(root, 'packages', pkg, 'lib'));
        if (libDir.existsSync()) {
          for (final ent in libDir.listSync().whereType<File>()) {
            if (!ent.path.endsWith('.dart')) continue;
            final text = ent.readAsStringSync();
            for (final m in _showClause.allMatches(text)) {
              for (final id in _identifier.allMatches(m.group(1)!)) {
                names.add(id.group(0)!);
              }
            }
            for (final m in _topDecl.allMatches(text)) {
              for (var g = 1; g <= m.groupCount; g++) {
                final v = m.group(g);
                if (v != null && !v.startsWith('_')) names.add(v);
              }
            }
          }
          final srcDir = Directory(p.join(libDir.path, 'src'));
          if (srcDir.existsSync()) {
            for (final ent in srcDir.listSync().whereType<File>()) {
              if (!ent.path.endsWith('.dart')) continue;
              final text = ent.readAsStringSync();
              for (final m in _topDecl.allMatches(text)) {
                for (var g = 1; g <= m.groupCount; g++) {
                  final v = m.group(g);
                  if (v != null && !v.startsWith('_')) names.add(v);
                }
              }
            }
          }
        }
        result[pkg] = names;
      }
      return result;
    });

List<String> _barrelsFor(Snippet s, String? root) {
  if (root == null) return _barrels;
  final exports = _providerExports(root);
  final ids = {for (final m in _identifier.allMatches(s.code)) m.group(0)!};
  final docPkg = s.doc.startsWith('packages/')
      ? p.split(s.doc).elementAtOrNull(1)
      : null;
  final out = <String>[];
  for (final imp in _barrels) {
    final m = RegExp(r"package:(\w+)/").firstMatch(imp);
    final pkg = m?.group(1);
    if (pkg == null || !_lanePackages.contains(pkg)) {
      out.add(imp);
      continue;
    }
    if (pkg == docPkg) {
      out.add(imp);
      continue;
    }
    final pkgNames = exports[pkg];
    if (pkgNames == null || ids.any(pkgNames.contains)) {
      out.add(imp);
    }
  }
  return out;
}

SnippetFile renderSnippet(
  Snippet s,
  int index, {
  String? root,
  String? pathOverride,
}) {
  final path = pathOverride ?? s.path ?? 'lib/snippet_$index.dart';
  final head = <String>[
    _ignores,
    if (!s.hasDirectives) ..._barrelsFor(s, root),
  ];
  if (s.isLibrary) {
    return SnippetFile(path, '${head.join('\n')}\n${s.code}\n', s, head.length);
  }
  final open = [
    ...head,
    'final class _Snippet$index extends Stack {',
    '  _Snippet$index()',
    '    : super(',
    '        providers: const [],',
    "        appExports: AppExports('lib/generated/snippet_$index.app.dart'),",
    '      ) {',
  ];
  return SnippetFile(
    path,
    '${open.join('\n')}\n${s.code}\n  }\n}\n',
    s,
    open.length,
  );
}

final List<String> _packages = docSnippetPackages(
  File('pubspec.yaml').readAsStringSync(),
);

String _pubspec(String root, List<String> packages) {
  final b = StringBuffer()
    ..writeln('name: my_app')
    ..writeln('publish_to: none')
    ..writeln('environment:')
    ..writeln('  sdk: ^3.12.0')
    ..writeln('dependencies:');
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

typedef _Unit = ({
  String name,
  List<Snippet> snippets,
  bool docComments,
  String? package,
});

List<File> _checkedInReaders(String dir) => [
  if (File(p.join(dir, 'pubspec.yaml')).existsSync())
    for (final f in Directory(dir).listSync(recursive: true).whereType<File>())
      if (f.path.endsWith('.app.dart') &&
          p.basename(p.dirname(f.path)) == 'generated' &&
          p.basename(p.dirname(p.dirname(f.path))) == 'lib' &&
          !p.split(f.path).any((s) => s.startsWith('.') || s == 'build'))
        f,
]..sort((a, b) => a.path.compareTo(b.path));

Future<List<String>> checkDocSnippets(
  String root, {
  List<String>? docs,
  List<String>? libs,
}) async {
  docs ??= snippetDocuments(root);
  libs ??= [for (final pkg in docCommentPackages) 'packages/$pkg/lib'];
  final failures = <String>[];
  final skipped = <Snippet>[];
  final units = <_Unit>[
    for (final doc in docs)
      (
        name: doc,
        snippets: extractSnippets(
          doc,
          File(p.join(root, doc)).readAsStringSync(),
          skipped: skipped,
        ),
        docComments: false,
        package: null,
      ),
  ];
  failures.addAll(
    skipViolations(
      skipped,
      workspacePackageNames(
        File(p.join(root, 'pubspec.yaml')).readAsStringSync(),
      ).toSet(),
    ),
  );
  for (final dir in libs) {
    final lib = Directory(p.join(root, dir));
    if (!lib.existsSync()) continue;
    final snippets = <Snippet>[];
    final files = [
      for (final f in lib.listSync(recursive: true).whereType<File>())
        if (f.path.endsWith('.dart')) f,
    ]..sort((a, b) => a.path.compareTo(b.path));
    for (final f in files) {
      final found = extractDocCommentSnippets(
        p.relative(f.path, from: root),
        f.readAsStringSync(),
      );
      snippets.addAll(found.snippets);
      failures.addAll(found.unlabeled);
    }
    final package = p.basename(p.dirname(p.normalize(lib.path)));
    units.add((
      name: dir,
      snippets: snippets,
      docComments: true,
      package: _packages.contains(package) ? null : package,
    ));
  }

  final sandbox = await Directory.systemTemp.createTemp('doc_snippets_');
  try {
    final files = <String, SnippetFile>{};
    final runsByDir = <String, List<(String, Snippet)>>{};
    final dirs = <String>[];
    final workspace = workspacePackageNames(
      File(p.join(root, 'pubspec.yaml')).readAsStringSync(),
    );
    String? sharedDir;
    var sharedUnitIndex = 0;

    void ensureDir(String dir, String? extraPackage) {
      if (Directory(dir).existsSync()) return;
      dirs.add(dir);
      Directory(dir).createSync(recursive: true);
      File(p.join(dir, 'pubspec.yaml')).writeAsStringSync(
        _pubspec(root, [
          ..._packages,
          if (extraPackage != null && workspace.contains(extraPackage))
            extraPackage,
        ]),
      );
    }

    for (final unit in units) {
      if (unit.snippets.isEmpty) continue;
      final readers = unit.docComments
          ? const <File>[]
          : _checkedInReaders(p.dirname(p.join(root, unit.name)));
      final standalone =
          unit.package == null &&
          readers.isEmpty &&
          unit.snippets.every(
            (s) => s.path == null && !s.code.contains('package:my_app/'),
          );
      final String dir;
      final int? sharedId;
      if (standalone) {
        sharedDir ??= p.join(sandbox.path, '_shared');
        dir = sharedDir;
        ensureDir(dir, null);
        sharedId = ++sharedUnitIndex;
      } else {
        dir = p.join(
          sandbox.path,
          unit.name.replaceAll(RegExp(r'[^\w]+'), '_').toLowerCase(),
        );
        ensureDir(dir, unit.package);
        sharedId = null;
        for (final reader in readers) {
          reader.copySync(
            (File(
              p.join(dir, 'lib', 'generated', p.basename(reader.path)),
            )..createSync(recursive: true)).path,
          );
        }
      }
      for (final (i, s) in unit.snippets.indexed) {
        final f = renderSnippet(
          s,
          i + 1,
          root: root,
          pathOverride: sharedId == null
              ? null
              : 'lib/u${sharedId}_snippet_${i + 1}.dart',
        );
        final out = File(p.join(dir, f.path));
        if (out.existsSync()) {
          failures.add(
            '${s.doc}:${s.line}: a second fence names ${f.path}; give each '
            'fence its own path',
          );
          continue;
        }
        out
          ..createSync(recursive: true)
          ..writeAsStringSync(f.contents);
        final key = p.canonicalize(out.path);
        files[key] = f;
        if (f.path.startsWith('bin/') &&
            RegExp(r'\bmain\s*\(').hasMatch(s.code)) {
          runsByDir.putIfAbsent(dir, () => []).add((f.path, s));
        }
      }
    }

    final pubErrors = await _runPool(dirs, (dir) async {
      var get = await Process.run('dart', [
        'pub',
        'get',
        '--offline',
      ], workingDirectory: dir);
      if (get.exitCode != 0) {
        get = await Process.run('dart', ['pub', 'get'], workingDirectory: dir);
      }
      return get.exitCode == 0
          ? null
          : 'dart pub get failed in $dir:\n${get.stderr}';
    });
    for (final e in pubErrors) {
      if (e != null) {
        failures.add(e);
        return failures;
      }
    }

    final runGroups = runsByDir.entries.toList()
      ..sort((a, b) => b.value.length.compareTo(a.value.length));
    final runErrorLists = await _runPool(runGroups, (entry) async {
      final groupErrors = <String>[];
      for (final (path, s) in entry.value) {
        final run = await Process.run('dart', [
          'run',
          path,
        ], workingDirectory: entry.key);
        if (run.exitCode != 0) {
          groupErrors.add(
            '${s.doc}:${s.line}: `dart run $path` failed:\n'
            '${run.stdout}${run.stderr}',
          );
        }
      }
      return groupErrors;
    });
    for (final list in runErrorLists) {
      failures.addAll(list);
    }

    final diagnostics = await _analyzeDirs(sandbox.path, dirs);
    for (final d in diagnostics) {
      if (d.severity != 'ERROR' && d.severity != 'WARNING') continue;
      final message = '${d.message} (${d.code})';
      final file = files[d.file];
      if (file == null) {
        failures.add('${d.file}:${d.line}: $message');
        continue;
      }
      failures.add('${file.snippet.doc}:${file.docLine(d.line)}: $message');
    }
  } finally {
    sandbox.deleteSync(recursive: true);
  }
  return failures;
}

Future<List<T>> _runPool<I, T>(
  List<I> items,
  Future<T> Function(I item) task, {
  int? concurrency,
}) async {
  if (items.isEmpty) return const [];
  final workers = (concurrency ?? Platform.numberOfProcessors).clamp(
    1,
    items.length,
  );
  final results = List<T?>.filled(items.length, null);
  var next = 0;
  Future<void> worker() async {
    while (true) {
      final i = next++;
      if (i >= items.length) return;
      results[i] = await task(items[i]);
    }
  }

  await Future.wait([for (var w = 0; w < workers; w++) worker()]);
  return [for (final r in results) r as T];
}

Future<List<AnalyzerDiagnostic>> _analyzeDirs(
  String sandboxPath,
  List<String> dirs,
) async {
  if (dirs.length <= 1) return analyzeDiagnostics(sandboxPath);
  final workers = Platform.numberOfProcessors.clamp(1, dirs.length);
  final buckets = [for (var i = 0; i < workers; i++) <String>[]];
  for (final (i, dir) in dirs.indexed) {
    buckets[i % workers].add(dir);
  }
  final batches = await Future.wait([
    for (final bucket in buckets)
      analyzeDiagnostics(sandboxPath, targets: bucket),
  ]);
  return [for (final b in batches) ...b];
}

typedef AnalyzerDiagnostic = ({
  String severity,
  String code,
  String file,
  int line,
  String message,
});

Future<List<AnalyzerDiagnostic>> analyzeDiagnostics(
  String dir, {
  List<String>? targets,
}) async {
  final analyze = await Process.run('dart', [
    'analyze',
    '--format=machine',
    ...?targets,
    if (targets == null) dir,
  ], workingDirectory: dir);
  final out = <AnalyzerDiagnostic>[];
  for (final line in '${analyze.stdout}\n${analyze.stderr}'.split('\n')) {
    final parts = line.split('|');
    if (parts.length < 8) continue;
    out.add((
      severity: parts[0],
      code: parts[2],
      file: p.canonicalize(parts[3]),
      line: int.parse(parts[4]),
      message: parts.sublist(7).join('|'),
    ));
  }
  if (analyze.exitCode != 0 && out.isEmpty) {
    throw StateError(
      'dart analyze failed:\n${analyze.stdout}${analyze.stderr}',
    );
  }
  return out;
}

Future<void> main() async {
  final root = Directory.current.path;
  final docs = snippetDocuments(root);
  final failures = await checkDocSnippets(root, docs: docs);
  if (failures.isEmpty) {
    print(
      'doc_snippets: OK (${docs.length} documents, doc comments of '
      '${docCommentPackages.length} packages)',
    );
    return;
  }
  stderr.writeln('doc_snippets: FAILED');
  for (final f in failures) {
    stderr.writeln('  - $f');
  }
  exit(1);
}
