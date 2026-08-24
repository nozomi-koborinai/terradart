// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_network_monitoring_configuration`.
const Set<String> _cloudflareMagicNetworkMonitoringConfigurationSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_magic_network_monitoring_configuration`.
///
/// Accepted Permissions
///
/// - `Magic Network Monitoring Admin` - `Magic Network Monitoring Config Read`
/// - `Magic Network Monitoring Config Write`
final class DataCloudflareMagicNetworkMonitoringConfiguration extends Data {
  static const String tfType =
      'cloudflare_magic_network_monitoring_configuration';

  DataCloudflareMagicNetworkMonitoringConfiguration({
    required super.localName,
    TfArg<String>? accountId,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicNetworkMonitoringConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `default_sampling` attribute.
  TfRef<num> get defaultSampling =>
      TfRef.attribute<num>(this, 'default_sampling');

  /// Reference to `router_ips` attribute.
  TfRef<List<String>> get routerIps =>
      TfRef.attribute<List<String>>(this, 'router_ips');
}
