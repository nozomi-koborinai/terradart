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

/// The candidate type names for the block or enum input at [path] on
/// [stem], in order of preference: [stem] plus its own name; then plus one
/// ancestor and its name, nearest ancestor first; then plus the last three,
/// four, … segments of [path]. Segments are joined with [joinTypeName]
/// (words a segment repeats from the name so far are dropped), each
/// followed by the same segments concatenated whole when that differs. The
/// last candidate is [stem] plus the whole path, concatenated.
List<String> typeNameCandidates(String stem, List<String> path) {
  final out = <String>[];
  void add(List<String> segments) {
    var joined = stem;
    for (final segment in segments) {
      final next = joinTypeName(joined, segment);
      joined = next == joined ? joined + snakeToPascal(segment) : next;
    }
    for (final name in [joined, stem + segments.map(snakeToPascal).join()]) {
      if (name != stem && !out.contains(name)) out.add(name);
    }
  }

  final leaf = path.last;
  add([leaf]);
  for (var i = path.length - 2; i >= 0; i--) {
    add([path[i], leaf]);
  }
  for (var k = 3; k <= path.length; k++) {
    add(path.sublist(path.length - k));
  }
  out.remove(stem + path.map(snakeToPascal).join());
  out.add(stem + path.map(snakeToPascal).join());
  return out;
}

/// Short, collision-free type names for the blocks and enum inputs at
/// [paths] (each the path of a class's or an enum's shallowest occurrence),
/// index-aligned.
///
/// Each takes the first of its [typeNameCandidates] that nothing else in
/// the resource takes: no other path, and no name in [reserved]. On a
/// collision the shorter path keeps its name and the deeper ones move to
/// their next candidate; paths of the same depth all move. So a block
/// named like no other block or enum input of the resource is
/// `<stem><Name>`, and a deeper namesake is told apart by its nearest
/// distinguishing ancestor.
List<String> conciseTypeNames(
  String stem,
  List<List<String>> paths, {
  Set<String> reserved = const {},
}) {
  final candidates = [for (final p in paths) typeNameCandidates(stem, p)];
  final at = List.filled(paths.length, 0);
  bool canMove(int i) => at[i] < candidates[i].length - 1;

  while (true) {
    final owners = <String, Set<int>>{};
    for (var i = 0; i < paths.length; i++) {
      (owners[candidates[i][at[i]]] ??= {}).add(i);
    }
    final move = <int>{};
    for (final MapEntry(key: name, value: ids) in owners.entries) {
      if (reserved.contains(name)) {
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
    if (!seen.add(names[i])) {
      throw StateError(
        'no unique type name for $stem ${paths[i].join('.')}: '
        '${names[i]} is taken',
      );
    }
  }
  return names;
}
