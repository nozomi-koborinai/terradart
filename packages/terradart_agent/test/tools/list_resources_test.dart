import 'package:terradart_agent/src/tools/list_resources.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  test('listResources returns all entries when no barrel filter', () {
    final all = listResources(terradartCatalog, barrel: null);
    expect(all.length, terradartCatalog.length);
    expect(all.first.toJson().keys, containsAll(['name', 'barrel', 'summary']));
  });

  test('listResources filters by barrel', () {
    final pubsub = listResources(terradartCatalog, barrel: 'pubsub');
    expect(pubsub, isNotEmpty);
    expect(pubsub.every((r) => r.barrel == 'pubsub'), isTrue);
  });

  test('listResources returns empty for unknown barrel', () {
    expect(listResources(terradartCatalog, barrel: 'nope'), isEmpty);
  });
}
