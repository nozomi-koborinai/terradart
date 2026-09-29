// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_network_monitoring_rule`.
const Set<String> _cloudflareMagicNetworkMonitoringRuleSensitive = <String>{};

/// Magic Network Monitoring Rule enum for `duration`.
enum MagicNetworkMonitoringRuleDuration implements TerraformEnum {
  v1m('1m'),
  v5m('5m'),
  v10m('10m'),
  v15m('15m'),
  v20m('20m'),
  v30m('30m'),
  v45m('45m'),
  v60m('60m');

  const MagicNetworkMonitoringRuleDuration(this.terraformValue);
  @override
  final String terraformValue;
}

/// Magic Network Monitoring Rule Prefix enum for `prefix_match`.
enum MagicNetworkMonitoringRulePrefixMatch implements TerraformEnum {
  exact('exact'),
  subnet('subnet'),
  supernet('supernet');

  const MagicNetworkMonitoringRulePrefixMatch(this.terraformValue);
  @override
  final String terraformValue;
}

/// Magic Network Monitoring Rule enum for `type`.
enum MagicNetworkMonitoringRuleType implements TerraformEnum {
  threshold('threshold'),
  zscore('zscore'),
  advancedDdos('advanced_ddos');

  const MagicNetworkMonitoringRuleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Magic Network Monitoring Rule Zscore enum for `zscore_sensitivity`.
enum MagicNetworkMonitoringRuleZscoreSensitivity implements TerraformEnum {
  low('low'),
  medium('medium'),
  high('high');

  const MagicNetworkMonitoringRuleZscoreSensitivity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Magic Network Monitoring Rule Zscore enum for `zscore_target`.
enum MagicNetworkMonitoringRuleZscoreTarget implements TerraformEnum {
  bits('bits'),
  packets('packets');

  const MagicNetworkMonitoringRuleZscoreTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_magic_network_monitoring_rule`.
///
/// Accepted Permissions
///
/// - `Magic Network Monitoring Admin` - `Magic Network Monitoring Config Read`
/// - `Magic Network Monitoring Config Write`
final class CloudflareMagicNetworkMonitoringRule extends Resource {
  static const String tfType = 'cloudflare_magic_network_monitoring_rule';

  CloudflareMagicNetworkMonitoringRule({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<bool> automaticAdvertisement,
    TfArg<num>? bandwidthThreshold,
    TfArg<MagicNetworkMonitoringRuleDuration>? duration,
    required TfArg<String> name,
    TfArg<num>? packetThreshold,
    TfArg<MagicNetworkMonitoringRulePrefixMatch>? prefixMatch,
    required TfArg<List<String>> prefixes,
    required TfArg<MagicNetworkMonitoringRuleType> type,
    TfArg<MagicNetworkMonitoringRuleZscoreSensitivity>? zscoreSensitivity,
    TfArg<MagicNetworkMonitoringRuleZscoreTarget>? zscoreTarget,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'automatic_advertisement': automaticAdvertisement,
           if (bandwidthThreshold != null)
             'bandwidth_threshold': bandwidthThreshold,
           if (duration != null) 'duration': duration,
           'name': name,
           if (packetThreshold != null) 'packet_threshold': packetThreshold,
           if (prefixMatch != null) 'prefix_match': prefixMatch,
           'prefixes': prefixes,
           'type': type,
           if (zscoreSensitivity != null)
             'zscore_sensitivity': zscoreSensitivity,
           if (zscoreTarget != null) 'zscore_target': zscoreTarget,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicNetworkMonitoringRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicNetworkMonitoringRule>`.
  RefTo<CloudflareMagicNetworkMonitoringRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
