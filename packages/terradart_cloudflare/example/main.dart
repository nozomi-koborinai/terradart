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
      name: TfArg.literal('example.com'),
      account: ZoneAccount(id: TfArg.literal('your-account-id')),
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
  final result = HelloStack().synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}
