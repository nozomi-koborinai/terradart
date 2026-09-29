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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'comment': ?comment,
           'existed_at': ?existedAt,
           'is_deleted': ?isDeleted,
           'max_items': ?maxItems,
           'network_subset': ?networkSubset,
           'network_superset': ?networkSuperset,
           'route_id': ?routeId,
           'tun_types': ?tunTypes,
           'tunnel_id': ?tunnelId,
           'virtual_network_id': ?virtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredRoutesSensitive;
}
