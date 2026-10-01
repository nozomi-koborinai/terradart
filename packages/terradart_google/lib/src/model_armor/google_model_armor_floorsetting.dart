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
    'enable_cloud_logging': ?enableCloudLogging?.toTfJson(),
    'inspect_and_block': ?inspectAndBlock?.toTfJson(),
    'inspect_only': ?inspectOnly?.toTfJson(),
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

  final ModelArmorFloorsettingMaliciousUriFilterSettings?
  maliciousUriFilterSettings;

  final ModelArmorFloorsettingPiAndJailbreakFilterSettings?
  piAndJailbreakFilterSettings;

  final ModelArmorFloorsettingRaiSettings? raiSettings;

  final ModelArmorFloorsettingSdpSettings? sdpSettings;

  Map<String, Object?> encode() => {
    'malicious_uri_filter_settings': ?maliciousUriFilterSettings?.encode(),
    'pi_and_jailbreak_filter_settings': ?piAndJailbreakFilterSettings?.encode(),
    'rai_settings': ?raiSettings?.encode(),
    'sdp_settings': ?sdpSettings?.encode(),
  };
}

/// Typed helper for the `filter_config.malicious_uri_filter_settings` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingMaliciousUriFilterSettings {
  const ModelArmorFloorsettingMaliciousUriFilterSettings({
    this.filterEnforcement,
  });

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    'filter_enforcement': ?filterEnforcement?.toTfJson(),
  };
}

/// Typed helper for the `filter_config.pi_and_jailbreak_filter_settings` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingPiAndJailbreakFilterSettings {
  const ModelArmorFloorsettingPiAndJailbreakFilterSettings({
    this.confidenceLevel,
    this.filterEnforcement,
  });

  final TfArg<String>? confidenceLevel;

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    'confidence_level': ?confidenceLevel?.toTfJson(),
    'filter_enforcement': ?filterEnforcement?.toTfJson(),
  };
}

/// Typed helper for the `filter_config.rai_settings` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingRaiSettings {
  const ModelArmorFloorsettingRaiSettings({required this.raiFilters});

  final List<ModelArmorFloorsettingRaiFilters> raiFilters;

  Map<String, Object?> encode() => {
    'rai_filters': [for (final e in raiFilters) e.encode()],
  };
}

/// Typed helper for the `filter_config.rai_settings.rai_filters` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingRaiFilters {
  const ModelArmorFloorsettingRaiFilters({
    this.confidenceLevel,
    required this.filterType,
  });

  final TfArg<String>? confidenceLevel;

  final TfArg<String> filterType;

  Map<String, Object?> encode() => {
    'confidence_level': ?confidenceLevel?.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// Typed helper for the `filter_config.sdp_settings` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingSdpSettings {
  const ModelArmorFloorsettingSdpSettings({
    this.advancedConfig,
    this.basicConfig,
  });

  final ModelArmorFloorsettingAdvancedConfig? advancedConfig;

  final ModelArmorFloorsettingBasicConfig? basicConfig;

  Map<String, Object?> encode() => {
    'advanced_config': ?advancedConfig?.encode(),
    'basic_config': ?basicConfig?.encode(),
  };
}

/// Typed helper for the `filter_config.sdp_settings.advanced_config` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingAdvancedConfig {
  const ModelArmorFloorsettingAdvancedConfig({
    this.deidentifyTemplate,
    this.inspectTemplate,
  });

  final TfArg<String>? deidentifyTemplate;

  final TfArg<String>? inspectTemplate;

  Map<String, Object?> encode() => {
    'deidentify_template': ?deidentifyTemplate?.toTfJson(),
    'inspect_template': ?inspectTemplate?.toTfJson(),
  };
}

/// Typed helper for the `filter_config.sdp_settings.basic_config` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingBasicConfig {
  const ModelArmorFloorsettingBasicConfig({this.filterEnforcement});

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    'filter_enforcement': ?filterEnforcement?.toTfJson(),
  };
}

/// Typed helper for the `floor_setting_metadata` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingFloorSettingMetadata {
  const ModelArmorFloorsettingFloorSettingMetadata({
    this.multiLanguageDetection,
  });

  final ModelArmorFloorsettingMultiLanguageDetection? multiLanguageDetection;

  Map<String, Object?> encode() => {
    'multi_language_detection': ?multiLanguageDetection?.encode(),
  };
}

/// Typed helper for the `floor_setting_metadata.multi_language_detection` block of
/// `google_model_armor_floorsetting` (derived from provider schema).
@immutable
final class ModelArmorFloorsettingMultiLanguageDetection {
  const ModelArmorFloorsettingMultiLanguageDetection({
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
    'enable_cloud_logging': ?enableCloudLogging?.toTfJson(),
    'inspect_and_block': ?inspectAndBlock?.toTfJson(),
    'inspect_only': ?inspectOnly?.toTfJson(),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enable_floor_setting_enforcement': ?enableFloorSettingEnforcement,
           'integrated_services': ?integratedServices,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleModelArmorFloorsetting>`.
  RefTo<GoogleModelArmorFloorsetting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `enable_floor_setting_enforcement` attribute.
  TfRef<bool> get enableFloorSettingEnforcement =>
      TfRef.attribute<bool>(this, 'enable_floor_setting_enforcement');

  /// Reference to `integrated_services` attribute.
  TfRef<List<String>> get integratedServices =>
      TfRef.attribute<List<String>>(this, 'integrated_services');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
