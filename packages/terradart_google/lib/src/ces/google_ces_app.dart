// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_ces_app`.
const Set<String> _googleCesAppSensitive = <String>{};

/// Typed helper for the `audio_processing_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppAudioProcessingConfig {
  const CesAppAudioProcessingConfig({
    this.inactivityTimeout,
    this.ambientSoundConfig,
    this.bargeInConfig,
    this.synthesizeSpeechConfigs,
  });

  final TfArg<String>? inactivityTimeout;

  final CesAppAudioProcessingConfigAmbientSoundConfig? ambientSoundConfig;

  final CesAppAudioProcessingConfigBargeInConfig? bargeInConfig;

  final List<CesAppAudioProcessingConfigSynthesizeSpeechConfigs>?
  synthesizeSpeechConfigs;

  Map<String, Object?> encode() => {
    'inactivity_timeout': ?inactivityTimeout?.toTfJson(),
    'ambient_sound_config': ?ambientSoundConfig?.encode(),
    'barge_in_config': ?bargeInConfig?.encode(),
    if (synthesizeSpeechConfigs != null)
      'synthesize_speech_configs': [
        for (final e in synthesizeSpeechConfigs!) e.encode(),
      ],
  };
}

/// Typed helper for the `audio_processing_config.ambient_sound_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppAudioProcessingConfigAmbientSoundConfig {
  const CesAppAudioProcessingConfigAmbientSoundConfig({
    this.gcsUri,
    this.prebuiltAmbientSound,
    this.volumeGainDb,
  });

  final TfArg<String>? gcsUri;

  final TfArg<String>? prebuiltAmbientSound;

  final TfArg<num>? volumeGainDb;

  Map<String, Object?> encode() => {
    'gcs_uri': ?gcsUri?.toTfJson(),
    'prebuilt_ambient_sound': ?prebuiltAmbientSound?.toTfJson(),
    'volume_gain_db': ?volumeGainDb?.toTfJson(),
  };
}

/// Typed helper for the `audio_processing_config.barge_in_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppAudioProcessingConfigBargeInConfig {
  const CesAppAudioProcessingConfigBargeInConfig({this.bargeInAwareness});

  final TfArg<bool>? bargeInAwareness;

  Map<String, Object?> encode() => {
    'barge_in_awareness': ?bargeInAwareness?.toTfJson(),
  };
}

/// Typed helper for the `audio_processing_config.synthesize_speech_configs` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppAudioProcessingConfigSynthesizeSpeechConfigs {
  const CesAppAudioProcessingConfigSynthesizeSpeechConfigs({
    required this.languageCode,
    this.speakingRate,
    this.voice,
  });

  final TfArg<String> languageCode;

  final TfArg<num>? speakingRate;

  final TfArg<String>? voice;

  Map<String, Object?> encode() => {
    'language_code': languageCode.toTfJson(),
    'speaking_rate': ?speakingRate?.toTfJson(),
    'voice': ?voice?.toTfJson(),
  };
}

/// Typed helper for the `client_certificate_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppClientCertificateSettings {
  const CesAppClientCertificateSettings({
    this.passphrase,
    required this.privateKey,
    required this.tlsCertificate,
  });

  final TfArg<String>? passphrase;

  final TfArg<String> privateKey;

  final TfArg<String> tlsCertificate;

  Map<String, Object?> encode() => {
    'passphrase': ?passphrase?.toTfJson(),
    'private_key': privateKey.toTfJson(),
    'tls_certificate': tlsCertificate.toTfJson(),
  };
}

/// Typed helper for the `data_store_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppDataStoreSettings {
  const CesAppDataStoreSettings();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `default_channel_profile` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppDefaultChannelProfile {
  const CesAppDefaultChannelProfile({
    this.channelType,
    this.disableBargeInControl,
    this.disableDtmf,
    this.profileId,
    this.personaProperty,
    this.webWidgetConfig,
    this.whatsappConfig,
  });

  final TfArg<String>? channelType;

  final TfArg<bool>? disableBargeInControl;

  final TfArg<bool>? disableDtmf;

  final TfArg<String>? profileId;

  final CesAppDefaultChannelProfilePersonaProperty? personaProperty;

  final CesAppDefaultChannelProfileWebWidgetConfig? webWidgetConfig;

  final CesAppDefaultChannelProfileWhatsappConfig? whatsappConfig;

  Map<String, Object?> encode() => {
    'channel_type': ?channelType?.toTfJson(),
    'disable_barge_in_control': ?disableBargeInControl?.toTfJson(),
    'disable_dtmf': ?disableDtmf?.toTfJson(),
    'profile_id': ?profileId?.toTfJson(),
    'persona_property': ?personaProperty?.encode(),
    'web_widget_config': ?webWidgetConfig?.encode(),
    'whatsapp_config': ?whatsappConfig?.encode(),
  };
}

