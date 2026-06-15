import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  final index = CatalogIndex(terradartCatalog);

  test('a curated resource type is supported', () {
    final e = index.lookup('google_storage_bucket', CatalogKind.resource);
    expect(e, isNotNull);
    expect(e!.className, isNotEmpty);
  });

  test('a fabricated type is not in the catalog', () {
    expect(index.lookup('google_notreal_thing', CatalogKind.resource), isNull);
  });

  test('kind is part of the key (resource vs data source differ)', () {
    // google_project exists as CatalogKind.dataSource in the catalog
    // (confirmed by grepping _catalog.g.dart for 'CatalogKind.dataSource').
    final asData = index.lookup('google_project', CatalogKind.dataSource);
    expect(asData, isNotNull);
    // Same tfType looked up as resource should return null (it is a data source).
    expect(index.lookup('google_project', CatalogKind.resource), isNull);
  });
}
