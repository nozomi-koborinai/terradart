// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_token`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredTokenSensitive =
    <String>{'token'};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_token`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: cloudflared Write` - `Cloudflare One Connectors
/// Write` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelCloudflaredToken extends Data {
  static const String tfType = 'cloudflare_zero_trust_tunnel_cloudflared_token';

  DataCloudflareZeroTrustTunnelCloudflaredToken({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> tunnelId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'tunnel_id': tunnelId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredTokenSensitive;

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');
}
