import 'package:terradart_migrate/src/provider_secrets.dart';
import 'package:test/test.dart';

void main() {
  test('secretArgumentNames is every dropped argument, plus backend names', () {
    for (final names in droppedProviderArguments.values) {
      expect(secretArgumentNames, containsAll(names));
    }
    expect(secretArgumentNames, containsAll(['encryption_key', 'password']));
  });
}
