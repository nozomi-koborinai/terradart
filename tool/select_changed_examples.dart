// select_changed_examples.dart — CI example-matrix selection.
//
// Replaces the untested shell (awk/grep/sed/jq) in ci.yml's `changes` job.
// This is the same class of selector whose awk regex once fanned a
// pubspec-only bump out to every example (a real GCP-cost leak — see
// apply_smoke_test.sh test 8 for the apply-smoke twin), so the logic lives
// in Dart with unit tests instead of one-shot shell.
//
// Usage (from repo root):
//   git diff --name-only <base> HEAD | \
//     dart tool/select_changed_examples.dart --event pull_request
//   dart tool/select_changed_examples.dart --event push < /dev/null
//
// stdin:  changed file paths, one per line (only read for pull_request).
// stdout: JSON array of example slugs WITHOUT the `_quickstart` suffix.
//
// Selection contract (mirrors the historical shell exactly):
// - event != pull_request (push to main / dispatch) -> ALL quickstarts
//   (regression backstop).
// - any changed path under packages/ or tool/, or ci.yml itself -> ALL
//   (a library/codegen/tooling/CI change can alter every example's synth).
// - otherwise -> the changed examples/<slug>_quickstart/** slugs, deduped
//   and sorted (any file under the example counts, pubspec/README included:
//   validating one example is cheap; the expensive fan-out is the ALL case).
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

/// Every `examples/*_quickstart` slug (suffix stripped), sorted.
List<String> allSlugs() => Directory('examples')
    .listSync()
    .whereType<Directory>()
    .map((d) => d.path.split(Platform.pathSeparator).last)
    .where((n) => n.endsWith('_quickstart'))
    .map((n) => n.substring(0, n.length - '_quickstart'.length))
    .toList()
  ..sort();

/// Pure selection logic — unit-tested in select_changed_examples_test.dart.
///
/// [exists] answers whether `examples/<slug>_quickstart/` is present on the
/// checkout (defaults to the filesystem). A PR that deletes an example still
/// lists its files in the diff, and the matrix must not try to validate a
/// directory that is gone.
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
