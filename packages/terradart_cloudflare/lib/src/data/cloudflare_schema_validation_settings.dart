// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../api_shield/cloudflare_schema_validation_settings.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  DataCloudflareSchemaValidationSettings(
    super.localName, {
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareSchemaValidationSettingsSensitive;

  /// A reference to the `cloudflare_schema_validation_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareSchemaValidationSettings>`.
  RefTo<CloudflareSchemaValidationSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `validation_default_mitigation_action` attribute.
  TfRef<String> get validationDefaultMitigationAction =>
      TfRef.attribute<String>(this, 'validation_default_mitigation_action');

  /// Reference to `validation_override_mitigation_action` attribute.
  TfRef<String> get validationOverrideMitigationAction =>
      TfRef.attribute<String>(this, 'validation_override_mitigation_action');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
