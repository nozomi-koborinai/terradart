import 'dart:convert';

import 'package:terradart_cloudflare/terradart_cloudflare.dart';
import 'package:terradart_core/terradart_core.dart';

/// Minimal example: a Cloudflare zone and a proxied CNAME record pointing
/// a subdomain at a backend host, synthesized to Terraform JSON. Secrets
/// never appear in synth output — authenticate at apply time via the
/// CLOUDFLARE_API_TOKEN environment variable.
final class HelloStack extends Stack {
  HelloStack() : super(providers: [const CloudflareProvider()]) {
    final zone = CloudflareZone(
      localName: 'main',
      name: .literal('example.com'),
      account: ZoneAccount(id: .literal('your-account-id')),
    );
    add(zone);
    add(
      CloudflareDnsRecord(
        localName: 'api',
        zoneId: .ref(zone.id),
        name: .literal('api.example.com'),
        type: .literal(.cname),
        ttl: .literal(1),
        content: .content(.literal('ghs.googlehosted.com')),
        proxied: .literal(true),
      ),
    );
  }
}

void main() {
  final result = HelloStack().synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}
