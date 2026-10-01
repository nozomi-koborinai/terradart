// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_settings`.
const Set<String> _cloudflareZeroTrustDeviceSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_settings`.
///
/// Accepted Permissions
///
/// - `Zero Trust Write`
final class CloudflareZeroTrustDeviceSettings extends Resource {
  static const String tfType = 'cloudflare_zero_trust_device_settings';

  CloudflareZeroTrustDeviceSettings({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<num>? disableForTime,
    TfArg<bool>? externalEmergencySignalEnabled,
    TfArg<String>? externalEmergencySignalFingerprint,
    TfArg<String>? externalEmergencySignalInterval,
    TfArg<String>? externalEmergencySignalUrl,
    TfArg<bool>? gatewayProxyEnabled,
    TfArg<bool>? gatewayUdpProxyEnabled,
    TfArg<bool>? rootCertificateInstallationEnabled,
    TfArg<bool>? useZtVirtualIp,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'disable_for_time': ?disableForTime,
           'external_emergency_signal_enabled': ?externalEmergencySignalEnabled,
           'external_emergency_signal_fingerprint':
               ?externalEmergencySignalFingerprint,
           'external_emergency_signal_interval':
               ?externalEmergencySignalInterval,
           'external_emergency_signal_url': ?externalEmergencySignalUrl,
           'gateway_proxy_enabled': ?gatewayProxyEnabled,
           'gateway_udp_proxy_enabled': ?gatewayUdpProxyEnabled,
           'root_certificate_installation_enabled':
               ?rootCertificateInstallationEnabled,
           'use_zt_virtual_ip': ?useZtVirtualIp,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDeviceSettings>`.
  RefTo<CloudflareZeroTrustDeviceSettings> get ref => RefTo.of(this);

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `disable_for_time` attribute.
  TfRef<num> get disableForTime =>
      TfRef.attribute<num>(this, 'disable_for_time');

  /// Reference to `external_emergency_signal_enabled` attribute.
  TfRef<bool> get externalEmergencySignalEnabled =>
      TfRef.attribute<bool>(this, 'external_emergency_signal_enabled');

  /// Reference to `external_emergency_signal_fingerprint` attribute.
  TfRef<String> get externalEmergencySignalFingerprint =>
      TfRef.attribute<String>(this, 'external_emergency_signal_fingerprint');

  /// Reference to `external_emergency_signal_interval` attribute.
  TfRef<String> get externalEmergencySignalInterval =>
      TfRef.attribute<String>(this, 'external_emergency_signal_interval');

  /// Reference to `external_emergency_signal_url` attribute.
  TfRef<String> get externalEmergencySignalUrl =>
      TfRef.attribute<String>(this, 'external_emergency_signal_url');

  /// Reference to `gateway_proxy_enabled` attribute.
  TfRef<bool> get gatewayProxyEnabled =>
      TfRef.attribute<bool>(this, 'gateway_proxy_enabled');

  /// Reference to `gateway_udp_proxy_enabled` attribute.
  TfRef<bool> get gatewayUdpProxyEnabled =>
      TfRef.attribute<bool>(this, 'gateway_udp_proxy_enabled');

  /// Reference to `root_certificate_installation_enabled` attribute.
  TfRef<bool> get rootCertificateInstallationEnabled =>
      TfRef.attribute<bool>(this, 'root_certificate_installation_enabled');

  /// Reference to `use_zt_virtual_ip` attribute.
  TfRef<bool> get useZtVirtualIp =>
      TfRef.attribute<bool>(this, 'use_zt_virtual_ip');
}