/// Typed helper for the `default_channel_profile.persona_property` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppDefaultChannelProfilePersonaProperty {
  const CesAppDefaultChannelProfilePersonaProperty({this.persona});

  final TfArg<String>? persona;

  Map<String, Object?> encode() => {'persona': ?persona?.toTfJson()};
}

/// Typed helper for the `default_channel_profile.web_widget_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppDefaultChannelProfileWebWidgetConfig {
  const CesAppDefaultChannelProfileWebWidgetConfig({
    this.modality,
    this.theme,
    this.webWidgetTitle,
    this.securitySettings,
  });

  final TfArg<String>? modality;

  final TfArg<String>? theme;

  final TfArg<String>? webWidgetTitle;

  final CesAppDefaultChannelProfileWebWidgetConfigSecuritySettings?
  securitySettings;

  Map<String, Object?> encode() => {
    'modality': ?modality?.toTfJson(),
    'theme': ?theme?.toTfJson(),
    'web_widget_title': ?webWidgetTitle?.toTfJson(),
    'security_settings': ?securitySettings?.encode(),
  };
}

/// Typed helper for the `default_channel_profile.web_widget_config.security_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppDefaultChannelProfileWebWidgetConfigSecuritySettings {
  const CesAppDefaultChannelProfileWebWidgetConfigSecuritySettings({
    this.allowedOrigins,
    this.enableOriginCheck,
    this.enablePublicAccess,
    this.enableRecaptcha,
  });

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<bool>? enableOriginCheck;

  final TfArg<bool>? enablePublicAccess;

  final TfArg<bool>? enableRecaptcha;

  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'enable_origin_check': ?enableOriginCheck?.toTfJson(),
    'enable_public_access': ?enablePublicAccess?.toTfJson(),
    'enable_recaptcha': ?enableRecaptcha?.toTfJson(),
  };
}

/// Typed helper for the `default_channel_profile.whatsapp_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppDefaultChannelProfileWhatsappConfig {
  const CesAppDefaultChannelProfileWhatsappConfig({
    this.phoneNumber,
    required this.phoneNumberId,
    required this.wabaId,
  });

  final TfArg<String>? phoneNumber;

  final TfArg<String> phoneNumberId;

  final TfArg<String> wabaId;

  Map<String, Object?> encode() => {
    'phone_number': ?phoneNumber?.toTfJson(),
    'phone_number_id': phoneNumberId.toTfJson(),
    'waba_id': wabaId.toTfJson(),
  };
}

/// Typed helper for the `error_handling_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppErrorHandlingSettings {
  const CesAppErrorHandlingSettings({
    this.errorHandlingStrategy,
    this.endSessionConfig,
    this.fallbackResponseConfig,
  });

  final TfArg<String>? errorHandlingStrategy;

  final CesAppErrorHandlingSettingsEndSessionConfig? endSessionConfig;

  final CesAppErrorHandlingSettingsFallbackResponseConfig?
  fallbackResponseConfig;

  Map<String, Object?> encode() => {
    'error_handling_strategy': ?errorHandlingStrategy?.toTfJson(),
    'end_session_config': ?endSessionConfig?.encode(),
    'fallback_response_config': ?fallbackResponseConfig?.encode(),
  };
}

/// Typed helper for the `error_handling_settings.end_session_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppErrorHandlingSettingsEndSessionConfig {
  const CesAppErrorHandlingSettingsEndSessionConfig({this.escalateSession});

  final TfArg<bool>? escalateSession;

  Map<String, Object?> encode() => {
    'escalate_session': ?escalateSession?.toTfJson(),
  };
}

/// Typed helper for the `error_handling_settings.fallback_response_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppErrorHandlingSettingsFallbackResponseConfig {
  const CesAppErrorHandlingSettingsFallbackResponseConfig({
    this.customFallbackMessages,
    this.maxFallbackAttempts,
  });

  final TfArg<Map<String, String>>? customFallbackMessages;

  final TfArg<num>? maxFallbackAttempts;

  Map<String, Object?> encode() => {
    'custom_fallback_messages': ?customFallbackMessages?.toTfJson(),
    'max_fallback_attempts': ?maxFallbackAttempts?.toTfJson(),
  };
}

