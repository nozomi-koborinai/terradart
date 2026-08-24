// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_schema_validation_operation_settings_list`.
const Set<String> _cloudflareSchemaValidationOperationSettingsListSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_schema_validation_operation_settings_list`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareSchemaValidationOperationSettingsList extends Data {
  static const String tfType =
      'cloudflare_schema_validation_operation_settings_list';

  DataCloudflareSchemaValidationOperationSettingsList({
    required super.localName,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationOperationSettingsListSensitive;
}
