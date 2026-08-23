// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_tunnel_warp_connector_config`.
const Set<String> _cloudflareZeroTrustTunnelWarpConnectorConfigSensitive =
    <String>{};

/// Typed helper for the `config` block of
/// `cloudflare_zero_trust_tunnel_warp_connector_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelWarpConnectorConfigConfig {
  const ZeroTrustTunnelWarpConnectorConfigConfig({
    this.fnrId,
    this.vips,
    this.vipsPrevious,
  });

  final TfArg<String>? fnrId;

  final List<ZeroTrustTunnelWarpConnectorConfigConfigVips>? vips;

  final List<ZeroTrustTunnelWarpConnectorConfigConfigVipsPrevious>?
  vipsPrevious;

  Map<String, Object?> encode() => {
    if (fnrId != null) 'fnr_id': fnrId!.toTfJson(),
    if (vips != null) 'vips': [for (final e in vips!) e.encode()],
    if (vipsPrevious != null)
      'vips_previous': [for (final e in vipsPrevious!) e.encode()],
  };
}

/// Typed helper for the `config.vips` block of
/// `cloudflare_zero_trust_tunnel_warp_connector_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelWarpConnectorConfigConfigVips {
  const ZeroTrustTunnelWarpConnectorConfigConfigVips({required this.address});

  final TfArg<String> address;

  Map<String, Object?> encode() => {'address': address.toTfJson()};
}

/// Typed helper for the `config.vips_previous` block of
/// `cloudflare_zero_trust_tunnel_warp_connector_config` (derived from provider schema).
@immutable
final class ZeroTrustTunnelWarpConnectorConfigConfigVipsPrevious {
  const ZeroTrustTunnelWarpConnectorConfigConfigVipsPrevious({
    required this.address,
  });

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

  CloudflareZeroTrustTunnelWarpConnectorConfig({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> haMode,
    required TfArg<String> tunnelId,
    ZeroTrustTunnelWarpConnectorConfigConfig? config,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'ha_mode': haMode,
           'tunnel_id': tunnelId,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustTunnelWarpConnectorConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_version` attribute.
  TfRef<num> get configurationVersion =>
      TfRef.attribute<num>(this, 'configuration_version');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
