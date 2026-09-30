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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comment` attribute.
  TfRef<String> get commentRef => TfRef.attribute<String>(this, 'comment');

  /// Reference to `existed_at` attribute.
  TfRef<String> get existedAtRef => TfRef.attribute<String>(this, 'existed_at');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostnameRef => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `is_deleted` attribute.
  TfRef<bool> get isDeletedRef => TfRef.attribute<bool>(this, 'is_deleted');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelIdRef => TfRef.attribute<String>(this, 'tunnel_id');
}
