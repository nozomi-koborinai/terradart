// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? search,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'name': ?name,
           'search': ?search,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessServiceTokensSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
