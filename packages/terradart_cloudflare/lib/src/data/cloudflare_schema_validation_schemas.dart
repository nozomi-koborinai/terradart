// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_schema_validation_schemas.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_schema_validation_schemas`.
const Set<String> _cloudflareSchemaValidationSchemasSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_schema_validation_schemas` (derived from provider schema).
@immutable
final class DataSchemaValidationSchemasFilter {
  const DataSchemaValidationSchemasFilter({this.validationEnabled});

  final TfArg<bool>? validationEnabled;

  @internal
  Map<String, Object?> encode() => {
    'validation_enabled': ?validationEnabled?.toTfJson(),
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

  DataCloudflareSchemaValidationSchemas(
    super.localName, {
    TfArg<bool>? omitSource,
    TfArg<String>? schemaId,
    RefTo<CloudflareZone>? zoneId,
    DataSchemaValidationSchemasFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'omit_source': ?omitSource,
           'schema_id': ?schemaId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationSchemasSensitive;

  /// A reference to the `cloudflare_schema_validation_schemas` this data source reads, for
  /// arguments typed `RefTo<CloudflareSchemaValidationSchemas>`.
  RefTo<CloudflareSchemaValidationSchemas> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `validation_enabled` attribute.
  TfRef<bool> get validationEnabled =>
      TfRef.attribute<bool>(this, 'validation_enabled');

  /// Reference to `omit_source` attribute.
  TfRef<bool> get omitSource => TfRef.attribute<bool>(this, 'omit_source');

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaId => TfRef.attribute<String>(this, 'schema_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
