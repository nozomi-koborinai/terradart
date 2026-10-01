// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_dialogflow_conversation_profile`.
const Set<String> _googleDialogflowConversationProfileSensitive = <String>{};

/// Typed helper for the `automated_agent_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileAutomatedAgentConfig {
  const DialogflowConversationProfileAutomatedAgentConfig({
    required this.agent,
    this.sessionTtl,
  });

  final TfArg<String> agent;

  final TfArg<String>? sessionTtl;

  Map<String, Object?> encode() => {
    'agent': agent.toTfJson(),
    'session_ttl': ?sessionTtl?.toTfJson(),
  };
}

/// Typed helper for the `human_agent_assistant_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileHumanAgentAssistantConfig {
  const DialogflowConversationProfileHumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  final DialogflowConversationProfileEndUserSuggestionConfig?
  endUserSuggestionConfig;

  final DialogflowConversationProfileHumanAgentSuggestionConfig?
  humanAgentSuggestionConfig;

  final DialogflowConversationProfileMessageAnalysisConfig?
  messageAnalysisConfig;

  final DialogflowConversationProfileNotificationConfig? notificationConfig;

  Map<String, Object?> encode() => {
    'end_user_suggestion_config': ?endUserSuggestionConfig?.encode(),
    'human_agent_suggestion_config': ?humanAgentSuggestionConfig?.encode(),
    'message_analysis_config': ?messageAnalysisConfig?.encode(),
    'notification_config': ?notificationConfig?.encode(),
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileEndUserSuggestionConfig {
  const DialogflowConversationProfileEndUserSuggestionConfig({
    this.disableHighLatencyFeaturesSyncDelivery,
    this.generators,
    this.groupSuggestionResponses,
    this.featureConfigs,
  });

  final TfArg<bool>? disableHighLatencyFeaturesSyncDelivery;

  final TfArg<List<String>>? generators;

  final TfArg<bool>? groupSuggestionResponses;

  final List<
    DialogflowConversationProfileEndUserSuggestionConfigFeatureConfigs
  >?
  featureConfigs;

  Map<String, Object?> encode() => {
    'disable_high_latency_features_sync_delivery':
        ?disableHighLatencyFeaturesSyncDelivery?.toTfJson(),
    'generators': ?generators?.toTfJson(),
    'group_suggestion_responses': ?groupSuggestionResponses?.toTfJson(),
    if (featureConfigs != null)
      'feature_configs': [for (final e in featureConfigs!) e.encode()],
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileEndUserSuggestionConfigFeatureConfigs {
  const DialogflowConversationProfileEndUserSuggestionConfigFeatureConfigs({
    this.disableAgentQueryLogging,
    this.enableConversationAugmentedQuery,
    this.enableEventBasedSuggestion,
    this.enableQuerySuggestionOnly,
    this.enableQuerySuggestionWhenNoAnswer,
    this.conversationModelConfig,
    this.conversationProcessConfig,
    this.queryConfig,
    this.suggestionFeature,
    this.suggestionTriggerSettings,
  });

  final TfArg<bool>? disableAgentQueryLogging;

  final TfArg<bool>? enableConversationAugmentedQuery;

  final TfArg<bool>? enableEventBasedSuggestion;

  final TfArg<bool>? enableQuerySuggestionOnly;

  final TfArg<bool>? enableQuerySuggestionWhenNoAnswer;

  final DialogflowConversationProfileConversationModelConfig?
  conversationModelConfig;

  final DialogflowConversationProfileConversationProcessConfig?
  conversationProcessConfig;

  final DialogflowConversationProfileEndUserSuggestionConfigQueryConfig?
  queryConfig;

  final DialogflowConversationProfileSuggestionFeature? suggestionFeature;

  final DialogflowConversationProfileSuggestionTriggerSettings?
  suggestionTriggerSettings;

  Map<String, Object?> encode() => {
    'disable_agent_query_logging': ?disableAgentQueryLogging?.toTfJson(),
    'enable_conversation_augmented_query': ?enableConversationAugmentedQuery
        ?.toTfJson(),
    'enable_event_based_suggestion': ?enableEventBasedSuggestion?.toTfJson(),
    'enable_query_suggestion_only': ?enableQuerySuggestionOnly?.toTfJson(),
    'enable_query_suggestion_when_no_answer': ?enableQuerySuggestionWhenNoAnswer
        ?.toTfJson(),
    'conversation_model_config': ?conversationModelConfig?.encode(),
    'conversation_process_config': ?conversationProcessConfig?.encode(),
    'query_config': ?queryConfig?.encode(),
    'suggestion_feature': ?suggestionFeature?.encode(),
    'suggestion_trigger_settings': ?suggestionTriggerSettings?.encode(),
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.conversation_model_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileConversationModelConfig {
  const DialogflowConversationProfileConversationModelConfig({
    this.baselineModelVersion,
    this.model,
  });

  final TfArg<String>? baselineModelVersion;

  final TfArg<String>? model;

  Map<String, Object?> encode() => {
    'baseline_model_version': ?baselineModelVersion?.toTfJson(),
    'model': ?model?.toTfJson(),
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.conversation_process_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileConversationProcessConfig {
  const DialogflowConversationProfileConversationProcessConfig({
    this.recentSentencesCount,
  });

  final TfArg<num>? recentSentencesCount;

  Map<String, Object?> encode() => {
    'recent_sentences_count': ?recentSentencesCount?.toTfJson(),
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.query_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileEndUserSuggestionConfigQueryConfig {
  const DialogflowConversationProfileEndUserSuggestionConfigQueryConfig({
    this.confidenceThreshold,
    this.maxResults,
    this.contextFilterSettings,
    this.dialogflowQuerySource,
    this.documentQuerySource,
    this.knowledgeBaseQuerySource,
    this.sections,
  });

  final TfArg<num>? confidenceThreshold;

  final TfArg<num>? maxResults;

  final DialogflowConversationProfileContextFilterSettings?
  contextFilterSettings;

  final DialogflowConversationProfileDialogflowQuerySource?
  dialogflowQuerySource;

  final DialogflowConversationProfileDocumentQuerySource? documentQuerySource;

  final DialogflowConversationProfileKnowledgeBaseQuerySource?
  knowledgeBaseQuerySource;

  final DialogflowConversationProfileSections? sections;

  Map<String, Object?> encode() => {
    'confidence_threshold': ?confidenceThreshold?.toTfJson(),
    'max_results': ?maxResults?.toTfJson(),
    'context_filter_settings': ?contextFilterSettings?.encode(),
    'dialogflow_query_source': ?dialogflowQuerySource?.encode(),
    'document_query_source': ?documentQuerySource?.encode(),
    'knowledge_base_query_source': ?knowledgeBaseQuerySource?.encode(),
    'sections': ?sections?.encode(),
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.query_config.context_filter_settings` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileContextFilterSettings {
  const DialogflowConversationProfileContextFilterSettings({
    this.dropHandoffMessages,
    this.dropIvrMessages,
    this.dropVirtualAgentMessages,
  });

  final TfArg<bool>? dropHandoffMessages;

  final TfArg<bool>? dropIvrMessages;

  final TfArg<bool>? dropVirtualAgentMessages;

  Map<String, Object?> encode() => {
    'drop_handoff_messages': ?dropHandoffMessages?.toTfJson(),
    'drop_ivr_messages': ?dropIvrMessages?.toTfJson(),
    'drop_virtual_agent_messages': ?dropVirtualAgentMessages?.toTfJson(),
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.query_config.dialogflow_query_source` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileDialogflowQuerySource {
  const DialogflowConversationProfileDialogflowQuerySource({
    required this.agent,
    this.humanAgentSideConfig,
  });

  final TfArg<String> agent;

  final DialogflowConversationProfileHumanAgentSideConfig? humanAgentSideConfig;

  Map<String, Object?> encode() => {
    'agent': agent.toTfJson(),
    'human_agent_side_config': ?humanAgentSideConfig?.encode(),
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.query_config.dialogflow_query_source.human_agent_side_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileHumanAgentSideConfig {
  const DialogflowConversationProfileHumanAgentSideConfig({this.agent});

  final TfArg<String>? agent;

  Map<String, Object?> encode() => {'agent': ?agent?.toTfJson()};
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.query_config.document_query_source` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileDocumentQuerySource {
  const DialogflowConversationProfileDocumentQuerySource({
    required this.documents,
  });

  final TfArg<List<String>> documents;

  Map<String, Object?> encode() => {'documents': documents.toTfJson()};
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.query_config.knowledge_base_query_source` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileKnowledgeBaseQuerySource {
  const DialogflowConversationProfileKnowledgeBaseQuerySource({
    required this.knowledgeBases,
  });

  final TfArg<List<String>> knowledgeBases;

  Map<String, Object?> encode() => {
    'knowledge_bases': knowledgeBases.toTfJson(),
  };
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.query_config.sections` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileSections {
  const DialogflowConversationProfileSections({this.sectionTypes});

  final List<DialogflowConversationProfileSectionTypes>? sectionTypes;

  Map<String, Object?> encode() => {
    if (sectionTypes != null)
      'section_types': [for (final e in sectionTypes!) e.toTfJson()],
  };
}

/// `section_types` — derived from the provider schema description.
extension type const DialogflowConversationProfileSectionTypes._(
  TfArg<String> _
) implements TfArg<String> {
  DialogflowConversationProfileSectionTypes.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowConversationProfileSectionTypes.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowConversationProfileSectionTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const sectionTypeUnspecified =
      DialogflowConversationProfileSectionTypes._(
        TfArgLiteral('SECTION_TYPE_UNSPECIFIED'),
      );
  static const situation = DialogflowConversationProfileSectionTypes._(
    TfArgLiteral('SITUATION'),
  );
  static const action = DialogflowConversationProfileSectionTypes._(
    TfArgLiteral('ACTION'),
  );
  static const resolution = DialogflowConversationProfileSectionTypes._(
    TfArgLiteral('RESOLUTION'),
  );
  static const reasonForCancellation =
      DialogflowConversationProfileSectionTypes._(
        TfArgLiteral('REASON_FOR_CANCELLATION'),
      );
  static const customerSatisfaction =
      DialogflowConversationProfileSectionTypes._(
        TfArgLiteral('CUSTOMER_SATISFACTION'),
      );
  static const entities = DialogflowConversationProfileSectionTypes._(
    TfArgLiteral('ENTITIES'),
  );

  static const List<DialogflowConversationProfileSectionTypes> values = [
    sectionTypeUnspecified,
    situation,
    action,
    resolution,
    reasonForCancellation,
    customerSatisfaction,
    entities,
  ];
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.suggestion_feature` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileSuggestionFeature {
  const DialogflowConversationProfileSuggestionFeature({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// Typed helper for the `human_agent_assistant_config.end_user_suggestion_config.feature_configs.suggestion_trigger_settings` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileSuggestionTriggerSettings {
  const DialogflowConversationProfileSuggestionTriggerSettings({
    this.noSmallTalk,
    this.onlyEndUser,
  });

  final TfArg<bool>? noSmallTalk;

  final TfArg<bool>? onlyEndUser;

  Map<String, Object?> encode() => {
    'no_small_talk': ?noSmallTalk?.toTfJson(),
    'only_end_user': ?onlyEndUser?.toTfJson(),
  };
}

/// Typed helper for the `human_agent_assistant_config.human_agent_suggestion_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileHumanAgentSuggestionConfig {
  const DialogflowConversationProfileHumanAgentSuggestionConfig({
    this.disableHighLatencyFeaturesSyncDelivery,
    this.generators,
    this.groupSuggestionResponses,
    this.featureConfigs,
  });

  final TfArg<bool>? disableHighLatencyFeaturesSyncDelivery;

  final TfArg<List<String>>? generators;

  final TfArg<bool>? groupSuggestionResponses;

  final List<
    DialogflowConversationProfileHumanAgentSuggestionConfigFeatureConfigs
  >?
  featureConfigs;

  Map<String, Object?> encode() => {
    'disable_high_latency_features_sync_delivery':
        ?disableHighLatencyFeaturesSyncDelivery?.toTfJson(),
    'generators': ?generators?.toTfJson(),
    'group_suggestion_responses': ?groupSuggestionResponses?.toTfJson(),
    if (featureConfigs != null)
      'feature_configs': [for (final e in featureConfigs!) e.encode()],
  };
}

/// Typed helper for the `human_agent_assistant_config.human_agent_suggestion_config.feature_configs` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileHumanAgentSuggestionConfigFeatureConfigs {
  const DialogflowConversationProfileHumanAgentSuggestionConfigFeatureConfigs({
    this.disableAgentQueryLogging,
    this.enableConversationAugmentedQuery,
    this.enableEventBasedSuggestion,
    this.enableQuerySuggestionOnly,
    this.enableQuerySuggestionWhenNoAnswer,
    this.conversationModelConfig,
    this.conversationProcessConfig,
    this.queryConfig,
    this.suggestionFeature,
    this.suggestionTriggerSettings,
  });

  final TfArg<bool>? disableAgentQueryLogging;

  final TfArg<bool>? enableConversationAugmentedQuery;

  final TfArg<bool>? enableEventBasedSuggestion;

  final TfArg<bool>? enableQuerySuggestionOnly;

  final TfArg<bool>? enableQuerySuggestionWhenNoAnswer;

  final DialogflowConversationProfileConversationModelConfig?
  conversationModelConfig;

  final DialogflowConversationProfileConversationProcessConfig?
  conversationProcessConfig;

  final DialogflowConversationProfileHumanAgentSuggestionConfigQueryConfig?
  queryConfig;

  final DialogflowConversationProfileSuggestionFeature? suggestionFeature;

  final DialogflowConversationProfileSuggestionTriggerSettings?
  suggestionTriggerSettings;

  Map<String, Object?> encode() => {
    'disable_agent_query_logging': ?disableAgentQueryLogging?.toTfJson(),
    'enable_conversation_augmented_query': ?enableConversationAugmentedQuery
        ?.toTfJson(),
    'enable_event_based_suggestion': ?enableEventBasedSuggestion?.toTfJson(),
    'enable_query_suggestion_only': ?enableQuerySuggestionOnly?.toTfJson(),
    'enable_query_suggestion_when_no_answer': ?enableQuerySuggestionWhenNoAnswer
        ?.toTfJson(),
    'conversation_model_config': ?conversationModelConfig?.encode(),
    'conversation_process_config': ?conversationProcessConfig?.encode(),
    'query_config': ?queryConfig?.encode(),
    'suggestion_feature': ?suggestionFeature?.encode(),
    'suggestion_trigger_settings': ?suggestionTriggerSettings?.encode(),
  };
}

/// Typed helper for the `human_agent_assistant_config.human_agent_suggestion_config.feature_configs.query_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileHumanAgentSuggestionConfigQueryConfig {
  const DialogflowConversationProfileHumanAgentSuggestionConfigQueryConfig({
    this.confidenceThreshold,
    this.maxResults,
    this.contextFilterSettings,
    this.dialogflowQuerySource,
    this.sections,
  });

  final TfArg<num>? confidenceThreshold;

  final TfArg<num>? maxResults;

  final DialogflowConversationProfileContextFilterSettings?
  contextFilterSettings;

  final DialogflowConversationProfileDialogflowQuerySource?
  dialogflowQuerySource;

  final DialogflowConversationProfileSections? sections;

  Map<String, Object?> encode() => {
    'confidence_threshold': ?confidenceThreshold?.toTfJson(),
    'max_results': ?maxResults?.toTfJson(),
    'context_filter_settings': ?contextFilterSettings?.encode(),
    'dialogflow_query_source': ?dialogflowQuerySource?.encode(),
    'sections': ?sections?.encode(),
  };
}

/// Typed helper for the `human_agent_assistant_config.message_analysis_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileMessageAnalysisConfig {
  const DialogflowConversationProfileMessageAnalysisConfig({
    this.enableEntityExtraction,
    this.enableSentimentAnalysis,
  });

  final TfArg<bool>? enableEntityExtraction;

  final TfArg<bool>? enableSentimentAnalysis;

  Map<String, Object?> encode() => {
    'enable_entity_extraction': ?enableEntityExtraction?.toTfJson(),
    'enable_sentiment_analysis': ?enableSentimentAnalysis?.toTfJson(),
  };
}

/// Typed helper for the `notification_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowConversationProfileNotificationConfig {
  const DialogflowConversationProfileNotificationConfig({
    this.messageFormat,
    this.topic,
  });

  final DialogflowConversationProfileMessageFormat? messageFormat;

  final RefTo<GooglePubsubTopic>? topic;

  Map<String, Object?> encode() => {
    'message_format': ?messageFormat?.toTfJson(),
    'topic': ?topic?.encodeAs('id').toTfJson(),
  };
}

/// `message_format` — derived from the provider schema description.
extension type const DialogflowConversationProfileMessageFormat._(
  TfArg<String> _
) implements TfArg<String> {
  DialogflowConversationProfileMessageFormat.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowConversationProfileMessageFormat.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowConversationProfileMessageFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const messageFormatUnspecified =
      DialogflowConversationProfileMessageFormat._(
        TfArgLiteral('MESSAGE_FORMAT_UNSPECIFIED'),
      );
  static const proto = DialogflowConversationProfileMessageFormat._(
    TfArgLiteral('PROTO'),
  );
  static const json = DialogflowConversationProfileMessageFormat._(
    TfArgLiteral('JSON'),
  );

  static const List<DialogflowConversationProfileMessageFormat> values = [
    messageFormatUnspecified,
    proto,
    json,
  ];
}

/// Typed helper for the `human_agent_handoff_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileHumanAgentHandoffConfig {
  const DialogflowConversationProfileHumanAgentHandoffConfig({
    this.livePersonConfig,
  });

  final DialogflowConversationProfileLivePersonConfig? livePersonConfig;

  Map<String, Object?> encode() => {
    'live_person_config': ?livePersonConfig?.encode(),
  };
}

/// Typed helper for the `human_agent_handoff_config.live_person_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileLivePersonConfig {
  const DialogflowConversationProfileLivePersonConfig({
    required this.accountNumber,
  });

  final TfArg<String> accountNumber;

  Map<String, Object?> encode() => {'account_number': accountNumber.toTfJson()};
}

/// Typed helper for the `logging_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileLoggingConfig {
  const DialogflowConversationProfileLoggingConfig({
    this.enableStackdriverLogging,
  });

  final TfArg<bool>? enableStackdriverLogging;

  Map<String, Object?> encode() => {
    'enable_stackdriver_logging': ?enableStackdriverLogging?.toTfJson(),
  };
}

/// Typed helper for the `new_message_event_notification_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileNewMessageEventNotificationConfig {
  const DialogflowConversationProfileNewMessageEventNotificationConfig({
    this.messageFormat,
    this.topic,
  });

  final DialogflowConversationProfileMessageFormat? messageFormat;

  final RefTo<GooglePubsubTopic>? topic;

  Map<String, Object?> encode() => {
    'message_format': ?messageFormat?.toTfJson(),
    'topic': ?topic?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `new_recognition_result_notification_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileNewRecognitionResultNotificationConfig {
  const DialogflowConversationProfileNewRecognitionResultNotificationConfig({
    this.messageFormat,
    this.topic,
  });

  final DialogflowConversationProfileMessageFormat? messageFormat;

  final RefTo<GooglePubsubTopic>? topic;

  Map<String, Object?> encode() => {
    'message_format': ?messageFormat?.toTfJson(),
    'topic': ?topic?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `stt_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileSttConfig {
  const DialogflowConversationProfileSttConfig({
    this.audioEncoding,
    this.enableWordInfo,
    this.languageCode,
    this.model,
    this.sampleRateHertz,
    this.speechModelVariant,
    this.useTimeoutBasedEndpointing,
  });

  final DialogflowConversationProfileAudioEncoding? audioEncoding;

  final TfArg<bool>? enableWordInfo;

  final TfArg<String>? languageCode;

  final TfArg<String>? model;

  final TfArg<num>? sampleRateHertz;

  final DialogflowConversationProfileSpeechModelVariant? speechModelVariant;

  final TfArg<bool>? useTimeoutBasedEndpointing;

  Map<String, Object?> encode() => {
    'audio_encoding': ?audioEncoding?.toTfJson(),
    'enable_word_info': ?enableWordInfo?.toTfJson(),
    'language_code': ?languageCode?.toTfJson(),
    'model': ?model?.toTfJson(),
    'sample_rate_hertz': ?sampleRateHertz?.toTfJson(),
    'speech_model_variant': ?speechModelVariant?.toTfJson(),
    'use_timeout_based_endpointing': ?useTimeoutBasedEndpointing?.toTfJson(),
  };
}

/// `audio_encoding` — derived from the provider schema description.
extension type const DialogflowConversationProfileAudioEncoding._(
  TfArg<String> _
) implements TfArg<String> {
  DialogflowConversationProfileAudioEncoding.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowConversationProfileAudioEncoding.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowConversationProfileAudioEncoding.arg(TfArg<String> arg)
    : this._(arg);

  static const audioEncodingUnspecified =
      DialogflowConversationProfileAudioEncoding._(
        TfArgLiteral('AUDIO_ENCODING_UNSPECIFIED'),
      );
  static const audioEncodingLinear16 =
      DialogflowConversationProfileAudioEncoding._(
        TfArgLiteral('AUDIO_ENCODING_LINEAR_16'),
      );
  static const audioEncodingFlac = DialogflowConversationProfileAudioEncoding._(
    TfArgLiteral('AUDIO_ENCODING_FLAC'),
  );
  static const audioEncodingMulaw =
      DialogflowConversationProfileAudioEncoding._(
        TfArgLiteral('AUDIO_ENCODING_MULAW'),
      );
  static const audioEncodingAmr = DialogflowConversationProfileAudioEncoding._(
    TfArgLiteral('AUDIO_ENCODING_AMR'),
  );
  static const audioEncodingAmrWb =
      DialogflowConversationProfileAudioEncoding._(
        TfArgLiteral('AUDIO_ENCODING_AMR_WB'),
      );
  static const audioEncodingOggOpus =
      DialogflowConversationProfileAudioEncoding._(
        TfArgLiteral('AUDIO_ENCODING_OGG_OPUS'),
      );
  static const audioEncodingSpeexWithHeaderByte =
      DialogflowConversationProfileAudioEncoding._(
        TfArgLiteral('AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE'),
      );

  static const List<DialogflowConversationProfileAudioEncoding> values = [
    audioEncodingUnspecified,
    audioEncodingLinear16,
    audioEncodingFlac,
    audioEncodingMulaw,
    audioEncodingAmr,
    audioEncodingAmrWb,
    audioEncodingOggOpus,
    audioEncodingSpeexWithHeaderByte,
  ];
}

/// `speech_model_variant` — derived from the provider schema description.
extension type const DialogflowConversationProfileSpeechModelVariant._(
  TfArg<String> _
) implements TfArg<String> {
  DialogflowConversationProfileSpeechModelVariant.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowConversationProfileSpeechModelVariant.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowConversationProfileSpeechModelVariant.arg(TfArg<String> arg)
    : this._(arg);

  static const speechModelVariantUnspecified =
      DialogflowConversationProfileSpeechModelVariant._(
        TfArgLiteral('SPEECH_MODEL_VARIANT_UNSPECIFIED'),
      );
  static const useBestAvailable =
      DialogflowConversationProfileSpeechModelVariant._(
        TfArgLiteral('USE_BEST_AVAILABLE'),
      );
  static const useStandard = DialogflowConversationProfileSpeechModelVariant._(
    TfArgLiteral('USE_STANDARD'),
  );
  static const useEnhanced = DialogflowConversationProfileSpeechModelVariant._(
    TfArgLiteral('USE_ENHANCED'),
  );

  static const List<DialogflowConversationProfileSpeechModelVariant> values = [
    speechModelVariantUnspecified,
    useBestAvailable,
    useStandard,
    useEnhanced,
  ];
}

/// Typed helper for the `tts_config` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileTtsConfig {
  const DialogflowConversationProfileTtsConfig({
    this.effectsProfileId,
    this.pitch,
    this.speakingRate,
    this.volumeGainDb,
    this.voice,
  });

  final TfArg<List<String>>? effectsProfileId;

  final TfArg<num>? pitch;

  final TfArg<num>? speakingRate;

  final TfArg<num>? volumeGainDb;

  final DialogflowConversationProfileVoice? voice;

  Map<String, Object?> encode() => {
    'effects_profile_id': ?effectsProfileId?.toTfJson(),
    'pitch': ?pitch?.toTfJson(),
    'speaking_rate': ?speakingRate?.toTfJson(),
    'volume_gain_db': ?volumeGainDb?.toTfJson(),
    'voice': ?voice?.encode(),
  };
}

/// Typed helper for the `tts_config.voice` block of
/// `google_dialogflow_conversation_profile` (derived from provider schema).
@immutable
final class DialogflowConversationProfileVoice {
  const DialogflowConversationProfileVoice({this.name, this.ssmlGender});

  final TfArg<String>? name;

  final DialogflowConversationProfileSsmlGender? ssmlGender;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'ssml_gender': ?ssmlGender?.toTfJson(),
  };
}

/// `ssml_gender` — derived from the provider schema description.
extension type const DialogflowConversationProfileSsmlGender._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowConversationProfileSsmlGender.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowConversationProfileSsmlGender.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowConversationProfileSsmlGender.arg(TfArg<String> arg)
    : this._(arg);

  static const ssmlVoiceGenderUnspecified =
      DialogflowConversationProfileSsmlGender._(
        TfArgLiteral('SSML_VOICE_GENDER_UNSPECIFIED'),
      );
  static const ssmlVoiceGenderMale = DialogflowConversationProfileSsmlGender._(
    TfArgLiteral('SSML_VOICE_GENDER_MALE'),
  );
  static const ssmlVoiceGenderFemale =
      DialogflowConversationProfileSsmlGender._(
        TfArgLiteral('SSML_VOICE_GENDER_FEMALE'),
      );
  static const ssmlVoiceGenderNeutral =
      DialogflowConversationProfileSsmlGender._(
        TfArgLiteral('SSML_VOICE_GENDER_NEUTRAL'),
      );

  static const List<DialogflowConversationProfileSsmlGender> values = [
    ssmlVoiceGenderUnspecified,
    ssmlVoiceGenderMale,
    ssmlVoiceGenderFemale,
    ssmlVoiceGenderNeutral,
  ];
}

/// Factory wrapper for `google_dialogflow_conversation_profile`.
///
/// A conversation profile configures a set of parameters that control the
/// suggestions made to an agent. These parameters control the suggestions that
/// are surfaced during runtime. Each profile configures either a Dialogflow
/// virtual agent or a human agent for a conversation.
///
/// Dialogflow ES **conversation profile** — Agent Assist config
/// metadata. Creating the profile does **not** start a conversation,
/// call DetectIntent, or enable speech / suggestions.
///
/// Prefer a thin smoke stack: [displayName] plus [location] `global`.
/// Omit automated-agent, human-agent-assistant, STT, TTS, and
/// notification blocks so no runtime path is wired. Set
/// [deletionPolicy] to `DELETE`.
///
/// `dialogflow_quickstart` is apply-smoke skipped (SIP trunk needs
/// a live carrier TLS peer), so this factory is synth +
/// `terraform validate` only.
///
/// Example:
/// ```dart
/// GoogleDialogflowConversationProfile(
///   'demo_profile',
///   displayName: TfArg.literal('terradart-profile'),
///   location: TfArg.literal('global'),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleDialogflowConversationProfile extends Resource {
  static const String tfType = 'google_dialogflow_conversation_profile';

  GoogleDialogflowConversationProfile(
    super.localName, {
    required TfArg<String> displayName,
    required TfArg<String> location,
    TfArg<String>? languageCode,
    TfArg<String>? timeZone,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    TfArg<String>? securitySettings,
    DialogflowConversationProfileAutomatedAgentConfig? automatedAgentConfig,
    DialogflowConversationProfileHumanAgentAssistantConfig?
    humanAgentAssistantConfig,
    DialogflowConversationProfileHumanAgentHandoffConfig?
    humanAgentHandoffConfig,
    DialogflowConversationProfileLoggingConfig? loggingConfig,
    DialogflowConversationProfileNewMessageEventNotificationConfig?
    newMessageEventNotificationConfig,
    DialogflowConversationProfileNewRecognitionResultNotificationConfig?
    newRecognitionResultNotificationConfig,
    DialogflowConversationProfileNotificationConfig? notificationConfig,
    DialogflowConversationProfileSttConfig? sttConfig,
    DialogflowConversationProfileTtsConfig? ttsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'location': location,
           'language_code': ?languageCode,
           'time_zone': ?timeZone,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
           'security_settings': ?securitySettings,
           if (automatedAgentConfig != null)
             'automated_agent_config': TfArg.literal(
               automatedAgentConfig.encode(),
             ),
           if (humanAgentAssistantConfig != null)
             'human_agent_assistant_config': TfArg.literal(
               humanAgentAssistantConfig.encode(),
             ),
           if (humanAgentHandoffConfig != null)
             'human_agent_handoff_config': TfArg.literal(
               humanAgentHandoffConfig.encode(),
             ),
           if (loggingConfig != null)
             'logging_config': TfArg.literal(loggingConfig.encode()),
           if (newMessageEventNotificationConfig != null)
             'new_message_event_notification_config': TfArg.literal(
               newMessageEventNotificationConfig.encode(),
             ),
           if (newRecognitionResultNotificationConfig != null)
             'new_recognition_result_notification_config': TfArg.literal(
               newRecognitionResultNotificationConfig.encode(),
             ),
           if (notificationConfig != null)
             'notification_config': TfArg.literal(notificationConfig.encode()),
           if (sttConfig != null)
             'stt_config': TfArg.literal(sttConfig.encode()),
           if (ttsConfig != null)
             'tts_config': TfArg.literal(ttsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDialogflowConversationProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowConversationProfile>`.
  RefTo<GoogleDialogflowConversationProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `security_settings` attribute.
  TfRef<String> get securitySettings =>
      TfRef.attribute<String>(this, 'security_settings');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
