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
final class CloudflareSchemaValidationSettings extends Resource {
  static const String tfType = 'cloudflare_schema_validation_settings';

  CloudflareSchemaValidationSettings({
    required super.localName,
    required TfArg<String> validationDefaultMitigationAction,
    TfArg<String>? validationOverrideMitigationAction,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'validation_default_mitigation_action':
               validationDefaultMitigationAction,
           if (validationOverrideMitigationAction != null)
             'validation_override_mitigation_action':
                 validationOverrideMitigationAction,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationSettingsSensitive;
}
