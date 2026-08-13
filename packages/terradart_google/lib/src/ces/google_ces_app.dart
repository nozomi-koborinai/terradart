// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (inactivityTimeout != null)
      'inactivity_timeout': inactivityTimeout!.toTfJson(),
    if (ambientSoundConfig != null)
      'ambient_sound_config': ambientSoundConfig!.encode(),
    if (bargeInConfig != null) 'barge_in_config': bargeInConfig!.encode(),
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
    if (gcsUri != null) 'gcs_uri': gcsUri!.toTfJson(),
    if (prebuiltAmbientSound != null)
      'prebuilt_ambient_sound': prebuiltAmbientSound!.toTfJson(),
    if (volumeGainDb != null) 'volume_gain_db': volumeGainDb!.toTfJson(),
  };
}

/// Typed helper for the `audio_processing_config.barge_in_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppAudioProcessingConfigBargeInConfig {
  const CesAppAudioProcessingConfigBargeInConfig({this.bargeInAwareness});

  final TfArg<bool>? bargeInAwareness;

  Map<String, Object?> encode() => {
    if (bargeInAwareness != null)
      'barge_in_awareness': bargeInAwareness!.toTfJson(),
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
    if (speakingRate != null) 'speaking_rate': speakingRate!.toTfJson(),
    if (voice != null) 'voice': voice!.toTfJson(),
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
    if (passphrase != null) 'passphrase': passphrase!.toTfJson(),
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
  });

  final TfArg<String>? channelType;

  final TfArg<bool>? disableBargeInControl;

  final TfArg<bool>? disableDtmf;

  final TfArg<String>? profileId;

  final CesAppDefaultChannelProfilePersonaProperty? personaProperty;

  final CesAppDefaultChannelProfileWebWidgetConfig? webWidgetConfig;

  Map<String, Object?> encode() => {
    if (channelType != null) 'channel_type': channelType!.toTfJson(),
    if (disableBargeInControl != null)
      'disable_barge_in_control': disableBargeInControl!.toTfJson(),
    if (disableDtmf != null) 'disable_dtmf': disableDtmf!.toTfJson(),
    if (profileId != null) 'profile_id': profileId!.toTfJson(),
    if (personaProperty != null) 'persona_property': personaProperty!.encode(),
    if (webWidgetConfig != null) 'web_widget_config': webWidgetConfig!.encode(),
  };
}

/// Typed helper for the `default_channel_profile.persona_property` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppDefaultChannelProfilePersonaProperty {
  const CesAppDefaultChannelProfilePersonaProperty({this.persona});

  final TfArg<String>? persona;

  Map<String, Object?> encode() => {
    if (persona != null) 'persona': persona!.toTfJson(),
  };
}

/// Typed helper for the `default_channel_profile.web_widget_config` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppDefaultChannelProfileWebWidgetConfig {
  const CesAppDefaultChannelProfileWebWidgetConfig({
    this.modality,
    this.theme,
    this.webWidgetTitle,
  });

  final TfArg<String>? modality;

  final TfArg<String>? theme;

  final TfArg<String>? webWidgetTitle;

  Map<String, Object?> encode() => {
    if (modality != null) 'modality': modality!.toTfJson(),
    if (theme != null) 'theme': theme!.toTfJson(),
    if (webWidgetTitle != null) 'web_widget_title': webWidgetTitle!.toTfJson(),
  };
}

/// Typed helper for the `evaluation_metrics_thresholds` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppEvaluationMetricsThresholds {
  const CesAppEvaluationMetricsThresholds({
    this.goldenEvaluationMetricsThresholds,
  });

  final CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds?
  goldenEvaluationMetricsThresholds;

  Map<String, Object?> encode() => {
    if (goldenEvaluationMetricsThresholds != null)
      'golden_evaluation_metrics_thresholds': goldenEvaluationMetricsThresholds!
          .encode(),
  };
}

/// Typed helper for the `evaluation_metrics_thresholds.golden_evaluation_metrics_thresholds` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds {
  const CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds({
    this.expectationLevelMetricsThresholds,
    this.turnLevelMetricsThresholds,
  });

  final CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds?
  expectationLevelMetricsThresholds;

  final CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds?
  turnLevelMetricsThresholds;

  Map<String, Object?> encode() => {
    if (expectationLevelMetricsThresholds != null)
      'expectation_level_metrics_thresholds': expectationLevelMetricsThresholds!
          .encode(),
    if (turnLevelMetricsThresholds != null)
      'turn_level_metrics_thresholds': turnLevelMetricsThresholds!.encode(),
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
    if (toolInvocationParameterCorrectnessThreshold != null)
      'tool_invocation_parameter_correctness_threshold':
          toolInvocationParameterCorrectnessThreshold!.toTfJson(),
  };
}

