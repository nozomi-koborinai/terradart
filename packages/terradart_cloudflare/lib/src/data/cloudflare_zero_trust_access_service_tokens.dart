// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_service_tokens`.
const Set<String> _cloudflareZeroTrustAccessServiceTokensSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_service_tokens`.
///
/// Accepted Permissions
///
/// - `Access: Service Tokens Read` - `Access: Service Tokens Write`
final class DataCloudflareZeroTrustAccessServiceTokens extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_service_tokens';

  DataCloudflareZeroTrustAccessServiceTokens({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? search,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'max_items': ?maxItems,
           'name': ?name,
           'search': ?search,
           'zone_id': ?zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessServiceTokensSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