/// Typed helper for the `evaluation_metrics_thresholds` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppEvaluationMetricsThresholds {
  const CesAppEvaluationMetricsThresholds({
    this.goldenHallucinationMetricBehavior,
    this.scenarioHallucinationMetricBehavior,
    this.goldenEvaluationMetricsThresholds,
  });

  final TfArg<
    CesAppEvaluationMetricsThresholdsGoldenHallucinationMetricBehavior
  >?
  goldenHallucinationMetricBehavior;

  final TfArg<
    CesAppEvaluationMetricsThresholdsScenarioHallucinationMetricBehavior
  >?
  scenarioHallucinationMetricBehavior;

  final CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds?
  goldenEvaluationMetricsThresholds;

  Map<String, Object?> encode() => {
    'golden_hallucination_metric_behavior': ?goldenHallucinationMetricBehavior
        ?.toTfJson(),
    'scenario_hallucination_metric_behavior':
        ?scenarioHallucinationMetricBehavior?.toTfJson(),
    'golden_evaluation_metrics_thresholds': ?goldenEvaluationMetricsThresholds
        ?.encode(),
  };
}

/// `golden_hallucination_metric_behavior` — derived from the provider schema description.
enum CesAppEvaluationMetricsThresholdsGoldenHallucinationMetricBehavior
    implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED');

  const CesAppEvaluationMetricsThresholdsGoldenHallucinationMetricBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `scenario_hallucination_metric_behavior` — derived from the provider schema description.
enum CesAppEvaluationMetricsThresholdsScenarioHallucinationMetricBehavior
    implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED');

  const CesAppEvaluationMetricsThresholdsScenarioHallucinationMetricBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_metrics_thresholds.golden_evaluation_metrics_thresholds` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds {
  const CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds({
    this.expectationLevelMetricsThresholds,
    this.toolMatchingSettings,
    this.turnLevelMetricsThresholds,
  });

  final CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds?
  expectationLevelMetricsThresholds;

  final CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings?
  toolMatchingSettings;

  final CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds?
  turnLevelMetricsThresholds;

  Map<String, Object?> encode() => {
    'expectation_level_metrics_thresholds': ?expectationLevelMetricsThresholds
        ?.encode(),
    'tool_matching_settings': ?toolMatchingSettings?.encode(),
    'turn_level_metrics_thresholds': ?turnLevelMetricsThresholds?.encode(),
  };
}

/// Typed helper for the `evaluation_metrics_thresholds.golden_evaluation_metrics_thresholds.expectation_level_metrics_thresholds` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds {
  const CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds({
    this.toolInvocationParameterCorrectnessThreshold,
  });

  final TfArg<num>? toolInvocationParameterCorrectnessThreshold;

  Map<String, Object?> encode() => {
    'tool_invocation_parameter_correctness_threshold':
        ?toolInvocationParameterCorrectnessThreshold?.toTfJson(),
  };
}

/// Typed helper for the `evaluation_metrics_thresholds.golden_evaluation_metrics_thresholds.tool_matching_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings {
  const CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings({
    this.extraToolCallBehavior,
  });

  final TfArg<
    CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettingsExtraToolCallBehavior
  >?
  extraToolCallBehavior;

  Map<String, Object?> encode() => {
    'extra_tool_call_behavior': ?extraToolCallBehavior?.toTfJson(),
  };
}

