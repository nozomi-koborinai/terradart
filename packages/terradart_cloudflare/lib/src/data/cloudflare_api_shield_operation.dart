// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_api_shield_operation.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_operation`.
const Set<String> _cloudflareApiShieldOperationSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_api_shield_operation` (derived from provider schema).
@immutable
final class DataApiShieldOperationFilter {
  const DataApiShieldOperationFilter({
    this.direction,
    this.endpoint,
    this.feature,
    this.host,
    this.method,
    this.order,
  });

  final DataApiShieldOperationDirection? direction;

  final TfArg<String>? endpoint;

  final TfArg<List<String>>? feature;

  final TfArg<List<String>>? host;

  final TfArg<List<String>>? method;

  final DataApiShieldOperationOrder? order;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'endpoint': ?endpoint?.toTfJson(),
    'feature': ?feature?.toTfJson(),
    'host': ?host?.toTfJson(),
    'method': ?method?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataApiShieldOperationDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataApiShieldOperationDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataApiShieldOperationDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataApiShieldOperationDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataApiShieldOperationDirection._(TfArgLiteral('asc'));
  static const desc = DataApiShieldOperationDirection._(TfArgLiteral('desc'));

  static const List<DataApiShieldOperationDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataApiShieldOperationOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataApiShieldOperationOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataApiShieldOperationOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataApiShieldOperationOrder.arg(TfArg<String> arg) : this._(arg);

  static const method = DataApiShieldOperationOrder._(TfArgLiteral('method'));
  static const host = DataApiShieldOperationOrder._(TfArgLiteral('host'));
  static const endpoint = DataApiShieldOperationOrder._(
    TfArgLiteral('endpoint'),
  );
  static const thresholdsKey = DataApiShieldOperationOrder._(
    TfArgLiteral('thresholds.\$key'),
  );

  static const List<DataApiShieldOperationOrder> values = [
    method,
    host,
    endpoint,
    thresholdsKey,
  ];
}

/// Factory wrapper for `cloudflare_api_shield_operation`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldOperation extends Data {
  static const String tfType = 'cloudflare_api_shield_operation';

  DataCloudflareApiShieldOperation(
    super.localName, {
    TfArg<List<String>>? feature,
    TfArg<String>? operationId,
    TfArg<bool>? withSchemas,
    RefTo<CloudflareZone>? zoneId,
    DataApiShieldOperationFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feature': ?feature,
           'operation_id': ?operationId,
           'with_schemas': ?withSchemas,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldOperationSensitive;

  /// A reference to the `cloudflare_api_shield_operation` this data source reads, for
  /// arguments typed `RefTo<CloudflareApiShieldOperation>`.
  RefTo<CloudflareApiShieldOperation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `method` attribute.
  TfRef<String> get method => TfRef.attribute<String>(this, 'method');

  /// Reference to `feature` attribute.
  TfRef<List<String>> get feature =>
      TfRef.attribute<List<String>>(this, 'feature');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `with_schemas` attribute.
  TfRef<bool> get withSchemas => TfRef.attribute<bool>(this, 'with_schemas');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
