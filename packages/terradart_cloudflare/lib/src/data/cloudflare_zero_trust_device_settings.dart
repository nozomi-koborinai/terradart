// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_settings`.
const Set<String> _cloudflareZeroTrustDeviceSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_settings`.
final class DataCloudflareZeroTrustDeviceSettings extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_settings';

  DataCloudflareZeroTrustDeviceSettings({
    required super.localName,
    TfArg<String>? accountId,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceSettingsSensitive;

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
