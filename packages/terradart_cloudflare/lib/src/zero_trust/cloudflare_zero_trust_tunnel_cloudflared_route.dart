// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_route`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredRouteSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_route`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Write` - `Cloudflare Tunnel Write`
final class CloudflareZeroTrustTunnelCloudflaredRoute extends Resource {
  static const String tfType = 'cloudflare_zero_trust_tunnel_cloudflared_route';

  CloudflareZeroTrustTunnelCloudflaredRoute({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? comment,
    required TfArg<String> network,
    required TfArg<String> tunnelId,
    TfArg<String>? virtualNetworkId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (comment != null) 'comment': comment,
           'network': network,
           'tunnel_id': tunnelId,
           if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');
}
