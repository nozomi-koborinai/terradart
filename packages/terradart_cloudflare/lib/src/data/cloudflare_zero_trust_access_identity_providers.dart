// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_identity_providers`.
const Set<String> _cloudflareZeroTrustAccessIdentityProvidersSensitive =
    <String>{'result.config.client_secret', 'result.scim_config.secret'};

/// Factory wrapper for `cloudflare_zero_trust_access_identity_providers`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class DataCloudflareZeroTrustAccessIdentityProviders extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_identity_providers';

  DataCloudflareZeroTrustAccessIdentityProviders({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? scimEnabled,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (scimEnabled != null) 'scim_enabled': scimEnabled,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessIdentityProvidersSensitive;
}
