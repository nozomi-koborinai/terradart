// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_schema_validation_operation_settings`.
const Set<String> _cloudflareSchemaValidationOperationSettingsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_schema_validation_operation_settings`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareSchemaValidationOperationSettings extends Data {
  static const String tfType =
      'cloudflare_schema_validation_operation_settings';

  DataCloudflareSchemaValidationOperationSettings({
    required super.localName,
    required TfArg<String> operationId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'operation_id': operationId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationOperationSettingsSensitive;

  /// Reference to `mitigation_action` attribute.
  TfRef<String> get mitigationAction =>
      TfRef.attribute<String>(this, 'mitigation_action');
}
