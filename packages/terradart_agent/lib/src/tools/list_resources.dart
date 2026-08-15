import 'package:terradart_google/catalog.dart';

class ResourceInfo {
  const ResourceInfo({
    required this.name,
    required this.barrel,
    required this.summary,
    required this.kind,
  });
  final String name;
  final String barrel;
  final String summary;
  final String kind;
  Map<String, Object?> toJson() => {
    'name': name,
    'barrel': barrel,
    'summary': summary,
    'kind': kind,
  };
}

List<ResourceInfo> listResources(List<CatalogEntry> catalog, {String? barrel}) {
  final filtered = barrel == null
      ? catalog
      : catalog.where((e) => e.barrel == barrel);
  return [
    for (final e in filtered)
      ResourceInfo(
        name: e.tfType,
        barrel: e.barrel,
        summary: e.summary,
        kind: e.kind.name,
      ),
  ];
}
