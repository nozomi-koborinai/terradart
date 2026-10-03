import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import '../assets/skill_md.g.dart';
import '../version.dart';
import 'marker.dart';

/// A skills directory an agent reads, relative to the project root.
enum SkillTarget {
  agents('.agents/skills'),
  claude('.claude/skills'),
  cursor('.cursor/skills'),
  windsurf('.windsurf/skills'),
  copilot('.github/skills');

  const SkillTarget(this.dir);

  /// The skills directory, with `/` separators.
  final String dir;

  /// Where `install` writes without `--agents`: `.agents/skills` (Cursor,
  /// Codex, Gemini CLI, Copilot and most others) and `.claude/skills`
  /// (Claude Code, which does not read `.agents/skills`).
  static const defaults = [agents, claude];

  /// The skill file under [root].
  String file(String root) =>
      p.joinAll([root, ...dir.split('/'), 'terradart', 'SKILL.md']);

  /// The skill file relative to the project root, with `/` separators.
  String get display => '$dir/terradart/SKILL.md';

  /// [names] (`--agents`), where `all` is every target.
  static List<SkillTarget> parse(Iterable<String> names) => [
    for (final t in values)
      if (names.contains('all') || names.contains(t.name)) t,
  ];
}

/// What an installed skill is, against the one this CLI bundles.
enum SkillState {
  /// The bundled skill, at this CLI's version.
  current('current'),

  /// The bundled content under an older version: `update` rewrites the
  /// marker only.
  markerOnly('marker-only'),

  /// Unedited, but an older skill than the bundled one.
  outdated('outdated'),

  /// Written by a newer CLI than this one.
  newer('newer'),

  /// Changed since it was written: its hash is not the one it records.
  edited('edited'),

  /// No skill file.
  missing('missing'),

  /// A skill file without a terradart marker (copied by hand, or fetched
  /// from a release before the marker).
  foreign('foreign');

  const SkillState(this.label);

  final String label;

  /// Whether `update` leaves the file alone without `--force`.
  bool get keepsWithoutForce =>
      this == edited || this == foreign || this == newer;

  /// Whether `status --check` fails on an installed file in this state.
  bool get drifts => this != current && this != markerOnly;
}

/// One [SkillTarget] in one project.
final class SkillInstall {
  SkillInstall(this.target, this.path, this.state, this.version);

  final SkillTarget target;

  /// The skill file, absolute.
  final String path;

  final SkillState state;

  /// The version its marker records.
  final String? version;

  bool get exists => state != SkillState.missing;
}

/// The SHA-256 of the bundled skill's content.
final bundledSkillHash = skillContentHash(bundledSkillMd);

/// Reads the skill [target] holds under [root].
SkillInstall inspectSkill(String root, SkillTarget target) {
  final path = target.file(root);
  final file = File(path);
  if (!file.existsSync()) {
    return SkillInstall(target, path, SkillState.missing, null);
  }
  final text = file.readAsStringSync();
  final marker = SkillMarker.parse(text);
  if (marker == null) {
    return SkillInstall(target, path, SkillState.foreign, null);
  }
  final version = marker.version;
  final cmp = compareVersions(version, cliVersion);
  final hash = skillContentHash(text);
  final state = cmp == null
      ? SkillState.foreign
      : hash != marker.sha256
      ? SkillState.edited
      : cmp > 0
      ? SkillState.newer
      : hash == bundledSkillHash
      ? (cmp == 0 ? SkillState.current : SkillState.markerOnly)
      : SkillState.outdated;
  return SkillInstall(target, path, state, version);
}

/// Every target under [root], in [SkillTarget] order.
List<SkillInstall> inspectSkills(String root) => [
  for (final t in SkillTarget.values) inspectSkill(root, t),
];

/// Writes the bundled skill to [install]'s file: through a symlink to the
/// file it points at, and by renaming a temporary file into place.
void writeSkill(SkillInstall install) {
  final path = resolvedPath(install);
  Directory(p.dirname(path)).createSync(recursive: true);
  final tmp = File('$path.tmp-$pid');
  tmp.writeAsStringSync(bundledSkillMd, flush: true);
  tmp.renameSync(path);
}

