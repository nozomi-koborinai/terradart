// check_bump_scope.dart — fail-closed scope check for schema-bump PRs.
//
// The bump-merge executor (.github/workflows/bump-merge.yml) pipes the PR's
// changed-file list into this tool before merging. A file matching NO rule
// in tool/bump_allowed_paths.yaml blocks the auto-merge. The post-process
// agent never merges; this check is the mechanical gate that makes the
// agent's `bump-approved` verdict safe to act on.
//
// Usage: gh pr diff <n> --name-only | dart tool/check_bump_scope.dart
// stdin:  changed file paths, one per line.
// stdout: violations (one per line) when any exist.
// exit:   0 all files allowed; 1 violations, empty input, or bad ledger.
// ignore_for_file: avoid_print

import 'dart:io';

/// Reads the ledger: '#'/blank lines are comments, a trailing '/' marks a
/// prefix rule, anything else is an exact-path rule.
List<String> loadBumpRules(String path) {
  final lines = File(path).readAsLinesSync();
  final rules = <String>[];
  for (final raw in lines) {
    final line = raw.trim();
    if (line.isEmpty || line.startsWith('#')) continue;
    rules.add(line);
  }
  return rules;
}

/// Pure check — unit-tested in check_bump_scope_test.dart.
List<String> checkBumpScope({
  required List<String> changed,
  required List<String> rules,
}) {
  bool allowed(String path) {
    for (final rule in rules) {
      if (rule.endsWith('/')) {
        if (path.startsWith(rule)) return true;
      } else if (path == rule) {
        return true;
      }
    }
    return false;
  }

  return [
    for (final path in changed)
      if (!allowed(path)) path,
  ];
}

void main() {
  final rules = loadBumpRules('tool/bump_allowed_paths.yaml');
  final changed = <String>[];
  while (true) {
    final line = stdin.readLineSync();
    if (line == null) break;
    final trimmed = line.trim();
    if (trimmed.isNotEmpty) changed.add(trimmed);
  }
  if (changed.isEmpty) {
    print(
      'check_bump_scope: no changed files on stdin '
      '(refusing to pass an empty diff)',
    );
    exit(1);
  }
  final violations = checkBumpScope(changed: changed, rules: rules);
  if (violations.isEmpty) {
    print(
      'check_bump_scope: OK '
      '(${changed.length} files within tool/bump_allowed_paths.yaml)',
    );
    exit(0);
  }
  print(
    'check_bump_scope: ${violations.length} file(s) outside '
    'tool/bump_allowed_paths.yaml:',
  );
  violations.forEach(print);
  exit(1);
}
