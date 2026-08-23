// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  CloudflareZeroTrustTunnelCloudflaredVirtualNetwork({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? comment,
    TfArg<bool>? isDefault,
    TfArg<bool>? isDefaultNetwork,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (comment != null) 'comment': comment,
           if (isDefault != null) 'is_default': isDefault,
           if (isDefaultNetwork != null) 'is_default_network': isDefaultNetwork,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredVirtualNetworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');
}
