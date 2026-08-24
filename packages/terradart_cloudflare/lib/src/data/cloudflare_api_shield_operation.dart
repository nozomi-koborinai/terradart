// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? direction;

  final TfArg<String>? endpoint;

  final TfArg<List<Object?>>? feature;

  final TfArg<List<Object?>>? host;

  final TfArg<List<Object?>>? method;

  final TfArg<String>? order;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (endpoint != null) 'endpoint': endpoint!.toTfJson(),
    if (feature != null) 'feature': feature!.toTfJson(),
    if (host != null) 'host': host!.toTfJson(),
    if (method != null) 'method': method!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_api_shield_operation`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldOperation extends Data {
  static const String tfType = 'cloudflare_api_shield_operation';

  DataCloudflareApiShieldOperation({
    required super.localName,
    TfArg<List<String>>? feature,
    TfArg<String>? operationId,
    TfArg<bool>? withSchemas,
    TfArg<String>? zoneId,
    DataApiShieldOperationFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (feature != null) 'feature': feature,
           if (operationId != null) 'operation_id': operationId,
           if (withSchemas != null) 'with_schemas': withSchemas,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldOperationSensitive;

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
}
