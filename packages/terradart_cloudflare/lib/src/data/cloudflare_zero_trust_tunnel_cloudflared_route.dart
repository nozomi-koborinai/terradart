// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_tunnel_cloudflared_route.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  final TfArg<List<String>>? tunTypes;

  final TfArg<String>? tunnelId;

  final TfArg<String>? virtualNetworkId;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'existed_at': ?existedAt?.toTfJson(),
    'is_deleted': ?isDeleted?.toTfJson(),
    'network_subset': ?networkSubset?.toTfJson(),
    'network_superset': ?networkSuperset?.toTfJson(),
    'tun_types': ?tunTypes?.toTfJson(),
    'tunnel_id': ?tunnelId?.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? routeId,
    DataZeroTrustTunnelCloudflaredRouteFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'route_id': ?routeId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredRouteSensitive;

  /// A reference to the `cloudflare_zero_trust_tunnel_cloudflared_route` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustTunnelCloudflaredRoute>`.
  RefTo<CloudflareZeroTrustTunnelCloudflaredRoute> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `route_id` attribute.
  TfRef<String> get routeId => TfRef.attribute<String>(this, 'route_id');
}
