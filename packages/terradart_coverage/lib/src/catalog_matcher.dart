import 'package:terradart_google/catalog.dart';

/// Indexed view of [terradartCatalog] for O(1) `(type, kind)` lookup.
final class CatalogIndex {
  CatalogIndex(List<CatalogEntry> entries)
      : _byTypeKind = {
          for (final e in entries) (e.tfType, e.kind): e,
        };

  final Map<(String, CatalogKind), CatalogEntry> _byTypeKind;

  /// The matching curated entry, or `null` if the type/kind is not curated.
  CatalogEntry? lookup(String tfType, CatalogKind kind) =>
      _byTypeKind[(tfType, kind)];
}
