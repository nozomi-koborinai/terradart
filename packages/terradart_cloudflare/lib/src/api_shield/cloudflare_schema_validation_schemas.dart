// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_schema_validation_schemas`.
const Set<String> _cloudflareSchemaValidationSchemasSensitive = <String>{};

/// Factory wrapper for `cloudflare_schema_validation_schemas`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareSchemaValidationSchemas extends Resource {
  static const String tfType = 'cloudflare_schema_validation_schemas';

  CloudflareSchemaValidationSchemas({
    required super.localName,
    required TfArg<String> kind,
    required TfArg<String> name,
    required TfArg<String> source,
    required TfArg<bool> validationEnabled,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kind': kind,
           'name': name,
           'source': source,
           'validation_enabled': validationEnabled,
           'zone_id': zoneId,
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

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaId => TfRef.attribute<String>(this, 'schema_id');
}
