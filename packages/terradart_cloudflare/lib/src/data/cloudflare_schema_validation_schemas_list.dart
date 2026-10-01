// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_schema_validation_schemas_list`.
const Set<String> _cloudflareSchemaValidationSchemasListSensitive = <String>{};

/// Factory wrapper for `cloudflare_schema_validation_schemas_list`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareSchemaValidationSchemasList extends Data {
  static const String tfType = 'cloudflare_schema_validation_schemas_list';

  DataCloudflareSchemaValidationSchemasList({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<bool>? omitSource,
    TfArg<bool>? validationEnabled,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'max_items': ?maxItems,
           'omit_source': ?omitSource,
           'validation_enabled': ?validationEnabled,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationSchemasListSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `omit_source` attribute.
  TfRef<bool> get omitSource => TfRef.attribute<bool>(this, 'omit_source');

  /// Reference to `validation_enabled` attribute.
  TfRef<bool> get validationEnabled =>
      TfRef.attribute<bool>(this, 'validation_enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
