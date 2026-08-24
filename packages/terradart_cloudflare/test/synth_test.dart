import 'package:terradart_cloudflare/dns.dart';
import 'package:terradart_cloudflare/provider.dart';
import 'package:terradart_cloudflare/zone.dart';
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
        ) {
    final zone = CloudflareZone(
      localName: 'main',
      name: TfArg.literal('example.com'),
      account: ZoneAccount(id: TfArg.literal('acc-1')),
    );
    add(zone);
    add(
      CloudflareDnsRecord(
        localName: 'api',
        zoneId: TfArg.ref(zone.id),
        name: TfArg.literal('api.example.com'),
        type: TfArg.literal('CNAME'),
        ttl: TfArg.literal(1),
        content: TfArg.literal('ghs.googlehosted.com'),
        proxied: TfArg.literal(true),
      ),
    );
  }
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

  test('curates zone and dns_record with a cross-resource zone_id ref', () {
    final json = _TestStack().synth().tfJson;
    final resources = json['resource'] as Map<String, dynamic>;
    expect(
      resources.keys,
      containsAll(['cloudflare_zone', 'cloudflare_dns_record']),
    );
    final zone = (resources['cloudflare_zone'] as Map<String, dynamic>)['main']
        as Map<String, dynamic>;
    // The framework object attribute serializes as a plain JSON object.
    expect(zone['account'], {'id': 'acc-1'});
    // No provider meta-argument: the cloudflare_ prefix implies the
    // provider (no collision, unlike google-beta).
    expect(zone.containsKey('provider'), isFalse);
    final record = (resources['cloudflare_dns_record']
        as Map<String, dynamic>)['api'] as Map<String, dynamic>;
    expect(record['zone_id'], r'${cloudflare_zone.main.id}');
    expect(record['ttl'], 1);
    expect(record['proxied'], true);
  });
}
