// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_virtual_network`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredVirtualNetworkSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_tunnel_cloudflared_virtual_network` (derived from provider schema).
@immutable
final class DataZeroTrustTunnelCloudflaredVirtualNetworkFilter {
  const DataZeroTrustTunnelCloudflaredVirtualNetworkFilter({
    this.id,
    this.isDefault,
    this.isDefaultNetwork,
    this.isDeleted,
    this.name,
  });

  final TfArg<String>? id;

  final TfArg<bool>? isDefault;

  final TfArg<bool>? isDefaultNetwork;

  final TfArg<bool>? isDeleted;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (isDefault != null) 'is_default': isDefault!.toTfJson(),
    if (isDefaultNetwork != null)
      'is_default_network': isDefaultNetwork!.toTfJson(),
    if (isDeleted != null) 'is_deleted': isDeleted!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_virtual_network`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Read` - `Cloudflare One Networks Write` -
/// `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelCloudflaredVirtualNetwork
    extends Data {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_cloudflared_virtual_network';

  DataCloudflareZeroTrustTunnelCloudflaredVirtualNetwork({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? virtualNetworkId,
    DataZeroTrustTunnelCloudflaredVirtualNetworkFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredVirtualNetworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `is_default_network` attribute.
  TfRef<bool> get isDefaultNetwork =>
      TfRef.attribute<bool>(this, 'is_default_network');
}
