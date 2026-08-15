// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_model_armor_floorsetting`.
const Set<String> _googleModelArmorFloorsettingSensitive = <String>{};

/// Typed helper for the `ai_platform_floor_setting` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingAiPlatformFloorSetting {
  const ModelArmorFloorsettingAiPlatformFloorSetting({
    this.enableCloudLogging,
    this.inspectAndBlock,
    this.inspectOnly,
  });

  final TfArg<bool>? enableCloudLogging;

  final TfArg<bool>? inspectAndBlock;

  final TfArg<bool>? inspectOnly;

  Map<String, Object?> encode() => {
    if (enableCloudLogging != null)
      'enable_cloud_logging': enableCloudLogging!.toTfJson(),
    if (inspectAndBlock != null)
      'inspect_and_block': inspectAndBlock!.toTfJson(),
    if (inspectOnly != null) 'inspect_only': inspectOnly!.toTfJson(),
  };
}

/// Typed helper for the `filter_config` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFilterConfig {
  const ModelArmorFloorsettingFilterConfig({
    this.maliciousUriFilterSettings,
    this.piAndJailbreakFilterSettings,
    this.raiSettings,
    this.sdpSettings,
  });

  final ModelArmorFloorsettingFilterConfigMaliciousUriFilterSettings?
  maliciousUriFilterSettings;

  final ModelArmorFloorsettingFilterConfigPiAndJailbreakFilterSettings?
  piAndJailbreakFilterSettings;

  final ModelArmorFloorsettingFilterConfigRaiSettings? raiSettings;

  final ModelArmorFloorsettingFilterConfigSdpSettings? sdpSettings;

  Map<String, Object?> encode() => {
    if (maliciousUriFilterSettings != null)
      'malicious_uri_filter_settings': maliciousUriFilterSettings!.encode(),
    if (piAndJailbreakFilterSettings != null)
      'pi_and_jailbreak_filter_settings': piAndJailbreakFilterSettings!
          .encode(),
    if (raiSettings != null) 'rai_settings': raiSettings!.encode(),
    if (sdpSettings != null) 'sdp_settings': sdpSettings!.encode(),
  };
}

/// Typed helper for the `filter_config.malicious_uri_filter_settings` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFilterConfigMaliciousUriFilterSettings {
  const ModelArmorFloorsettingFilterConfigMaliciousUriFilterSettings({
    this.filterEnforcement,
  });

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    if (filterEnforcement != null)
      'filter_enforcement': filterEnforcement!.toTfJson(),
  };
}

/// Typed helper for the `filter_config.pi_and_jailbreak_filter_settings` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFilterConfigPiAndJailbreakFilterSettings {
  const ModelArmorFloorsettingFilterConfigPiAndJailbreakFilterSettings({
    this.confidenceLevel,
    this.filterEnforcement,
  });

  final TfArg<String>? confidenceLevel;

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    if (confidenceLevel != null)
      'confidence_level': confidenceLevel!.toTfJson(),
    if (filterEnforcement != null)
      'filter_enforcement': filterEnforcement!.toTfJson(),
  };
}

/// Typed helper for the `filter_config.rai_settings` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFilterConfigRaiSettings {
  const ModelArmorFloorsettingFilterConfigRaiSettings({
    required this.raiFilters,
  });

  final List<ModelArmorFloorsettingFilterConfigRaiSettingsRaiFilters>
  raiFilters;

  Map<String, Object?> encode() => {
    'rai_filters': [for (final e in raiFilters) e.encode()],
  };
}

/// Typed helper for the `filter_config.rai_settings.rai_filters` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFilterConfigRaiSettingsRaiFilters {
  const ModelArmorFloorsettingFilterConfigRaiSettingsRaiFilters({
    this.confidenceLevel,
    required this.filterType,
  });

  final TfArg<String>? confidenceLevel;

  final TfArg<String> filterType;

  Map<String, Object?> encode() => {
    if (confidenceLevel != null)
      'confidence_level': confidenceLevel!.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// Typed helper for the `filter_config.sdp_settings` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFilterConfigSdpSettings {
  const ModelArmorFloorsettingFilterConfigSdpSettings({
    this.advancedConfig,
    this.basicConfig,
  });

  final ModelArmorFloorsettingFilterConfigSdpSettingsAdvancedConfig?
  advancedConfig;

  final ModelArmorFloorsettingFilterConfigSdpSettingsBasicConfig? basicConfig;

  Map<String, Object?> encode() => {
    if (advancedConfig != null) 'advanced_config': advancedConfig!.encode(),
    if (basicConfig != null) 'basic_config': basicConfig!.encode(),
  };
}

