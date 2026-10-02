// check_docs_consistency.dart — verifies docs caret minors and catalog counts.
//
// Text-only: the example synth gates (coverage + API-enablement ratchet +
// local terraform validate) live in tool/example_synth_gates.dart and run as
// their own step in agent_verify.sh and CI.
//
// Run from repo root: dart tool/check_docs_consistency.dart
//   --fix  first rewrite the terradart_google catalog counts in the pages
//          that carry them (the weekly schema bump generates factories, so
//          it moves the counts; every other check stays read-only).
// ignore_for_file: avoid_print

import 'dart:io';

import 'doc_expectations.dart';

Future<void> main(List<String> args) async {
  if (args.contains('--fix')) {
    for (final path in googleCountPages) {
      final file = File(path);
      if (!file.existsSync()) continue;
      final text = file.readAsStringSync();
      final fixed = fixGoogleCounts(text);
      if (fixed != text) {
        file.writeAsStringSync(fixed);
        print('fixed catalog counts: $path');
      }
    }
  }
  final errors = <String>[];

  final minor = _workspaceMinor();
  print(
    'Workspace minor: 0.$minor.x (from packages/terradart_core/pubspec.yaml)',
  );

  _checkCaretMinor(
    errors,
    minor,
    'README.md',
    mustContain: [curatedCatalogPhrase, catalogEntriesPhrase],
  );
  _checkCaretMinor(
    errors,
    minor,
    'CONTRIBUTING.md',
    mustContain: [curatedCatalogPhrase],
  );
  _checkCaretMinor(errors, minor, 'SECURITY.md');
  _checkCaretMinor(errors, minor, 'packages/terradart_core/README.md');
  _checkCaretMinor(
    errors,
    minor,
    'packages/terradart_google/README.md',
    mustContain: [curatedCatalogPhrase],
  );
  _checkCaretMinor(errors, minor, 'packages/terradart_codegen/README.md');
  _checkCaretMinor(errors, minor, 'packages/terradart_time/README.md');
  _checkCaretMinor(
    errors,
    minor,
    'website/src/content/docs/docs/getting-started.mdx',
  );
  _checkPhrase(
    errors,
    'website/src/content/docs/docs/status.md',
    '$curatedFactoryCount curated resource factories + $dataSourceCatalogPhrase',
    '($catalogEntryCount catalog entries)',
  );
  _checkPhrase(
    errors,
    'website/src/content/docs/docs/coverage/google.md',
    '$curatedFactoryCount curated resource factories + $dataSourceCatalogPhrase',
    '($catalogEntryCount catalog entries)',
  );
  _checkPhrase(
    errors,
    'website/src/content/docs/docs/why-terradart.md',
    '$curatedFactoryCount curated resource factories + $dataSourceCatalogPhrase',
    '($catalogEntryCount catalog entries)',
  );
  // Version-line freshness: any `0.NN.x` token in these user-facing pages must
  // match the current workspace minor. Pages that intentionally reference old
  // lines (MIGRATING, waves history, SECURITY's unsupported-versions table)
  // are exempt.
  for (final page in [
    'README.md',
    'CONTRIBUTING.md',
    'website/src/content/docs/docs/index.md',
    'website/src/content/docs/docs/status.md',
    'website/src/content/docs/docs/getting-started.mdx',
    'website/src/content/docs/docs/why-terradart.md',
    'website/src/content/docs/docs/how-it-works.mdx',
    'website/src/content/docs/docs/how-its-built.mdx',
    ..._providerPages(),
  ]) {
    _checkNoStaleVersionLine(errors, minor, page);
  }
  for (final page in _providerPages()) {
    _checkCaretMinor(errors, minor, page);
  }
  _checkPhrase(
    errors,
    'website/src/components/PitchCode.astro',
    '(GA catalog, $catalogEntryCount entries)',
  );
  // terradart-migrate distribution: the install line and the guide.
  for (final page in [
    'README.md',
    'packages/terradart_migrate/README.md',
    'website/src/content/docs/docs/migrate-from-hcl.md',
  ]) {
    _checkPhrase(errors, page, migrateInstallPhrase);
  }
  _checkPhrase(
    errors,
    'website/src/content/docs/docs/index.md',
    '/docs/migrate-from-hcl/',
  );
  for (final lane in exactPinLanes) {
    _checkNoExactPinCopies(errors, lane);
  }
  for (final template in [
    '.github/ISSUE_TEMPLATE/bug.yml',
    '.github/ISSUE_TEMPLATE/feature.yml',
    '.github/ISSUE_TEMPLATE/question.yml',
  ]) {
    _checkCaretMinor(errors, minor, template);
  }

  for (final example in _exampleDirs()) {
    final pubspec = File('examples/$example/pubspec.yaml');
    if (!pubspec.existsSync()) continue;
    final text = pubspec.readAsStringSync();
    if (!text.contains('^0.$minor.')) {
      errors.add('examples/$example/pubspec.yaml: expected caret ^0.$minor.x');
    }
  }

  for (final readme in _exampleReadmes()) {
    final text = File(readme).readAsStringSync();
    if (text.contains(RegExp(r'\^0\.(\d+)\.0-dev'))) {
      errors.add('$readme: stale ^0.x.0-dev constraint');
    }
    if (text.contains('^0.') && !text.contains('^0.$minor.')) {
      final hasOld =
          RegExp(r'\^0\.(10|11|1)\.').hasMatch(text) ||
          text.contains('^0.1.0-dev');
      if (hasOld) {
        errors.add('$readme: caret minor should be ^0.$minor.x');
      }
    }
  }

  if (errors.isEmpty) {
    print('check_docs_consistency: OK');
    exit(0);
  }
  stderr.writeln('check_docs_consistency: FAILED');
  for (final e in errors) {
    stderr.writeln('  - $e');
  }
  exit(1);
}

