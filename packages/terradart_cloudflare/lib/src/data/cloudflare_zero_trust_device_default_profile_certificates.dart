// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_default_profile_certificates`.
const Set<String>
_cloudflareZeroTrustDeviceDefaultProfileCertificatesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_default_profile_certificates`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareZeroTrustDeviceDefaultProfileCertificates
    extends Data {
  static const String tfType =
      'cloudflare_zero_trust_device_default_profile_certificates';

  DataCloudflareZeroTrustDeviceDefaultProfileCertificates({
    required super.localName,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDefaultProfileCertificatesSensitive;

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
