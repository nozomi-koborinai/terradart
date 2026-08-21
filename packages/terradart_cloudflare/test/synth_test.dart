import 'package:terradart_cloudflare/provider.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

final class _TestStack extends Stack {
  _TestStack()
      : super(
          providers: [
            const CloudflareProvider(
              baseUrl: 'https://api.cloudflare.com/client/v4',
            ),
          ],
        );
}

void main() {
  test('synths the cloudflare provider block with the exact 5.23.0 pin', () {
    final json = _TestStack().synth().tfJson;
    final requiredProviders =
        ((json['terraform'] as Map<String, dynamic>)['required_providers']
            as Map<String, dynamic>)['cloudflare'] as Map<String, dynamic>;
    expect(requiredProviders['source'], 'cloudflare/cloudflare');
    expect(requiredProviders['version'], kCloudflareProviderVersionConstraint);
    // Exact pin, not a caret range: no bump lane exists for cloudflare,
    // so the wrapper surface and the provider version move together.
    expect(kCloudflareProviderVersionConstraint, '5.23.0');
  });

  test('secrets cannot appear in synth output by construction', () {
    final json = _TestStack().synth().tfJson;
    final providerBlock = (json['provider']
        as Map<String, dynamic>)['cloudflare'] as Map<String, dynamic>;
    expect(providerBlock['base_url'], 'https://api.cloudflare.com/client/v4');
    // The schema marks these sensitive; CloudflareProvider has no such
    // parameters, so no synthesized main.tf.json can ever carry them.
    expect(providerBlock.keys, isNot(contains('api_token')));
    expect(providerBlock.keys, isNot(contains('api_key')));
    expect(providerBlock.keys, isNot(contains('api_user_service_key')));
  });
}
