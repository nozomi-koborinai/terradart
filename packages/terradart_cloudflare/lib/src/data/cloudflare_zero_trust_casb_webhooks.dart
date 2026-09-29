// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_casb_webhooks`.
const Set<String> _cloudflareZeroTrustCasbWebhooksSensitive = <String>{
  'result.headers.value',
};

/// Factory wrapper for `cloudflare_zero_trust_casb_webhooks`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustCasbWebhooks extends Data {
  static const String tfType = 'cloudflare_zero_trust_casb_webhooks';

  DataCloudflareZeroTrustCasbWebhooks({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'max_items': ?maxItems},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCasbWebhooksSensitive;
}
