// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_mtls_hostname_settings.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_access_mtls_hostname_settings`.
const Set<String> _cloudflareZeroTrustAccessMtlsHostnameSettingsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_mtls_hostname_settings`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write`
final class DataCloudflareZeroTrustAccessMtlsHostnameSettings extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_mtls_hostname_settings';

  DataCloudflareZeroTrustAccessMtlsHostnameSettings(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessMtlsHostnameSettingsSensitive;

  /// A reference to the `cloudflare_zero_trust_access_mtls_hostname_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessMtlsHostnameSettings>`.
  RefTo<CloudflareZeroTrustAccessMtlsHostnameSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `china_network` attribute.
  TfRef<bool> get chinaNetwork => TfRef.attribute<bool>(this, 'china_network');

  /// Reference to `client_certificate_forwarding` attribute.
  TfRef<bool> get clientCertificateForwarding =>
      TfRef.attribute<bool>(this, 'client_certificate_forwarding');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
