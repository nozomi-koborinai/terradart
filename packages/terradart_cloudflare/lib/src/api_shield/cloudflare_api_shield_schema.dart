// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_schema`.
const Set<String> _cloudflareApiShieldSchemaSensitive = <String>{};

/// Api Shield Schema enum for `kind`.
extension type const ApiShieldSchemaKind._(TfArg<String> _)
    implements TfArg<String> {
  ApiShieldSchemaKind.variable(String name) : this._(TfArg.variable(name));
  ApiShieldSchemaKind.expression(String template)
    : this._(TfArg.expression(template));
  const ApiShieldSchemaKind.arg(TfArg<String> arg) : this._(arg);

  static const openapiV3 = ApiShieldSchemaKind._(TfArgLiteral('openapi_v3'));

  static const List<ApiShieldSchemaKind> values = [openapiV3];
}

/// Api Shield Schema Validation enum for `validation_enabled`.
extension type const ApiShieldSchemaValidationEnabled._(TfArg<String> _)
    implements TfArg<String> {
  ApiShieldSchemaValidationEnabled.variable(String name)
    : this._(TfArg.variable(name));
  ApiShieldSchemaValidationEnabled.expression(String template)
    : this._(TfArg.expression(template));
  const ApiShieldSchemaValidationEnabled.arg(TfArg<String> arg) : this._(arg);

  static const trueCase = ApiShieldSchemaValidationEnabled._(
    TfArgLiteral('true'),
  );
  static const falseCase = ApiShieldSchemaValidationEnabled._(
    TfArgLiteral('false'),
  );

  static const List<ApiShieldSchemaValidationEnabled> values = [
    trueCase,
    falseCase,
  ];
}

/// Factory wrapper for `cloudflare_api_shield_schema`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareApiShieldSchema extends Resource {
  static const String tfType = 'cloudflare_api_shield_schema';

  CloudflareApiShieldSchema(
    super.localName, {
    required TfArg<String> file,
    required ApiShieldSchemaKind kind,
    TfArg<String>? name,
    TfArg<bool>? omitSource,
    TfArg<String>? schemaId,
    ApiShieldSchemaValidationEnabled? validationEnabled,
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
           'name': ?name,
           'omit_source': ?omitSource,
           'schema_id': ?schemaId,
           'validation_enabled': ?validationEnabled,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareApiShieldSchema>`.
  RefTo<CloudflareApiShieldSchema> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `file` attribute.
  TfRef<String> get file => TfRef.attribute<String>(this, 'file');

  /// Reference to `omit_source` attribute.
  TfRef<bool> get omitSource => TfRef.attribute<bool>(this, 'omit_source');

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaId => TfRef.attribute<String>(this, 'schema_id');

  /// Reference to `validation_enabled` attribute.
  TfRef<String> get validationEnabled =>
      TfRef.attribute<String>(this, 'validation_enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
