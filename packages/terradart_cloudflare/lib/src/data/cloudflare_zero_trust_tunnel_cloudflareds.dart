// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflareds`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflareds`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: cloudflared Read` - `Cloudflare One Connector:
/// cloudflared Write` - `Cloudflare One Connectors Read` - `Cloudflare One
/// Connectors Write` - `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelCloudflareds extends Data {
  static const String tfType = 'cloudflare_zero_trust_tunnel_cloudflareds';

  DataCloudflareZeroTrustTunnelCloudflareds({
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (excludePrefix != null) 'exclude_prefix': excludePrefix,
           if (existedAt != null) 'existed_at': existedAt,
           if (includePrefix != null) 'include_prefix': includePrefix,
           if (isDeleted != null) 'is_deleted': isDeleted,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
           if (status != null) 'status': status,
           if (uuid != null) 'uuid': uuid,
           if (wasActiveAt != null) 'was_active_at': wasActiveAt,
           if (wasInactiveAt != null) 'was_inactive_at': wasInactiveAt,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
