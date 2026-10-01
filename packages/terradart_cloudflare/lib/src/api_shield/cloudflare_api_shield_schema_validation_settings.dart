// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_schema_validation_settings`.
const Set<String> _cloudflareApiShieldSchemaValidationSettingsSensitive =
    <String>{};

/// Api Shield Schema Validation Settings Validation Default Mitigation enum for `validation_default_mitigation_action`.
enum ApiShieldSchemaValidationSettingsValidationDefaultMitigationAction
    implements TerraformEnum {
  none('none'),
  log('log'),
  block('block');

  const ApiShieldSchemaValidationSettingsValidationDefaultMitigationAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Api Shield Schema Validation Settings Validation Override Mitigation enum for `validation_override_mitigation_action`.
enum ApiShieldSchemaValidationSettingsValidationOverrideMitigationAction
    implements TerraformEnum {
  none('none'),
  disableOverride('disable_override');

  const ApiShieldSchemaValidationSettingsValidationOverrideMitigationAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_api_shield_schema_validation_settings`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareApiShieldSchemaValidationSettings extends Resource {
  static const String tfType =
      'cloudflare_api_shield_schema_validation_settings';

  CloudflareApiShieldSchemaValidationSettings(
    super.localName, {
    required TfArg<
      ApiShieldSchemaValidationSettingsValidationDefaultMitigationAction
    >
    validationDefaultMitigationAction,
    TfArg<ApiShieldSchemaValidationSettingsValidationOverrideMitigationAction>?
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
      _cloudflareApiShieldSchemaValidationSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareApiShieldSchemaValidationSettings>`.
  RefTo<CloudflareApiShieldSchemaValidationSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `validation_default_mitigation_action` attribute.
  TfRef<String> get validationDefaultMitigationAction =>
      TfRef.attribute<String>(this, 'validation_default_mitigation_action');

  /// Reference to `validation_override_mitigation_action` attribute.
  TfRef<String> get validationOverrideMitigationAction =>
      TfRef.attribute<String>(this, 'validation_override_mitigation_action');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
