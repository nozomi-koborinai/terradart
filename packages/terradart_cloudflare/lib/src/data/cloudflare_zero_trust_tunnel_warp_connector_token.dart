// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_warp_connector_token`.
const Set<String> _cloudflareZeroTrustTunnelWarpConnectorTokenSensitive =
    <String>{'token'};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_warp_connector_token`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: cloudflared Write` - `Cloudflare One Connectors
/// Write` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelWarpConnectorToken extends Data {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_warp_connector_token';

  DataCloudflareZeroTrustTunnelWarpConnectorToken(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> tunnelId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'tunnel_id': tunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelWarpConnectorTokenSensitive;

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');
}
