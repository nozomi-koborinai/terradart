// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_model_armor_template`.
const Set<String> _googleModelArmorTemplateSensitive = <String>{};

/// Typed helper for the `filter_config` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfig {
  const ModelArmorTemplateFilterConfig({
    this.maliciousUriFilterSettings,
    this.piAndJailbreakFilterSettings,
    this.raiSettings,
    this.sdpSettings,
  });

  final ModelArmorTemplateFilterConfigMaliciousUriFilterSettings?
  maliciousUriFilterSettings;

  final ModelArmorTemplateFilterConfigPiAndJailbreakFilterSettings?
  piAndJailbreakFilterSettings;

  final ModelArmorTemplateFilterConfigRaiSettings? raiSettings;

  final ModelArmorTemplateFilterConfigSdpSettings? sdpSettings;

  Map<String, Object?> encode() => {
    'malicious_uri_filter_settings': ?maliciousUriFilterSettings?.encode(),
    'pi_and_jailbreak_filter_settings': ?piAndJailbreakFilterSettings?.encode(),
    'rai_settings': ?raiSettings?.encode(),
    'sdp_settings': ?sdpSettings?.encode(),
  };
}

/// Typed helper for the `filter_config.malicious_uri_filter_settings` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfigMaliciousUriFilterSettings {
  const ModelArmorTemplateFilterConfigMaliciousUriFilterSettings({
    this.filterEnforcement,
  });

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    'filter_enforcement': ?filterEnforcement?.toTfJson(),
  };
}

