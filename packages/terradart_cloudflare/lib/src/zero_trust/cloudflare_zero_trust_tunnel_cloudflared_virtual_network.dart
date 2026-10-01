// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_virtual_network`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredVirtualNetworkSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_virtual_network`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Write` - `Cloudflare Tunnel Write`
final class CloudflareZeroTrustTunnelCloudflaredVirtualNetwork
    extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_cloudflared_virtual_network';

  CloudflareZeroTrustTunnelCloudflaredVirtualNetwork(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? comment,
    TfArg<bool>? isDefault,
    TfArg<bool>? isDefaultNetwork,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'comment': ?comment,
           'is_default': ?isDefault,
           'is_default_network': ?isDefaultNetwork,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredVirtualNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustTunnelCloudflaredVirtualNetwork>`.
  RefTo<CloudflareZeroTrustTunnelCloudflaredVirtualNetwork> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `is_default_network` attribute.
  TfRef<bool> get isDefaultNetwork =>
      TfRef.attribute<bool>(this, 'is_default_network');
}
