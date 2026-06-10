import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  test('terradartCatalog holds one entry per curated resource + data source',
      () {
    // Sync catalogEntryCount in tool/doc_expectations.dart (also checked by
    // tool/check_docs_consistency.dart). Must move in lockstep with wrap
    // file-count in terradart_codegen/test/cli/wrap_command_test.dart.
    expect(terradartCatalog, hasLength(148)); // catalogEntryCount
  });

  test('every catalog entry is well-formed', () {
    for (final e in terradartCatalog) {
      expect(e.tfType, isNotEmpty, reason: 'tfType must be set');
      expect(e.className, isNotEmpty, reason: '${e.tfType}: className');
      expect(e.barrel, isNotEmpty, reason: '${e.tfType}: barrel');
      // localName is always the first constructor param of every wrapper.
      expect(
        e.constructorParams.first,
        'localName',
        reason: '${e.tfType}: first param',
      );
    }
  });

  test('catalog is sorted by tfType', () {
    final types = terradartCatalog.map((e) => e.tfType).toList();
    final sorted = [...types]..sort();
    expect(types, sorted);
  });

  test('data sources carry barrel `data` and the dataSource kind', () {
    final dataSources =
        terradartCatalog.where((e) => e.kind == CatalogKind.dataSource);
    expect(dataSources, isNotEmpty);
    for (final e in dataSources) {
      expect(e.barrel, 'data', reason: e.tfType);
    }
  });
}
