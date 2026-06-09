// check_docs_consistency.dart — verifies docs caret minors and catalog counts.
//
// Run from repo root: dart tool/check_docs_consistency.dart
// ignore_for_file: avoid_print

import 'dart:io';

import 'doc_expectations.dart';

void main() {
  final errors = <String>[];

  final minor = _workspaceMinor();
  print(
      'Workspace minor: 0.$minor.x (from packages/terradart_core/pubspec.yaml)');

  _checkCaretMinor(
    errors,
    minor,
    'README.md',
    mustContain: [curatedCatalogPhrase, catalogEntriesPhrase],
  );
  _checkCaretMinor(errors, minor, 'CONTRIBUTING.md',
      mustContain: [curatedCatalogPhrase]);
  _checkCaretMinor(errors, minor, 'SECURITY.md');
  _checkCaretMinor(errors, minor, 'packages/terradart_core/README.md');
  _checkCaretMinor(errors, minor, 'packages/terradart_google/README.md',
      mustContain: [curatedCatalogPhrase]);
  _checkCaretMinor(errors, minor, 'packages/terradart_codegen/README.md');
  _checkCaretMinor(
    errors,
    minor,
    'website/src/content/docs/docs/getting-started.md',
  );
  _checkPhrase(
    errors,
    'website/src/content/docs/docs/agent/index.md',
    agentCatalogEntriesPhrase,
    agentResourceFactoriesPhrase,
    serviceBarrelCountPhrase,
  );
  _checkPhrase(
    errors,
    'website/src/content/docs/docs/agent/tools-reference.md',
    'list all 136',
    listBarrelsOutputCountPhrase,
  );
  _checkPhrase(
    errors,
    'packages/terradart_agent/README.md',
    agentCatalogEntriesPhrase,
    agentResourceFactoriesPhrase,
    serviceBarrelCountPhrase,
  );
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
      final hasOld = RegExp(r'\^0\.(10|11|1)\.').hasMatch(text) ||
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
  final pubspec =
      File('packages/terradart_core/pubspec.yaml').readAsStringSync();
  final match =
      RegExp(r'^version:\s*0\.(\d+)\.\d+', multiLine: true).firstMatch(pubspec);
  if (match == null) {
    stderr.writeln(
        'Could not parse packages/terradart_core/pubspec.yaml version');
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
]) {
  final file = File(path);
  if (!file.existsSync()) {
    errors.add('Missing file: $path');
    return;
  }
  final text = file.readAsStringSync();
  for (final p in [phrase, phrase2, phrase3]) {
    if (p != null && !text.contains(p)) {
      errors.add('$path: expected phrase "$p"');
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
