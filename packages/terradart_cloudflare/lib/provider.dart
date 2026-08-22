// packages/terradart_cloudflare/lib/provider.dart
/// Provider block factory and version constants for
/// `cloudflare/cloudflare`.
///
/// Import this alongside one or more per-service barrels:
/// ```dart
/// import 'package:terradart_cloudflare/provider.dart';
/// import 'package:terradart_cloudflare/dns.dart';
/// ```
library;

export 'src/cloudflare_provider.dart'
    show
        CloudflareProvider,
        kCloudflareProviderSource,
        kCloudflareProviderVersionConstraint;
