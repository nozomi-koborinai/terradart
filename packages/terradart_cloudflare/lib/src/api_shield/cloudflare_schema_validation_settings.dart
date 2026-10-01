// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_schema_validation_settings`.
const Set<String> _cloudflareSchemaValidationSettingsSensitive = <String>{};

/// Schema Validation Settings Validation Default Mitigation enum for `validation_default_mitigation_action`.
extension type const SchemaValidationSettingsValidationDefaultMitigationAction._(
  TfArg<String> _
) implements TfArg<String> {
  SchemaValidationSettingsValidationDefaultMitigationAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SchemaValidationSettingsValidationDefaultMitigationAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SchemaValidationSettingsValidationDefaultMitigationAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none =
      SchemaValidationSettingsValidationDefaultMitigationAction._(
        TfArgLiteral('none'),
      );
  static const log =
      SchemaValidationSettingsValidationDefaultMitigationAction._(
        TfArgLiteral('log'),
      );
  static const block =
      SchemaValidationSettingsValidationDefaultMitigationAction._(
        TfArgLiteral('block'),
      );

  static const List<SchemaValidationSettingsValidationDefaultMitigationAction>
  values = [none, log, block];
}

/// Schema Validation Settings Validation Override Mitigation enum for `validation_override_mitigation_action`.
extension type const SchemaValidationSettingsValidationOverrideMitigationAction._(
  TfArg<String> _
) implements TfArg<String> {
  SchemaValidationSettingsValidationOverrideMitigationAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SchemaValidationSettingsValidationOverrideMitigationAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SchemaValidationSettingsValidationOverrideMitigationAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none =
      SchemaValidationSettingsValidationOverrideMitigationAction._(
        TfArgLiteral('none'),
      );

  static const List<SchemaValidationSettingsValidationOverrideMitigationAction>
  values = [none];
}

/// Factory wrapper for `cloudflare_schema_validation_settings`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class CloudflareSchemaValidationSettings extends Resource {
  static const String tfType = 'cloudflare_schema_validation_settings';

  CloudflareSchemaValidationSettings(
    super.localName, {
    required SchemaValidationSettingsValidationDefaultMitigationAction
    validationDefaultMitigationAction,
    SchemaValidationSettingsValidationOverrideMitigationAction?
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

  /// Reference to `validation_default_mitigation_action` attribute.
  TfRef<String> get validationDefaultMitigationAction =>
      TfRef.attribute<String>(this, 'validation_default_mitigation_action');

  /// Reference to `validation_override_mitigation_action` attribute.
  TfRef<String> get validationOverrideMitigationAction =>
      TfRef.attribute<String>(this, 'validation_override_mitigation_action');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
