// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_tunnel_cloudflared` (derived from provider schema).
@immutable
final class DataZeroTrustTunnelCloudflaredFilter {
  const DataZeroTrustTunnelCloudflaredFilter({
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

  final TfArg<String>? status;

  final TfArg<String>? uuid;

  final TfArg<String>? wasActiveAt;

  final TfArg<String>? wasInactiveAt;

  Map<String, Object?> encode() => {
    if (excludePrefix != null) 'exclude_prefix': excludePrefix!.toTfJson(),
    if (existedAt != null) 'existed_at': existedAt!.toTfJson(),
    if (includePrefix != null) 'include_prefix': includePrefix!.toTfJson(),
    if (isDeleted != null) 'is_deleted': isDeleted!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    if (uuid != null) 'uuid': uuid!.toTfJson(),
    if (wasActiveAt != null) 'was_active_at': wasActiveAt!.toTfJson(),
    if (wasInactiveAt != null) 'was_inactive_at': wasInactiveAt!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: cloudflared Read` - `Cloudflare One Connector:
/// cloudflared Write` - `Cloudflare One Connectors Read` - `Cloudflare One
/// Connectors Write` - `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelCloudflared extends Data {
  static const String tfType = 'cloudflare_zero_trust_tunnel_cloudflared';

  DataCloudflareZeroTrustTunnelCloudflared({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? tunnelId,
    DataZeroTrustTunnelCloudflaredFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (tunnelId != null) 'tunnel_id': tunnelId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_tag` attribute.
  TfRef<String> get accountTag => TfRef.attribute<String>(this, 'account_tag');

  /// Reference to `config_src` attribute.
  TfRef<String> get configSrc => TfRef.attribute<String>(this, 'config_src');

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

  /// Reference to `remote_config` attribute.
  TfRef<bool> get remoteConfig => TfRef.attribute<bool>(this, 'remote_config');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tun_type` attribute.
  TfRef<String> get tunType => TfRef.attribute<String>(this, 'tun_type');
}
