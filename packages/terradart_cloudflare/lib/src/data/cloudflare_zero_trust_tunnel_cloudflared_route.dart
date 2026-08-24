// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_route`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredRouteSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_route` (derived from provider schema).
@immutable
final class DataZeroTrustTunnelCloudflaredRouteFilter {
  const DataZeroTrustTunnelCloudflaredRouteFilter({
    this.comment,
    this.existedAt,
    this.isDeleted,
    this.networkSubset,
    this.networkSuperset,
    this.tunTypes,
    this.tunnelId,
    this.virtualNetworkId,
  });

  final TfArg<String>? comment;

  final TfArg<String>? existedAt;

  final TfArg<bool>? isDeleted;

  final TfArg<String>? networkSubset;

  final TfArg<String>? networkSuperset;

  final TfArg<List<Object?>>? tunTypes;

  final TfArg<String>? tunnelId;

  final TfArg<String>? virtualNetworkId;

  Map<String, Object?> encode() => {
    if (comment != null) 'comment': comment!.toTfJson(),
    if (existedAt != null) 'existed_at': existedAt!.toTfJson(),
    if (isDeleted != null) 'is_deleted': isDeleted!.toTfJson(),
    if (networkSubset != null) 'network_subset': networkSubset!.toTfJson(),
    if (networkSuperset != null)
      'network_superset': networkSuperset!.toTfJson(),
    if (tunTypes != null) 'tun_types': tunTypes!.toTfJson(),
    if (tunnelId != null) 'tunnel_id': tunnelId!.toTfJson(),
    if (virtualNetworkId != null)
      'virtual_network_id': virtualNetworkId!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_route`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Read` - `Cloudflare One Networks Write` -
/// `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelCloudflaredRoute extends Data {
  static const String tfType = 'cloudflare_zero_trust_tunnel_cloudflared_route';

  DataCloudflareZeroTrustTunnelCloudflaredRoute({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? routeId,
    DataZeroTrustTunnelCloudflaredRouteFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (routeId != null) 'route_id': routeId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
