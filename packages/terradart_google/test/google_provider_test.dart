import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('GoogleProvider', () {
    test('providerName is "google"', () {
      const p = GoogleProvider();
      expect(p.providerName, equals('google'));
    });

    test('source / versionConstraint pin to provider-meta constants', () {
      const p = GoogleProvider();
      expect(p.source, equals(kProviderSource));
      expect(p.versionConstraint, equals(kProviderVersionConstraint));
    });

    test('configArgs omits null fields, emits set fields', () {
      const p = GoogleProvider(project: 'demo', region: 'us-central1');
      expect(
        p.configArgs,
        equals({'project': 'demo', 'region': 'us-central1'}),
      );
    });

    test('toTfJson mirrors configArgs (back-compat shim)', () {
      const p = GoogleProvider(project: 'demo');
      expect(p.toTfJson(), equals(p.configArgs));
    });

    test('configArgs is empty when no fields are set', () {
      const p = GoogleProvider();
      expect(p.configArgs, isEmpty);
    });

    test('zone field threads through', () {
      const p = GoogleProvider(zone: 'us-central1-a');
      expect(p.configArgs, equals({'zone': 'us-central1-a'}));
    });

    test('implements StackProvider for Stack registration', () {
      const p = GoogleProvider();
      expect(p, isA<StackProvider>());
    });
  });
}
