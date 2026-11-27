import '../exactly_one_placement.dart';
import '../exactly_one_types.dart';
import '../naming.dart';

Set<String> rootSealedTypeNames(
  String stem,
  List<BlockGroup> groups, {
  Map<String, String>? sealedNames,
}) {
  final human = {
    for (final MapEntry(:key, :value) in (sealedNames ?? const {}).entries)
      sealedGroupKeyOf(const [], sealedGroupKey(key)): value,
  };
  return {
    for (final placement in placeGroups(groups))
      for (final t in preferredSealedTypes(
        placement,
        (members) => human[sealedGroupKeyOf(const [], members)],
      ))
        if (sealedTypeName(stem, t.concept) case final sealed?) ...[
          sealed,
          for (final v in t.variants)
            exactlyOneVariantName(
              sealed,
              v,
              concept: sealedConcept(stem, sealed),
            ),
        ],
  };
}

Map<String, String> topLevelTypeNames(
  String stem,
  Iterable<String> keys, {
  Map<String, Set<String>> laneInputs = const {},
  Map<String, String> named = const {},
}) {
  final whole = {for (final k in keys) k: named[k] ?? stem + snakeToPascal(k)};
  final names = {
    for (final k in whole.keys) k: named[k] ?? joinStem(stem, k, laneInputs),
  };
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
    if (move.isEmpty) {
      for (final MapEntry(:key, :value) in names.entries) {
        if (named.containsKey(key) &&
            names.entries.any((e) => e.key != key && e.value == value)) {
          throw StateError(
            'typeNames $key: $value is the name of another input of $stem',
          );
        }
      }
      return names;
    }
    for (final k in move) {
      names[k] = whole[k]!;
    }
  }
}

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

List<String> conciseTypeNames(
  String stem,
  List<List<String>> paths, {
  Set<String> owned = const {},
  Set<String> reserved = const {},
  Set<int> stemless = const {},
  Map<String, Set<String>> laneInputs = const {},
  Map<String, String> named = const {},
}) {
  final candidates = [
    for (final (i, p) in paths.indexed)
      if (named[p.join('.')] case final name? when !stemless.contains(i))
        [name]
      else
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
