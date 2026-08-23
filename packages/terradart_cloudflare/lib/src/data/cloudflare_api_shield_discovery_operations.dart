// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_shield_discovery_operations`.
const Set<String> _cloudflareApiShieldDiscoveryOperationsSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_shield_discovery_operations`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldDiscoveryOperations extends Data {
  static const String tfType = 'cloudflare_api_shield_discovery_operations';

  DataCloudflareApiShieldDiscoveryOperations({
    required super.localName,
    TfArg<bool>? diff,
    TfArg<String>? direction,
    TfArg<String>? endpoint,
    TfArg<List<String>>? host,
    TfArg<num>? maxItems,
    TfArg<List<String>>? method,
    TfArg<String>? order,
    TfArg<String>? origin,
    TfArg<String>? state,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (diff != null) 'diff': diff,
           if (direction != null) 'direction': direction,
           if (endpoint != null) 'endpoint': endpoint,
           if (host != null) 'host': host,
           if (maxItems != null) 'max_items': maxItems,
           if (method != null) 'method': method,
           if (order != null) 'order': order,
           if (origin != null) 'origin': origin,
           if (state != null) 'state': state,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldDiscoveryOperationsSensitive;
}
