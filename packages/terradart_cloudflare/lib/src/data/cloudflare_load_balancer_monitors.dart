// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer_monitors`.
const Set<String> _cloudflareLoadBalancerMonitorsSensitive = <String>{};

/// Factory wrapper for `cloudflare_load_balancer_monitors`.
///
/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read` - `Load Balancing: Monitors and
/// Pools Write`
final class DataCloudflareLoadBalancerMonitors extends Data {
  static const String tfType = 'cloudflare_load_balancer_monitors';

  DataCloudflareLoadBalancerMonitors({
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
  Set<String> get sensitiveFields => _cloudflareLoadBalancerMonitorsSensitive;
}
