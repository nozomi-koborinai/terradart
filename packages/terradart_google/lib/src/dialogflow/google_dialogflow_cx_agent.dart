// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_agent`.
const Set<String> _googleDialogflowCxAgentSensitive = <String>{
  'git_integration_settings.github_settings.access_token',
};

/// Typed helper for the `advanced_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentAdvancedSettings {
  const DialogflowCxAgentAdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  final DialogflowCxAgentAdvancedSettingsAudioExportGcsDestination?
  audioExportGcsDestination;

  final DialogflowCxAgentAdvancedSettingsDtmfSettings? dtmfSettings;

  final DialogflowCxAgentAdvancedSettingsLoggingSettings? loggingSettings;

  final DialogflowCxAgentAdvancedSettingsSpeechSettings? speechSettings;

  Map<String, Object?> encode() => {
    if (audioExportGcsDestination != null)
      'audio_export_gcs_destination': audioExportGcsDestination!.encode(),
    if (dtmfSettings != null) 'dtmf_settings': dtmfSettings!.encode(),
    if (loggingSettings != null) 'logging_settings': loggingSettings!.encode(),
    if (speechSettings != null) 'speech_settings': speechSettings!.encode(),
  };
}

/// Typed helper for the `advanced_settings.audio_export_gcs_destination` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentAdvancedSettingsAudioExportGcsDestination {
  const DialogflowCxAgentAdvancedSettingsAudioExportGcsDestination({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {if (uri != null) 'uri': uri!.toTfJson()};
}

/// Typed helper for the `advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentAdvancedSettingsDtmfSettings {
  const DialogflowCxAgentAdvancedSettingsDtmfSettings({
    this.enabled,
    this.finishDigit,
    this.maxDigits,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? finishDigit;

  final TfArg<num>? maxDigits;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (finishDigit != null) 'finish_digit': finishDigit!.toTfJson(),
    if (maxDigits != null) 'max_digits': maxDigits!.toTfJson(),
  };
}

/// Typed helper for the `advanced_settings.logging_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentAdvancedSettingsLoggingSettings {
  const DialogflowCxAgentAdvancedSettingsLoggingSettings({
    this.enableConsentBasedRedaction,
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  final TfArg<bool>? enableConsentBasedRedaction;

  final TfArg<bool>? enableInteractionLogging;

  final TfArg<bool>? enableStackdriverLogging;

  Map<String, Object?> encode() => {
    if (enableConsentBasedRedaction != null)
      'enable_consent_based_redaction': enableConsentBasedRedaction!.toTfJson(),
    if (enableInteractionLogging != null)
      'enable_interaction_logging': enableInteractionLogging!.toTfJson(),
    if (enableStackdriverLogging != null)
      'enable_stackdriver_logging': enableStackdriverLogging!.toTfJson(),
  };
}

/// Typed helper for the `advanced_settings.speech_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentAdvancedSettingsSpeechSettings {
  const DialogflowCxAgentAdvancedSettingsSpeechSettings({
    this.endpointerSensitivity,
    this.models,
    this.noSpeechTimeout,
    this.useTimeoutBasedEndpointing,
  });

  final TfArg<num>? endpointerSensitivity;

  final TfArg<Map<String, String>>? models;

  final TfArg<String>? noSpeechTimeout;

  final TfArg<bool>? useTimeoutBasedEndpointing;

  Map<String, Object?> encode() => {
    if (endpointerSensitivity != null)
      'endpointer_sensitivity': endpointerSensitivity!.toTfJson(),
    if (models != null) 'models': models!.toTfJson(),
    if (noSpeechTimeout != null)
      'no_speech_timeout': noSpeechTimeout!.toTfJson(),
    if (useTimeoutBasedEndpointing != null)
      'use_timeout_based_endpointing': useTimeoutBasedEndpointing!.toTfJson(),
  };
}

/// Typed helper for the `answer_feedback_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentAnswerFeedbackSettings {
  const DialogflowCxAgentAnswerFeedbackSettings({this.enableAnswerFeedback});

  final TfArg<bool>? enableAnswerFeedback;

  Map<String, Object?> encode() => {
    if (enableAnswerFeedback != null)
      'enable_answer_feedback': enableAnswerFeedback!.toTfJson(),
  };
}

