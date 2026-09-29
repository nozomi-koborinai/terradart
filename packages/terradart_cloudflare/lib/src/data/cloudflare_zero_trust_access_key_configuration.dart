// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_key_configuration.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_key_configuration`.
const Set<String> _cloudflareZeroTrustAccessKeyConfigurationSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_key_configuration`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class DataCloudflareZeroTrustAccessKeyConfiguration extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_key_configuration';

  DataCloudflareZeroTrustAccessKeyConfiguration({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessKeyConfigurationSensitive;

  /// A reference to the `cloudflare_zero_trust_access_key_configuration` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessKeyConfiguration>`.
  RefTo<CloudflareZeroTrustAccessKeyConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `days_until_next_rotation` attribute.
  TfRef<num> get daysUntilNextRotation =>
      TfRef.attribute<num>(this, 'days_until_next_rotation');

  /// Reference to `key_rotation_interval_days` attribute.
  TfRef<num> get keyRotationIntervalDays =>
      TfRef.attribute<num>(this, 'key_rotation_interval_days');

  /// Reference to `last_key_rotation_at` attribute.
  TfRef<String> get lastKeyRotationAt =>
      TfRef.attribute<String>(this, 'last_key_rotation_at');
}
