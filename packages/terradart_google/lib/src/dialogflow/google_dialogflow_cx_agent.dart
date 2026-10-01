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

  final DialogflowCxAgentAudioExportGcsDestination? audioExportGcsDestination;

  final DialogflowCxAgentDtmfSettings? dtmfSettings;

  final DialogflowCxAgentLoggingSettings? loggingSettings;

  final DialogflowCxAgentSpeechSettings? speechSettings;

  Map<String, Object?> encode() => {
    'audio_export_gcs_destination': ?audioExportGcsDestination?.encode(),
    'dtmf_settings': ?dtmfSettings?.encode(),
    'logging_settings': ?loggingSettings?.encode(),
    'speech_settings': ?speechSettings?.encode(),
  };
}

/// Typed helper for the `advanced_settings.audio_export_gcs_destination` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentAudioExportGcsDestination {
  const DialogflowCxAgentAudioExportGcsDestination({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// Typed helper for the `advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentDtmfSettings {
  const DialogflowCxAgentDtmfSettings({
    this.enabled,
    this.finishDigit,
    this.maxDigits,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? finishDigit;

  final TfArg<num>? maxDigits;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'finish_digit': ?finishDigit?.toTfJson(),
    'max_digits': ?maxDigits?.toTfJson(),
  };
}

/// Typed helper for the `advanced_settings.logging_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentLoggingSettings {
  const DialogflowCxAgentLoggingSettings({
    this.enableConsentBasedRedaction,
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  final TfArg<bool>? enableConsentBasedRedaction;

  final TfArg<bool>? enableInteractionLogging;

  final TfArg<bool>? enableStackdriverLogging;

  Map<String, Object?> encode() => {
    'enable_consent_based_redaction': ?enableConsentBasedRedaction?.toTfJson(),
    'enable_interaction_logging': ?enableInteractionLogging?.toTfJson(),
    'enable_stackdriver_logging': ?enableStackdriverLogging?.toTfJson(),
  };
}

/// Typed helper for the `advanced_settings.speech_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentSpeechSettings {
  const DialogflowCxAgentSpeechSettings({
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
    'endpointer_sensitivity': ?endpointerSensitivity?.toTfJson(),
    'models': ?models?.toTfJson(),
    'no_speech_timeout': ?noSpeechTimeout?.toTfJson(),
    'use_timeout_based_endpointing': ?useTimeoutBasedEndpointing?.toTfJson(),
  };
}

/// Typed helper for the `answer_feedback_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentAnswerFeedbackSettings {
  const DialogflowCxAgentAnswerFeedbackSettings({this.enableAnswerFeedback});

  final TfArg<bool>? enableAnswerFeedback;

  Map<String, Object?> encode() => {
    'enable_answer_feedback': ?enableAnswerFeedback?.toTfJson(),
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
    'passphrase': ?passphrase?.toTfJson(),
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

  final DialogflowCxAgentGithubSettings? githubSettings;

  Map<String, Object?> encode() => {
    'github_settings': ?githubSettings?.encode(),
  };
}

/// Typed helper for the `git_integration_settings.github_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentGithubSettings {
  const DialogflowCxAgentGithubSettings({
    this.accessToken,
    this.branches,
    this.displayName,
    this.repositoryUri,
    this.trackingBranch,
  });

  final TfArg<String>? accessToken;

  final TfArg<List<String>>? branches;

  final TfArg<String>? displayName;

  final TfArg<String>? repositoryUri;

  final TfArg<String>? trackingBranch;

  Map<String, Object?> encode() => {
    'access_token': ?accessToken?.toTfJson(),
    'branches': ?branches?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'repository_uri': ?repositoryUri?.toTfJson(),
    'tracking_branch': ?trackingBranch?.toTfJson(),
  };
}

/// Typed helper for the `personalization_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentPersonalizationSettings {
  const DialogflowCxAgentPersonalizationSettings({this.defaultEndUserMetadata});

  final TfArg<String>? defaultEndUserMetadata;

  Map<String, Object?> encode() => {
    'default_end_user_metadata': ?defaultEndUserMetadata?.toTfJson(),
  };
}

/// Typed helper for the `speech_to_text_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentSpeechToTextSettings {
  const DialogflowCxAgentSpeechToTextSettings({this.enableSpeechAdaptation});

  final TfArg<bool>? enableSpeechAdaptation;

  Map<String, Object?> encode() => {
    'enable_speech_adaptation': ?enableSpeechAdaptation?.toTfJson(),
  };
}

/// Typed helper for the `text_to_speech_settings` block of
/// `google_dialogflow_cx_agent` (derived from provider schema).
@immutable
final class DialogflowCxAgentTextToSpeechSettings {
  const DialogflowCxAgentTextToSpeechSettings({this.synthesizeSpeechConfigs});

  final TfArg<String>? synthesizeSpeechConfigs;

  Map<String, Object?> encode() => {
    'synthesize_speech_configs': ?synthesizeSpeechConfigs?.toTfJson(),
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

  GoogleDialogflowCxAgent(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           'default_language_code': defaultLanguageCode,
           'time_zone': timeZone,
           'description': ?description,
           'supported_language_codes': ?supportedLanguageCodes,
           'security_settings': ?securitySettings,
           'start_playbook': ?startPlaybook,
           'enable_stackdriver_logging': ?enableStackdriverLogging,
           'enable_spell_correction': ?enableSpellCorrection,
           'enable_multi_language_training': ?enableMultiLanguageTraining,
           'locked': ?locked,
           'avatar_uri': ?avatarUri,
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
           'delete_chat_engine_on_destroy': ?deleteChatEngineOnDestroy,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxAgentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxAgent>`.
  RefTo<GoogleDialogflowCxAgent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `satisfies_pzi` attribute.
  TfRef<bool> get satisfiesPzi => TfRef.attribute<bool>(this, 'satisfies_pzi');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `start_flow` attribute.
  TfRef<String> get startFlow => TfRef.attribute<String>(this, 'start_flow');

  /// Reference to `avatar_uri` attribute.
  TfRef<String> get avatarUri => TfRef.attribute<String>(this, 'avatar_uri');

  /// Reference to `default_language_code` attribute.
  TfRef<String> get defaultLanguageCode =>
      TfRef.attribute<String>(this, 'default_language_code');

  /// Reference to `delete_chat_engine_on_destroy` attribute.
  TfRef<bool> get deleteChatEngineOnDestroy =>
      TfRef.attribute<bool>(this, 'delete_chat_engine_on_destroy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_multi_language_training` attribute.
  TfRef<bool> get enableMultiLanguageTraining =>
      TfRef.attribute<bool>(this, 'enable_multi_language_training');

  /// Reference to `enable_spell_correction` attribute.
  TfRef<bool> get enableSpellCorrection =>
      TfRef.attribute<bool>(this, 'enable_spell_correction');

  /// Reference to `enable_stackdriver_logging` attribute.
  TfRef<bool> get enableStackdriverLogging =>
      TfRef.attribute<bool>(this, 'enable_stackdriver_logging');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `locked` attribute.
  TfRef<bool> get locked => TfRef.attribute<bool>(this, 'locked');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `security_settings` attribute.
  TfRef<String> get securitySettings =>
      TfRef.attribute<String>(this, 'security_settings');

  /// Reference to `start_playbook` attribute.
  TfRef<String> get startPlaybook =>
      TfRef.attribute<String>(this, 'start_playbook');

  /// Reference to `supported_language_codes` attribute.
  TfRef<List<String>> get supportedLanguageCodes =>
      TfRef.attribute<List<String>>(this, 'supported_language_codes');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
