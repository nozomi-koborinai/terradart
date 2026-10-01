// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_device_default_profile_certificates.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  DataCloudflareZeroTrustDeviceDefaultProfileCertificates(
    super.localName, {
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDefaultProfileCertificatesSensitive;

  /// A reference to the `cloudflare_zero_trust_device_default_profile_certificates` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDeviceDefaultProfileCertificates>`.
  RefTo<CloudflareZeroTrustDeviceDefaultProfileCertificates> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
