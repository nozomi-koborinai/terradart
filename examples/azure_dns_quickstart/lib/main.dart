import 'package:terradart_azure/network.dart';
import 'package:terradart_azure/provider.dart';
import 'package:terradart_azure/resource.dart';
import 'package:terradart_cloudflare/dns.dart';
import 'package:terradart_cloudflare/provider.dart';
import 'package:terradart_cloudflare/zone.dart';

final class AzureDnsStack extends Stack {
  AzureDnsStack()
    : super(providers: const [AzureProvider(), CloudflareProvider()]) {
    final group = AzurermResourceGroup(
      'group',
      location: const .literal('eastus'),
      name: const .literal('terradart-demo'),
    );
    add(group);
    final ip = AzurermPublicIp(
      'ip',
      allocationMethod: .static,
      location: const .literal('eastus'),
      name: const .literal('terradart-demo'),
      resourceGroupName: group.ref,
      sku: .standard,
    );
    add(ip);
    final zone = CloudflareZone(
      'main',
      name: const .literal('terradart-demo.example'),
      account: const ZoneAccount(id: .literal('terradart-demo-account')),
    );
    add(zone);
    add(
      CloudflareDnsRecord(
        'app',
        zoneId: zone.ref,
        name: const .literal('app.terradart-demo.example'),
        type: .a,
        ttl: const .literal(300),
        content: .content(ip.ipAddress),
        proxied: const .literal(false),
      ),
    );
  }
}
