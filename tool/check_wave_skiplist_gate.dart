// check_wave_skiplist_gate.dart — fail closed when a wave/* PR touches a
// skip-listed example.
//
// Failure mode this closes (2026-07, #296): wave-merge refuses auto-merge for
// skip-listed examples ("human merge required"), and the daily wave-shipper
// treated that as a non-repairable human verdict — so WIP-1 silently halted
// the loop for a week. Making the skip-list clash a *required CI failure*
// (other than verify+merge) forces the shipper into Repair instead.
//
// Usage (from repo root):
//   git diff --name-only <base>...HEAD | \
//     dart tool/check_wave_skiplist_gate.dart --head-ref wave/foo
//
// Exit 0 when head is not wave/*, or when no touched example is skip-listed.
// Exit 1 with a clear message otherwise.
// ignore_for_file: avoid_print

import 'dart:io';

/// Parse `slug:` keys from an apply-smoke skip ledger (comments / blanks ignored).
Set<String> parseSkipSlugs(String yaml) {
  final out = <String>{};
  for (final line in yaml.split('\n')) {
    final trimmed = line.trimLeft();
    if (trimmed.isEmpty || trimmed.startsWith('#')) continue;
    final m = RegExp(r'^([a-z0-9_]+):').firstMatch(trimmed);
    if (m != null) out.add(m.group(1)!);
  }
  return out;
}

/// Example slugs (`*_quickstart`) touched by [changedFiles].
Set<String> touchedQuickstarts(Iterable<String> changedFiles) {
  final out = <String>{};
  final re = RegExp(r'^examples/([^/]+_quickstart)(?:/|$)');
  for (final path in changedFiles) {
    final m = re.firstMatch(path);
    if (m != null) out.add(m.group(1)!);
  }
  return out;
}

/// Skip-listed quickstarts touched by a wave PR — empty means the gate passes.
List<String> waveSkiplistViolations({
  required String headRef,
  required Iterable<String> changedFiles,
  required Set<String> skipSlugs,
}) {
  if (!headRef.startsWith('wave/')) return const [];
  final hit = touchedQuickstarts(changedFiles)
      .where(skipSlugs.contains)
      .toList()
    ..sort();
  return hit;
}

String formatWaveSkiplistFailure(List<String> slugs) =>
    'wave skiplist gate: wave/* PR touches skip-listed example(s): '
    '${slugs.join(', ')}. '
    'wave-merge will refuse auto-merge and WIP-1 will stall the daily loop. '
    'Make the example applyable and remove it from tool/apply_smoke_skip.yaml '
    '(and apply_smoke_pr_skip.yaml if present), or drop the example change '
    'and record factories in tool/example_debt.yaml.';

/// CLI entry — returns process exit code.
int runWaveSkiplistGate({
  required String headRef,
  required List<String> changedFiles,
  required String applySkipYaml,
  required String prSkipYaml,
  void Function(String) writeln = print,
  void Function(String)? writelnErr,
}) {
  final err = writelnErr ?? ((s) => stderr.writeln(s));
  final skip = {
    ...parseSkipSlugs(applySkipYaml),
    ...parseSkipSlugs(prSkipYaml),
  };
  final violations = waveSkiplistViolations(
    headRef: headRef,
    changedFiles: changedFiles,
    skipSlugs: skip,
  );
  if (violations.isEmpty) {
    if (headRef.startsWith('wave/')) {
      writeln('wave skiplist gate: OK (no skip-listed examples touched)');
    } else {
      writeln('wave skiplist gate: skipped (head ref is not wave/*)');
    }
    return 0;
  }
  err(formatWaveSkiplistFailure(violations));
  return 1;
}

void main(List<String> args) {
  var headRef = '';
  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--head-ref' && i + 1 < args.length) {
      headRef = args[++i];
    }
  }
  if (headRef.isEmpty) {
    stderr.writeln(
      'usage: dart tool/check_wave_skiplist_gate.dart '
      '--head-ref <branch> < changed-files',
    );
    exit(2);
  }
  final changed = <String>[];
  while (true) {
    final line = stdin.readLineSync();
    if (line == null) break;
    if (line.isNotEmpty) changed.add(line);
  }
  final code = runWaveSkiplistGate(
    headRef: headRef,
    changedFiles: changed,
    applySkipYaml: File('tool/apply_smoke_skip.yaml').readAsStringSync(),
    prSkipYaml: File('tool/apply_smoke_pr_skip.yaml').readAsStringSync(),
  );
  exit(code);
}
