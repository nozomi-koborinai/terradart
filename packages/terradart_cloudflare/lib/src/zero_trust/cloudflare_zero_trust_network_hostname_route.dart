// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
    TfArg<String>? comment,
    TfArg<String>? hostname,
    TfArg<String>? tunnelId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (comment != null) 'comment': comment,
           if (hostname != null) 'hostname': hostname,
           if (tunnelId != null) 'tunnel_id': tunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustNetworkHostnameRouteSensitive;

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
}
