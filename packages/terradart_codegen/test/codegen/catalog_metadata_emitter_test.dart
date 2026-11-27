import 'package:terradart_codegen/src/codegen/catalog_metadata_emitter.dart';
import 'package:test/test.dart';

void main() {
  group('CatalogMetadataEmitter', () {
    test('emits a const terradartGoogleCatalog list with one entry per '
        'resource', () {
      final src = CatalogMetadataEmitter().emit([
        CatalogEntryData(
          tfType: 'google_pubsub_topic',
          className: 'GooglePubsubTopic',
          barrel: 'pubsub',
          kind: 'resource',
          summary: 'A named resource to which messages are published.',
          constructorParams: ['localName', 'name'],
          nestedTypes: ['PubsubTopicMessageStoragePolicy'],
          sensitiveFields: <String>[],
          docComment: 'A named resource to which messages are published.',
        ),
      ], package: 'terradart_google');
      expect(src, contains('const List<CatalogEntry> terradartGoogleCatalog'));
      expect(src, contains("tfType: 'google_pubsub_topic'"));
      expect(src, contains("className: 'GooglePubsubTopic'"));
      expect(src, contains('CatalogKind.resource'));
      expect(src, contains('// GENERATED'));
    });

    test('sorts entries by tfType', () {
      final src = CatalogMetadataEmitter().emit([
        CatalogEntryData(
          tfType: 'google_storage_bucket',
          className: 'GoogleStorageBucket',
          barrel: 'storage',
          kind: 'resource',
          summary: '',
          constructorParams: ['localName'],
          nestedTypes: <String>[],
          sensitiveFields: <String>[],
          docComment: '',
        ),
        CatalogEntryData(
          tfType: 'google_pubsub_topic',
          className: 'GooglePubsubTopic',
          barrel: 'pubsub',
          kind: 'resource',
          summary: '',
          constructorParams: ['localName'],
          nestedTypes: <String>[],
          sensitiveFields: <String>[],
          docComment: '',
        ),
      ], package: 'terradart_google');
      final pubsubAt = src.indexOf("tfType: 'google_pubsub_topic'");
      final storageAt = src.indexOf("tfType: 'google_storage_bucket'");
      expect(pubsubAt, lessThan(storageAt));
    });

    test('renders the dataSource kind for data source entries', () {
      final src = CatalogMetadataEmitter().emit([
        CatalogEntryData(
          tfType: 'google_project',
          className: 'DataGoogleProject',
          barrel: 'data',
          kind: 'dataSource',
          summary: 'Retrieve project metadata.',
          constructorParams: ['localName', 'projectId'],
          nestedTypes: <String>[],
          sensitiveFields: <String>[],
          docComment: 'Retrieve project metadata.',
        ),
      ], package: 'terradart_google');
      expect(src, contains('kind: CatalogKind.dataSource'));
    });

    test(
      'starts with an accepted generated marker and imports the core catalog',
      () {
        final src = CatalogMetadataEmitter().emit(
          const [],
          package: 'terradart_google',
        );
        expect(src.startsWith('// GENERATED FILE - DO NOT EDIT'), isTrue);
        expect(src, contains("import 'package:terradart_core/catalog.dart';"));
      },
    );

    test('names the list after its package', () {
      final src = CatalogMetadataEmitter().emit(
        const [],
        package: 'terradart_google_beta',
      );
      expect(
        src,
        contains('const List<CatalogEntry> terradartGoogleBetaCatalog ='),
      );
    });

    test('escapes backslash, single-quote, dollar, and newline in strings', () {
      final src = CatalogMetadataEmitter().emit([
        CatalogEntryData(
          tfType: 'google_demo',
          className: 'GoogleDemo',
          barrel: 'demo',
          kind: 'resource',
          summary:
              r"It's a $var with\back and"
              '\n'
              'newline.',
          constructorParams: <String>[],
          nestedTypes: <String>[],
          sensitiveFields: <String>[],
          docComment:
              r"It's a $var with\back and"
              '\n'
              'newline.',
        ),
      ], package: 'terradart_google');
      expect(src, contains(r"\'"));
      expect(src, contains(r'\$var'));
      expect(src, contains(r'with\\back'));
      expect(src, contains(r'\nnewline.'));
    });

    test('renders string lists with explicit <String> type', () {
      final src = CatalogMetadataEmitter().emit([
        CatalogEntryData(
          tfType: 'google_demo',
          className: 'GoogleDemo',
          barrel: 'demo',
          kind: 'resource',
          summary: '',
          constructorParams: ['localName', 'name'],
          nestedTypes: ['HelperType'],
          sensitiveFields: ['secret_data'],
          docComment: '',
        ),
      ], package: 'terradart_google');
      expect(src, contains("constructorParams: <String>['localName', 'name']"));
      expect(src, contains("nestedTypes: <String>['HelperType']"));
      expect(src, contains("sensitiveFields: <String>['secret_data']"));
    });
  });
}
