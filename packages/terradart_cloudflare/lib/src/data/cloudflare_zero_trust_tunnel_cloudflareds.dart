// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
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
           'account_id': ?accountId?.encodeAs('id'),
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
      _cloudflareZeroTrustTunnelCloudflaredsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `exclude_prefix` attribute.
  TfRef<String> get excludePrefix =>
      TfRef.attribute<String>(this, 'exclude_prefix');

  /// Reference to `existed_at` attribute.
  TfRef<String> get existedAt => TfRef.attribute<String>(this, 'existed_at');

  /// Reference to `include_prefix` attribute.
  TfRef<String> get includePrefix =>
      TfRef.attribute<String>(this, 'include_prefix');

  /// Reference to `is_deleted` attribute.
  TfRef<bool> get isDeleted => TfRef.attribute<bool>(this, 'is_deleted');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');

  /// Reference to `was_active_at` attribute.
  TfRef<String> get wasActiveAt =>
      TfRef.attribute<String>(this, 'was_active_at');

  /// Reference to `was_inactive_at` attribute.
  TfRef<String> get wasInactiveAt =>
      TfRef.attribute<String>(this, 'was_inactive_at');
}
