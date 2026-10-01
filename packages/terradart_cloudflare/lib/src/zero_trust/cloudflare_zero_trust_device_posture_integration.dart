// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_posture_integration`.
const Set<String> _cloudflareZeroTrustDevicePostureIntegrationSensitive =
    <String>{
      'config.access_client_secret',
      'config.client_key',
      'config.client_secret',
    };

/// Zero Trust Device Posture Integration enum for `type`.
extension type const ZeroTrustDevicePostureIntegrationType._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDevicePostureIntegrationType.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustDevicePostureIntegrationType.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDevicePostureIntegrationType.arg(TfArg<String> arg)
    : this._(arg);

  static const workspaceOne = ZeroTrustDevicePostureIntegrationType._(
    TfArgLiteral('workspace_one'),
  );
  static const crowdstrikeS2s = ZeroTrustDevicePostureIntegrationType._(
    TfArgLiteral('crowdstrike_s2s'),
  );
  static const uptycs = ZeroTrustDevicePostureIntegrationType._(
    TfArgLiteral('uptycs'),
  );
  static const intune = ZeroTrustDevicePostureIntegrationType._(
    TfArgLiteral('intune'),
  );
  static const kolide = ZeroTrustDevicePostureIntegrationType._(
    TfArgLiteral('kolide'),
  );
  static const taniumS2s = ZeroTrustDevicePostureIntegrationType._(
    TfArgLiteral('tanium_s2s'),
  );
  static const sentineloneS2s = ZeroTrustDevicePostureIntegrationType._(
    TfArgLiteral('sentinelone_s2s'),
  );
  static const customS2s = ZeroTrustDevicePostureIntegrationType._(
    TfArgLiteral('custom_s2s'),
  );

  static const List<ZeroTrustDevicePostureIntegrationType> values = [
    workspaceOne,
    crowdstrikeS2s,
    uptycs,
    intune,
    kolide,
    taniumS2s,
    sentineloneS2s,
    customS2s,
  ];
}

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
    'access_client_id': ?accessClientId?.toTfJson(),
    'access_client_secret': ?accessClientSecret?.toTfJson(),
    'api_url': ?apiUrl?.toTfJson(),
    'auth_url': ?authUrl?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_key': ?clientKey?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'customer_id': ?customerId?.toTfJson(),
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

  CloudflareZeroTrustDevicePostureIntegration(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> interval,
    required TfArg<String> name,
    required ZeroTrustDevicePostureIntegrationType type,
    required ZeroTrustDevicePostureIntegrationConfig config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'interval': interval,
           'name': name,
           'type': type,
           'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDevicePostureIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDevicePostureIntegration>`.
  RefTo<CloudflareZeroTrustDevicePostureIntegration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `interval` attribute.
  TfRef<String> get interval => TfRef.attribute<String>(this, 'interval');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
