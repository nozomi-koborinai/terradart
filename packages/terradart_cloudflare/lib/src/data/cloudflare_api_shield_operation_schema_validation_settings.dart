// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_api_shield_operation_schema_validation_settings.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'operation_id': operationId,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldOperationSchemaValidationSettingsSensitive;

  /// A reference to the `cloudflare_api_shield_operation_schema_validation_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareApiShieldOperationSchemaValidationSettings>`.
  RefTo<CloudflareApiShieldOperationSchemaValidationSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `mitigation_action` attribute.
  TfRef<String> get mitigationAction =>
      TfRef.attribute<String>(this, 'mitigation_action');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationIdRef =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
