// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_operation_schema_validation_settings`.
const Set<String>
_cloudflareApiShieldOperationSchemaValidationSettingsSensitive = <String>{};

/// Api Shield Operation Schema Validation Settings Mitigation enum for `mitigation_action`.
enum ApiShieldOperationSchemaValidationSettingsMitigationAction
    implements TerraformEnum {
  log('log'),
  block('block'),
  none('none');

  const ApiShieldOperationSchemaValidationSettingsMitigationAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

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

  CloudflareApiShieldOperationSchemaValidationSettings(
    super.localName, {
    TfArg<ApiShieldOperationSchemaValidationSettingsMitigationAction>?
    mitigationAction,
    required TfArg<String> operationId,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mitigation_action': ?mitigationAction,
           'operation_id': operationId,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldOperationSchemaValidationSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareApiShieldOperationSchemaValidationSettings>`.
  RefTo<CloudflareApiShieldOperationSchemaValidationSettings> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `mitigation_action` attribute.
  TfRef<String> get mitigationAction =>
      TfRef.attribute<String>(this, 'mitigation_action');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
