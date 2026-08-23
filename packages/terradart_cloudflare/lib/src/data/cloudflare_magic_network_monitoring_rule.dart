// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_network_monitoring_rule`.
const Set<String> _cloudflareMagicNetworkMonitoringRuleSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_network_monitoring_rule`.
///
/// Accepted Permissions
///
/// - `Magic Network Monitoring Admin` - `Magic Network Monitoring Config Read`
/// - `Magic Network Monitoring Config Write`
final class DataCloudflareMagicNetworkMonitoringRule extends Data {
  static const String tfType = 'cloudflare_magic_network_monitoring_rule';

  DataCloudflareMagicNetworkMonitoringRule({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> ruleId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'rule_id': ruleId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicNetworkMonitoringRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automatic_advertisement` attribute.
  TfRef<bool> get automaticAdvertisement =>
      TfRef.attribute<bool>(this, 'automatic_advertisement');

  /// Reference to `bandwidth_threshold` attribute.
  TfRef<num> get bandwidthThreshold =>
      TfRef.attribute<num>(this, 'bandwidth_threshold');

  /// Reference to `duration` attribute.
  TfRef<String> get duration => TfRef.attribute<String>(this, 'duration');

  /// Reference to `packet_threshold` attribute.
  TfRef<num> get packetThreshold =>
      TfRef.attribute<num>(this, 'packet_threshold');

  /// Reference to `prefix_match` attribute.
  TfRef<String> get prefixMatch =>
      TfRef.attribute<String>(this, 'prefix_match');

  /// Reference to `prefixes` attribute.
  TfRef<List<String>> get prefixes =>
      TfRef.attribute<List<String>>(this, 'prefixes');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zscore_sensitivity` attribute.
  TfRef<String> get zscoreSensitivity =>
      TfRef.attribute<String>(this, 'zscore_sensitivity');

  /// Reference to `zscore_target` attribute.
  TfRef<String> get zscoreTarget =>
      TfRef.attribute<String>(this, 'zscore_target');
}
