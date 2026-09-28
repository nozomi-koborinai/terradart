import 'dart:convert';
import 'dart:io';

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
    final classNames = terradartCatalog.map((e) => e.className).toList();
    expect(
      classNames.toSet().length,
      classNames.length,
      reason: 'resource / data-source class names must stay unique',
    );
  });

  test('catalog wraps every data source of the GA fixture', () {
    // The weekly schema bump scaffolds a factory for each data source a new
    // pin adds (tool/bump_new_factories.dart); a type it misses fails here.
    final root = jsonDecode(
      File('../terradart_codegen/test/fixtures/wrap/source/schema.json')
          .readAsStringSync(),
    ) as Map<String, dynamic>;
    final schema = (root['provider_schemas'] as Map).values.single as Map;
    expect(
      {
        for (final e in terradartCatalog)
          if (e.kind == CatalogKind.dataSource) e.tfType,
      },
      (schema['data_source_schemas'] as Map).keys.toSet(),
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
