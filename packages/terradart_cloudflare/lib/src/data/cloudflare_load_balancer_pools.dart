// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer_pools`.
const Set<String> _cloudflareLoadBalancerPoolsSensitive = <String>{};

/// Factory wrapper for `cloudflare_load_balancer_pools`.
///
/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read` - `Load Balancing: Monitors and
/// Pools Write`
final class DataCloudflareLoadBalancerPools extends Data {
  static const String tfType = 'cloudflare_load_balancer_pools';

  DataCloudflareLoadBalancerPools({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? monitor,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'max_items': ?maxItems,
           'monitor': ?monitor,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerPoolsSensitive;
}
