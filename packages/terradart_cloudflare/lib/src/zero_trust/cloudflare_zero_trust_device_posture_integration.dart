// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_integration`.
const Set<String> _cloudflareZeroTrustDevicePostureIntegrationSensitive =
    <String>{
      'config.access_client_secret',
      'config.client_key',
      'config.client_secret',
    };

/// Typed helper for the `config` block of
/// `cloudflare_zero_trust_device_posture_integration` (derived from provider schema).
@immutable
final class ZeroTrustDevicePostureIntegrationConfig {
  const ZeroTrustDevicePostureIntegrationConfig({
    this.accessClientId,
    this.accessClientSecret,
    this.apiUrl,
    this.authUrl,
    this.clientId,
    this.clientKey,
    this.clientSecret,
    this.customerId,
  });

  final TfArg<String>? accessClientId;

  final TfArg<String>? accessClientSecret;

  final TfArg<String>? apiUrl;

  final TfArg<String>? authUrl;

  final TfArg<String>? clientId;

  final TfArg<String>? clientKey;

  final TfArg<String>? clientSecret;

  final TfArg<String>? customerId;

  Map<String, Object?> encode() => {
    if (accessClientId != null) 'access_client_id': accessClientId!.toTfJson(),
    if (accessClientSecret != null)
      'access_client_secret': accessClientSecret!.toTfJson(),
    if (apiUrl != null) 'api_url': apiUrl!.toTfJson(),
    if (authUrl != null) 'auth_url': authUrl!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientKey != null) 'client_key': clientKey!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (customerId != null) 'customer_id': customerId!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_device_posture_integration`.
///
/// Accepted Permissions
///
/// - `Zero Trust Write`
final class CloudflareZeroTrustDevicePostureIntegration extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_device_posture_integration';

  CloudflareZeroTrustDevicePostureIntegration({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> interval,
    required TfArg<String> name,
    required TfArg<String> type,
    required ZeroTrustDevicePostureIntegrationConfig config,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'interval': interval,
           'name': name,
           'type': type,
           'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDevicePostureIntegrationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
