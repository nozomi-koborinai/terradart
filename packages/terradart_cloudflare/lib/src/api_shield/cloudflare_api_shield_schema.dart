// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_schema`.
const Set<String> _cloudflareApiShieldSchemaSensitive = <String>{};

/// Api Shield Schema enum for `kind`.
enum ApiShieldSchemaKind implements TerraformEnum {
  openapiV3('openapi_v3');

  const ApiShieldSchemaKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// Api Shield Schema Validation enum for `validation_enabled`.
enum ApiShieldSchemaValidationEnabled implements TerraformEnum {
  trueCase('true'),
  falseCase('false');

  const ApiShieldSchemaValidationEnabled(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_api_shield_schema`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareApiShieldSchema extends Resource {
  static const String tfType = 'cloudflare_api_shield_schema';

  CloudflareApiShieldSchema({
    required super.localName,
    required TfArg<String> file,
    required TfArg<ApiShieldSchemaKind> kind,
    TfArg<String>? name,
    TfArg<bool>? omitSource,
    TfArg<String>? schemaId,
    TfArg<ApiShieldSchemaValidationEnabled>? validationEnabled,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file': file,
           'kind': kind,
           if (name != null) 'name': name,
           if (omitSource != null) 'omit_source': omitSource,
           if (schemaId != null) 'schema_id': schemaId,
           if (validationEnabled != null)
             'validation_enabled': validationEnabled,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareApiShieldSchema>`.
  RefTo<CloudflareApiShieldSchema> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
