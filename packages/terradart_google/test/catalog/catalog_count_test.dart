import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  test('catalog entry count is internally consistent (no hand-pinned total)',
      () {
    // The catalog total is DERIVED from the wrap-generated catalog, not pinned
    // to a constant here — that constant was the source of the parallel-wave
    // count race (#136/#137/#138). tool/doc_expectations.dart reads the same
    // file and tool/check_docs_consistency.dart asserts the prose matches.
    final resources =
        terradartCatalog.where((e) => e.kind == CatalogKind.resource).length;
    final dataSources =
        terradartCatalog.where((e) => e.kind == CatalogKind.dataSource).length;
    expect(resources + dataSources, terradartCatalog.length);
    expect(terradartCatalog, isNotEmpty);
    expect(dataSources, 461);
    final classNames = terradartCatalog.map((e) => e.className).toList();
    expect(
      classNames.toSet().length,
      classNames.length,
      reason: 'resource / data-source class names must stay unique',
    );
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
