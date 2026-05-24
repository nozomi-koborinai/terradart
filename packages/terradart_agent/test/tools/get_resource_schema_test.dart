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
}
