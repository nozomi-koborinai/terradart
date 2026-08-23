// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_routes`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredRoutesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_routes`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Read` - `Cloudflare One Networks Write` -
/// `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelCloudflaredRoutes extends Data {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_cloudflared_routes';

  DataCloudflareZeroTrustTunnelCloudflaredRoutes({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? comment,
    TfArg<String>? existedAt,
    TfArg<bool>? isDeleted,
    TfArg<num>? maxItems,
    TfArg<String>? networkSubset,
    TfArg<String>? networkSuperset,
    TfArg<String>? routeId,
    TfArg<List<String>>? tunTypes,
    TfArg<String>? tunnelId,
    TfArg<String>? virtualNetworkId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (comment != null) 'comment': comment,
           if (existedAt != null) 'existed_at': existedAt,
           if (isDeleted != null) 'is_deleted': isDeleted,
           if (maxItems != null) 'max_items': maxItems,
           if (networkSubset != null) 'network_subset': networkSubset,
           if (networkSuperset != null) 'network_superset': networkSuperset,
           if (routeId != null) 'route_id': routeId,
           if (tunTypes != null) 'tun_types': tunTypes,
           if (tunnelId != null) 'tunnel_id': tunnelId,
           if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredRoutesSensitive;
}
