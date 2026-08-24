// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_warp_connector`.
const Set<String> _cloudflareZeroTrustTunnelWarpConnectorSensitive = <String>{
  'tunnel_secret',
};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_warp_connector`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: WARP Read` - `Cloudflare One Connector: WARP
/// Write` - `Cloudflare One Connectors Read` - `Cloudflare One Connectors
/// Write`
final class CloudflareZeroTrustTunnelWarpConnector extends Resource {
  static const String tfType = 'cloudflare_zero_trust_tunnel_warp_connector';

  CloudflareZeroTrustTunnelWarpConnector({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? ha,
    required TfArg<String> name,
    TfArg<String>? tunnelSecret,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (ha != null) 'ha': ha,
           'name': name,
           if (tunnelSecret != null) 'tunnel_secret': tunnelSecret,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelWarpConnectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_tag` attribute.
  TfRef<String> get accountTag => TfRef.attribute<String>(this, 'account_tag');

  /// Reference to `conns_active_at` attribute.
  TfRef<String> get connsActiveAt =>
      TfRef.attribute<String>(this, 'conns_active_at');

  /// Reference to `conns_inactive_at` attribute.
  TfRef<String> get connsInactiveAt =>
      TfRef.attribute<String>(this, 'conns_inactive_at');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tun_type` attribute.
  TfRef<String> get tunType => TfRef.attribute<String>(this, 'tun_type');
}
