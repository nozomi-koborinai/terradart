import '../exactly_one_types.dart';
import '../naming.dart';

/// The names the sealed types of a resource's root [groups] take, with
/// their variants, as the exactly-one derivation names them when nothing
/// clashes — reserved so that no derived helper takes one first.
Set<String> rootSealedTypeNames(
  String stem,
  List<List<String>> groups, {
  Map<String, String>? sealedNames,
}) {
  final human = {
    for (final MapEntry(:key, :value) in (sealedNames ?? const {}).entries)
      sealedGroupKeyOf(const [], sealedGroupKey(key)): value,
  };
  return {
    for (final group in groups)
      if (human[sealedGroupKeyOf(const [], group)] ?? deriveSealedConcept(group)
          case final concept?)
        if (sealedTypeName(stem, concept) case final sealed?) ...[
          sealed,
          for (final m in group)
            exactlyOneVariantName(
              sealed,
              m,
              concept: sealedConcept(stem, sealed),
            ),
        ],
  };
}

/// The type name each top-level input in [keys] — attributes and blocks
/// alike, so an enum and a block helper never share one — takes on [stem]: [stem]
/// joined with the input's name by [joinTypeName] (`ComputeSnapshot` +
/// `snapshot_type` → `ComputeSnapshotType`; `Ec2InstanceState` + `state` →
/// `Ec2InstanceState`). When inputs join alike, the one that drops the
/// fewest words keeps the name and the others take [stem] and their name
/// concatenated whole; on a tie all of them do.
///
/// [laneInputs] as for [joinStem].
Map<String, String> topLevelTypeNames(
  String stem,
  Iterable<String> keys, {
  Map<String, Set<String>> laneInputs = const {},
}) {
  final whole = {for (final k in keys) k: stem + snakeToPascal(k)};
  final names = {for (final k in whole.keys) k: joinStem(stem, k, laneInputs)};
  int dropped(String k) =>
      pascalWords(whole[k]!).length - pascalWords(names[k]!).length;
  while (true) {
    final owners = <String, List<String>>{};
    for (final MapEntry(:key, :value) in names.entries) {
      (owners[value] ??= []).add(key);
    }
    final move = <String>[];
    for (final ks in owners.values) {
      if (ks.length < 2) continue;
      final fewest = ks.map(dropped).reduce((a, b) => a < b ? a : b);
      final keepers = ks.where((k) => dropped(k) == fewest).toList();
      move.addAll(
        ks.where(
          (k) =>
              names[k] != whole[k] &&
              !(keepers.length == 1 && keepers.single == k),
        ),
      );
    }
    if (move.isEmpty) return names;
    for (final k in move) {
      names[k] = whole[k]!;
    }
  }
}

/// [segment] joined onto [stem] by [joinTypeName], unless that names a
/// type another type of the lane takes: [laneInputs] maps every stem of the
/// lane to the PascalCase name of every input in its schema, and when the
/// words the join drops leave such a stem whose inputs include the rest of
/// the join, the two are concatenated whole instead
/// (`AutoscalingGroupTag` + `tag` → `AutoscalingGroupTagTag`, since
/// `aws_autoscaling_group` names its own `tag` `AutoscalingGroupTag`).
String joinStem(
  String stem,
  String segment,
  Map<String, Set<String>> laneInputs,
) {
  final joined = joinTypeName(stem, segment);
  final stemWords = pascalWords(stem);
  final dropped =
      stemWords.length +
      pascalWords(snakeToPascal(segment)).length -
      pascalWords(joined).length;
  if (dropped == 0) return joined;
  final other = stemWords.take(stemWords.length - dropped).join();
  final inputs = laneInputs[other];
  return inputs != null && inputs.contains(joined.substring(other.length))
      ? stem + snakeToPascal(segment)
      : joined;
}

