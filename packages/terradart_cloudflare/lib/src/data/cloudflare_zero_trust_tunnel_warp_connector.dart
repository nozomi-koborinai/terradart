// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_tunnel_warp_connector.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_warp_connector`.
const Set<String> _cloudflareZeroTrustTunnelWarpConnectorSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_tunnel_warp_connector` (derived from provider schema).
@immutable
final class DataZeroTrustTunnelWarpConnectorFilter {
  const DataZeroTrustTunnelWarpConnectorFilter({
    this.excludePrefix,
    this.existedAt,
    this.includePrefix,
    this.isDeleted,
    this.name,
    this.status,
    this.uuid,
    this.wasActiveAt,
    this.wasInactiveAt,
  });

  final TfArg<String>? excludePrefix;

  final TfArg<String>? existedAt;

  final TfArg<String>? includePrefix;

  final TfArg<bool>? isDeleted;

  final TfArg<String>? name;

  final TfArg<DataZeroTrustTunnelWarpConnectorFilterStatus>? status;

  final TfArg<String>? uuid;

  final TfArg<String>? wasActiveAt;

  final TfArg<String>? wasInactiveAt;

  Map<String, Object?> encode() => {
    'exclude_prefix': ?excludePrefix?.toTfJson(),
    'existed_at': ?existedAt?.toTfJson(),
    'include_prefix': ?includePrefix?.toTfJson(),
    'is_deleted': ?isDeleted?.toTfJson(),
    'name': ?name?.toTfJson(),
    'status': ?status?.toTfJson(),
    'uuid': ?uuid?.toTfJson(),
    'was_active_at': ?wasActiveAt?.toTfJson(),
    'was_inactive_at': ?wasInactiveAt?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
enum DataZeroTrustTunnelWarpConnectorFilterStatus implements TerraformEnum {
  inactive('inactive'),
  degraded('degraded'),
  healthy('healthy'),
  down('down');

  const DataZeroTrustTunnelWarpConnectorFilterStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_tunnel_warp_connector`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: WARP Read` - `Cloudflare One Connector: WARP
/// Write` - `Cloudflare One Connectors Read` - `Cloudflare One Connectors
/// Write`
final class DataCloudflareZeroTrustTunnelWarpConnector extends Data {
  static const String tfType = 'cloudflare_zero_trust_tunnel_warp_connector';

  DataCloudflareZeroTrustTunnelWarpConnector({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? tunnelId,
    DataZeroTrustTunnelWarpConnectorFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'tunnel_id': ?tunnelId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelWarpConnectorSensitive;

  /// A reference to the `cloudflare_zero_trust_tunnel_warp_connector` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustTunnelWarpConnector>`.
  RefTo<CloudflareZeroTrustTunnelWarpConnector> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
