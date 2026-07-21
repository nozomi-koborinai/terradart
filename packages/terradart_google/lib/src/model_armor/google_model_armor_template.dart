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
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfigMaliciousUriFilterSettings {
  const ModelArmorTemplateFilterConfigMaliciousUriFilterSettings({
    this.filterEnforcement,
  });

  final TfArg<String>? filterEnforcement;

  Map<String, Object?> encode() => {
    if (filterEnforcement != null)
      'filter_enforcement': filterEnforcement!.toTfJson(),
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
    if (confidenceLevel != null)
      'confidence_level': confidenceLevel!.toTfJson(),
    if (filterEnforcement != null)
      'filter_enforcement': filterEnforcement!.toTfJson(),
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
    if (confidenceLevel != null)
      'confidence_level': confidenceLevel!.toTfJson(),
    'filter_type': filterType.toTfJson(),
  };
}

/// Typed helper for the `filter_config.sdp_settings` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateFilterConfigSdpSettings {
  const ModelArmorTemplateFilterConfigSdpSettings({
    this.advancedConfig,
    this.basicConfig,
  });

  final ModelArmorTemplateFilterConfigSdpSettingsAdvancedConfig? advancedConfig;

  final ModelArmorTemplateFilterConfigSdpSettingsBasicConfig? basicConfig;

  Map<String, Object?> encode() => {
    if (advancedConfig != null) 'advanced_config': advancedConfig!.encode(),
    if (basicConfig != null) 'basic_config': basicConfig!.encode(),
  };
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
    if (deidentifyTemplate != null)
      'deidentify_template': deidentifyTemplate!.toTfJson(),
    if (inspectTemplate != null)
      'inspect_template': inspectTemplate!.toTfJson(),
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
    if (filterEnforcement != null)
      'filter_enforcement': filterEnforcement!.toTfJson(),
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

  final ModelArmorTemplateTemplateMetadataMultiLanguageDetection?
  multiLanguageDetection;

  Map<String, Object?> encode() => {
    if (customLlmResponseSafetyErrorCode != null)
      'custom_llm_response_safety_error_code': customLlmResponseSafetyErrorCode!
          .toTfJson(),
    if (customLlmResponseSafetyErrorMessage != null)
      'custom_llm_response_safety_error_message':
          customLlmResponseSafetyErrorMessage!.toTfJson(),
    if (customPromptSafetyErrorCode != null)
      'custom_prompt_safety_error_code': customPromptSafetyErrorCode!
          .toTfJson(),
    if (customPromptSafetyErrorMessage != null)
      'custom_prompt_safety_error_message': customPromptSafetyErrorMessage!
          .toTfJson(),
    if (enforcementType != null)
      'enforcement_type': enforcementType!.toTfJson(),
    if (ignorePartialInvocationFailures != null)
      'ignore_partial_invocation_failures': ignorePartialInvocationFailures!
          .toTfJson(),
    if (logSanitizeOperations != null)
      'log_sanitize_operations': logSanitizeOperations!.toTfJson(),
    if (logTemplateOperations != null)
      'log_template_operations': logTemplateOperations!.toTfJson(),
    if (multiLanguageDetection != null)
      'multi_language_detection': multiLanguageDetection!.encode(),
  };
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'template_id': templateId,
           'filter_config': TfArg.literal(filterConfig.encode()),
           if (templateMetadata != null)
             'template_metadata': TfArg.literal(templateMetadata.encode()),
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleModelArmorTemplateSensitive;

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
