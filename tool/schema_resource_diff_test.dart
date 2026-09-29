// The tool/ test convention keeps this file outside test/, so the analyzer
// does not recognize it as a test for @visibleForTesting purposes.
// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:test/test.dart';

import 'schema_resource_diff.dart';

Map<String, dynamic> schema({
  List<String> resources = const [],
  List<String> dataSources = const [],
}) => {
  'provider_schemas': {
    'registry.terraform.io/hashicorp/aws': {
      'resource_schemas': {for (final r in resources) r: <String, dynamic>{}},
      'data_source_schemas': {
        for (final d in dataSources) d: <String, dynamic>{},
      },
    },
  },
};

const catalog = '''
const List<CatalogEntry> terradartCatalog = <CatalogEntry>[
  CatalogEntry(
    tfType: 'aws_kept',
    className: 'AwsKept',
    kind: CatalogKind.resource,
  ),
  CatalogEntry(
    tfType:
        'aws_gone',
    className: 'AwsGone',
    kind: CatalogKind.resource,
  ),
  CatalogEntry(
    tfType: 'aws_gone_ds',
    className: 'DataAwsGoneDs',
    kind: CatalogKind.dataSource,
  ),
];
''';

void main() {
  test('reads catalog types by kind, including wrapped tfType literals', () {
    final types = catalogTypes(catalog);
    expect(types.resources, {'aws_kept', 'aws_gone'});
    expect(types.dataSources, {'aws_gone_ds'});
  });

  test('added lists every new type; removed only the curated ones', () {
    final diff = schemaResourceDiff(
      oldSchema: schema(
        resources: ['aws_kept', 'aws_gone', 'aws_uncurated'],
        dataSources: ['aws_gone_ds'],
      ),
      newSchema: schema(
        resources: ['aws_kept', 'aws_new_b', 'aws_new_a'],
        dataSources: ['aws_new_ds'],
      ),
      catalogSource: catalog,
      includeDataSources: true,
    );
    expect(diff, {
      'added_resources': ['aws_new_a', 'aws_new_b'],
      'removed_resources': ['aws_gone'],
      'added_data_sources': ['aws_new_ds'],
      'removed_data_sources': ['aws_gone_ds'],
    });
  });

  test('data sources are left out unless asked for', () {
    final diff = schemaResourceDiff(
      oldSchema: schema(dataSources: ['aws_gone_ds']),
      newSchema: schema(resources: ['aws_new']),
      catalogSource: catalog,
    );
    expect(diff.keys, ['added_resources', 'removed_resources']);
  });

  test('a schema with more than one provider is rejected', () {
    final twoProviders = {
      'provider_schemas': {'a': <String, dynamic>{}, 'b': <String, dynamic>{}},
    };
    expect(
      () => schemaResourceDiff(
        oldSchema: twoProviders,
        newSchema: schema(),
        catalogSource: catalog,
      ),
      throwsFormatException,
    );
  });
}