/// `extra_tool_call_behavior` — derived from the provider schema description.
enum CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettingsExtraToolCallBehavior
    implements TerraformEnum {
  fail('FAIL'),
  allow('ALLOW');

  const CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettingsExtraToolCallBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `evaluation_metrics_thresholds.golden_evaluation_metrics_thresholds.turn_level_metrics_thresholds` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds {
  const CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds({
    this.overallToolInvocationCorrectnessThreshold,
    this.semanticSimilarityChannel,
    this.semanticSimilaritySuccessThreshold,
  });

  final TfArg<num>? overallToolInvocationCorrectnessThreshold;

  final TfArg<String>? semanticSimilarityChannel;

  final TfArg<num>? semanticSimilaritySuccessThreshold;

  Map<String, Object?> encode() => {
    'overall_tool_invocation_correctness_threshold':
        ?overallToolInvocationCorrectnessThreshold?.toTfJson(),
    'semantic_similarity_channel': ?semanticSimilarityChannel?.toTfJson(),
    'semantic_similarity_success_threshold': ?semanticSimilaritySuccessThreshold
        ?.toTfJson(),
  };
}

/// Typed helper for the `language_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLanguageSettings {
  const CesAppLanguageSettings({
    this.defaultLanguageCode,
    this.enableMultilingualSupport,
    this.fallbackAction,
    this.supportedLanguageCodes,
  });

  final TfArg<String>? defaultLanguageCode;

  final TfArg<bool>? enableMultilingualSupport;

  final TfArg<String>? fallbackAction;

  final TfArg<List<String>>? supportedLanguageCodes;

  Map<String, Object?> encode() => {
    'default_language_code': ?defaultLanguageCode?.toTfJson(),
    'enable_multilingual_support': ?enableMultilingualSupport?.toTfJson(),
    'fallback_action': ?fallbackAction?.toTfJson(),
    'supported_language_codes': ?supportedLanguageCodes?.toTfJson(),
  };
}

/// Typed helper for the `logging_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettings {
  const CesAppLoggingSettings({
    this.audioRecordingConfig,
    this.bigqueryExportSettings,
    this.cloudLoggingSettings,
    this.conversationLoggingSettings,
    this.metricAnalysisSettings,
    this.redactionConfig,
  });

  final CesAppLoggingSettingsAudioRecordingConfig? audioRecordingConfig;

  final CesAppLoggingSettingsBigqueryExportSettings? bigqueryExportSettings;

  final CesAppLoggingSettingsCloudLoggingSettings? cloudLoggingSettings;

  final CesAppLoggingSettingsConversationLoggingSettings?
  conversationLoggingSettings;

  final CesAppLoggingSettingsMetricAnalysisSettings? metricAnalysisSettings;

  final CesAppLoggingSettingsRedactionConfig? redactionConfig;

  Map<String, Object?> encode() => {
    'audio_recording_config': ?audioRecordingConfig?.encode(),
    'bigquery_export_settings': ?bigqueryExportSettings?.encode(),
    'cloud_logging_settings': ?cloudLoggingSettings?.encode(),
    'conversation_logging_settings': ?conversationLoggingSettings?.encode(),
    'metric_analysis_settings': ?metricAnalysisSettings?.encode(),
    'redaction_config': ?redactionConfig?.encode(),
  };
}

/// Typed helper for the `logging_settings.audio_recording_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettingsAudioRecordingConfig {
  const CesAppLoggingSettingsAudioRecordingConfig({
    this.gcsBucket,
    this.gcsPathPrefix,
  });

  final RefTo<GoogleStorageBucket>? gcsBucket;

  final TfArg<String>? gcsPathPrefix;

  Map<String, Object?> encode() => {
    'gcs_bucket': ?gcsBucket?.encodeAs('name').toTfJson(),
    'gcs_path_prefix': ?gcsPathPrefix?.toTfJson(),
  };
}

/// Typed helper for the `logging_settings.bigquery_export_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettingsBigqueryExportSettings {
  const CesAppLoggingSettingsBigqueryExportSettings({
    this.dataset,
    this.enabled,
    this.project,
  });

  final TfArg<String>? dataset;

  final TfArg<bool>? enabled;

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    'dataset': ?dataset?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'project': ?project?.toTfJson(),
  };
}

/// Typed helper for the `logging_settings.cloud_logging_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettingsCloudLoggingSettings {
  const CesAppLoggingSettingsCloudLoggingSettings({this.enableCloudLogging});

  final TfArg<bool>? enableCloudLogging;

  Map<String, Object?> encode() => {
    'enable_cloud_logging': ?enableCloudLogging?.toTfJson(),
  };
}

/// Typed helper for the `logging_settings.conversation_logging_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettingsConversationLoggingSettings {
  const CesAppLoggingSettingsConversationLoggingSettings({
    this.disableConversationLogging,
    this.retentionWindow,
  });

  final TfArg<bool>? disableConversationLogging;

  final TfArg<String>? retentionWindow;

  Map<String, Object?> encode() => {
    'disable_conversation_logging': ?disableConversationLogging?.toTfJson(),
    'retention_window': ?retentionWindow?.toTfJson(),
  };
}

