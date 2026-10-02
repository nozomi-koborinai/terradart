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

  final ModelArmorTemplateMaliciousUriFilterSettings?
  maliciousUriFilterSettings;

  final ModelArmorTemplatePiAndJailbreakFilterSettings?
  piAndJailbreakFilterSettings;

  final ModelArmorTemplateRaiSettings? raiSettings;

  final ModelArmorTemplateSdpSettings? sdpSettings;

  @internal
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
final class ModelArmorTemplateMaliciousUriFilterSettings {
  const ModelArmorTemplateMaliciousUriFilterSettings({this.filterEnforcement});

  final TfArg<String>? filterEnforcement;

  @internal
  Map<String, Object?> encode() => {
    'filter_enforcement': ?filterEnforcement?.toTfJson(),
  };
}

/// Typed helper for the `filter_config.pi_and_jailbreak_filter_settings` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplatePiAndJailbreakFilterSettings {
  const ModelArmorTemplatePiAndJailbreakFilterSettings({
    this.confidenceLevel,
    this.filterEnforcement,
  });

  final TfArg<String>? confidenceLevel;

  final TfArg<String>? filterEnforcement;

  @internal
  Map<String, Object?> encode() => {
    'confidence_level': ?confidenceLevel?.toTfJson(),
    'filter_enforcement': ?filterEnforcement?.toTfJson(),
  };
}

/// Typed helper for the `filter_config.rai_settings` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateRaiSettings {
  const ModelArmorTemplateRaiSettings({required this.raiFilters});

  final List<ModelArmorTemplateRaiFilters> raiFilters;

  @internal
  Map<String, Object?> encode() => {
    'rai_filters': [for (final e in raiFilters) e.encode()],
  };
}

/// Typed helper for the `filter_config.rai_settings.rai_filters` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateRaiFilters {
  const ModelArmorTemplateRaiFilters({
    this.confidenceLevel,
    required this.filterType,
  });

  final TfArg<String>? confidenceLevel;

  final TfArg<String> filterType;

  @internal
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
sealed class ModelArmorTemplateSdpSettings {
  const ModelArmorTemplateSdpSettings();

  /// Sets `advanced_config`.
  const factory ModelArmorTemplateSdpSettings.advancedConfig(
    ModelArmorTemplateAdvancedConfig advancedConfig,
  ) = ModelArmorTemplateSdpSettingsAdvancedConfig;

  /// Sets `basic_config`.
  const factory ModelArmorTemplateSdpSettings.basicConfig(
    ModelArmorTemplateBasicConfig basicConfig,
  ) = ModelArmorTemplateSdpSettingsBasicConfig;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ModelArmorTemplateSdpSettings.advancedConfig] choice: sets `advanced_config`.
final class ModelArmorTemplateSdpSettingsAdvancedConfig
    extends ModelArmorTemplateSdpSettings {
  const ModelArmorTemplateSdpSettingsAdvancedConfig(this.advancedConfig);

  final ModelArmorTemplateAdvancedConfig advancedConfig;

  @internal
  @override
  String get blockKey => 'advanced_config';

  @internal
  @override
  Map<String, Object?> encode() => {'advanced_config': advancedConfig.encode()};
}

/// The [ModelArmorTemplateSdpSettings.basicConfig] choice: sets `basic_config`.
final class ModelArmorTemplateSdpSettingsBasicConfig
    extends ModelArmorTemplateSdpSettings {
  const ModelArmorTemplateSdpSettingsBasicConfig(this.basicConfig);

  final ModelArmorTemplateBasicConfig basicConfig;

  @internal
  @override
  String get blockKey => 'basic_config';

  @internal
  @override
  Map<String, Object?> encode() => {'basic_config': basicConfig.encode()};
}

/// Typed helper for the `filter_config.sdp_settings.advanced_config` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateAdvancedConfig {
  const ModelArmorTemplateAdvancedConfig({
    this.deidentifyTemplate,
    this.inspectTemplate,
  });

  final TfArg<String>? deidentifyTemplate;

  final TfArg<String>? inspectTemplate;

  @internal
  Map<String, Object?> encode() => {
    'deidentify_template': ?deidentifyTemplate?.toTfJson(),
    'inspect_template': ?inspectTemplate?.toTfJson(),
  };
}

/// Typed helper for the `filter_config.sdp_settings.basic_config` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateBasicConfig {
  const ModelArmorTemplateBasicConfig({this.filterEnforcement});

  final TfArg<String>? filterEnforcement;

  @internal
  Map<String, Object?> encode() => {
    'filter_enforcement': ?filterEnforcement?.toTfJson(),
  };
}

/// Typed helper for the `template_metadata` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateMetadata {
  const ModelArmorTemplateMetadata({
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

  final ModelArmorTemplateFilterVersionSelector? filterVersionSelector;

  final ModelArmorTemplateMultiLanguageDetection? multiLanguageDetection;

  @internal
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
sealed class ModelArmorTemplateFilterVersionSelector {
  const ModelArmorTemplateFilterVersionSelector();

  /// Sets `alias`.
  const factory ModelArmorTemplateFilterVersionSelector.alias(
    TfArg<String> alias,
  ) = ModelArmorTemplateFilterVersionSelectorAlias;

  /// Sets `version`.
  const factory ModelArmorTemplateFilterVersionSelector.version(
    TfArg<String> version,
  ) = ModelArmorTemplateFilterVersionSelectorVersion;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ModelArmorTemplateFilterVersionSelector.alias] choice: sets `alias`.
final class ModelArmorTemplateFilterVersionSelectorAlias
    extends ModelArmorTemplateFilterVersionSelector {
  const ModelArmorTemplateFilterVersionSelectorAlias(this.alias);

  final TfArg<String> alias;

  @internal
  @override
  String get blockKey => 'alias';

  @internal
  @override
  Map<String, Object?> encode() => {'alias': alias.toTfJson()};
}

/// The [ModelArmorTemplateFilterVersionSelector.version] choice: sets `version`.
final class ModelArmorTemplateFilterVersionSelectorVersion
    extends ModelArmorTemplateFilterVersionSelector {
  const ModelArmorTemplateFilterVersionSelectorVersion(this.version);

  final TfArg<String> version;

  @internal
  @override
  String get blockKey => 'version';

  @internal
  @override
  Map<String, Object?> encode() => {'version': version.toTfJson()};
}

/// Typed helper for the `template_metadata.multi_language_detection` block of
/// `google_model_armor_template` (derived from provider schema).
@immutable
final class ModelArmorTemplateMultiLanguageDetection {
  const ModelArmorTemplateMultiLanguageDetection({
    required this.enableMultiLanguageDetection,
  });

  final TfArg<bool> enableMultiLanguageDetection;

  @internal
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
///   'basic',
///   location: TfArg.literal('us-central1'),
///   templateId: TfArg.literal('terradart-modelarmor'),
///   filterConfig: ModelArmorTemplateFilterConfig(),
/// );
/// ```
final class GoogleModelArmorTemplate extends Resource {
  static const String tfType = 'google_model_armor_template';

  GoogleModelArmorTemplate(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> templateId,
    required ModelArmorTemplateFilterConfig filterConfig,
    ModelArmorTemplateMetadata? templateMetadata,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `template_id` attribute.
  TfRef<String> get templateId => TfRef.attribute<String>(this, 'template_id');
}
