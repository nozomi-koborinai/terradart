// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_schema_validation_settings`.
const Set<String> _cloudflareSchemaValidationSettingsSensitive = <String>{};

/// Schema Validation Settings Validation Default Mitigation enum for `validation_default_mitigation_action`.
enum SchemaValidationSettingsValidationDefaultMitigationAction
    implements TerraformEnum {
  none('none'),
  log('log'),
  block('block');

  const SchemaValidationSettingsValidationDefaultMitigationAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Schema Validation Settings Validation Override Mitigation enum for `validation_override_mitigation_action`.
enum SchemaValidationSettingsValidationOverrideMitigationAction
    implements TerraformEnum {
  none('none');

  const SchemaValidationSettingsValidationOverrideMitigationAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_schema_validation_settings`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareSchemaValidationSettings extends Resource {
  static const String tfType = 'cloudflare_schema_validation_settings';

  CloudflareSchemaValidationSettings({
    required super.localName,
    required TfArg<SchemaValidationSettingsValidationDefaultMitigationAction>
    validationDefaultMitigationAction,
    TfArg<SchemaValidationSettingsValidationOverrideMitigationAction>?
    validationOverrideMitigationAction,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'validation_default_mitigation_action':
               validationDefaultMitigationAction,
           'validation_override_mitigation_action':
               ?validationOverrideMitigationAction,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareSchemaValidationSettings>`.
  RefTo<CloudflareSchemaValidationSettings> get ref => RefTo.of(this);
}
