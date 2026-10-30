// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_operations`.
const Set<String> _cloudflareApiShieldOperationsSensitive = <String>{};

/// Data Api Shield Operations enum for `direction`.
extension type const DataApiShieldOperationsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataApiShieldOperationsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataApiShieldOperationsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataApiShieldOperationsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataApiShieldOperationsDirection._(TfArgLiteral('asc'));
  static const desc = DataApiShieldOperationsDirection._(TfArgLiteral('desc'));

  static const List<DataApiShieldOperationsDirection> values = [asc, desc];
}

/// Data Api Shield Operations enum for `order`.
extension type const DataApiShieldOperationsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataApiShieldOperationsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataApiShieldOperationsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataApiShieldOperationsOrder.arg(TfArg<String> arg) : this._(arg);

  static const method = DataApiShieldOperationsOrder._(TfArgLiteral('method'));
  static const host = DataApiShieldOperationsOrder._(TfArgLiteral('host'));
  static const endpoint = DataApiShieldOperationsOrder._(
    TfArgLiteral('endpoint'),
  );
  static const thresholdsKey = DataApiShieldOperationsOrder._(
    TfArgLiteral('thresholds.＄key'),
  );

  static const List<DataApiShieldOperationsOrder> values = [
    method,
    host,
    endpoint,
    thresholdsKey,
  ];
}

/// Factory wrapper for `cloudflare_api_shield_operations`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldOperations extends Data {
  static const String tfType = 'cloudflare_api_shield_operations';

  DataCloudflareApiShieldOperations(
    super.localName, {
    DataApiShieldOperationsDirection? direction,
    TfArg<String>? endpoint,
    TfArg<List<String>>? feature,
    TfArg<List<String>>? host,
    TfArg<num>? maxItems,
    TfArg<List<String>>? method,
    DataApiShieldOperationsOrder? order,
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
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `feature` attribute.
  TfRef<List<String>> get feature =>
      TfRef.attribute<List<String>>(this, 'feature');

  /// Reference to `host` attribute.
  TfRef<List<String>> get host => TfRef.attribute<List<String>>(this, 'host');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `method` attribute.
  TfRef<List<String>> get method =>
      TfRef.attribute<List<String>>(this, 'method');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
