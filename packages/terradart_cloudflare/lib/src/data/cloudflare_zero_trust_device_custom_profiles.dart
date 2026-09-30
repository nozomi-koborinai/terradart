// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_custom_profiles`.
const Set<String> _cloudflareZeroTrustDeviceCustomProfilesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_custom_profiles`.
final class DataCloudflareZeroTrustDeviceCustomProfiles extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_custom_profiles';

  DataCloudflareZeroTrustDeviceCustomProfiles({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? profileType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'profile_type': ?profileType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceCustomProfilesSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `profile_type` attribute.
  TfRef<String> get profileTypeRef =>
      TfRef.attribute<String>(this, 'profile_type');
}
