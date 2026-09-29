// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_ip_profiles`.
const Set<String> _cloudflareZeroTrustDeviceIpProfilesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_ip_profiles`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustDeviceIpProfiles extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_ip_profiles';

  DataCloudflareZeroTrustDeviceIpProfiles({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<num>? perPage,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'max_items': ?maxItems,
           'per_page': ?perPage,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceIpProfilesSensitive;
}