/// The file [install] resolves to through symlinks (to the file, or to its
/// directory), so two targets linked to one file are written once.
String resolvedPath(SkillInstall install) {
  final file = File(install.path);
  if (file.existsSync()) return file.resolveSymbolicLinksSync();
  final dir = Directory(p.dirname(install.path));
  if (dir.existsSync()) {
    return p.join(dir.resolveSymbolicLinksSync(), p.basename(install.path));
  }
  return p.normalize(install.path);
}

/// Whether `skills-lock.json` under [root] records a `terradart` skill:
/// `npx skills add` installed it, and `npx skills update` keeps it.
bool skillsCliManages(String root) {
  final lock = File(p.join(root, 'skills-lock.json'));
  if (!lock.existsSync()) return false;
  try {
    final doc = jsonDecode(lock.readAsStringSync());
    return doc is Map &&
        doc['skills'] is Map &&
        (doc['skills'] as Map).containsKey('terradart');
  } on FormatException {
    return false;
  }
}

/// The one-line notice other commands print when a skill under [root] is
/// older (or newer) than this CLI; `null` when there is none, or when
/// reading fails.
String? skillNotice(String root) {
  try {
    for (final i in inspectSkills(root)) {
      final version = i.version;
      if (version == null) continue;
      final where = i.target.dir;
      if (i.state == SkillState.outdated &&
          (compareVersions(version, cliVersion) ?? 0) < 0) {
        return 'the terradart agent skill in $where is $version; this CLI '
            'is $cliVersion. Run: terradart skill update';
      }
      if (i.state == SkillState.newer) {
        return 'the terradart agent skill in $where is $version, newer than '
            'this CLI ($cliVersion). Run: dart pub global activate '
            'terradart_cli';
      }
    }
  } on FileSystemException {
    return null;
  }
  return null;
}

/// A unified diff from [from] to [to], with [context] lines around each
/// change; empty when they are equal.
String unifiedDiff(
  String from,
  String to, {
  required String fromName,
  required String toName,
  int context = 2,
}) {
  final a = const LineSplitter().convert(from);
  final b = const LineSplitter().convert(to);
  // Longest common subsequence table, from the end.
  final lcs = List.generate(a.length + 1, (_) => List.filled(b.length + 1, 0));
  for (var i = a.length - 1; i >= 0; i--) {
    for (var j = b.length - 1; j >= 0; j--) {
      lcs[i][j] = a[i] == b[j]
          ? lcs[i + 1][j + 1] + 1
          : (lcs[i + 1][j] >= lcs[i][j + 1] ? lcs[i + 1][j] : lcs[i][j + 1]);
    }
  }
  final ops = <(String, int, int)>[]; // (' ' | '-' | '+', index in a, in b)
  var i = 0, j = 0;
  while (i < a.length || j < b.length) {
    if (i < a.length && j < b.length && a[i] == b[j]) {
      ops.add((' ', i++, j++));
    } else if (j < b.length &&
        (i == a.length || lcs[i][j + 1] >= lcs[i + 1][j])) {
      ops.add(('+', i, j++));
    } else {
      ops.add(('-', i++, j));
    }
  }
  final changed = [
    for (var k = 0; k < ops.length; k++)
      if (ops[k].$1 != ' ') k,
  ];
  if (changed.isEmpty) return '';
  final out = StringBuffer('--- $fromName\n+++ $toName\n');
  var k = 0;
  while (k < changed.length) {
    final start = (changed[k] - context).clamp(0, ops.length);
    var end = changed[k];
    while (k + 1 < changed.length && changed[k + 1] - end <= 2 * context + 1) {
      end = changed[++k];
    }
    k++;
    final stop = (end + context + 1).clamp(0, ops.length);
    final hunk = ops.sublist(start, stop);
    final aStart = hunk.first.$2 + 1;
    final bStart = hunk.first.$3 + 1;
    final aLen = hunk.where((o) => o.$1 != '+').length;
    final bLen = hunk.where((o) => o.$1 != '-').length;
    out.writeln('@@ -$aStart,$aLen +$bStart,$bLen @@');
    for (final (op, ai, bi) in hunk) {
      out.writeln('$op${op == '+' ? b[bi] : a[ai]}');
    }
  }
  return '$out';
}
