// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_network_monitoring_configuration.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicNetworkMonitoringConfigurationSensitive;

  /// A reference to the `cloudflare_magic_network_monitoring_configuration` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicNetworkMonitoringConfiguration>`.
  RefTo<CloudflareMagicNetworkMonitoringConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `default_sampling` attribute.
  TfRef<num> get defaultSampling =>
      TfRef.attribute<num>(this, 'default_sampling');

  /// Reference to `router_ips` attribute.
  TfRef<List<String>> get routerIps =>
      TfRef.attribute<List<String>>(this, 'router_ips');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');
}
