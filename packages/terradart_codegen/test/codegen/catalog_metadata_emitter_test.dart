import 'package:terradart_codegen/src/codegen/catalog_metadata_emitter.dart';
import 'package:test/test.dart';

void main() {
  group('CatalogMetadataEmitter', () {
    test('emits a const terradartCatalog list with one entry per resource', () {
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
      ]);
      expect(src, contains('const List<CatalogEntry> terradartCatalog'));
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
      ]);
      final pubsubAt = src.indexOf("tfType: 'google_pubsub_topic'");
      final storageAt = src.indexOf("tfType: 'google_storage_bucket'");
      expect(pubsubAt, lessThan(storageAt));
    });

    test('renders the dataSource kind for data source entries', () {
      final src = CatalogMetadataEmitter().emit([
        CatalogEntryData(
          tfType: 'google_project',
          className: 'GoogleProject',
          barrel: 'data',
          kind: 'dataSource',
          summary: 'Retrieve project metadata.',
          constructorParams: ['localName', 'projectId'],
          nestedTypes: <String>[],
          sensitiveFields: <String>[],
          docComment: 'Retrieve project metadata.',
        ),
      ]);
      expect(src, contains('kind: CatalogKind.dataSource'));
    });

    test('starts with an accepted generated marker and imports catalog_entry',
        () {
      final src = CatalogMetadataEmitter().emit(const []);
      expect(src.startsWith('// GENERATED FILE - DO NOT EDIT'), isTrue);
      expect(src, contains("import 'catalog_entry.dart';"));
      expect(src, contains('const List<CatalogEntry> terradartCatalog'));
    });

    test('escapes backslash, single-quote, dollar, and newline in strings', () {
      final src = CatalogMetadataEmitter().emit([
        CatalogEntryData(
          tfType: 'google_demo',
          className: 'GoogleDemo',
          barrel: 'demo',
          kind: 'resource',
          summary: r"It's a $var with\back and" '\n' 'newline.',
          constructorParams: <String>[],
          nestedTypes: <String>[],
          sensitiveFields: <String>[],
          docComment: r"It's a $var with\back and" '\n' 'newline.',
        ),
      ]);
      // Single-quote escaped.
      expect(src, contains(r"\'"));
      // Dollar escaped.
      expect(src, contains(r'\$var'));
      // Backslash escaped (the literal `\b` from `with\back`).
      expect(src, contains(r'with\\back'));
      // Newline escaped (no raw newline inside the emitted string literal).
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
      ]);
      expect(src, contains("constructorParams: <String>['localName', 'name']"));
      expect(src, contains("nestedTypes: <String>['HelperType']"));
      expect(src, contains("sensitiveFields: <String>['secret_data']"));
    });
  });
}
