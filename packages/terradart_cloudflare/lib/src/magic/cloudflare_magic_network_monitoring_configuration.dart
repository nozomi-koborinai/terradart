// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_network_monitoring_configuration`.
const Set<String> _cloudflareMagicNetworkMonitoringConfigurationSensitive =
    <String>{};

/// Typed helper for the `warp_devices` block of
/// `cloudflare_magic_network_monitoring_configuration` (derived from provider schema).
@immutable
final class MagicNetworkMonitoringConfigurationWarpDevices {
  const MagicNetworkMonitoringConfigurationWarpDevices({
    required this.id,
    required this.name,
    required this.routerIp,
  });

  final TfArg<String> id;

  final TfArg<String> name;

  final TfArg<String> routerIp;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'name': name.toTfJson(),
    'router_ip': routerIp.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_network_monitoring_configuration`.
///
/// Accepted Permissions
///
/// - `Magic Network Monitoring Admin` - `Magic Network Monitoring Config Read`
/// - `Magic Network Monitoring Config Write`
final class CloudflareMagicNetworkMonitoringConfiguration extends Resource {
  static const String tfType =
      'cloudflare_magic_network_monitoring_configuration';

  CloudflareMagicNetworkMonitoringConfiguration({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? defaultSampling,
    required TfArg<String> name,
    TfArg<List<String>>? routerIps,
    List<MagicNetworkMonitoringConfigurationWarpDevices>? warpDevices,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (defaultSampling != null) 'default_sampling': defaultSampling,
           'name': name,
           if (routerIps != null) 'router_ips': routerIps,
           if (warpDevices != null)
             'warp_devices': TfArg.literal([
               for (final e in warpDevices) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicNetworkMonitoringConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
