// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_device_posture_integration.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_integration`.
const Set<String> _cloudflareZeroTrustDevicePostureIntegrationSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_posture_integration`.
final class DataCloudflareZeroTrustDevicePostureIntegration extends Data {
  static const String tfType =
      'cloudflare_zero_trust_device_posture_integration';

  DataCloudflareZeroTrustDevicePostureIntegration({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> integrationId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'integration_id': integrationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDevicePostureIntegrationSensitive;

  /// A reference to the `cloudflare_zero_trust_device_posture_integration` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDevicePostureIntegration>`.
  RefTo<CloudflareZeroTrustDevicePostureIntegration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `interval` attribute.
  TfRef<String> get interval => TfRef.attribute<String>(this, 'interval');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `integration_id` attribute.
  TfRef<String> get integrationIdRef =>
      TfRef.attribute<String>(this, 'integration_id');
}
