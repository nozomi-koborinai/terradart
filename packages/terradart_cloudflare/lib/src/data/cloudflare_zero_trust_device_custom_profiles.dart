// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_custom_profiles`.
const Set<String> _cloudflareZeroTrustDeviceCustomProfilesSensitive =
    <String>{};

/// Data Zero Trust Device Custom Profiles Profile enum for `profile_type`.
extension type const DataZeroTrustDeviceCustomProfilesProfileType._(
  TfArg<String> _
) implements TfArg<String> {
  DataZeroTrustDeviceCustomProfilesProfileType.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustDeviceCustomProfilesProfileType.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustDeviceCustomProfilesProfileType.arg(TfArg<String> arg)
    : this._(arg);

  static const warp = DataZeroTrustDeviceCustomProfilesProfileType._(
    TfArgLiteral('warp'),
  );
  static const browserExtension =
      DataZeroTrustDeviceCustomProfilesProfileType._(
        TfArgLiteral('browser_extension'),
      );

  static const List<DataZeroTrustDeviceCustomProfilesProfileType> values = [
    warp,
    browserExtension,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_device_custom_profiles`.
final class DataCloudflareZeroTrustDeviceCustomProfiles extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_custom_profiles';

  DataCloudflareZeroTrustDeviceCustomProfiles(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    DataZeroTrustDeviceCustomProfilesProfileType? profileType,
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
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `profile_type` attribute.
  TfRef<String> get profileType =>
      TfRef.attribute<String>(this, 'profile_type');
}
