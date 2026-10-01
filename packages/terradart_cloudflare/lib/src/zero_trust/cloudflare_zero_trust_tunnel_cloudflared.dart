// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_cloudflared`.
const Set<String> _cloudflareZeroTrustTunnelCloudflaredSensitive = <String>{
  'tunnel_secret',
};

/// Zero Trust Tunnel Cloudflared Config enum for `config_src`.
enum ZeroTrustTunnelCloudflaredConfigSrc implements TerraformEnum {
  local('local'),
  cloudflare('cloudflare');

  const ZeroTrustTunnelCloudflaredConfigSrc(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_tunnel_cloudflared`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: cloudflared Read` - `Cloudflare One Connector:
/// cloudflared Write` - `Cloudflare One Connectors Read` - `Cloudflare One
/// Connectors Write` - `Cloudflare Tunnel Read` - `Cloudflare Tunnel Write`
final class CloudflareZeroTrustTunnelCloudflared extends Resource {
  static const String tfType = 'cloudflare_zero_trust_tunnel_cloudflared';

  CloudflareZeroTrustTunnelCloudflared({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<ZeroTrustTunnelCloudflaredConfigSrc>? configSrc,
    required TfArg<String> name,
    TfArg<String>? tunnelSecret,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'config_src': ?configSrc,
           'name': name,
           'tunnel_secret': ?tunnelSecret,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelCloudflaredSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustTunnelCloudflared>`.
  RefTo<CloudflareZeroTrustTunnelCloudflared> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_tag` attribute.
  TfRef<String> get accountTag => TfRef.attribute<String>(this, 'account_tag');

  /// Reference to `conns_active_at` attribute.
  TfRef<String> get connsActiveAt =>
      TfRef.attribute<String>(this, 'conns_active_at');

  /// Reference to `conns_inactive_at` attribute.
  TfRef<String> get connsInactiveAt =>
      TfRef.attribute<String>(this, 'conns_inactive_at');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `deleted_at` attribute.
  TfRef<String> get deletedAt => TfRef.attribute<String>(this, 'deleted_at');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `remote_config` attribute.
  TfRef<bool> get remoteConfig => TfRef.attribute<bool>(this, 'remote_config');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tun_type` attribute.
  TfRef<String> get tunType => TfRef.attribute<String>(this, 'tun_type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `config_src` attribute.
  TfRef<String> get configSrc => TfRef.attribute<String>(this, 'config_src');

  /// Reference to `tunnel_secret` attribute.
  TfRef<String> get tunnelSecret =>
      TfRef.attribute<String>(this, 'tunnel_secret');
}
