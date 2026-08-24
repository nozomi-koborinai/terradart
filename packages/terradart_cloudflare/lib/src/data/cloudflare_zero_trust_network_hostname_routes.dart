// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_network_hostname_routes`.
const Set<String> _cloudflareZeroTrustNetworkHostnameRoutesSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_network_hostname_routes`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Read` - `Cloudflare One Networks Write` -
/// `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustNetworkHostnameRoutes extends Data {
  static const String tfType = 'cloudflare_zero_trust_network_hostname_routes';

  DataCloudflareZeroTrustNetworkHostnameRoutes({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? comment,
    TfArg<String>? existedAt,
    TfArg<String>? hostname,
    TfArg<bool>? isDeleted,
    TfArg<num>? maxItems,
    TfArg<String>? tunnelId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (comment != null) 'comment': comment,
           if (existedAt != null) 'existed_at': existedAt,
           if (hostname != null) 'hostname': hostname,
           if (isDeleted != null) 'is_deleted': isDeleted,
           if (maxItems != null) 'max_items': maxItems,
           if (tunnelId != null) 'tunnel_id': tunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustNetworkHostnameRoutesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
