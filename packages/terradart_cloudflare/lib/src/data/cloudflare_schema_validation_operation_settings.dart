// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_schema_validation_operation_settings.dart';

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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'operation_id': operationId, 'zone_id': ?zoneId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationOperationSettingsSensitive;

  /// A reference to the `cloudflare_schema_validation_operation_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareSchemaValidationOperationSettings>`.
  RefTo<CloudflareSchemaValidationOperationSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `mitigation_action` attribute.
  TfRef<String> get mitigationAction =>
      TfRef.attribute<String>(this, 'mitigation_action');
}
