// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_shield_operation_schema_validation_settings`.
const Set<String>
_cloudflareApiShieldOperationSchemaValidationSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_shield_operation_schema_validation_settings`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareApiShieldOperationSchemaValidationSettings
    extends Resource {
  static const String tfType =
      'cloudflare_api_shield_operation_schema_validation_settings';

  CloudflareApiShieldOperationSchemaValidationSettings({
    required super.localName,
    TfArg<String>? mitigationAction,
    required TfArg<String> operationId,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (mitigationAction != null) 'mitigation_action': mitigationAction,
           'operation_id': operationId,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldOperationSchemaValidationSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
