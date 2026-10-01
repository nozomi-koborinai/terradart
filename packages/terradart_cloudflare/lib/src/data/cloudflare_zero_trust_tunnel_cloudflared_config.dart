// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_tunnel_cloudflared_config.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared_config`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredConfigSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared_config`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: cloudflared Read` - `Cloudflare One Connector:
/// cloudflared Write` - `Cloudflare One Connectors Read` - `Cloudflare One
/// Connectors Write` - `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class DataCloudflareZeroTrustTunnelCloudflaredConfig extends Data {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_cloudflared_config';

  DataCloudflareZeroTrustTunnelCloudflaredConfig(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> tunnelId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'tunnel_id': tunnelId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredConfigSensitive;

  /// A reference to the `cloudflare_zero_trust_tunnel_cloudflared_config` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustTunnelCloudflaredConfig>`.
  RefTo<CloudflareZeroTrustTunnelCloudflaredConfig> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');
}
