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
final class CloudflareSchemaValidationOperationSettings extends Resource {
  static const String tfType =
      'cloudflare_schema_validation_operation_settings';

  CloudflareSchemaValidationOperationSettings({
    required super.localName,
    required TfArg<String> mitigationAction,
    required TfArg<String> operationId,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mitigation_action': mitigationAction,
           'operation_id': operationId,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationOperationSettingsSensitive;
}
