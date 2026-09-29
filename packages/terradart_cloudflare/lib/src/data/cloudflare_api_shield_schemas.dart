// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
  Set<String> get sensitiveFields => _cloudflareApiShieldSchemasSensitive;
}
