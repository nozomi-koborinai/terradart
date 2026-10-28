import 'package:terradart_azure/provider.dart';
import 'package:terradart_cloudflare/provider.dart';
import 'package:terradart_example_azure_dns_quickstart/main.dart';
import 'package:test/test.dart';

void main() {
  test(
    'synth registers azurerm and cloudflare and points the A record at the IP',
    () {
      final json = AzureDnsStack().synth().tfJson;
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

      final resources = json['resource'] as Map<String, dynamic>;
      expect(
        resources.keys,
        unorderedEquals([
          'azurerm_public_ip',
          'azurerm_resource_group',
          'cloudflare_dns_record',
          'cloudflare_zone',
        ]),
      );
      final ip =
          (resources['azurerm_public_ip'] as Map<String, dynamic>)['ip']
              as Map<String, dynamic>;
      expect(
        ip['resource_group_name'],
        r'${azurerm_resource_group.group.name}',
      );
      final record =
          (resources['cloudflare_dns_record'] as Map<String, dynamic>)['app']
              as Map<String, dynamic>;
      expect(record['content'], r'${azurerm_public_ip.ip.ip_address}');
      expect(record['type'], 'A');
    },
  );
}
