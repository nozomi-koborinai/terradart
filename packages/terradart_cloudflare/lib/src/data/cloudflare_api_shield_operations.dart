// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_operations`.
const Set<String> _cloudflareApiShieldOperationsSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_shield_operations`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldOperations extends Data {
  static const String tfType = 'cloudflare_api_shield_operations';

  DataCloudflareApiShieldOperations({
    required super.localName,
    TfArg<String>? direction,
    TfArg<String>? endpoint,
    TfArg<List<String>>? feature,
    TfArg<List<String>>? host,
    TfArg<num>? maxItems,
    TfArg<List<String>>? method,
    TfArg<String>? order,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'endpoint': ?endpoint,
           'feature': ?feature,
           'host': ?host,
           'max_items': ?maxItems,
           'method': ?method,
           'order': ?order,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldOperationsSensitive;

  /// Reference to `direction` attribute.
  TfRef<String> get directionRef => TfRef.attribute<String>(this, 'direction');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpointRef => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `feature` attribute.
  TfRef<List<String>> get featureRef =>
      TfRef.attribute<List<String>>(this, 'feature');

  /// Reference to `host` attribute.
  TfRef<List<String>> get hostRef =>
      TfRef.attribute<List<String>>(this, 'host');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `method` attribute.
  TfRef<List<String>> get methodRef =>
      TfRef.attribute<List<String>>(this, 'method');

  /// Reference to `order` attribute.
  TfRef<String> get orderRef => TfRef.attribute<String>(this, 'order');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