int _workspaceMinor() {
  final pubspec = File(
    'packages/terradart_core/pubspec.yaml',
  ).readAsStringSync();
  final match = RegExp(
    r'^version:\s*0\.(\d+)\.\d+',
    multiLine: true,
  ).firstMatch(pubspec);
  if (match == null) {
    stderr.writeln(
      'Could not parse packages/terradart_core/pubspec.yaml version',
    );
    exit(2);
  }
  return int.parse(match.group(1)!);
}

void _checkPhrase(
  List<String> errors,
  String path,
  String phrase, [
  String? phrase2,
  String? phrase3,
  String? phrase4,
]) {
  final file = File(path);
  if (!file.existsSync()) {
    errors.add('Missing file: $path');
    return;
  }
  final text = file.readAsStringSync();
  for (final p in [phrase, phrase2, phrase3, phrase4]) {
    if (p != null && !text.contains(p)) {
      errors.add('$path: expected phrase "$p"');
    }
  }
}

/// Every page under Providers; each has an install snippet with the minor
/// caret, so a new page is checked without being listed here.
List<String> _providerPages() => [
  for (final f in Directory(
    'website/src/content/docs/docs/providers',
  ).listSync().whereType<File>())
    if (f.path.endsWith('.md') || f.path.endsWith('.mdx')) f.path,
]..sort();

void _checkNoStaleVersionLine(List<String> errors, int minor, String path) {
  final file = File(path);
  if (!file.existsSync()) {
    errors.add('Missing file: $path');
    return;
  }
  final text = file.readAsStringSync();
  final reported = <String>{};
  for (final match in RegExp(r'\b0\.(\d+)\.x\b').allMatches(text)) {
    final found = int.parse(match.group(1)!);
    if (found != minor && reported.add('0.$found.x')) {
      errors.add(
        '$path: stale version line "0.$found.x" (current minor is 0.$minor.x)',
      );
    }
  }
}

void _checkCaretMinor(
  List<String> errors,
  int minor,
  String path, {
  List<String> mustContain = const [],
}) {
  final file = File(path);
  if (!file.existsSync()) {
    errors.add('Missing file: $path');
    return;
  }
  final text = file.readAsStringSync();
  final caret = '^0.$minor.x';
  if (!text.contains(caret) && !text.contains('^0.$minor.')) {
    if (path.endsWith('.yml')) {
      if (!text.contains('0.$minor')) {
        errors.add('$path: expected reference to 0.$minor.x line');
      }
    } else {
      errors.add('$path: expected $caret (or ^0.$minor.N patch caret)');
    }
  }
  for (final phrase in mustContain) {
    if (!text.contains(phrase)) {
      errors.add('$path: expected phrase "$phrase"');
    }
  }
}

/// Prose that restates an exact pin or its catalog counts goes stale on the
/// next schema bump; point at the generated constant instead. History
/// (CHANGELOG, MIGRATING) and the schema fixtures themselves are exempt.
void _checkNoExactPinCopies(List<String> errors, ExactPinLane lane) {
  final phrases = lane.stalePhrases;
  for (final path in _proseFiles()) {
    final lines = File(path).readAsLinesSync();
    for (var i = 0; i < lines.length; i++) {
      for (final phrase in phrases) {
        final match = phrase.firstMatch(lines[i]);
        if (match == null) continue;
        errors.add(
          '$path:${i + 1}: "${match.group(0)}" copies the ${lane.package} '
          'pin or catalog count; name `${lane.pinConstant}` or say "at the '
          'current pin" instead',
        );
      }
    }
  }
}

/// Hand-written prose a reader sees: root guides, package / example
/// READMEs, example pubspec descriptions, the barrels manifests (their docs
/// land in generated library comments), skills and the website.
List<String> _proseFiles() {
  final files = <String>[
    for (final name in [
      'README.md',
      'AGENTS.md',
      'CONTEXT.md',
      'CONTRIBUTING.md',
      'SECURITY.md',
    ])
      if (File(name).existsSync()) name,
  ];
  for (final dir in ['packages', 'examples']) {
    for (final entry in Directory(dir).listSync().whereType<Directory>()) {
      for (final name in ['README.md', 'pubspec.yaml']) {
        final f = File('${entry.path}/$name');
        if (f.existsSync()) files.add(f.path);
      }
    }
  }
  void under(String root, bool Function(String) keep) {
    final d = Directory(root);
    if (!d.existsSync()) return;
    for (final f in d.listSync(recursive: true).whereType<File>()) {
      if (keep(f.path)) files.add(f.path);
    }
  }

  under(
    'packages/terradart_codegen/lib/src/codegen/barrels',
    (p) => p.endsWith('.yaml'),
  );
  under('.agents/skills', (p) => p.endsWith('.md'));
  // The coverage pages state every catalog's counts on purpose: they are
  // rendered from the catalogs, and the bump re-renders them.
  under(
    'website/src',
    (p) =>
        !p.startsWith('website/src/content/docs/docs/coverage/') &&
        (p.endsWith('.md') || p.endsWith('.mdx') || p.endsWith('.astro')),
  );
  return files..sort();
}

List<String> _exampleDirs() {
  return Directory('examples')
      .listSync()
      .whereType<Directory>()
      .map((d) => d.path.split('/').last)
      .where((name) => name.endsWith('_quickstart'))
      .toList();
}

List<String> _exampleReadmes() {
  return Directory('examples')
      .listSync()
      .whereType<Directory>()
      .map((d) => '${d.path}/README.md')
      .where((p) => File(p).existsSync())
      .toList();
}
