// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_virtual_networks`.
const Set<String>
_cloudflareZeroTrustTunnelCloudflaredVirtualNetworksSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_virtual_networks`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Read` - `Cloudflare One Networks Write` -
/// `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelCloudflaredVirtualNetworks
    extends Data {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_cloudflared_virtual_networks';

  DataCloudflareZeroTrustTunnelCloudflaredVirtualNetworks({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<bool>? isDefault,
    TfArg<bool>? isDefaultNetwork,
    TfArg<bool>? isDeleted,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'is_default': ?isDefault,
           'is_default_network': ?isDefaultNetwork,
           'is_deleted': ?isDeleted,
           'max_items': ?maxItems,
           'name': ?name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredVirtualNetworksSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
