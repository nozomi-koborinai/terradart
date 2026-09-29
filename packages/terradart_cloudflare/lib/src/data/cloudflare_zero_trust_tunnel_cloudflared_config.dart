// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_tunnel_cloudflared_config.dart';

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

  DataCloudflareZeroTrustTunnelCloudflaredConfig({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> tunnelId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'tunnel_id': tunnelId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredConfigSensitive;

  /// A reference to the `cloudflare_zero_trust_tunnel_cloudflared_config` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustTunnelCloudflaredConfig>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareZeroTrustTunnelCloudflaredConfig> get ref => RefTo.read(this);

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
