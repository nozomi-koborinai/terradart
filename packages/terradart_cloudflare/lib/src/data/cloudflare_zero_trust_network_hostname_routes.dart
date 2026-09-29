// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? comment,
    TfArg<String>? existedAt,
    TfArg<String>? hostname,
    TfArg<bool>? isDeleted,
    TfArg<num>? maxItems,
    TfArg<String>? tunnelId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'comment': ?comment,
           'existed_at': ?existedAt,
           'hostname': ?hostname,
           'is_deleted': ?isDeleted,
           'max_items': ?maxItems,
           'tunnel_id': ?tunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustNetworkHostnameRoutesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
