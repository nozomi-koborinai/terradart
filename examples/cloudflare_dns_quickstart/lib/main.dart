/// Cloudflare DNS quickstart -- the smallest terradart_cloudflare example.
///
/// Defines a `CloudflareDnsStack` with a zone and a CNAME record pointing
/// a subdomain at a backend host, against the official
/// `cloudflare/cloudflare` Terraform provider — the "infrastructure edge
/// around a Dart app" story: the backend itself lives elsewhere (Cloud
/// Run, Firebase Hosting, ...), Cloudflare holds the domain in front.
///
/// Synth needs no credentials and none appear in `tf-out/` — apply-time
/// authentication uses the `CLOUDFLARE_API_TOKEN` environment variable
/// (see `CloudflareProvider`). Demo literals stand in for the account and
/// domain; replace them with your own when applying for real.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_cloudflare/dns.dart';
import 'package:terradart_cloudflare/provider.dart';
import 'package:terradart_cloudflare/zone.dart';
import 'package:terradart_core/terradart_core.dart';

/// Cloudflare demo stack: a zone and a proxied CNAME record inside it.
final class CloudflareDnsStack extends Stack {
  CloudflareDnsStack() : super(providers: [const CloudflareProvider()]) {
    final zone = CloudflareZone(
      'main',
      name: .literal('terradart-demo.example'),
      account: ZoneAccount(id: .literal('terradart-demo-account')),
    );
    add(zone);
    add(
      CloudflareDnsRecord(
        'api',
        zoneId: zone.ref,
        name: .literal('api.terradart-demo.example'),
        type: .literal(.cname),
        ttl: .literal(1),
        content: .content(.literal('ghs.googlehosted.com')),
        proxied: .literal(true),
      ),
    );
  }
}
