// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_warp_connectors`.
const Set<String> _cloudflareZeroTrustTunnelWarpConnectorsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_warp_connectors`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: WARP Read` - `Cloudflare One Connector: WARP
/// Write` - `Cloudflare One Connectors Read` - `Cloudflare One Connectors
/// Write`
final class DataCloudflareZeroTrustTunnelWarpConnectors extends Data {
  static const String tfType = 'cloudflare_zero_trust_tunnel_warp_connectors';

  DataCloudflareZeroTrustTunnelWarpConnectors({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? excludePrefix,
    TfArg<String>? existedAt,
    TfArg<String>? includePrefix,
    TfArg<bool>? isDeleted,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? status,
    TfArg<String>? uuid,
    TfArg<String>? wasActiveAt,
    TfArg<String>? wasInactiveAt,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'exclude_prefix': ?excludePrefix,
           'existed_at': ?existedAt,
           'include_prefix': ?includePrefix,
           'is_deleted': ?isDeleted,
           'max_items': ?maxItems,
           'name': ?name,
           'status': ?status,
           'uuid': ?uuid,
           'was_active_at': ?wasActiveAt,
           'was_inactive_at': ?wasInactiveAt,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelWarpConnectorsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
