/// One exactly-one group, or one at-most-one group ([optional]), of a
/// block's inputs.
typedef BlockGroup = ({List<String> members, bool optional});

/// [exactlyOne] then [atMostOne], the order every reader takes a block's
/// groups in.
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

/// Exactly-one groups that share one member set and nothing else, sealed as
/// one argument.
final class JointPlacement extends GroupPlacement {
  const JointPlacement._({
    required this.groups,
    required this.shared,
    required this.parts,
  });

  /// The joined groups, in group order.
  final List<List<String>> groups;

  /// The members every group shares, in [members] order; each is a solo
  /// variant.
  final List<String> shared;

  /// Each group minus [shared], in group order.
  final List<List<String>> parts;

  /// Every member, in first appearance over [groups].
  List<String> get members => {for (final g in groups) ...g}.toList();

  /// [parts] flattened.
  List<String> get jointMembers => [for (final p in parts) ...p];

  /// The member of the first one-member part.
  String get keyMember => parts.firstWhere((p) => p.length == 1).single;
}

/// [groups] in order, each run of joinable exactly-one groups replaced, at
/// its first group's place, by one [JointPlacement].
///
/// The exactly-one groups that share members, directly or through each
/// other, form a run. A run joins when its groups all share one non-empty
/// member set and nothing else, every group has a member besides that set,
/// and at least one group has exactly one. That member is the key the joint
/// variant always writes. Every other group, at-most-one groups included,
/// is a [SinglePlacement] in place.
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
