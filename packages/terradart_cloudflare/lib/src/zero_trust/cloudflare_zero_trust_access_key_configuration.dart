// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_key_configuration`.
const Set<String> _cloudflareZeroTrustAccessKeyConfigurationSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_key_configuration`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class CloudflareZeroTrustAccessKeyConfiguration extends Resource {
  static const String tfType = 'cloudflare_zero_trust_access_key_configuration';

  CloudflareZeroTrustAccessKeyConfiguration({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<num> keyRotationIntervalDays,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'key_rotation_interval_days': keyRotationIntervalDays,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessKeyConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `days_until_next_rotation` attribute.
  TfRef<num> get daysUntilNextRotation =>
      TfRef.attribute<num>(this, 'days_until_next_rotation');

  /// Reference to `last_key_rotation_at` attribute.
  TfRef<String> get lastKeyRotationAt =>
      TfRef.attribute<String>(this, 'last_key_rotation_at');
}
