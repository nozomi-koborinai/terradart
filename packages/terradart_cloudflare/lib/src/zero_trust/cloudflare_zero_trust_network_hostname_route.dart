// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_network_hostname_route`.
const Set<String> _cloudflareZeroTrustNetworkHostnameRouteSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_network_hostname_route`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Networks Read` - `Cloudflare One Networks Write` -
/// `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class CloudflareZeroTrustNetworkHostnameRoute extends Resource {
  static const String tfType = 'cloudflare_zero_trust_network_hostname_route';

  CloudflareZeroTrustNetworkHostnameRoute({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? comment,
    TfArg<String>? hostname,
    TfArg<String>? tunnelId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'comment': ?comment,
           'hostname': ?hostname,
           'tunnel_id': ?tunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustNetworkHostnameRouteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustNetworkHostnameRoute>`.
  RefTo<CloudflareZeroTrustNetworkHostnameRoute> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `tun_type` attribute.
  TfRef<String> get tunType => TfRef.attribute<String>(this, 'tun_type');

  /// Reference to `tunnel_name` attribute.
  TfRef<String> get tunnelName => TfRef.attribute<String>(this, 'tunnel_name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');
}