/// Typed helper for the `client_certificate_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentClientCertificateSettings {
  const DialogflowCxAgentClientCertificateSettings({
    this.passphrase,
    required this.privateKey,
    required this.sslCertificate,
  });

  final TfArg<String>? passphrase;

  final TfArg<String> privateKey;

  final TfArg<String> sslCertificate;

  Map<String, Object?> encode() => {
    if (passphrase != null) 'passphrase': passphrase!.toTfJson(),
    'private_key': privateKey.toTfJson(),
    'ssl_certificate': sslCertificate.toTfJson(),
  };
}

/// Typed helper for the `gen_app_builder_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentGenAppBuilderSettings {
  const DialogflowCxAgentGenAppBuilderSettings({required this.engine});

  final TfArg<String> engine;

  Map<String, Object?> encode() => {'engine': engine.toTfJson()};
}

/// Typed helper for the `git_integration_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentGitIntegrationSettings {
  const DialogflowCxAgentGitIntegrationSettings({this.githubSettings});

  final DialogflowCxAgentGitIntegrationSettingsGithubSettings? githubSettings;

  Map<String, Object?> encode() => {
    if (githubSettings != null) 'github_settings': githubSettings!.encode(),
  };
}

/// Typed helper for the `git_integration_settings.github_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentGitIntegrationSettingsGithubSettings {
  const DialogflowCxAgentGitIntegrationSettingsGithubSettings({
    this.accessToken,
    this.branches,
    this.displayName,
    this.repositoryUri,
    this.trackingBranch,
  });

  final TfArg<String>? accessToken;

  final TfArg<List<Object?>>? branches;

  final TfArg<String>? displayName;

  final TfArg<String>? repositoryUri;

  final TfArg<String>? trackingBranch;

  Map<String, Object?> encode() => {
    if (accessToken != null) 'access_token': accessToken!.toTfJson(),
    if (branches != null) 'branches': branches!.toTfJson(),
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (repositoryUri != null) 'repository_uri': repositoryUri!.toTfJson(),
    if (trackingBranch != null) 'tracking_branch': trackingBranch!.toTfJson(),
  };
}

/// Typed helper for the `personalization_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentPersonalizationSettings {
  const DialogflowCxAgentPersonalizationSettings({this.defaultEndUserMetadata});

  final TfArg<String>? defaultEndUserMetadata;

  Map<String, Object?> encode() => {
    if (defaultEndUserMetadata != null)
      'default_end_user_metadata': defaultEndUserMetadata!.toTfJson(),
  };
}

/// Typed helper for the `speech_to_text_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentSpeechToTextSettings {
  const DialogflowCxAgentSpeechToTextSettings({this.enableSpeechAdaptation});

  final TfArg<bool>? enableSpeechAdaptation;

  Map<String, Object?> encode() => {
    if (enableSpeechAdaptation != null)
      'enable_speech_adaptation': enableSpeechAdaptation!.toTfJson(),
  };
}

