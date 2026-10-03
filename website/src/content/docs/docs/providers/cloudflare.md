---
title: Cloudflare
description: terradart_cloudflare — every cloudflare/cloudflare resource and data source as typed Dart, for the DNS and edge in front of your Dart app.
---

[`terradart_cloudflare`](https://pub.dev/packages/terradart_cloudflare) wraps the official `cloudflare/cloudflare` provider (v5) — every resource and data source at its pinned version. Its place in a TerraDart project is the edge around your Dart app: the zone, DNS records, rules and certificates in front of a backend on Cloud Run, AWS or Firebase Hosting, in the same Dart codebase as that backend.

## Install

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.33.x
  terradart_cloudflare: ^0.33.x
```

## Credentials

`CloudflareProvider` takes no token, so credentials never enter the synthesized JSON, and synth needs none. `terradart plan` and `terradart apply` authenticate with `CLOUDFLARE_API_TOKEN` (or the other `CLOUDFLARE_*` variables the provider reads). With them in place, [`terradart apply`](/docs/cli/) synthesizes the Stack and applies it.

## A zone in front of your API

```dart
// lib/edge_stack.dart
import 'package:terradart_cloudflare/dns.dart';
import 'package:terradart_cloudflare/provider.dart';
import 'package:terradart_cloudflare/zone.dart';

final class EdgeStack extends Stack {
  EdgeStack({required String accountId})
    : super(
        providers: [const CloudflareProvider()],
        appExports: AppExports('lib/generated/edge_stack.app.dart'),
      ) {
    final zone = add(CloudflareZone(
      'main',
      name: .literal('example.com'),
      account: ZoneAccount(id: .literal(accountId)),
    ));
    final api = add(CloudflareDnsRecord(
      'api',
      zoneId: zone.ref, // only a CloudflareZone fits here
      name: .literal('api.example.com'),
      type: .cname,
      ttl: .literal(1),
      content: .content(.literal('ghs.googlehosted.com')),
      proxied: .literal(true),
    ));
    addConstant('apiHost', .ref(api.name));
  }
}
```

The app reads the host it is served from as `EdgeStackConstants.apiHost` instead of a second copy of the string. The Stack can sit next to a Google, AWS or Appwrite Stack in the same package, or share one Stack with them by listing both providers.

## What the types carry

- **Enums.** Inputs with a fixed value set, such as a DNS record's `type`, are Dart enums (`.cname`). The sets come from the provider's documentation and its Go validators, re-extracted on every schema bump.
- **Sealed choices.** Arguments the provider declares mutually exclusive are one sealed argument: a DNS record has `content` *or* structured `data`, written `content: .content(...)` or `content: .data(...)`.
- **Typed nested objects.** The plugin-framework provider describes objects as nested attributes; each becomes a helper class (`ZoneAccount`) rather than a `Map`.
- **References.** `zoneId: zone.ref`, `accountId: account.ref`: an argument that names another resource takes that resource. A user group's members take the account member (`CloudflareUserGroupMembers(userGroupId: group.ref, members: [.new(id: member.ref)])`).

## Examples

- [`examples/cloudflare_dns_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloudflare_dns_quickstart) — the zone and record above, runnable.
- [`examples/cloudflare_leftover_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/cloudflare_leftover_quickstart) — every other factory with placeholder values; it synthesizes and validates, but is never applied.

## Reference

- [`terradart_cloudflare` API docs](https://pub.dev/documentation/terradart_cloudflare/latest/)
- [Cloudflare coverage](/docs/coverage/cloudflare/) — every factory, its barrel and its example
- [`lib/src/_catalog.g.dart`](https://github.com/nozomi-koborinai/terradart/blob/main/packages/terradart_cloudflare/lib/src/_catalog.g.dart) — Terraform type → Dart class and import, for every factory
