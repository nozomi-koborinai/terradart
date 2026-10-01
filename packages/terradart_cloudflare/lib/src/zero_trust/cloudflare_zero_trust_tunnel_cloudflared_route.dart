// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  CloudflareZeroTrustTunnelCloudflaredRoute(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? comment,
    required TfArg<String> network,
    required TfArg<String> tunnelId,
    TfArg<String>? virtualNetworkId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'comment': ?comment,
           'network': network,
           'tunnel_id': tunnelId,
           'virtual_network_id': ?virtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustTunnelCloudflaredRoute>`.
  RefTo<CloudflareZeroTrustTunnelCloudflaredRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