/// Typed helper for the `logging_settings.metric_analysis_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettingsMetricAnalysisSettings {
  const CesAppLoggingSettingsMetricAnalysisSettings({this.llmMetricsOptedOut});

  final TfArg<bool>? llmMetricsOptedOut;

  Map<String, Object?> encode() => {
    'llm_metrics_opted_out': ?llmMetricsOptedOut?.toTfJson(),
  };
}

/// Typed helper for the `logging_settings.redaction_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettingsRedactionConfig {
  const CesAppLoggingSettingsRedactionConfig({
    this.deidentifyTemplate,
    this.enableRedaction,
    this.inspectTemplate,
  });

  final TfArg<String>? deidentifyTemplate;

  final TfArg<bool>? enableRedaction;

  final TfArg<String>? inspectTemplate;

  Map<String, Object?> encode() => {
    'deidentify_template': ?deidentifyTemplate?.toTfJson(),
    'enable_redaction': ?enableRedaction?.toTfJson(),
    'inspect_template': ?inspectTemplate?.toTfJson(),
  };
}

/// Typed helper for the `model_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppModelSettings {
  const CesAppModelSettings({this.model, this.temperature});

  final TfArg<String>? model;

  final TfArg<num>? temperature;

  Map<String, Object?> encode() => {
    'model': ?model?.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
  };
}

/// Typed helper for the `time_zone_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppTimeZoneSettings {
  const CesAppTimeZoneSettings({this.timeZone});

  final TfArg<String>? timeZone;

  Map<String, Object?> encode() => {'time_zone': ?timeZone?.toTfJson()};
}

/// Typed helper for the `variable_declarations` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppVariableDeclarations {
  const CesAppVariableDeclarations({
    required this.description,
    required this.name,
    required this.schema,
  });

  final TfArg<String> description;

  final TfArg<String> name;

  final CesAppVariableDeclarationsSchema schema;

  Map<String, Object?> encode() => {
    'description': description.toTfJson(),
    'name': name.toTfJson(),
    'schema': schema.encode(),
  };
}

/// Typed helper for the `variable_declarations.schema` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppVariableDeclarationsSchema {
  const CesAppVariableDeclarationsSchema({
    this.additionalProperties,
    this.anyOf,
    this.defaultCase,
    this.defs,
    this.description,
    this.enumCase,
    this.items,
    this.nullable,
    this.prefixItems,
    this.properties,
    this.ref,
    this.required,
    this.title,
    required this.type,
    this.uniqueItems,
  });

  final TfArg<String>? additionalProperties;

  final TfArg<String>? anyOf;

  final TfArg<String>? defaultCase;

  final TfArg<String>? defs;

  final TfArg<String>? description;

  final TfArg<List<String>>? enumCase;

  final TfArg<String>? items;

  final TfArg<bool>? nullable;

  final TfArg<String>? prefixItems;

  final TfArg<String>? properties;

  final TfArg<String>? ref;

  final TfArg<List<String>>? required;

  final TfArg<String>? title;

  final TfArg<String> type;

  final TfArg<bool>? uniqueItems;

  Map<String, Object?> encode() => {
    'additional_properties': ?additionalProperties?.toTfJson(),
    'any_of': ?anyOf?.toTfJson(),
    'default': ?defaultCase?.toTfJson(),
    'defs': ?defs?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enum': ?enumCase?.toTfJson(),
    'items': ?items?.toTfJson(),
    'nullable': ?nullable?.toTfJson(),
    'prefix_items': ?prefixItems?.toTfJson(),
    'properties': ?properties?.toTfJson(),
    'ref': ?ref?.toTfJson(),
    'required': ?required?.toTfJson(),
    'title': ?title?.toTfJson(),
    'type': type.toTfJson(),
    'unique_items': ?uniqueItems?.toTfJson(),
  };
}

/// Typed helper for the `vpc_sc_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppVpcScSettings {
  const CesAppVpcScSettings({this.allowedOrigins});

  final TfArg<List<String>>? allowedOrigins;

  Map<String, Object?> encode() => {
    'allowed_origins': ?allowedOrigins?.toTfJson(),
  };
}

