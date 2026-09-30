// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_operation`.
const Set<String> _cloudflareApiShieldOperationSensitive = <String>{};

/// Api Shield Operation enum for `feature`.
enum ApiShieldOperationFeature implements TerraformEnum {
  thresholds('thresholds'),
  parameterSchemas('parameter_schemas'),
  schemaInfo('schema_info'),
  confidenceIntervals('confidence_intervals');

  const ApiShieldOperationFeature(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Shield Operation enum for `method`.
enum ApiShieldOperationMethod implements TerraformEnum {
  get('GET'),
  post('POST'),
  head('HEAD'),
  options('OPTIONS'),
  put('PUT'),
  delete('DELETE'),
  connect('CONNECT'),
  patch('PATCH'),
  trace('TRACE');

  const ApiShieldOperationMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_api_shield_operation`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareApiShieldOperation extends Resource {
  static const String tfType = 'cloudflare_api_shield_operation';

  CloudflareApiShieldOperation({
    required super.localName,
    required TfArg<String> endpoint,
    List<TfArg<ApiShieldOperationFeature>>? feature,
    required TfArg<String> host,
    required TfArg<ApiShieldOperationMethod> method,
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
  TfRef<String> get endpointRef => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `feature` attribute.
  TfRef<List<String>> get featureRef =>
      TfRef.attribute<List<String>>(this, 'feature');

  /// Reference to `host` attribute.
  TfRef<String> get hostRef => TfRef.attribute<String>(this, 'host');

  /// Reference to `method` attribute.
  TfRef<String> get methodRef => TfRef.attribute<String>(this, 'method');

  /// Reference to `with_schemas` attribute.
  TfRef<bool> get withSchemasRef => TfRef.attribute<bool>(this, 'with_schemas');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
