// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_warp_connector_config`.
const Set<String> _cloudflareZeroTrustTunnelWarpConnectorConfigSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_warp_connector_config`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: WARP Read` - `Cloudflare One Connector: WARP
/// Write` - `Cloudflare One Connectors Read` - `Cloudflare One Connectors
/// Write`
final class DataCloudflareZeroTrustTunnelWarpConnectorConfig extends Data {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_warp_connector_config';

  DataCloudflareZeroTrustTunnelWarpConnectorConfig({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> tunnelId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'tunnel_id': tunnelId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelWarpConnectorConfigSensitive;

  /// Reference to `configuration_version` attribute.
  TfRef<num> get configurationVersion =>
      TfRef.attribute<num>(this, 'configuration_version');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `ha_mode` attribute.
  TfRef<String> get haMode => TfRef.attribute<String>(this, 'ha_mode');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