/// Factory wrapper for `google_ces_app`.
///
/// Customer Engagement Suite App
///
/// Customer Engagement Suite **app** — parent container for agents,
/// tools, guardrails, and versions.
///
/// **Cost:** gcp-cost: Customer Engagement Suite `383B-7930-9BC4` Chat
/// sessions for CX Agent Studio `40A1-7B02-5EF6` **$0.50/count** (Voice
/// sessions `AC3D-5A20-CF66` **$0.50/count**; Voice overages
/// `9B47-D9B2-C9CB`). billing-behavior: the app is design-time config —
/// session SKUs fire only on CX Agent Studio chat/voice sessions. This
/// factory never creates `google_ces_deployment` and never sends
/// sessions. Enable `ces.googleapis.com` via [Apis.enable] before apply.
///
/// When pairing with [GoogleCesAppRootAgentAssociation], set
/// `lifecycle: LifecycleOptions(ignoreChanges: ['root_agent'])` so
/// Terraform does not fight the association over `root_agent`.
///
/// Example:
/// ```dart
/// GoogleCesApp(
///   localName: 'app',
///   location: TfArg.literal('us'),
///   appId: TfArg.literal('terradart-ces'),
///   displayName: TfArg.literal('terradart-ces'),
///   lifecycle: const LifecycleOptions(ignoreChanges: ['root_agent']),
/// );
/// ```
final class GoogleCesApp extends Resource {
  static const String tfType = 'google_ces_app';

  GoogleCesApp({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> appId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    CesAppLanguageSettings? languageSettings,
    CesAppTimeZoneSettings? timeZoneSettings,
    CesAppModelSettings? modelSettings,
    TfArg<String>? globalInstruction,
    TfArg<List<String>>? guardrails,
    TfArg<String>? rootAgent,
    TfArg<bool>? pinned,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? toolExecutionMode,
    CesAppAudioProcessingConfig? audioProcessingConfig,
    CesAppLoggingSettings? loggingSettings,
    CesAppClientCertificateSettings? clientCertificateSettings,
    CesAppDataStoreSettings? dataStoreSettings,
    CesAppDefaultChannelProfile? defaultChannelProfile,
    CesAppEvaluationMetricsThresholds? evaluationMetricsThresholds,
    List<CesAppVariableDeclarations>? variableDeclarations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<bool>? locked,
    CesAppErrorHandlingSettings? errorHandlingSettings,
    CesAppVpcScSettings? vpcScSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app_id': appId,
           'display_name': displayName,
           'description': ?description,
           if (languageSettings != null)
             'language_settings': TfArg.literal(languageSettings.encode()),
           if (timeZoneSettings != null)
             'time_zone_settings': TfArg.literal(timeZoneSettings.encode()),
           if (modelSettings != null)
             'model_settings': TfArg.literal(modelSettings.encode()),
           'global_instruction': ?globalInstruction,
           'guardrails': ?guardrails,
           'root_agent': ?rootAgent,
           'pinned': ?pinned,
           'metadata': ?metadata,
           'tool_execution_mode': ?toolExecutionMode,
           if (audioProcessingConfig != null)
             'audio_processing_config': TfArg.literal(
               audioProcessingConfig.encode(),
             ),
           if (loggingSettings != null)
             'logging_settings': TfArg.literal(loggingSettings.encode()),
           if (clientCertificateSettings != null)
             'client_certificate_settings': TfArg.literal(
               clientCertificateSettings.encode(),
             ),
           if (dataStoreSettings != null)
             'data_store_settings': TfArg.literal(dataStoreSettings.encode()),
           if (defaultChannelProfile != null)
             'default_channel_profile': TfArg.literal(
               defaultChannelProfile.encode(),
             ),
           if (evaluationMetricsThresholds != null)
             'evaluation_metrics_thresholds': TfArg.literal(
               evaluationMetricsThresholds.encode(),
             ),
           if (variableDeclarations != null)
             'variable_declarations': TfArg.literal([
               for (final e in variableDeclarations) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'locked': ?locked,
           if (errorHandlingSettings != null)
             'error_handling_settings': TfArg.literal(
               errorHandlingSettings.encode(),
             ),
           if (vpcScSettings != null)
             'vpc_sc_settings': TfArg.literal(vpcScSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCesApp>`.
  RefTo<GoogleCesApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deployment_count` attribute.
  TfRef<num> get deploymentCount =>
      TfRef.attribute<num>(this, 'deployment_count');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `app_id` (parent segment for agents / tools / guardrails).
  TfRef<String> get appIdRef => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `location`.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');
}