/// Typed helper for the `filter_config.pi_and_jailbreak_filter_settings` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfigPiAndJailbreakFilterSettings {
  const ModelArmorTemplateFilterConfigPiAndJailbreakFilterSettings({
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
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfigRaiSettings {
  const ModelArmorTemplateFilterConfigRaiSettings({required this.raiFilters});

  final List<ModelArmorTemplateFilterConfigRaiSettingsRaiFilters> raiFilters;

  Map<String, Object?> encode() => {
    'rai_filters': [for (final e in raiFilters) e.encode()],
  };
}

/// Typed helper for the `filter_config.rai_settings.rai_filters` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfigRaiSettingsRaiFilters {
  const ModelArmorTemplateFilterConfigRaiSettingsRaiFilters({
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

/// At most one of `advanced_config`, `basic_config` on the `filter_config.sdp_settings` block of `google_model_armor_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.advancedConfig(...)`.
sealed class ModelArmorTemplateFilterConfigSdpSettings {
  const ModelArmorTemplateFilterConfigSdpSettings();

  /// Sets `advanced_config`.
  const factory ModelArmorTemplateFilterConfigSdpSettings.advancedConfig(
    ModelArmorTemplateFilterConfigSdpSettingsAdvancedConfig advancedConfig,
  ) = ModelArmorTemplateFilterConfigSdpSettingsAdvancedConfigChoice;

  /// Sets `basic_config`.
  const factory ModelArmorTemplateFilterConfigSdpSettings.basicConfig(
    ModelArmorTemplateFilterConfigSdpSettingsBasicConfig basicConfig,
  ) = ModelArmorTemplateFilterConfigSdpSettingsBasicConfigChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ModelArmorTemplateFilterConfigSdpSettings.advancedConfig] choice: sets `advanced_config`.
final class ModelArmorTemplateFilterConfigSdpSettingsAdvancedConfigChoice
    extends ModelArmorTemplateFilterConfigSdpSettings {
  const ModelArmorTemplateFilterConfigSdpSettingsAdvancedConfigChoice(
    this.advancedConfig,
  );

  final ModelArmorTemplateFilterConfigSdpSettingsAdvancedConfig advancedConfig;

  @override
  String get blockKey => 'advanced_config';

  @override
  Map<String, Object?> encode() => {'advanced_config': advancedConfig.encode()};
}

/// The [ModelArmorTemplateFilterConfigSdpSettings.basicConfig] choice: sets `basic_config`.
final class ModelArmorTemplateFilterConfigSdpSettingsBasicConfigChoice
    extends ModelArmorTemplateFilterConfigSdpSettings {
  const ModelArmorTemplateFilterConfigSdpSettingsBasicConfigChoice(
    this.basicConfig,
  );

  final ModelArmorTemplateFilterConfigSdpSettingsBasicConfig basicConfig;

  @override
  String get blockKey => 'basic_config';

  @override
  Map<String, Object?> encode() => {'basic_config': basicConfig.encode()};
}

/// Typed helper for the `filter_config.sdp_settings.advanced_config` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfigSdpSettingsAdvancedConfig {
  const ModelArmorTemplateFilterConfigSdpSettingsAdvancedConfig({
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
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfigSdpSettingsBasicConfig {
  const ModelArmorTemplateFilterConfigSdpSettingsBasicConfig({
    this.filterEnforcement,
  });

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    'filter_enforcement': ?filterEnforcement?.toTfJson(),
  };
}

/// Typed helper for the `template_metadata` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateTemplateMetadata {
  const ModelArmorTemplateTemplateMetadata({
    this.customLlmResponseSafetyErrorCode,
    this.customLlmResponseSafetyErrorMessage,
    this.customPromptSafetyErrorCode,
    this.customPromptSafetyErrorMessage,
    this.enforcementType,
    this.ignorePartialInvocationFailures,
    this.logSanitizeOperations,
    this.logTemplateOperations,
    this.filterVersionSelector,
    this.multiLanguageDetection,
  });

  final TfArg<num>? customLlmResponseSafetyErrorCode;

  final TfArg<String>? customLlmResponseSafetyErrorMessage;

  final TfArg<num>? customPromptSafetyErrorCode;

  final TfArg<String>? customPromptSafetyErrorMessage;

  final TfArg<String>? enforcementType;

  final TfArg<bool>? ignorePartialInvocationFailures;

  final TfArg<bool>? logSanitizeOperations;

  final TfArg<bool>? logTemplateOperations;

  final ModelArmorTemplateTemplateMetadataFilterVersionSelector?
  filterVersionSelector;

  final ModelArmorTemplateTemplateMetadataMultiLanguageDetection?
  multiLanguageDetection;

  Map<String, Object?> encode() => {
    'custom_llm_response_safety_error_code': ?customLlmResponseSafetyErrorCode
        ?.toTfJson(),
    'custom_llm_response_safety_error_message':
        ?customLlmResponseSafetyErrorMessage?.toTfJson(),
    'custom_prompt_safety_error_code': ?customPromptSafetyErrorCode?.toTfJson(),
    'custom_prompt_safety_error_message': ?customPromptSafetyErrorMessage
        ?.toTfJson(),
    'enforcement_type': ?enforcementType?.toTfJson(),
    'ignore_partial_invocation_failures': ?ignorePartialInvocationFailures
        ?.toTfJson(),
    'log_sanitize_operations': ?logSanitizeOperations?.toTfJson(),
    'log_template_operations': ?logTemplateOperations?.toTfJson(),
    'filter_version_selector': ?filterVersionSelector?.encode(),
    'multi_language_detection': ?multiLanguageDetection?.encode(),
  };
}

/// At most one of `alias`, `version` on the `template_metadata.filter_version_selector` block of `google_model_armor_template`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.alias(...)`.
sealed class ModelArmorTemplateTemplateMetadataFilterVersionSelector {
  const ModelArmorTemplateTemplateMetadataFilterVersionSelector();

  /// Sets `alias`.
  const factory ModelArmorTemplateTemplateMetadataFilterVersionSelector.alias(
    TfArg<String> alias,
  ) = ModelArmorTemplateTemplateMetadataFilterVersionSelectorAlias;

  /// Sets `version`.
  const factory ModelArmorTemplateTemplateMetadataFilterVersionSelector.version(
    TfArg<String> version,
  ) = ModelArmorTemplateTemplateMetadataFilterVersionSelectorVersion;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ModelArmorTemplateTemplateMetadataFilterVersionSelector.alias] choice: sets `alias`.
final class ModelArmorTemplateTemplateMetadataFilterVersionSelectorAlias
    extends ModelArmorTemplateTemplateMetadataFilterVersionSelector {
  const ModelArmorTemplateTemplateMetadataFilterVersionSelectorAlias(
    this.alias,
  );

  final TfArg<String> alias;

  @override
  String get blockKey => 'alias';

  @override
  Map<String, Object?> encode() => {'alias': alias.toTfJson()};
}

/// The [ModelArmorTemplateTemplateMetadataFilterVersionSelector.version] choice: sets `version`.
final class ModelArmorTemplateTemplateMetadataFilterVersionSelectorVersion
    extends ModelArmorTemplateTemplateMetadataFilterVersionSelector {
  const ModelArmorTemplateTemplateMetadataFilterVersionSelectorVersion(
    this.version,
  );

  final TfArg<String> version;

  @override
  String get blockKey => 'version';

  @override
  Map<String, Object?> encode() => {'version': version.toTfJson()};
}

/// Typed helper for the `template_metadata.multi_language_detection` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateTemplateMetadataMultiLanguageDetection {
  const ModelArmorTemplateTemplateMetadataMultiLanguageDetection({
    required this.enableMultiLanguageDetection,
  });

  final TfArg<bool> enableMultiLanguageDetection;

  Map<String, Object?> encode() => {
    'enable_multi_language_detection': enableMultiLanguageDetection.toTfJson(),
  };
}

/// Factory wrapper for `google_model_armor_template`.
///
/// A `Template` is a resource of Model Armor that lets you configure how Model
/// Armor screens prompts and responses. It functions as sets of customized
/// filters and thresholds for different safety and security confidence levels,
/// allowing control over what content is flagged.
///
/// Model Armor **template** — filter thresholds for screening LLM prompts
/// and responses (RAI, SDP, prompt-injection, malicious URI).
///
/// [filterConfig] is required by the schema but may be an empty block for
/// a minimal template (see provider `modelarmor_template_basic`). Screening
/// is billed per Model Armor PAYG usage under Security Command Center
/// add-ons — creating/updating a template alone does not invoke models.
///
/// Enable `modelarmor.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleModelArmorTemplate(
///   localName: 'basic',
///   location: TfArg.literal('us-central1'),
///   templateId: TfArg.literal('terradart-modelarmor'),
///   filterConfig: ModelArmorTemplateFilterConfig(),
/// );
/// ```
final class GoogleModelArmorTemplate extends Resource {
  static const String tfType = 'google_model_armor_template';

  GoogleModelArmorTemplate({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> templateId,
    required ModelArmorTemplateFilterConfig filterConfig,
    ModelArmorTemplateTemplateMetadata? templateMetadata,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'template_id': templateId,
           'filter_config': TfArg.literal(filterConfig.encode()),
           if (templateMetadata != null)
             'template_metadata': TfArg.literal(templateMetadata.encode()),
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleModelArmorTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleModelArmorTemplate>`.
  RefTo<GoogleModelArmorTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
