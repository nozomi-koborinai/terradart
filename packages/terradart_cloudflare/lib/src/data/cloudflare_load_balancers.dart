// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancers`.
const Set<String> _cloudflareLoadBalancersSensitive = <String>{};

/// Factory wrapper for `cloudflare_load_balancers`.
///
/// Accepted Permissions
///
/// - `Load Balancers Read` - `Load Balancers Write`
final class DataCloudflareLoadBalancers extends Data {
  static const String tfType = 'cloudflare_load_balancers';

  DataCloudflareLoadBalancers({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancersSensitive;
}
