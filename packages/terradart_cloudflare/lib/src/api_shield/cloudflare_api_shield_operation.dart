// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_operation`.
const Set<String> _cloudflareApiShieldOperationSensitive = <String>{};

/// Api Shield Operation enum for `feature`.
extension type const ApiShieldOperationFeature._(TfArg<String> _)
    implements TfArg<String> {
  ApiShieldOperationFeature.variable(String name)
    : this._(TfArg.variable(name));
  ApiShieldOperationFeature.expression(String template)
    : this._(TfArg.expression(template));
  const ApiShieldOperationFeature.arg(TfArg<String> arg) : this._(arg);

  static const thresholds = ApiShieldOperationFeature._(
    TfArgLiteral('thresholds'),
  );
  static const parameterSchemas = ApiShieldOperationFeature._(
    TfArgLiteral('parameter_schemas'),
  );
  static const schemaInfo = ApiShieldOperationFeature._(
    TfArgLiteral('schema_info'),
  );
  static const confidenceIntervals = ApiShieldOperationFeature._(
    TfArgLiteral('confidence_intervals'),
  );

  static const List<ApiShieldOperationFeature> values = [
    thresholds,
    parameterSchemas,
    schemaInfo,
    confidenceIntervals,
  ];
}

/// Api Shield Operation enum for `method`.
extension type const ApiShieldOperationMethod._(TfArg<String> _)
    implements TfArg<String> {
  ApiShieldOperationMethod.variable(String name) : this._(TfArg.variable(name));
  ApiShieldOperationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const ApiShieldOperationMethod.arg(TfArg<String> arg) : this._(arg);

  static const get = ApiShieldOperationMethod._(TfArgLiteral('GET'));
  static const post = ApiShieldOperationMethod._(TfArgLiteral('POST'));
  static const head = ApiShieldOperationMethod._(TfArgLiteral('HEAD'));
  static const options = ApiShieldOperationMethod._(TfArgLiteral('OPTIONS'));
  static const put = ApiShieldOperationMethod._(TfArgLiteral('PUT'));
  static const delete = ApiShieldOperationMethod._(TfArgLiteral('DELETE'));
  static const connect = ApiShieldOperationMethod._(TfArgLiteral('CONNECT'));
  static const patch = ApiShieldOperationMethod._(TfArgLiteral('PATCH'));
  static const trace = ApiShieldOperationMethod._(TfArgLiteral('TRACE'));

  static const List<ApiShieldOperationMethod> values = [
    get,
    post,
    head,
    options,
    put,
    delete,
    connect,
    patch,
    trace,
  ];
}

/// Factory wrapper for `cloudflare_api_shield_operation`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareApiShieldOperation extends Resource {
  static const String tfType = 'cloudflare_api_shield_operation';

  CloudflareApiShieldOperation(
    super.localName, {
    required TfArg<String> endpoint,
    List<ApiShieldOperationFeature>? feature,
    required TfArg<String> host,
    required ApiShieldOperationMethod method,
    TfArg<bool>? withSchemas,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint': endpoint,
           if (feature != null)
             'feature': TfArg.literal([for (final e in feature) e.toTfJson()]),
           'host': host,
           'method': method,
           'with_schemas': ?withSchemas,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldOperationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareApiShieldOperation>`.
  RefTo<CloudflareApiShieldOperation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `feature` attribute.
  TfRef<List<String>> get feature =>
      TfRef.attribute<List<String>>(this, 'feature');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `method` attribute.
  TfRef<String> get method => TfRef.attribute<String>(this, 'method');

  /// Reference to `with_schemas` attribute.
  TfRef<bool> get withSchemas => TfRef.attribute<bool>(this, 'with_schemas');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
