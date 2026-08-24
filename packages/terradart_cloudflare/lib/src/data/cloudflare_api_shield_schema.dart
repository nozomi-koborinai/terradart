// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_shield_schema`.
const Set<String> _cloudflareApiShieldSchemaSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_shield_schema`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldSchema extends Data {
  static const String tfType = 'cloudflare_api_shield_schema';

  DataCloudflareApiShieldSchema({
    required super.localName,
    TfArg<bool>? omitSource,
    required TfArg<String> schemaId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (omitSource != null) 'omit_source': omitSource,
           'schema_id': schemaId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldSchemaSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `validation_enabled` attribute.
  TfRef<bool> get validationEnabled =>
      TfRef.attribute<bool>(this, 'validation_enabled');
}
