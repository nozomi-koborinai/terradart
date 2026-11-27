import 'dart:convert';
import 'dart:io';

import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  test(
    'catalog entry count is internally consistent (no hand-pinned total)',
    () {
      final resources = terradartGoogleCatalog
          .where((e) => e.kind == CatalogKind.resource)
          .length;
      final dataSources = terradartGoogleCatalog
          .where((e) => e.kind == CatalogKind.dataSource)
          .length;
      expect(resources + dataSources, terradartGoogleCatalog.length);
      expect(terradartGoogleCatalog, isNotEmpty);
      final classNames = terradartGoogleCatalog
          .map((e) => e.className)
          .toList();
      expect(
        classNames.toSet().length,
        classNames.length,
        reason: 'resource / data-source class names must stay unique',
      );
    },
  );

  test('catalog wraps every data source of the GA fixture', () {
    final root =
        jsonDecode(
              File(
                '../terradart_codegen/test/fixtures/wrap/source/schema.json',
              ).readAsStringSync(),
            )
            as Map<String, dynamic>;
    final schema = (root['provider_schemas'] as Map).values.single as Map;
    expect({
      for (final e in terradartGoogleCatalog)
        if (e.kind == CatalogKind.dataSource) e.tfType,
    }, (schema['data_source_schemas'] as Map).keys.toSet());
  });

  test('every catalog entry is well-formed', () {
    for (final e in terradartGoogleCatalog) {
      expect(e.tfType, isNotEmpty, reason: 'tfType must be set');
      expect(e.className, isNotEmpty, reason: '${e.tfType}: className');
      expect(e.barrel, isNotEmpty, reason: '${e.tfType}: barrel');
      expect(
        e.constructorParams.first,
        'localName',
        reason: '${e.tfType}: first param',
      );
    }
  });

  test('catalog is sorted by tfType', () {
    final types = terradartGoogleCatalog.map((e) => e.tfType).toList();
    final sorted = [...types]..sort();
    expect(types, sorted);
  });

  test('data sources carry barrel `data` and the dataSource kind', () {
    final dataSources = terradartGoogleCatalog.where(
      (e) => e.kind == CatalogKind.dataSource,
    );
    expect(dataSources, isNotEmpty);
    for (final e in dataSources) {
      expect(e.barrel, 'data', reason: e.tfType);
    }
  });
}
