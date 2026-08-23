// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (disableForTime != null) 'disable_for_time': disableForTime,
           if (externalEmergencySignalEnabled != null)
             'external_emergency_signal_enabled':
                 externalEmergencySignalEnabled,
           if (externalEmergencySignalFingerprint != null)
             'external_emergency_signal_fingerprint':
                 externalEmergencySignalFingerprint,
           if (externalEmergencySignalInterval != null)
             'external_emergency_signal_interval':
                 externalEmergencySignalInterval,
           if (externalEmergencySignalUrl != null)
             'external_emergency_signal_url': externalEmergencySignalUrl,
           if (gatewayProxyEnabled != null)
             'gateway_proxy_enabled': gatewayProxyEnabled,
           if (gatewayUdpProxyEnabled != null)
             'gateway_udp_proxy_enabled': gatewayUdpProxyEnabled,
           if (rootCertificateInstallationEnabled != null)
             'root_certificate_installation_enabled':
                 rootCertificateInstallationEnabled,
           if (useZtVirtualIp != null) 'use_zt_virtual_ip': useZtVirtualIp,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceSettingsSensitive;
}
