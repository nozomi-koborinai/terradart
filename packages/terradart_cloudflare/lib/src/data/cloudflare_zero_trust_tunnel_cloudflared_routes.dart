// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
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
           'account_id': ?accountId?.encodeAs('id'),
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comment` attribute.
  TfRef<String> get commentRef => TfRef.attribute<String>(this, 'comment');

  /// Reference to `existed_at` attribute.
  TfRef<String> get existedAtRef => TfRef.attribute<String>(this, 'existed_at');

  /// Reference to `is_deleted` attribute.
  TfRef<bool> get isDeletedRef => TfRef.attribute<bool>(this, 'is_deleted');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `network_subset` attribute.
  TfRef<String> get networkSubsetRef =>
      TfRef.attribute<String>(this, 'network_subset');

  /// Reference to `network_superset` attribute.
  TfRef<String> get networkSupersetRef =>
      TfRef.attribute<String>(this, 'network_superset');

  /// Reference to `route_id` attribute.
  TfRef<String> get routeIdRef => TfRef.attribute<String>(this, 'route_id');

  /// Reference to `tun_types` attribute.
  TfRef<List<String>> get tunTypesRef =>
      TfRef.attribute<List<String>>(this, 'tun_types');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelIdRef => TfRef.attribute<String>(this, 'tunnel_id');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkIdRef =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
