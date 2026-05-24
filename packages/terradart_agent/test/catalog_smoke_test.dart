import 'package:terradart_google/catalog.dart';
import 'package:test/test.dart';

void main() {
  test('terradart_agent can read the terradart_google catalog', () {
    expect(terradartCatalog, isNotEmpty);
    expect(terradartCatalog.first.tfType, startsWith('google_'));
  });
}
