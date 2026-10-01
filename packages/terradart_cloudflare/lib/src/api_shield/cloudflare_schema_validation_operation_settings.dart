// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_schema_validation_operation_settings`.
const Set<String> _cloudflareSchemaValidationOperationSettingsSensitive =
    <String>{};

/// Schema Validation Operation Settings Mitigation enum for `mitigation_action`.
enum SchemaValidationOperationSettingsMitigationAction
    implements TerraformEnum {
  log('log'),
  block('block'),
  none('none');

  const SchemaValidationOperationSettingsMitigationAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_schema_validation_operation_settings`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareSchemaValidationOperationSettings extends Resource {
  static const String tfType =
      'cloudflare_schema_validation_operation_settings';

  CloudflareSchemaValidationOperationSettings(
    super.localName, {
    required TfArg<SchemaValidationOperationSettingsMitigationAction>
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
           'mitigation_action': mitigationAction,
           'operation_id': operationId,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationOperationSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareSchemaValidationOperationSettings>`.
  RefTo<CloudflareSchemaValidationOperationSettings> get ref => RefTo.of(this);

  /// Reference to `mitigation_action` attribute.
  TfRef<String> get mitigationAction =>
      TfRef.attribute<String>(this, 'mitigation_action');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
