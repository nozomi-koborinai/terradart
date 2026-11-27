typedef ExclusiveGroups = ({
  List<List<String>> exactlyOne,
  List<List<String>> atMostOne,
  List<String> unsealed,
});

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

// Magic Modules encodes N-way exactly_one_of as per-member lists of the other
// members; merge only cliques so rules that merely share a member stay separate.
List<List<String>> _mergeOverlapping(List<List<String>> groups) {
  bool clique(List<String> members) {
    for (var i = 0; i < members.length; i++) {
      for (var j = i + 1; j < members.length; j++) {
        final a = members[i];
        final b = members[j];
        final together = groups.any((g) => g.contains(a) && g.contains(b));
        if (!together) return false;
      }
    }
    return true;
  }

  List<String> unionOf(List<List<String>> parts) {
    final out = <String>[];
    for (final part in parts) {
      for (final member in part) {
        if (!out.contains(member)) out.add(member);
      }
    }
    return out;
  }

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
    final all = unionOf([for (final i in hits) merged[i], group]);
    if (clique(all)) {
      merged[hits.first] = all;
      for (final i in hits.skip(1).toList().reversed) {
        merged.removeAt(i);
      }
      continue;
    }
    var placed = false;
    for (final i in hits) {
      final candidate = unionOf([merged[i], group]);
      if (!clique(candidate)) continue;
      merged[i] = candidate;
      placed = true;
      break;
    }
    if (!placed) merged.add(List.of(group));
  }
  return merged;
}
