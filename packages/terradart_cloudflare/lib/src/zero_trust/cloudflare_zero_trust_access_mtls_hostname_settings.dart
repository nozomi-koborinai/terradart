// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zero_trust_access_mtls_hostname_settings`.
const Set<String> _cloudflareZeroTrustAccessMtlsHostnameSettingsSensitive =
    <String>{};

/// Typed helper for the `settings` block of
/// `cloudflare_zero_trust_access_mtls_hostname_settings` (derived from provider schema).
@immutable
final class ZeroTrustAccessMtlsHostnameSettingsSettings {
  const ZeroTrustAccessMtlsHostnameSettingsSettings({
    required this.chinaNetwork,
    required this.clientCertificateForwarding,
    required this.hostname,
  });

  final TfArg<bool> chinaNetwork;

  final TfArg<bool> clientCertificateForwarding;

  final TfArg<String> hostname;

  Map<String, Object?> encode() => {
    'china_network': chinaNetwork.toTfJson(),
    'client_certificate_forwarding': clientCertificateForwarding.toTfJson(),
    'hostname': hostname.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_mtls_hostname_settings`.
///
/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read` - `Access: Mutual TLS Certificates
/// Write`
final class CloudflareZeroTrustAccessMtlsHostnameSettings extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_access_mtls_hostname_settings';

  CloudflareZeroTrustAccessMtlsHostnameSettings({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    RefTo<CloudflareZone>? zoneId,
    required List<ZeroTrustAccessMtlsHostnameSettingsSettings> settings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'zone_id': ?zoneId?.encodeAs('id'),
           'settings': TfArg.literal([for (final e in settings) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessMtlsHostnameSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessMtlsHostnameSettings>`.
  RefTo<CloudflareZeroTrustAccessMtlsHostnameSettings> get ref =>
      RefTo.of(this);

  /// Reference to `china_network` attribute.
  TfRef<bool> get chinaNetwork => TfRef.attribute<bool>(this, 'china_network');

  /// Reference to `client_certificate_forwarding` attribute.
  TfRef<bool> get clientCertificateForwarding =>
      TfRef.attribute<bool>(this, 'client_certificate_forwarding');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
