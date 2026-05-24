import 'package:terradart_agent/src/tools/list_barrels.dart';
import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  test('listBarrels groups the catalog by barrel with counts', () {
    final result = listBarrels(terradartCatalog);
    final pubsub = result.firstWhere((b) => b.name == 'pubsub');
    expect(pubsub.resourceCount, greaterThan(0));
    expect(result.map((b) => b.name), contains('cloud_run'));
    // barrels are unique and sorted
    final names = result.map((b) => b.name).toList();
    expect(names, equals([...names]..sort()));
    expect(names.toSet().length, names.length);
  });
}
