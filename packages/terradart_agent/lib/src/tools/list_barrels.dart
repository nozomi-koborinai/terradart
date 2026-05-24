import 'package:terradart_google/catalog.dart';

class BarrelInfo {
  const BarrelInfo({required this.name, required this.resourceCount});
  final String name;
  final int resourceCount;
  Map<String, Object?> toJson() => {
    'name': name,
    'resource_count': resourceCount,
  };
}

List<BarrelInfo> listBarrels(List<CatalogEntry> catalog) {
  final counts = <String, int>{};
  for (final e in catalog) {
    counts[e.barrel] = (counts[e.barrel] ?? 0) + 1;
  }
  final names = counts.keys.toList()..sort();
  return [
    for (final n in names) BarrelInfo(name: n, resourceCount: counts[n]!),
  ];
}
