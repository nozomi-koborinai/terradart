// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_control_folder_intelligence_config`.
const Set<String> _googleStorageControlFolderIntelligenceConfigSensitive =
    <String>{};

/// Factory wrapper for `google_storage_control_folder_intelligence_config`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageControlFolderIntelligenceConfig extends Data {
  static const String tfType =
      'google_storage_control_folder_intelligence_config';

  DataGoogleStorageControlFolderIntelligenceConfig({
    required super.localName,
    required TfArg<String> name,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields =>
      _googleStorageControlFolderIntelligenceConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
