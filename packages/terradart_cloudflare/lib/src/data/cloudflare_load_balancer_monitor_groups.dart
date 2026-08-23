// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer_monitor_groups`.
const Set<String> _cloudflareLoadBalancerMonitorGroupsSensitive = <String>{};

/// Factory wrapper for `cloudflare_load_balancer_monitor_groups`.
final class DataCloudflareLoadBalancerMonitorGroups extends Data {
  static const String tfType = 'cloudflare_load_balancer_monitor_groups';

  DataCloudflareLoadBalancerMonitorGroups({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareLoadBalancerMonitorGroupsSensitive;
}
