// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_network_monitoring_rule`.
const Set<String> _cloudflareMagicNetworkMonitoringRuleSensitive = <String>{};

/// Magic Network Monitoring Rule enum for `duration`.
extension type const MagicNetworkMonitoringRuleDuration._(TfArg<String> _)
    implements TfArg<String> {
  MagicNetworkMonitoringRuleDuration.variable(String name)
    : this._(TfArg.variable(name));
  MagicNetworkMonitoringRuleDuration.expression(String template)
    : this._(TfArg.expression(template));
  const MagicNetworkMonitoringRuleDuration.arg(TfArg<String> arg) : this._(arg);

  static const v1m = MagicNetworkMonitoringRuleDuration._(TfArgLiteral('1m'));
  static const v5m = MagicNetworkMonitoringRuleDuration._(TfArgLiteral('5m'));
  static const v10m = MagicNetworkMonitoringRuleDuration._(TfArgLiteral('10m'));
  static const v15m = MagicNetworkMonitoringRuleDuration._(TfArgLiteral('15m'));
  static const v20m = MagicNetworkMonitoringRuleDuration._(TfArgLiteral('20m'));
  static const v30m = MagicNetworkMonitoringRuleDuration._(TfArgLiteral('30m'));
  static const v45m = MagicNetworkMonitoringRuleDuration._(TfArgLiteral('45m'));
  static const v60m = MagicNetworkMonitoringRuleDuration._(TfArgLiteral('60m'));

  static const List<MagicNetworkMonitoringRuleDuration> values = [
    v1m,
    v5m,
    v10m,
    v15m,
    v20m,
    v30m,
    v45m,
    v60m,
  ];
}

/// Magic Network Monitoring Rule Prefix enum for `prefix_match`.
extension type const MagicNetworkMonitoringRulePrefixMatch._(TfArg<String> _)
    implements TfArg<String> {
  MagicNetworkMonitoringRulePrefixMatch.variable(String name)
    : this._(TfArg.variable(name));
  MagicNetworkMonitoringRulePrefixMatch.expression(String template)
    : this._(TfArg.expression(template));
  const MagicNetworkMonitoringRulePrefixMatch.arg(TfArg<String> arg)
    : this._(arg);

  static const exact = MagicNetworkMonitoringRulePrefixMatch._(
    TfArgLiteral('exact'),
  );
  static const subnet = MagicNetworkMonitoringRulePrefixMatch._(
    TfArgLiteral('subnet'),
  );
  static const supernet = MagicNetworkMonitoringRulePrefixMatch._(
    TfArgLiteral('supernet'),
  );

  static const List<MagicNetworkMonitoringRulePrefixMatch> values = [
    exact,
    subnet,
    supernet,
  ];
}

/// Magic Network Monitoring Rule enum for `type`.
extension type const MagicNetworkMonitoringRuleType._(TfArg<String> _)
    implements TfArg<String> {
  MagicNetworkMonitoringRuleType.variable(String name)
    : this._(TfArg.variable(name));
  MagicNetworkMonitoringRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const MagicNetworkMonitoringRuleType.arg(TfArg<String> arg) : this._(arg);

  static const threshold = MagicNetworkMonitoringRuleType._(
    TfArgLiteral('threshold'),
  );
  static const zscore = MagicNetworkMonitoringRuleType._(
    TfArgLiteral('zscore'),
  );
  static const advancedDdos = MagicNetworkMonitoringRuleType._(
    TfArgLiteral('advanced_ddos'),
  );

  static const List<MagicNetworkMonitoringRuleType> values = [
    threshold,
    zscore,
    advancedDdos,
  ];
}

/// Magic Network Monitoring Rule Zscore enum for `zscore_sensitivity`.
extension type const MagicNetworkMonitoringRuleZscoreSensitivity._(
  TfArg<String> _
) implements TfArg<String> {
  MagicNetworkMonitoringRuleZscoreSensitivity.variable(String name)
    : this._(TfArg.variable(name));
  MagicNetworkMonitoringRuleZscoreSensitivity.expression(String template)
    : this._(TfArg.expression(template));
  const MagicNetworkMonitoringRuleZscoreSensitivity.arg(TfArg<String> arg)
    : this._(arg);

  static const low = MagicNetworkMonitoringRuleZscoreSensitivity._(
    TfArgLiteral('low'),
  );
  static const medium = MagicNetworkMonitoringRuleZscoreSensitivity._(
    TfArgLiteral('medium'),
  );
  static const high = MagicNetworkMonitoringRuleZscoreSensitivity._(
    TfArgLiteral('high'),
  );

  static const List<MagicNetworkMonitoringRuleZscoreSensitivity> values = [
    low,
    medium,
    high,
  ];
}

/// Magic Network Monitoring Rule Zscore enum for `zscore_target`.
extension type const MagicNetworkMonitoringRuleZscoreTarget._(TfArg<String> _)
    implements TfArg<String> {
  MagicNetworkMonitoringRuleZscoreTarget.variable(String name)
    : this._(TfArg.variable(name));
  MagicNetworkMonitoringRuleZscoreTarget.expression(String template)
    : this._(TfArg.expression(template));
  const MagicNetworkMonitoringRuleZscoreTarget.arg(TfArg<String> arg)
    : this._(arg);

  static const bits = MagicNetworkMonitoringRuleZscoreTarget._(
    TfArgLiteral('bits'),
  );
  static const packets = MagicNetworkMonitoringRuleZscoreTarget._(
    TfArgLiteral('packets'),
  );

  static const List<MagicNetworkMonitoringRuleZscoreTarget> values = [
    bits,
    packets,
  ];
}

/// Factory wrapper for `cloudflare_magic_network_monitoring_rule`.
///
/// Accepted Permissions
///
/// - `Magic Network Monitoring Admin` - `Magic Network Monitoring Config Read`
/// - `Magic Network Monitoring Config Write`
final class CloudflareMagicNetworkMonitoringRule extends Resource {
  static const String tfType = 'cloudflare_magic_network_monitoring_rule';

  CloudflareMagicNetworkMonitoringRule(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<bool> automaticAdvertisement,
    TfArg<num>? bandwidthThreshold,
    MagicNetworkMonitoringRuleDuration? duration,
    required TfArg<String> name,
    TfArg<num>? packetThreshold,
    MagicNetworkMonitoringRulePrefixMatch? prefixMatch,
    required TfArg<List<String>> prefixes,
    required MagicNetworkMonitoringRuleType type,
    MagicNetworkMonitoringRuleZscoreSensitivity? zscoreSensitivity,
    MagicNetworkMonitoringRuleZscoreTarget? zscoreTarget,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'automatic_advertisement': automaticAdvertisement,
           'bandwidth_threshold': ?bandwidthThreshold,
           'duration': ?duration,
           'name': name,
           'packet_threshold': ?packetThreshold,
           'prefix_match': ?prefixMatch,
           'prefixes': prefixes,
           'type': type,
           'zscore_sensitivity': ?zscoreSensitivity,
           'zscore_target': ?zscoreTarget,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicNetworkMonitoringRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicNetworkMonitoringRule>`.
  RefTo<CloudflareMagicNetworkMonitoringRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

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
