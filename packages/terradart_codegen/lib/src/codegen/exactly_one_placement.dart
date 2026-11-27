typedef BlockGroup = ({List<String> members, bool optional});

List<BlockGroup> blockGroups(
  List<List<String>> exactlyOne,
  List<List<String>> atMostOne,
) => [
  for (final g in exactlyOne) (members: g, optional: false),
  for (final g in atMostOne) (members: g, optional: true),
];

sealed class GroupPlacement {
  const GroupPlacement();
}

final class SinglePlacement extends GroupPlacement {
  const SinglePlacement(this.group);

  final BlockGroup group;
}

final class JointPlacement extends GroupPlacement {
  const JointPlacement._({
    required this.groups,
    required this.shared,
    required this.parts,
  });

  final List<List<String>> groups;
  final List<String> shared;
  final List<List<String>> parts;

  List<String> get members => {for (final g in groups) ...g}.toList();

  List<String> get jointMembers => [for (final p in parts) ...p];

  String get keyMember => parts.firstWhere((p) => p.length == 1).single;
}

List<GroupPlacement> placeGroups(List<BlockGroup> groups) {
  final seen = <int>{};
  final joined = <int>{};
  final out = <GroupPlacement>[];
  for (final (i, group) in groups.indexed) {
    if (joined.contains(i)) continue;
    if (!group.optional && seen.add(i)) {
      final run = [i];
      for (var k = 0; k < run.length; k++) {
        final members = groups[run[k]].members;
        for (final (j, other) in groups.indexed) {
          if (!other.optional &&
              !seen.contains(j) &&
              other.members.any(members.contains)) {
            seen.add(j);
            run.add(j);
          }
        }
      }
      run.sort();
      if (_joint([for (final j in run) groups[j].members]) case final joint?) {
        out.add(joint);
        joined.addAll(run);
        continue;
      }
    }
    out.add(SinglePlacement(group));
  }
  return out;
}

JointPlacement? _joint(List<List<String>> groups) {
  if (groups.length < 2) return null;
  final shared = [
    for (final m in {for (final g in groups) ...g})
      if (groups.every((g) => g.contains(m))) m,
  ];
  if (shared.isEmpty) return null;
  for (final (i, a) in groups.indexed) {
    for (final b in groups.skip(i + 1)) {
      if (a.toSet().intersection(b.toSet()).length != shared.length) {
        return null;
      }
    }
  }
  final parts = [
    for (final g in groups)
      [
        for (final m in g)
          if (!shared.contains(m)) m,
      ],
  ];
  if (parts.any((p) => p.isEmpty) || !parts.any((p) => p.length == 1)) {
    return null;
  }
  return JointPlacement._(groups: groups, shared: shared, parts: parts);
}
