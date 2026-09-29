// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'diff': ?diff,
           'direction': ?direction,
           'endpoint': ?endpoint,
           'host': ?host,
           'max_items': ?maxItems,
           'method': ?method,
           'order': ?order,
           'origin': ?origin,
           'state': ?state,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldDiscoveryOperationsSensitive;
}
