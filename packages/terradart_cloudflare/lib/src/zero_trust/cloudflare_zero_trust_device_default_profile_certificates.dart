// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_device_default_profile_certificates`.
const Set<String>
_cloudflareZeroTrustDeviceDefaultProfileCertificatesSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_default_profile_certificates`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareZeroTrustDeviceDefaultProfileCertificates
    extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_device_default_profile_certificates';

  CloudflareZeroTrustDeviceDefaultProfileCertificates({
    required super.localName,
    required TfArg<bool> enabled,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled': enabled, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDefaultProfileCertificatesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDeviceDefaultProfileCertificates>`.
  RefTo<CloudflareZeroTrustDeviceDefaultProfileCertificates> get ref =>
      RefTo.of(this);

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
