// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? monitor,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'monitor': ?monitor,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerPoolsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `monitor` attribute.
  TfRef<String> get monitor => TfRef.attribute<String>(this, 'monitor');
}