/// Typed helper for the `evaluation_metrics_thresholds.golden_evaluation_metrics_thresholds.turn_level_metrics_thresholds` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds {
  const CesAppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds({
    this.overallToolInvocationCorrectnessThreshold,
    this.semanticSimilaritySuccessThreshold,
  });

  final TfArg<num>? overallToolInvocationCorrectnessThreshold;

  final TfArg<num>? semanticSimilaritySuccessThreshold;

  Map<String, Object?> encode() => {
    if (overallToolInvocationCorrectnessThreshold != null)
      'overall_tool_invocation_correctness_threshold':
          overallToolInvocationCorrectnessThreshold!.toTfJson(),
    if (semanticSimilaritySuccessThreshold != null)
      'semantic_similarity_success_threshold':
          semanticSimilaritySuccessThreshold!.toTfJson(),
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

  final TfArg<List<Object?>>? supportedLanguageCodes;

  Map<String, Object?> encode() => {
    if (defaultLanguageCode != null)
      'default_language_code': defaultLanguageCode!.toTfJson(),
    if (enableMultilingualSupport != null)
      'enable_multilingual_support': enableMultilingualSupport!.toTfJson(),
    if (fallbackAction != null) 'fallback_action': fallbackAction!.toTfJson(),
    if (supportedLanguageCodes != null)
      'supported_language_codes': supportedLanguageCodes!.toTfJson(),
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
    this.redactionConfig,
  });

  final CesAppLoggingSettingsAudioRecordingConfig? audioRecordingConfig;

  final CesAppLoggingSettingsBigqueryExportSettings? bigqueryExportSettings;

  final CesAppLoggingSettingsCloudLoggingSettings? cloudLoggingSettings;

  final CesAppLoggingSettingsConversationLoggingSettings?
  conversationLoggingSettings;

  final CesAppLoggingSettingsRedactionConfig? redactionConfig;

  Map<String, Object?> encode() => {
    if (audioRecordingConfig != null)
      'audio_recording_config': audioRecordingConfig!.encode(),
    if (bigqueryExportSettings != null)
      'bigquery_export_settings': bigqueryExportSettings!.encode(),
    if (cloudLoggingSettings != null)
      'cloud_logging_settings': cloudLoggingSettings!.encode(),
    if (conversationLoggingSettings != null)
      'conversation_logging_settings': conversationLoggingSettings!.encode(),
    if (redactionConfig != null) 'redaction_config': redactionConfig!.encode(),
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

  final TfArg<String>? gcsBucket;

  final TfArg<String>? gcsPathPrefix;

  Map<String, Object?> encode() => {
    if (gcsBucket != null) 'gcs_bucket': gcsBucket!.toTfJson(),
    if (gcsPathPrefix != null) 'gcs_path_prefix': gcsPathPrefix!.toTfJson(),
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
    if (dataset != null) 'dataset': dataset!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (project != null) 'project': project!.toTfJson(),
  };
}

/// Typed helper for the `logging_settings.cloud_logging_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettingsCloudLoggingSettings {
  const CesAppLoggingSettingsCloudLoggingSettings({this.enableCloudLogging});

  final TfArg<bool>? enableCloudLogging;

  Map<String, Object?> encode() => {
    if (enableCloudLogging != null)
      'enable_cloud_logging': enableCloudLogging!.toTfJson(),
  };
}

/// Typed helper for the `logging_settings.conversation_logging_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppLoggingSettingsConversationLoggingSettings {
  const CesAppLoggingSettingsConversationLoggingSettings({
    this.disableConversationLogging,
  });

  final TfArg<bool>? disableConversationLogging;

  Map<String, Object?> encode() => {
    if (disableConversationLogging != null)
      'disable_conversation_logging': disableConversationLogging!.toTfJson(),
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
    if (deidentifyTemplate != null)
      'deidentify_template': deidentifyTemplate!.toTfJson(),
    if (enableRedaction != null)
      'enable_redaction': enableRedaction!.toTfJson(),
    if (inspectTemplate != null)
      'inspect_template': inspectTemplate!.toTfJson(),
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
    if (model != null) 'model': model!.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
  };
}

/// Typed helper for the `time_zone_settings` block of
/// `google_ces_app` (derived from provider schema).
@immutable
final class CesAppTimeZoneSettings {
  const CesAppTimeZoneSettings({this.timeZone});

  final TfArg<String>? timeZone;

  Map<String, Object?> encode() => {
    if (timeZone != null) 'time_zone': timeZone!.toTfJson(),
  };
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

  final TfArg<List<Object?>>? enumCase;

  final TfArg<String>? items;

  final TfArg<bool>? nullable;

  final TfArg<String>? prefixItems;

  final TfArg<String>? properties;

  final TfArg<String>? ref;

  final TfArg<List<Object?>>? required;

  final TfArg<String>? title;

  final TfArg<String> type;

  final TfArg<bool>? uniqueItems;

  Map<String, Object?> encode() => {
    if (additionalProperties != null)
      'additional_properties': additionalProperties!.toTfJson(),
    if (anyOf != null) 'any_of': anyOf!.toTfJson(),
    if (defaultCase != null) 'default': defaultCase!.toTfJson(),
    if (defs != null) 'defs': defs!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (enumCase != null) 'enum': enumCase!.toTfJson(),
    if (items != null) 'items': items!.toTfJson(),
    if (nullable != null) 'nullable': nullable!.toTfJson(),
    if (prefixItems != null) 'prefix_items': prefixItems!.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
    if (ref != null) 'ref': ref!.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
    'type': type.toTfJson(),
    if (uniqueItems != null) 'unique_items': uniqueItems!.toTfJson(),
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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'app_id': appId,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (languageSettings != null)
             'language_settings': TfArg.literal(languageSettings.encode()),
           if (timeZoneSettings != null)
             'time_zone_settings': TfArg.literal(timeZoneSettings.encode()),
           if (modelSettings != null)
             'model_settings': TfArg.literal(modelSettings.encode()),
           if (globalInstruction != null)
             'global_instruction': globalInstruction,
           if (guardrails != null) 'guardrails': guardrails,
           if (rootAgent != null) 'root_agent': rootAgent,
           if (pinned != null) 'pinned': pinned,
           if (metadata != null) 'metadata': metadata,
           if (toolExecutionMode != null)
             'tool_execution_mode': toolExecutionMode,
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
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCesAppSensitive;

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
