// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_schema_validation_schemas`.
const Set<String> _cloudflareSchemaValidationSchemasSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_schema_validation_schemas` (derived from provider schema).
@immutable
final class DataSchemaValidationSchemasFilter {
  const DataSchemaValidationSchemasFilter({this.validationEnabled});

  final TfArg<bool>? validationEnabled;

  Map<String, Object?> encode() => {
    if (validationEnabled != null)
      'validation_enabled': validationEnabled!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_schema_validation_schemas`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareSchemaValidationSchemas extends Data {
  static const String tfType = 'cloudflare_schema_validation_schemas';

  DataCloudflareSchemaValidationSchemas({
    required super.localName,
    TfArg<bool>? omitSource,
    TfArg<String>? schemaId,
    TfArg<String>? zoneId,
    DataSchemaValidationSchemasFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (omitSource != null) 'omit_source': omitSource,
           if (schemaId != null) 'schema_id': schemaId,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationSchemasSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `validation_enabled` attribute.
  TfRef<bool> get validationEnabled =>
      TfRef.attribute<bool>(this, 'validation_enabled');
}
