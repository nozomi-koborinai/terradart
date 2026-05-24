import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  test('CatalogEntry holds resource metadata and is const-constructible', () {
    const entry = CatalogEntry(
      tfType: 'google_pubsub_topic',
      className: 'GooglePubsubTopic',
      barrel: 'pubsub',
      kind: CatalogKind.resource,
      summary: 'A named resource to which messages are published.',
      constructorParams: ['localName', 'name', 'kmsKeyName'],
      nestedTypes: ['PubsubTopicMessageStoragePolicy'],
      sensitiveFields: <String>[],
      docComment: 'A named resource to which messages are published.\n\nExample...',
    );

    expect(entry.tfType, 'google_pubsub_topic');
    expect(entry.barrel, 'pubsub');
    expect(entry.kind, CatalogKind.resource);
    expect(entry.constructorParams, contains('localName'));
  });
}
