// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_warp_connector_config`.
const Set<String> _cloudflareZeroTrustTunnelWarpConnectorConfigSensitive =
    <String>{};

/// Zero Trust Tunnel Warp Connector Config Ha enum for `ha_mode`.
extension type const ZeroTrustTunnelWarpConnectorConfigHaMode._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustTunnelWarpConnectorConfigHaMode.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustTunnelWarpConnectorConfigHaMode.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustTunnelWarpConnectorConfigHaMode.arg(TfArg<String> arg)
    : this._(arg);

  static const none = ZeroTrustTunnelWarpConnectorConfigHaMode._(
    TfArgLiteral('none'),
  );
  static const disabled = ZeroTrustTunnelWarpConnectorConfigHaMode._(
    TfArgLiteral('disabled'),
  );
  static const aws = ZeroTrustTunnelWarpConnectorConfigHaMode._(
    TfArgLiteral('aws'),
  );
  static const local = ZeroTrustTunnelWarpConnectorConfigHaMode._(
    TfArgLiteral('local'),
  );

  static const List<ZeroTrustTunnelWarpConnectorConfigHaMode> values = [
    none,
    disabled,
    aws,
    local,
  ];
}

/// Typed helper for the `config` block of
/// `cloudflare_zero_trust_tunnel_warp_connector_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelWarpConnectorConfig {
  const ZeroTrustTunnelWarpConnectorConfig({
    this.fnrId,
    this.vips,
    this.vipsPrevious,
  });

  final TfArg<String>? fnrId;

  final List<ZeroTrustTunnelWarpConnectorConfigVips>? vips;

  final List<ZeroTrustTunnelWarpConnectorConfigVipsPrevious>? vipsPrevious;

  Map<String, Object?> encode() => {
    'fnr_id': ?fnrId?.toTfJson(),
    if (vips != null) 'vips': [for (final e in vips!) e.encode()],
    if (vipsPrevious != null)
      'vips_previous': [for (final e in vipsPrevious!) e.encode()],
  };
}

/// Typed helper for the `config.vips` block of
/// `cloudflare_zero_trust_tunnel_warp_connector_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelWarpConnectorConfigVips {
  const ZeroTrustTunnelWarpConnectorConfigVips({required this.address});

  final TfArg<String> address;

  Map<String, Object?> encode() => {'address': address.toTfJson()};
}

/// Typed helper for the `config.vips_previous` block of
/// `cloudflare_zero_trust_tunnel_warp_connector_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelWarpConnectorConfigVipsPrevious {
  const ZeroTrustTunnelWarpConnectorConfigVipsPrevious({required this.address});

  final TfArg<String> address;

  Map<String, Object?> encode() => {'address': address.toTfJson()};
}

/// Factory wrapper for `cloudflare_zero_trust_tunnel_warp_connector_config`.
///
/// Accepted Permissions
///
/// - `Cloudflare One Connector: WARP Read` - `Cloudflare One Connector: WARP
/// Write` - `Cloudflare One Connectors Read` - `Cloudflare One Connectors
/// Write`
final class CloudflareZeroTrustTunnelWarpConnectorConfig extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_tunnel_warp_connector_config';

  CloudflareZeroTrustTunnelWarpConnectorConfig(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required ZeroTrustTunnelWarpConnectorConfigHaMode haMode,
    required TfArg<String> tunnelId,
    ZeroTrustTunnelWarpConnectorConfig? config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'ha_mode': haMode,
           'tunnel_id': tunnelId,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelWarpConnectorConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustTunnelWarpConnectorConfig>`.
  RefTo<CloudflareZeroTrustTunnelWarpConnectorConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_version` attribute.
  TfRef<num> get configurationVersion =>
      TfRef.attribute<num>(this, 'configuration_version');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `ha_mode` attribute.
  TfRef<String> get haMode => TfRef.attribute<String>(this, 'ha_mode');

  /// Reference to `tunnel_id` attribute.
  TfRef<String> get tunnelId => TfRef.attribute<String>(this, 'tunnel_id');
}