/// The candidate type names for the block or enum input at [path] on
/// [stem], in order of preference: [stem] plus its own name; then plus one
/// ancestor and its name, nearest ancestor first; then plus the last three,
/// four, … segments of [path]. Segments are joined with [joinTypeName]
/// (words a segment repeats from the name so far are dropped); only then
/// come the same segment lists concatenated whole, which say a word twice.
/// A leaf that only repeats the end of [stem] takes [stem] itself
/// (`AccessContextManagerAccessLevels` + `access_levels`) unless
/// [allowStem] is false. The first join onto [stem] follows [joinStem]. The
/// last candidate is [stem] plus the whole path, concatenated.
List<String> typeNameCandidates(
  String stem,
  List<String> path, {
  bool allowStem = true,
  Map<String, Set<String>> laneInputs = const {},
}) {
  final joins = <String>[];
  final wholes = <String>[];
  void add(List<String> segments) {
    var joined = stem;
    for (final (i, segment) in segments.indexed) {
      final next = i == 0
          ? joinStem(joined, segment, laneInputs)
          : joinTypeName(joined, segment);
      joined = next == joined && (i > 0 || segments.length > 1)
          ? joined + snakeToPascal(segment)
          : next;
    }
    joins.add(joined);
    wholes.add(stem + segments.map(snakeToPascal).join());
  }

  final leaf = path.last;
  add([leaf]);
  for (var i = path.length - 2; i >= 0; i--) {
    add([path[i], leaf]);
  }
  for (var k = 3; k <= path.length; k++) {
    add(path.sublist(path.length - k));
  }
  final last = stem + path.map(snakeToPascal).join();
  final all = {
    ...joins,
    ...wholes,
  }.where((n) => allowStem || n != stem).toList();
  bool stutters(String n) => repeatsAcrossJoin(stem, n.substring(stem.length));
  final repeating = all.where(stutters).toList()
    ..sort((a, b) => a.length.compareTo(b.length));
  return {...all.where((n) => !stutters(n)), ...repeating, last}.toList();
}

/// Short, collision-free type names for the blocks and enum inputs at
/// [paths] (each the path of a class's or an enum's shallowest occurrence),
/// index-aligned.
///
/// Each takes the first of its [typeNameCandidates] that nothing else in
/// the resource takes: no other path, and no name in [owned] or [reserved].
/// [owned] names belong to other types outright (the top-level inputs'); a
/// [reserved] name is one a sealed variant prefers, and a path left with no
/// other candidate takes it (the variant then ends in `Choice`). On a
/// collision the shorter path keeps its name and the deeper ones move to
/// their next candidate; paths of the same depth all move. So a block
/// named like no other block or enum input of the resource is
/// `<stem><Name>`, and a deeper namesake is told apart by its nearest
/// distinguishing ancestor. The paths at [stemless] (sealed types, whose
/// variants are named after them) never take [stem] itself. [laneInputs]
/// as for [joinStem]. Throws a [StateError] when a path runs out of
/// candidates on a name another path or [owned] holds.
List<String> conciseTypeNames(
  String stem,
  List<List<String>> paths, {
  Set<String> owned = const {},
  Set<String> reserved = const {},
  Set<int> stemless = const {},
  Map<String, Set<String>> laneInputs = const {},
}) {
  final candidates = [
    for (final (i, p) in paths.indexed)
      typeNameCandidates(
        stem,
        p,
        allowStem: !stemless.contains(i),
        laneInputs: laneInputs,
      ),
  ];
  final at = List.filled(paths.length, 0);
  bool canMove(int i) => at[i] < candidates[i].length - 1;

  while (true) {
    final owners = <String, Set<int>>{};
    for (var i = 0; i < paths.length; i++) {
      (owners[candidates[i][at[i]]] ??= {}).add(i);
    }
    final move = <int>{};
    for (final MapEntry(key: name, value: ids) in owners.entries) {
      if (owned.contains(name) || reserved.contains(name)) {
        move.addAll(ids.where(canMove));
        continue;
      }
      if (ids.length < 2) continue;
      final depth = {for (final i in ids) i: paths[i].length};
      final shallowest = depth.values.reduce((a, b) => a < b ? a : b);
      final keepers = ids.where((i) => depth[i] == shallowest).length;
      final movers = ids
          .where((i) => keepers > 1 || depth[i]! > shallowest)
          .where(canMove)
          .toList();
      move.addAll(movers.isNotEmpty ? movers : ids.where(canMove));
    }
    if (move.isEmpty) break;
    for (final i in move) {
      at[i]++;
    }
  }
  final names = [for (var i = 0; i < paths.length; i++) candidates[i][at[i]]];
  final seen = <String>{};
  for (var i = 0; i < names.length; i++) {
    if (owned.contains(names[i]) || !seen.add(names[i])) {
      throw StateError(
        'no unique type name for $stem ${paths[i].join('.')}: '
        '${names[i]} is taken',
      );
    }
  }
  return names;
}
