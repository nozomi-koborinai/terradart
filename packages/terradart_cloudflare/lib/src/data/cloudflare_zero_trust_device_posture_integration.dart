// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_integration`.
const Set<String> _cloudflareZeroTrustDevicePostureIntegrationSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_posture_integration`.
final class DataCloudflareZeroTrustDevicePostureIntegration extends Data {
  static const String tfType =
      'cloudflare_zero_trust_device_posture_integration';

  DataCloudflareZeroTrustDevicePostureIntegration({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> integrationId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'integration_id': integrationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDevicePostureIntegrationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `interval` attribute.
  TfRef<String> get interval => TfRef.attribute<String>(this, 'interval');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
