import 'package:terradart_codegen/src/codegen/providers/cloudflare_provider_rules.dart';
import 'package:terradart_codegen/src/codegen/providers/provider_registry.dart';
import 'package:test/test.dart';

void main() {
  group('CloudflareProviderRules', () {
    const rules = CloudflareProviderRules();

    test('is registered under its provider id', () {
      expect(
        providerRulesById['cloudflare/cloudflare'],
        isA<CloudflareProviderRules>(),
      );
    });

    test('scaffolds typed nested blocks, provider enums and sealed groups', () {
      expect(rules.typedNestedDefaults, isTrue);
      expect(rules.derivedEnumDefaults, isTrue);
      expect(rules.exactlyOneDefaults, isTrue);
    });
  });
}
