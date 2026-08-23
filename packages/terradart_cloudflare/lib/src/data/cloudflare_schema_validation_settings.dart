// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_schema_validation_settings`.
const Set<String> _cloudflareSchemaValidationSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_schema_validation_settings`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareSchemaValidationSettings extends Data {
  static const String tfType = 'cloudflare_schema_validation_settings';

  DataCloudflareSchemaValidationSettings({
    required super.localName,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationSettingsSensitive;

  /// Reference to `validation_default_mitigation_action` attribute.
  TfRef<String> get validationDefaultMitigationAction =>
      TfRef.attribute<String>(this, 'validation_default_mitigation_action');

  /// Reference to `validation_override_mitigation_action` attribute.
  TfRef<String> get validationOverrideMitigationAction =>
      TfRef.attribute<String>(this, 'validation_override_mitigation_action');
}
