// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage_control/google_storage_control_organization_intelligence_config.dart';

/// Sensitive field paths for `google_storage_control_organization_intelligence_config`.
const Set<String> _googleStorageControlOrganizationIntelligenceConfigSensitive =
    <String>{};

/// Factory wrapper for `google_storage_control_organization_intelligence_config`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlOrganizationIntelligenceConfig
    extends Data {
  static const String tfType =
      'google_storage_control_organization_intelligence_config';

  DataGoogleStorageControlOrganizationIntelligenceConfig(
    super.localName, {
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlOrganizationIntelligenceConfigSensitive;

  /// A reference to the `google_storage_control_organization_intelligence_config` this data source reads, for
  /// arguments typed `RefTo<GoogleStorageControlOrganizationIntelligenceConfig>`.
  RefTo<GoogleStorageControlOrganizationIntelligenceConfig> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `edition_config` attribute.
  TfRef<String> get editionConfig =>
      TfRef.attribute<String>(this, 'edition_config');

  /// Reference to `effective_intelligence_config` attribute.
  TfRef<List<Map<String, Object?>>> get effectiveIntelligenceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'effective_intelligence_config',
      );

  /// Reference to `filter` attribute.
  TfRef<List<Map<String, Object?>>> get filter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'filter');

  /// Reference to `trial_config` attribute.
  TfRef<List<Map<String, Object?>>> get trialConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'trial_config');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
