import 'package:terradart_azure/provider.dart';
import 'package:terradart_cloudflare/provider.dart';
import 'package:test/test.dart';

final class _MixedStack extends Stack {
  _MixedStack()
    : super(providers: const [AzureProvider(), CloudflareProvider()]);
}

void main() {
  test(
    'AzureProvider and CloudflareProvider synth both required providers',
    () {
      final json = _MixedStack().synth().tfJson;
      final required =
          (json['terraform'] as Map<String, dynamic>)['required_providers']
              as Map<String, dynamic>;
      expect(required.keys, unorderedEquals(['azurerm', 'cloudflare']));
      expect(required['azurerm'], {
        'source': kAzureProviderSource,
        'version': kAzureProviderVersionConstraint,
      });
      expect(required['cloudflare'], {
        'source': kCloudflareProviderSource,
        'version': kCloudflareProviderVersionConstraint,
      });
    },
  );
}
