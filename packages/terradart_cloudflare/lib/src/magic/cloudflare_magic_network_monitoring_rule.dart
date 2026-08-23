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
final class CloudflareMagicNetworkMonitoringRule extends Resource {
  static const String tfType = 'cloudflare_magic_network_monitoring_rule';

  CloudflareMagicNetworkMonitoringRule({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<bool> automaticAdvertisement,
    TfArg<num>? bandwidthThreshold,
    TfArg<String>? duration,
    required TfArg<String> name,
    TfArg<num>? packetThreshold,
    TfArg<String>? prefixMatch,
    required TfArg<List<String>> prefixes,
    required TfArg<String> type,
    TfArg<String>? zscoreSensitivity,
    TfArg<String>? zscoreTarget,
    super.lifecycle,
    super.dependsOn,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
