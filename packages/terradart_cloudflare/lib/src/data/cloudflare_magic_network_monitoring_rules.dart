// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_network_monitoring_rules`.
const Set<String> _cloudflareMagicNetworkMonitoringRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_network_monitoring_rules`.
///
/// Accepted Permissions
///
/// - `Magic Network Monitoring Admin` - `Magic Network Monitoring Config Read`
/// - `Magic Network Monitoring Config Write`
final class DataCloudflareMagicNetworkMonitoringRules extends Data {
  static const String tfType = 'cloudflare_magic_network_monitoring_rules';

  DataCloudflareMagicNetworkMonitoringRules({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicNetworkMonitoringRulesSensitive;
}