/// Typed helper for the `filter_config.sdp_settings.advanced_config` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFilterConfigSdpSettingsAdvancedConfig {
  const ModelArmorFloorsettingFilterConfigSdpSettingsAdvancedConfig({
    this.deidentifyTemplate,
    this.inspectTemplate,
  });

  final TfArg<String>? deidentifyTemplate;

  final TfArg<String>? inspectTemplate;

  Map<String, Object?> encode() => {
    if (deidentifyTemplate != null)
      'deidentify_template': deidentifyTemplate!.toTfJson(),
    if (inspectTemplate != null)
      'inspect_template': inspectTemplate!.toTfJson(),
  };
}

/// Typed helper for the `filter_config.sdp_settings.basic_config` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFilterConfigSdpSettingsBasicConfig {
  const ModelArmorFloorsettingFilterConfigSdpSettingsBasicConfig({
    this.filterEnforcement,
  });

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    if (filterEnforcement != null)
      'filter_enforcement': filterEnforcement!.toTfJson(),
  };
}

/// Typed helper for the `floor_setting_metadata` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFloorSettingMetadata {
  const ModelArmorFloorsettingFloorSettingMetadata({
    this.multiLanguageDetection,
  });

  final ModelArmorFloorsettingFloorSettingMetadataMultiLanguageDetection?
  multiLanguageDetection;

  Map<String, Object?> encode() => {
    if (multiLanguageDetection != null)
      'multi_language_detection': multiLanguageDetection!.encode(),
  };
}

/// Typed helper for the `floor_setting_metadata.multi_language_detection` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFloorSettingMetadataMultiLanguageDetection {
  const ModelArmorFloorsettingFloorSettingMetadataMultiLanguageDetection({
    required this.enableMultiLanguageDetection,
  });

  final TfArg<bool> enableMultiLanguageDetection;

  Map<String, Object?> encode() => {
    'enable_multi_language_detection': enableMultiLanguageDetection.toTfJson(),
  };
}

/// Typed helper for the `google_mcp_server_floor_setting` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingGoogleMcpServerFloorSetting {
  const ModelArmorFloorsettingGoogleMcpServerFloorSetting({
    this.enableCloudLogging,
    this.inspectAndBlock,
    this.inspectOnly,
  });

  final TfArg<bool>? enableCloudLogging;

  final TfArg<bool>? inspectAndBlock;

  final TfArg<bool>? inspectOnly;

  Map<String, Object?> encode() => {
    if (enableCloudLogging != null)
      'enable_cloud_logging': enableCloudLogging!.toTfJson(),
    if (inspectAndBlock != null)
      'inspect_and_block': inspectAndBlock!.toTfJson(),
    if (inspectOnly != null) 'inspect_only': inspectOnly!.toTfJson(),
  };
}

/// Factory wrapper for `google_model_armor_floorsetting`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleModelArmorFloorsetting extends Resource {
  static const String tfType = 'google_model_armor_floorsetting';

  GoogleModelArmorFloorsetting({
    required super.localName,
    TfArg<bool>? enableFloorSettingEnforcement,
    TfArg<List<String>>? integratedServices,
    required TfArg<String> location,
    required TfArg<String> parent,
    ModelArmorFloorsettingAiPlatformFloorSetting? aiPlatformFloorSetting,
    required ModelArmorFloorsettingFilterConfig filterConfig,
    ModelArmorFloorsettingFloorSettingMetadata? floorSettingMetadata,
    ModelArmorFloorsettingGoogleMcpServerFloorSetting?
    googleMcpServerFloorSetting,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enableFloorSettingEnforcement != null)
             'enable_floor_setting_enforcement': enableFloorSettingEnforcement,
           if (integratedServices != null)
             'integrated_services': integratedServices,
           'location': location,
           'parent': parent,
           if (aiPlatformFloorSetting != null)
             'ai_platform_floor_setting': TfArg.literal(
               aiPlatformFloorSetting.encode(),
             ),
           'filter_config': TfArg.literal(filterConfig.encode()),
           if (floorSettingMetadata != null)
             'floor_setting_metadata': TfArg.literal(
               floorSettingMetadata.encode(),
             ),
           if (googleMcpServerFloorSetting != null)
             'google_mcp_server_floor_setting': TfArg.literal(
               googleMcpServerFloorSetting.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleModelArmorFloorsettingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
