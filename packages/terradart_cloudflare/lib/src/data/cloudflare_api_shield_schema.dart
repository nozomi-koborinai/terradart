// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_api_shield_schema.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'omit_source': ?omitSource,
           'schema_id': schemaId,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldSchemaSensitive;

  /// A reference to the `cloudflare_api_shield_schema` this data source reads, for
  /// arguments typed `RefTo<CloudflareApiShieldSchema>`.
  RefTo<CloudflareApiShieldSchema> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

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
