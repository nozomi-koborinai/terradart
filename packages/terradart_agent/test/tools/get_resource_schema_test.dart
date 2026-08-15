import 'package:terradart_agent/src/tools/get_resource_schema.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  test('returns schema for a known resource', () {
    final r = getResourceSchema(terradartCatalog, 'google_pubsub_topic');
    expect(r.found, isTrue);
    expect(r.schema!.constructorParams, contains('localName'));
    expect(r.schema!.className, 'GooglePubsubTopic');
  });

  test('returns not-found with suggestions for an unknown near-miss', () {
    final r = getResourceSchema(terradartCatalog, 'google_pubsub_topi');
    expect(r.found, isFalse);
    expect(r.suggestions, contains('google_pubsub_topic'));
  });

  test('a far-off name returns no noisy suggestions', () {
    final r = getResourceSchema(terradartCatalog, 'aws_s3_bucket');
    expect(r.found, isFalse);
    expect(
      r.suggestions,
      isEmpty,
      reason:
          'nothing within edit distance 3 — suggesting anything '
          'would be noise for the calling agent',
    );
  });

  test('prefers the resource twin and resolves data. / className lookups', () {
    final byType = getResourceSchema(terradartCatalog, 'google_project');
    expect(byType.found, isTrue);
    expect(byType.schema!.kind, CatalogKind.dataSource);
    expect(byType.schema!.className, 'GoogleProject');

    final byClass = getResourceSchema(terradartCatalog, 'GoogleProject');
    expect(byClass.found, isTrue);
    expect(byClass.schema!.tfType, 'google_project');

    final byDataPrefix = getResourceSchema(
      terradartCatalog,
      'data.google_project',
    );
    expect(byDataPrefix.found, isTrue);
    expect(byDataPrefix.schema!.kind, CatalogKind.dataSource);
  });

  test('empty input returns not-found with no suggestions', () {
    final r = getResourceSchema(terradartCatalog, '');
    expect(r.found, isFalse);
    expect(r.suggestions, isEmpty);
  });
}
