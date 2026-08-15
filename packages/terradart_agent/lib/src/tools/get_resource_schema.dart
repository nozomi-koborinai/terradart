import 'package:terradart_google/catalog.dart';

class SchemaResult {
  const SchemaResult.found(this.schema) : found = true, suggestions = const [];
  const SchemaResult.notFound(this.suggestions) : found = false, schema = null;
  final bool found;
  final CatalogEntry? schema;
  final List<String> suggestions;
}

SchemaResult getResourceSchema(List<CatalogEntry> catalog, String name) {
  var lookup = name;
  var wantData = false;
  if (name.startsWith('data.')) {
    lookup = name.substring('data.'.length);
    wantData = true;
  }
  final matches = [
    for (final e in catalog)
      if (e.tfType == lookup || e.className == name) e,
  ];
  if (matches.isNotEmpty) {
    if (wantData) {
      for (final e in matches) {
        if (e.kind == CatalogKind.dataSource) {
          return SchemaResult.found(e);
        }
      }
    }
    for (final e in matches) {
      if (e.kind == CatalogKind.resource) return SchemaResult.found(e);
    }
    return SchemaResult.found(matches.first);
  }
  // Near-miss suggestions: edit distance <= 3, top 5 by distance.
  final scored = <MapEntry<String, int>>[
    for (final e in catalog) MapEntry(e.tfType, _levenshtein(e.tfType, lookup)),
  ]..sort((a, b) => a.value.compareTo(b.value));
  final suggestions = [
    for (final s in scored.where((s) => s.value <= 3).take(5)) s.key,
  ];
  return SchemaResult.notFound(suggestions);
}

int _levenshtein(String a, String b) {
  final m = a.length, n = b.length;
  final dp = List<int>.generate(n + 1, (j) => j);
  for (var i = 1; i <= m; i++) {
    var prev = dp[0];
    dp[0] = i;
    for (var j = 1; j <= n; j++) {
      final tmp = dp[j];
      dp[j] = a[i - 1] == b[j - 1]
          ? prev
          : 1 + [prev, dp[j], dp[j - 1]].reduce((x, y) => x < y ? x : y);
      prev = tmp;
    }
  }
  return dp[n];
}
