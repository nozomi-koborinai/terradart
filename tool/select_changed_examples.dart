// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

List<String> allSlugs() =>
    Directory('examples')
        .listSync()
        .whereType<Directory>()
        .map((d) => d.path.split(Platform.pathSeparator).last)
        .where((n) => n.endsWith('_quickstart'))
        .map((n) => n.substring(0, n.length - '_quickstart'.length))
        .toList()
      ..sort();

List<String> selectExamples({
  required String event,
  required List<String> changed,
  bool Function(String slug)? exists,
}) {
  if (event != 'pull_request') return allSlugs();
  final fanOut = RegExp(r'^(packages/|tool/|\.github/workflows/ci\.yml$)');
  if (changed.any(fanOut.hasMatch)) return allSlugs();
  final example = RegExp(r'^examples/([^/]+)_quickstart/');
  final slugs = <String>{};
  for (final path in changed) {
    final m = example.firstMatch(path);
    if (m != null) slugs.add(m.group(1)!);
  }
  return slugs.where(exists ?? _quickstartExists).toList()..sort();
}

bool _quickstartExists(String slug) =>
    Directory('examples/${slug}_quickstart').existsSync();

void main(List<String> args) {
  var event = '';
  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--event' && i + 1 < args.length) event = args[++i];
  }
  if (event.isEmpty) {
    stderr.writeln('usage: select_changed_examples.dart --event <name>');
    exit(64);
  }
  final changed = <String>[];
  if (event == 'pull_request') {
    while (true) {
      final line = stdin.readLineSync();
      if (line == null) break;
      final trimmed = line.trim();
      if (trimmed.isNotEmpty) changed.add(trimmed);
    }
  }
  print(jsonEncode(selectExamples(event: event, changed: changed)));
}
