/// Mutually exclusive input groups from a provider's relation rules — the
/// one derivation every hint source shares (`tool/extract_provider_hints.dart`
/// for plugin-framework and SDKv2 validators, `MmYamlParser` for Magic
/// Modules `exactly_one_of` / `conflicts`).
///
/// Members are dotted Terraform paths from the resource root.
typedef ExclusiveGroups = ({
  /// Sets the provider requires exactly one of.
  List<List<String>> exactlyOne,

  /// Pairwise conflicting sets nothing requires one of: the provider
  /// accepts none of their members and rejects more than one.
  List<List<String>> atMostOne,

  /// Conflicts no group expresses, each as `[members]: reason`.
  List<String> unsealed,
});

/// Combines relation rules into [ExclusiveGroups]:
///
/// - every [exactlyOne] set, and every [atLeastOne] set whose members all
///   pairwise conflict, is an exactly-one group (sets compare as sets, the
///   first-seen order is kept). Overlapping exactly-one sets are one group:
///   Magic Modules writes a 3-way `exactly_one_of` as each member listing the
///   other two, and sealing one of those pairs would require that pair while
///   dropping the member it leaves out.
/// - the remaining [conflicts] (undirected pairs) between inputs of one
///   block and outside every exactly-one group form a graph; each connected
///   component whose members all pairwise conflict is an at-most-one group,
///   in first-seen member order.
///
/// A conflict that touches an exactly-one member, spans two blocks, or sits
/// in a component that is not pairwise exclusive (`a` conflicts with `b` and
/// `c`, which are compatible) is returned in `unsealed`.
ExclusiveGroups exclusiveGroups({
  List<List<String>> exactlyOne = const [],
  List<List<String>> atLeastOne = const [],
  List<(String, String)> conflicts = const [],
}) {
  String key(String a, String b) =>
      a.compareTo(b) < 0 ? '$a\u0000$b' : '$b\u0000$a';
  final pairs = <String>{
    for (final (a, b) in conflicts)
      if (a != b) key(a, b),
  };
  bool allConflict(List<String> s) {
    for (var i = 0; i < s.length; i++) {
      for (var j = i + 1; j < s.length; j++) {
        if (!pairs.contains(key(s[i], s[j]))) return false;
      }
    }
    return true;
  }

  final seen = <String>{};
  final exact = <List<String>>[];
  void add(List<String> g) {
    final unique = <String>[];
    for (final m in g) {
      if (!unique.contains(m)) unique.add(m);
    }
    if (unique.length < 2) return;
    if (!seen.add((List.of(unique)..sort()).join(','))) return;
    exact.add(unique);
  }

  exactlyOne.forEach(add);
  for (final g in atLeastOne) {
    if (allConflict({...g}.toList())) add(g);
  }
  final merged = _mergeOverlapping(exact);
  exact
    ..clear()
    ..addAll(merged);
  final covered = {for (final g in exact) ...g};

  String parent(String m) =>
      m.contains('.') ? m.substring(0, m.lastIndexOf('.')) : '';
  final unsealed = <String>[];
  final order = <String>[];
  final adjacent = <String, Set<String>>{};
  final reported = <String>{};
  for (final (a, b) in conflicts) {
    if (a == b || !reported.add(key(a, b))) continue;
    if (covered.contains(a) || covered.contains(b)) {
      if (!(covered.contains(a) &&
          covered.contains(b) &&
          exact.any((g) => g.contains(a) && g.contains(b)))) {
        unsealed.add('[$a, $b]: conflicts with an exactly-one member');
      }
      continue;
    }
    if (parent(a) != parent(b)) {
      unsealed.add('[$a, $b]: members in different blocks');
      continue;
    }
    for (final m in [a, b]) {
      if (!adjacent.containsKey(m)) order.add(m);
    }
    (adjacent[a] ??= {}).add(b);
    (adjacent[b] ??= {}).add(a);
  }

  final atMostOne = <List<String>>[];
  final visited = <String>{};
  for (final start in order) {
    if (visited.contains(start)) continue;
    final component = <String>{};
    final queue = [start];
    while (queue.isNotEmpty) {
      final m = queue.removeLast();
      if (!component.add(m)) continue;
      queue.addAll(adjacent[m]!);
    }
    visited.addAll(component);
    final members = [
      for (final m in order)
        if (component.contains(m)) m,
    ];
    if (allConflict(members)) {
      atMostOne.add(members);
    } else {
      unsealed.add('[${members.join(', ')}]: not pairwise exclusive');
    }
  }
  return (exactlyOne: exact, atMostOne: atMostOne, unsealed: unsealed);
}

/// Unions exactly-one sets that share a member, keeping first-seen member
/// order. A 3-way Magic Modules group arrives as the three pairs "everyone
/// but me"; those pairs overlap, and the union is the real group.
List<List<String>> _mergeOverlapping(List<List<String>> groups) {
  final merged = <List<String>>[];
  for (final group in groups) {
    final hits = <int>[
      for (var i = 0; i < merged.length; i++)
        if (merged[i].any(group.contains)) i,
    ];
    if (hits.isEmpty) {
      merged.add(List.of(group));
      continue;
    }
    final into = merged[hits.first];
    for (final member in group) {
      if (!into.contains(member)) into.add(member);
    }
    for (final i in hits.skip(1).toList().reversed) {
      for (final member in merged[i]) {
        if (!into.contains(member)) into.add(member);
      }
      merged.removeAt(i);
    }
  }
  return merged;
}
