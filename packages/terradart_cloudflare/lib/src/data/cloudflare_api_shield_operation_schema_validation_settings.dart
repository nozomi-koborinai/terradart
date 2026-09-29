// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_api_shield_operation_schema_validation_settings.dart';

/// Sensitive field paths for `cloudflare_api_shield_operation_schema_validation_settings`.
const Set<String>
_cloudflareApiShieldOperationSchemaValidationSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_shield_operation_schema_validation_settings`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldOperationSchemaValidationSettings
    extends Data {
  static const String tfType =
      'cloudflare_api_shield_operation_schema_validation_settings';

  DataCloudflareApiShieldOperationSchemaValidationSettings({
    required super.localName,
    required TfArg<String> operationId,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'operation_id': operationId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldOperationSchemaValidationSettingsSensitive;

  /// A reference to the `cloudflare_api_shield_operation_schema_validation_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareApiShieldOperationSchemaValidationSettings>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareApiShieldOperationSchemaValidationSettings> get ref =>
      RefTo.read(this);

  /// Reference to `mitigation_action` attribute.
  TfRef<String> get mitigationAction =>
      TfRef.attribute<String>(this, 'mitigation_action');
}