/// Typed helper for the `text_to_speech_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentTextToSpeechSettings {
  const DialogflowCxAgentTextToSpeechSettings({this.synthesizeSpeechConfigs});

  final TfArg<String>? synthesizeSpeechConfigs;

  Map<String, Object?> encode() => {
    if (synthesizeSpeechConfigs != null)
      'synthesize_speech_configs': synthesizeSpeechConfigs!.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_agent`.
///
/// Agents are best described as Natural Language Understanding (NLU) modules
/// that transform user requests into actionable data. You can include agents in
/// your app, product, or service to determine user intent and respond to the
/// user in a natural way.
///
/// Dialogflow CX **agent** — conversational agent (flows / playbooks /
/// tools) that drives billed CX sessions.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session for Dialogflow CX agents SKU `A1CC-751A-CDCC` **$0.20**/session
/// (Audio session `9496-0679-69BE` **$0.45**/session; Text query
/// `2DA2-9861-0744` **$0.007**/op). billing-behavior: agents are the
/// Dialogflow CX / Agentspace runtime surface — apply-smoke traffic or
/// linked chat engines accrue session charges; not safe for
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `dialogflow.googleapis.com` before apply.
final class GoogleDialogflowCxAgent extends Resource {
  static const String tfType = 'google_dialogflow_cx_agent';

  GoogleDialogflowCxAgent({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> location,
    required TfArg<String> defaultLanguageCode,
    required TfArg<String> timeZone,
    TfArg<String>? description,
    TfArg<List<String>>? supportedLanguageCodes,
    TfArg<String>? securitySettings,
    TfArg<String>? startPlaybook,
    TfArg<bool>? enableStackdriverLogging,
    TfArg<bool>? enableSpellCorrection,
    TfArg<bool>? enableMultiLanguageTraining,
    TfArg<bool>? locked,
    TfArg<String>? avatarUri,
    DialogflowCxAgentAdvancedSettings? advancedSettings,
    DialogflowCxAgentSpeechToTextSettings? speechToTextSettings,
    DialogflowCxAgentTextToSpeechSettings? textToSpeechSettings,
    DialogflowCxAgentGitIntegrationSettings? gitIntegrationSettings,
    DialogflowCxAgentGenAppBuilderSettings? genAppBuilderSettings,
    DialogflowCxAgentAnswerFeedbackSettings? answerFeedbackSettings,
    DialogflowCxAgentPersonalizationSettings? personalizationSettings,
    DialogflowCxAgentClientCertificateSettings? clientCertificateSettings,
    TfArg<bool>? deleteChatEngineOnDestroy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           'default_language_code': defaultLanguageCode,
           'time_zone': timeZone,
           if (description != null) 'description': description,
           if (supportedLanguageCodes != null)
             'supported_language_codes': supportedLanguageCodes,
           if (securitySettings != null) 'security_settings': securitySettings,
           if (startPlaybook != null) 'start_playbook': startPlaybook,
           if (enableStackdriverLogging != null)
             'enable_stackdriver_logging': enableStackdriverLogging,
           if (enableSpellCorrection != null)
             'enable_spell_correction': enableSpellCorrection,
           if (enableMultiLanguageTraining != null)
             'enable_multi_language_training': enableMultiLanguageTraining,
           if (locked != null) 'locked': locked,
           if (avatarUri != null) 'avatar_uri': avatarUri,
           if (advancedSettings != null)
             'advanced_settings': TfArg.literal(advancedSettings.encode()),
           if (speechToTextSettings != null)
             'speech_to_text_settings': TfArg.literal(
               speechToTextSettings.encode(),
             ),
           if (textToSpeechSettings != null)
             'text_to_speech_settings': TfArg.literal(
               textToSpeechSettings.encode(),
             ),
           if (gitIntegrationSettings != null)
             'git_integration_settings': TfArg.literal(
               gitIntegrationSettings.encode(),
             ),
           if (genAppBuilderSettings != null)
             'gen_app_builder_settings': TfArg.literal(
               genAppBuilderSettings.encode(),
             ),
           if (answerFeedbackSettings != null)
             'answer_feedback_settings': TfArg.literal(
               answerFeedbackSettings.encode(),
             ),
           if (personalizationSettings != null)
             'personalization_settings': TfArg.literal(
               personalizationSettings.encode(),
             ),
           if (clientCertificateSettings != null)
             'client_certificate_settings': TfArg.literal(
               clientCertificateSettings.encode(),
             ),
           if (deleteChatEngineOnDestroy != null)
             'delete_chat_engine_on_destroy': deleteChatEngineOnDestroy,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxAgentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `satisfies_pzi` attribute.
  TfRef<bool> get satisfiesPzi => TfRef.attribute<bool>(this, 'satisfies_pzi');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `start_flow` attribute.
  TfRef<String> get startFlow => TfRef.attribute<String>(this, 'start_flow');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
