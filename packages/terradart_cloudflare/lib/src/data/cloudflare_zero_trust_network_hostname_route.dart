// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_network_hostname_route.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_network_hostname_route`.
const Set<String> _cloudflareZeroTrustNetworkHostnameRouteSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_network_hostname_route` (derived from provider schema).
@immutable
final class DataZeroTrustNetworkHostnameRouteFilter {
  const DataZeroTrustNetworkHostnameRouteFilter({
    this.comment,
    this.existedAt,
    this.hostname,
    this.id,
    this.isDeleted,
    this.tunnelId,
  });

  final TfArg<String>? comment;

  final TfArg<String>? existedAt;

  final TfArg<String>? hostname;

  final TfArg<String>? id;

  final TfArg<bool>? isDeleted;

  final TfArg<String>? tunnelId;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'existed_at': ?existedAt?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'id': ?id?.toTfJson(),
    'is_deleted': ?isDeleted?.toTfJson(),
    'tunnel_id': ?tunnelId?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_network_hostname_route`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Read` - `Cloudflare One Networks Write` -
/// `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustNetworkHostnameRoute extends Data {
  static const String tfType = 'cloudflare_zero_trust_network_hostname_route';

  DataCloudflareZeroTrustNetworkHostnameRoute(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? hostnameRouteId,
    DataZeroTrustNetworkHostnameRouteFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'hostname_route_id': ?hostnameRouteId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustNetworkHostnameRouteSensitive;

  /// A reference to the `cloudflare_zero_trust_network_hostname_route` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustNetworkHostnameRoute>`.
  RefTo<CloudflareZeroTrustNetworkHostnameRoute> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `tun_type` attribute.
  TfRef<String> get tunType => TfRef.attribute<String>(this, 'tun_type');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');

  /// Reference to `tunnel_name` attribute.
  TfRef<String> get tunnelName => TfRef.attribute<String>(this, 'tunnel_name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `hostname_route_id` attribute.
  TfRef<String> get hostnameRouteId =>
      TfRef.attribute<String>(this, 'hostname_route_id');
}
