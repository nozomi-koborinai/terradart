// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_shield_schemas`.
const Set<String> _cloudflareApiShieldSchemasSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_shield_schemas`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldSchemas extends Data {
  static const String tfType = 'cloudflare_api_shield_schemas';

  DataCloudflareApiShieldSchemas({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<bool>? omitSource,
    TfArg<bool>? validationEnabled,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           if (omitSource != null) 'omit_source': omitSource,
           if (validationEnabled != null)
             'validation_enabled': validationEnabled,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiShieldSchemasSensitive;
}
