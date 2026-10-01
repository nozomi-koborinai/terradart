// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_schema_validation_schemas`.
const Set<String> _cloudflareSchemaValidationSchemasSensitive = <String>{};

/// Schema Validation Schemas enum for `kind`.
extension type const SchemaValidationSchemasKind._(TfArg<String> _)
    implements TfArg<String> {
  SchemaValidationSchemasKind.variable(String name)
    : this._(TfArg.variable(name));
  SchemaValidationSchemasKind.expression(String template)
    : this._(TfArg.expression(template));
  const SchemaValidationSchemasKind.arg(TfArg<String> arg) : this._(arg);

  static const openapiV3 = SchemaValidationSchemasKind._(
    TfArgLiteral('openapi_v3'),
  );

  static const List<SchemaValidationSchemasKind> values = [openapiV3];
}

/// Factory wrapper for `cloudflare_schema_validation_schemas`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareSchemaValidationSchemas extends Resource {
  static const String tfType = 'cloudflare_schema_validation_schemas';

  CloudflareSchemaValidationSchemas(
    super.localName, {
    required SchemaValidationSchemasKind kind,
    required TfArg<String> name,
    TfArg<bool>? omitSource,
    required TfArg<String> source,
    required TfArg<bool> validationEnabled,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kind': kind,
           'name': name,
           'omit_source': ?omitSource,
           'source': source,
           'validation_enabled': validationEnabled,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationSchemasSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareSchemaValidationSchemas>`.
  RefTo<CloudflareSchemaValidationSchemas> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaId => TfRef.attribute<String>(this, 'schema_id');

  /// Reference to `omit_source` attribute.
  TfRef<bool> get omitSource => TfRef.attribute<bool>(this, 'omit_source');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `validation_enabled` attribute.
  TfRef<bool> get validationEnabled =>
      TfRef.attribute<bool>(this, 'validation_enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
