import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import '../assets/skill_md.g.dart';
import '../version.dart';
import 'marker.dart';

enum SkillTarget {
  agents('.agents/skills'),
  claude('.claude/skills'),
  cursor('.cursor/skills'),
  windsurf('.windsurf/skills'),
  copilot('.github/skills');

  const SkillTarget(this.dir);

  final String dir;

  static const defaults = [agents, claude];

  String file(String root) =>
      p.joinAll([root, ...dir.split('/'), 'terradart', 'SKILL.md']);

  String get display => '$dir/terradart/SKILL.md';

  static List<SkillTarget> parse(Iterable<String> names) => [
    for (final t in values)
      if (names.contains('all') || names.contains(t.name)) t,
  ];
}

enum SkillState {
  current('current'),

  markerOnly('marker-only'),

  outdated('outdated'),

  newer('newer'),

  edited('edited'),

  missing('missing'),

  foreign('foreign');

  const SkillState(this.label);

  final String label;

  bool get keepsWithoutForce =>
      this == edited || this == foreign || this == newer;

  bool get drifts => this != current && this != markerOnly;
}

final class SkillInstall {
  SkillInstall(this.target, this.path, this.state, this.version);

  final SkillTarget target;

  final String path;

  final SkillState state;

  final String? version;

  bool get exists => state != SkillState.missing;
}

final bundledSkillHash = skillContentHash(bundledSkillMd);

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

List<SkillInstall> inspectSkills(String root) => [
  for (final t in SkillTarget.values) inspectSkill(root, t),
];

void writeSkill(SkillInstall install) {
  final path = resolvedPath(install);
  Directory(p.dirname(path)).createSync(recursive: true);
  final tmp = File('$path.tmp-$pid');
  tmp.writeAsStringSync(bundledSkillMd, flush: true);
  tmp.renameSync(path);
}

String resolvedPath(SkillInstall install) {
  final file = File(install.path);
  if (file.existsSync()) return file.resolveSymbolicLinksSync();
  final dir = Directory(p.dirname(install.path));
  if (dir.existsSync()) {
    return p.join(dir.resolveSymbolicLinksSync(), p.basename(install.path));
  }
  return p.normalize(install.path);
}

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

({String code, String message})? skillNotice(String root) {
  try {
    for (final i in inspectSkills(root)) {
      final version = i.version;
      if (version == null) continue;
      final where = i.target.dir;
      if (i.state == SkillState.outdated &&
          (compareVersions(version, cliVersion) ?? 0) < 0) {
        return (
          code: 'skill_outdated',
          message:
              'the terradart agent skill in $where is $version; this CLI '
              'is $cliVersion. Run: terradart skill update',
        );
      }
      if (i.state == SkillState.newer) {
        return (
          code: 'skill_newer',
          message:
              'the terradart agent skill in $where is $version, newer than '
              'this CLI ($cliVersion). Run: dart install terradart_cli',
        );
      }
    }
  } on FileSystemException {
    return null;
  }
  return null;
}

String unifiedDiff(
  String from,
  String to, {
  required String fromName,
  required String toName,
  int context = 2,
}) {
  final a = const LineSplitter().convert(from);
  final b = const LineSplitter().convert(to);
  final lcs = List.generate(a.length + 1, (_) => List.filled(b.length + 1, 0));
  for (var i = a.length - 1; i >= 0; i--) {
    for (var j = b.length - 1; j >= 0; j--) {
      lcs[i][j] = a[i] == b[j]
          ? lcs[i + 1][j + 1] + 1
          : (lcs[i + 1][j] >= lcs[i][j + 1] ? lcs[i + 1][j] : lcs[i][j + 1]);
    }
  }
  final ops = <({String op, int aIndex, int bIndex})>[];
  var i = 0, j = 0;
  while (i < a.length || j < b.length) {
    if (i < a.length && j < b.length && a[i] == b[j]) {
      ops.add((op: ' ', aIndex: i++, bIndex: j++));
    } else if (i < a.length &&
        (j == b.length || lcs[i + 1][j] >= lcs[i][j + 1])) {
      ops.add((op: '-', aIndex: i++, bIndex: j));
    } else {
      ops.add((op: '+', aIndex: i, bIndex: j++));
    }
  }
  final changed = [
    for (var k = 0; k < ops.length; k++)
      if (ops[k].op != ' ') k,
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
    final aStart = hunk.first.aIndex + 1;
    final bStart = hunk.first.bIndex + 1;
    final aLen = hunk.where((o) => o.op != '+').length;
    final bLen = hunk.where((o) => o.op != '-').length;
    out.writeln('@@ -$aStart,$aLen +$bStart,$bLen @@');
    for (final (:op, :aIndex, :bIndex) in hunk) {
      out.writeln('$op${op == '+' ? b[bIndex] : a[aIndex]}');
    }
  }
  return '$out';
}
