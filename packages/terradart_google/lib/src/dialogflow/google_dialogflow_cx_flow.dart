// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_flow`.
const Set<String> _googleDialogflowCxFlowSensitive = <String>{};

/// Typed helper for the `advanced_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowAdvancedSettings {
  const DialogflowCxFlowAdvancedSettings({
    this.audioExportGcsDestination,
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  final DialogflowCxFlowAdvancedSettingsAudioExportGcsDestination?
  audioExportGcsDestination;

  final DialogflowCxFlowAdvancedSettingsDtmfSettings? dtmfSettings;

  final DialogflowCxFlowAdvancedSettingsLoggingSettings? loggingSettings;

  final DialogflowCxFlowAdvancedSettingsSpeechSettings? speechSettings;

  Map<String, Object?> encode() => {
    if (audioExportGcsDestination != null)
      'audio_export_gcs_destination': audioExportGcsDestination!.encode(),
    if (dtmfSettings != null) 'dtmf_settings': dtmfSettings!.encode(),
    if (loggingSettings != null) 'logging_settings': loggingSettings!.encode(),
    if (speechSettings != null) 'speech_settings': speechSettings!.encode(),
  };
}

/// Typed helper for the `advanced_settings.audio_export_gcs_destination` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowAdvancedSettingsAudioExportGcsDestination {
  const DialogflowCxFlowAdvancedSettingsAudioExportGcsDestination({this.uri});

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {if (uri != null) 'uri': uri!.toTfJson()};
}

/// Typed helper for the `advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowAdvancedSettingsDtmfSettings {
  const DialogflowCxFlowAdvancedSettingsDtmfSettings({
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
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowAdvancedSettingsLoggingSettings {
  const DialogflowCxFlowAdvancedSettingsLoggingSettings({
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
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowAdvancedSettingsSpeechSettings {
  const DialogflowCxFlowAdvancedSettingsSpeechSettings({
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

/// Typed helper for the `event_handlers` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlers {
  const DialogflowCxFlowEventHandlers({
    this.event,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  final TfArg<String>? event;

  final TfArg<String>? targetFlow;

  final TfArg<String>? targetPage;

  final DialogflowCxFlowEventHandlersTriggerFulfillment? triggerFulfillment;

  Map<String, Object?> encode() => {
    if (event != null) 'event': event!.toTfJson(),
    if (targetFlow != null) 'target_flow': targetFlow!.toTfJson(),
    if (targetPage != null) 'target_page': targetPage!.toTfJson(),
    if (triggerFulfillment != null)
      'trigger_fulfillment': triggerFulfillment!.encode(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillment {
  const DialogflowCxFlowEventHandlersTriggerFulfillment({
    this.enableGenerativeFallback,
    this.returnPartialResponses,
    this.tag,
    this.webhook,
    this.conditionalCases,
    this.messages,
    this.setParameterActions,
  });

  final TfArg<bool>? enableGenerativeFallback;

  final TfArg<bool>? returnPartialResponses;

  final TfArg<String>? tag;

  final TfArg<String>? webhook;

  final List<DialogflowCxFlowEventHandlersTriggerFulfillmentConditionalCases>?
  conditionalCases;

  final List<DialogflowCxFlowEventHandlersTriggerFulfillmentMessages>? messages;

  final List<
    DialogflowCxFlowEventHandlersTriggerFulfillmentSetParameterActions
  >?
  setParameterActions;

  Map<String, Object?> encode() => {
    if (enableGenerativeFallback != null)
      'enable_generative_fallback': enableGenerativeFallback!.toTfJson(),
    if (returnPartialResponses != null)
      'return_partial_responses': returnPartialResponses!.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
    if (webhook != null) 'webhook': webhook!.toTfJson(),
    if (conditionalCases != null)
      'conditional_cases': [for (final e in conditionalCases!) e.encode()],
    if (messages != null) 'messages': [for (final e in messages!) e.encode()],
    if (setParameterActions != null)
      'set_parameter_actions': [
        for (final e in setParameterActions!) e.encode(),
      ],
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentConditionalCases {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentConditionalCases({
    this.cases,
  });

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {
    if (cases != null) 'cases': cases!.toTfJson(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentMessages {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentMessages({
    this.channel,
    this.payload,
    this.conversationSuccess,
    this.liveAgentHandoff,
    this.outputAudioText,
    this.playAudio,
    this.telephonyTransferCall,
    this.text,
  });

  final TfArg<String>? channel;

  final TfArg<String>? payload;

  final DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesPlayAudio?
  playAudio;

  final DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesText? text;

  Map<String, Object?> encode() => {
    if (channel != null) 'channel': channel!.toTfJson(),
    if (payload != null) 'payload': payload!.toTfJson(),
    if (conversationSuccess != null)
      'conversation_success': conversationSuccess!.encode(),
    if (liveAgentHandoff != null)
      'live_agent_handoff': liveAgentHandoff!.encode(),
    if (outputAudioText != null) 'output_audio_text': outputAudioText!.encode(),
    if (playAudio != null) 'play_audio': playAudio!.encode(),
    if (telephonyTransferCall != null)
      'telephony_transfer_call': telephonyTransferCall!.encode(),
    if (text != null) 'text': text!.encode(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesConversationSuccess {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {
    if (metadata != null) 'metadata': metadata!.toTfJson(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {
    if (metadata != null) 'metadata': metadata!.toTfJson(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesOutputAudioText {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    if (ssml != null) 'ssml': ssml!.toTfJson(),
    if (text != null) 'text': text!.toTfJson(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesPlayAudio {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.text` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesText {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentMessagesText({
    this.text,
  });

  final TfArg<List<Object?>>? text;

  Map<String, Object?> encode() => {if (text != null) 'text': text!.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowEventHandlersTriggerFulfillmentSetParameterActions {
  const DialogflowCxFlowEventHandlersTriggerFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (parameter != null) 'parameter': parameter!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettings {
  const DialogflowCxFlowKnowledgeConnectorSettings({
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.dataStoreConnections,
    this.triggerFulfillment,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? targetFlow;

  final TfArg<String>? targetPage;

  final List<DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnections>?
  dataStoreConnections;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillment?
  triggerFulfillment;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (targetFlow != null) 'target_flow': targetFlow!.toTfJson(),
    if (targetPage != null) 'target_page': targetPage!.toTfJson(),
    if (dataStoreConnections != null)
      'data_store_connections': [
        for (final e in dataStoreConnections!) e.encode(),
      ],
    if (triggerFulfillment != null)
      'trigger_fulfillment': triggerFulfillment!.encode(),
  };
}

/// Typed helper for the `knowledge_connector_settings.data_store_connections` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnections {
  const DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnections({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  final TfArg<String>? dataStore;

  final TfArg<
    DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnectionsDataStoreType
  >?
  dataStoreType;

  final TfArg<
    DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnectionsDocumentProcessingMode
  >?
  documentProcessingMode;

  Map<String, Object?> encode() => {
    if (dataStore != null) 'data_store': dataStore!.toTfJson(),
    if (dataStoreType != null) 'data_store_type': dataStoreType!.toTfJson(),
    if (documentProcessingMode != null)
      'document_processing_mode': documentProcessingMode!.toTfJson(),
  };
}

/// `data_store_type` — derived from the provider schema description.
enum DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnectionsDataStoreType
    implements TerraformEnum {
  publicWeb('PUBLIC_WEB'),
  unstructured('UNSTRUCTURED'),
  structured('STRUCTURED');

  const DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnectionsDataStoreType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `document_processing_mode` — derived from the provider schema description.
enum DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnectionsDocumentProcessingMode
    implements TerraformEnum {
  documents('DOCUMENTS'),
  chunks('CHUNKS');

  const DialogflowCxFlowKnowledgeConnectorSettingsDataStoreConnectionsDocumentProcessingMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillment {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillment({
    this.enableGenerativeFallback,
    this.returnPartialResponses,
    this.tag,
    this.webhook,
    this.advancedSettings,
    this.conditionalCases,
    this.messages,
    this.setParameterActions,
  });

  final TfArg<bool>? enableGenerativeFallback;

  final TfArg<bool>? returnPartialResponses;

  final TfArg<String>? tag;

  final TfArg<String>? webhook;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings?
  advancedSettings;

  final List<
    DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCases
  >?
  conditionalCases;

  final List<
    DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessages
  >?
  messages;

  final List<
    DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActions
  >?
  setParameterActions;

  Map<String, Object?> encode() => {
    if (enableGenerativeFallback != null)
      'enable_generative_fallback': enableGenerativeFallback!.toTfJson(),
    if (returnPartialResponses != null)
      'return_partial_responses': returnPartialResponses!.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
    if (webhook != null) 'webhook': webhook!.toTfJson(),
    if (advancedSettings != null)
      'advanced_settings': advancedSettings!.encode(),
    if (conditionalCases != null)
      'conditional_cases': [for (final e in conditionalCases!) e.encode()],
    if (messages != null) 'messages': [for (final e in messages!) e.encode()],
    if (setParameterActions != null)
      'set_parameter_actions': [
        for (final e in setParameterActions!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.advanced_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings({
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings?
  dtmfSettings;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings?
  loggingSettings;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings?
  speechSettings;

  Map<String, Object?> encode() => {
    if (dtmfSettings != null) 'dtmf_settings': dtmfSettings!.encode(),
    if (loggingSettings != null) 'logging_settings': loggingSettings!.encode(),
    if (speechSettings != null) 'speech_settings': speechSettings!.encode(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings({
    this.enabled,
    this.endpointingTimeoutDuration,
    this.finishDigit,
    this.interdigitTimeoutDuration,
    this.maxDigits,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? endpointingTimeoutDuration;

  final TfArg<String>? finishDigit;

  final TfArg<String>? interdigitTimeoutDuration;

  final TfArg<num>? maxDigits;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (endpointingTimeoutDuration != null)
      'endpointing_timeout_duration': endpointingTimeoutDuration!.toTfJson(),
    if (finishDigit != null) 'finish_digit': finishDigit!.toTfJson(),
    if (interdigitTimeoutDuration != null)
      'interdigit_timeout_duration': interdigitTimeoutDuration!.toTfJson(),
    if (maxDigits != null) 'max_digits': maxDigits!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.advanced_settings.logging_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings({
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

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.advanced_settings.speech_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings({
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

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCases {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentConditionalCases({
    this.cases,
  });

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {
    if (cases != null) 'cases': cases!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessages {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessages({
    this.channel,
    this.payload,
    this.conversationSuccess,
    this.knowledgeInfoCard,
    this.liveAgentHandoff,
    this.outputAudioText,
    this.playAudio,
    this.telephonyTransferCall,
    this.text,
  });

  final TfArg<String>? channel;

  final TfArg<String>? payload;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesKnowledgeInfoCard?
  knowledgeInfoCard;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesPlayAudio?
  playAudio;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesText?
  text;

  Map<String, Object?> encode() => {
    if (channel != null) 'channel': channel!.toTfJson(),
    if (payload != null) 'payload': payload!.toTfJson(),
    if (conversationSuccess != null)
      'conversation_success': conversationSuccess!.encode(),
    if (knowledgeInfoCard != null)
      'knowledge_info_card': knowledgeInfoCard!.encode(),
    if (liveAgentHandoff != null)
      'live_agent_handoff': liveAgentHandoff!.encode(),
    if (outputAudioText != null) 'output_audio_text': outputAudioText!.encode(),
    if (playAudio != null) 'play_audio': playAudio!.encode(),
    if (telephonyTransferCall != null)
      'telephony_transfer_call': telephonyTransferCall!.encode(),
    if (text != null) 'text': text!.encode(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesConversationSuccess {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {
    if (metadata != null) 'metadata': metadata!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.knowledge_info_card` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesKnowledgeInfoCard {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesKnowledgeInfoCard();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {
    if (metadata != null) 'metadata': metadata!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesOutputAudioText {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    if (ssml != null) 'ssml': ssml!.toTfJson(),
    if (text != null) 'text': text!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesPlayAudio {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.text` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesText {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessagesText({
    this.text,
  });

  final TfArg<List<Object?>>? text;

  Map<String, Object?> encode() => {if (text != null) 'text': text!.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActions {
  const DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (parameter != null) 'parameter': parameter!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `nlu_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowNluSettings {
  const DialogflowCxFlowNluSettings({
    this.classificationThreshold,
    this.modelTrainingMode,
    this.modelType,
  });

  final TfArg<num>? classificationThreshold;

  final TfArg<DialogflowCxFlowNluSettingsModelTrainingMode>? modelTrainingMode;

  final TfArg<DialogflowCxFlowNluSettingsModelType>? modelType;

  Map<String, Object?> encode() => {
    if (classificationThreshold != null)
      'classification_threshold': classificationThreshold!.toTfJson(),
    if (modelTrainingMode != null)
      'model_training_mode': modelTrainingMode!.toTfJson(),
    if (modelType != null) 'model_type': modelType!.toTfJson(),
  };
}

/// `model_training_mode` — derived from the provider schema description.
enum DialogflowCxFlowNluSettingsModelTrainingMode implements TerraformEnum {
  modelTrainingModeAutomatic('MODEL_TRAINING_MODE_AUTOMATIC'),
  modelTrainingModeManual('MODEL_TRAINING_MODE_MANUAL');

  const DialogflowCxFlowNluSettingsModelTrainingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `model_type` — derived from the provider schema description.
enum DialogflowCxFlowNluSettingsModelType implements TerraformEnum {
  modelTypeStandard('MODEL_TYPE_STANDARD'),
  modelTypeAdvanced('MODEL_TYPE_ADVANCED');

  const DialogflowCxFlowNluSettingsModelType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `transition_routes` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutes {
  const DialogflowCxFlowTransitionRoutes({
    this.condition,
    this.intent,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  final TfArg<String>? condition;

  final TfArg<String>? intent;

  final TfArg<String>? targetFlow;

  final TfArg<String>? targetPage;

  final DialogflowCxFlowTransitionRoutesTriggerFulfillment? triggerFulfillment;

  Map<String, Object?> encode() => {
    if (condition != null) 'condition': condition!.toTfJson(),
    if (intent != null) 'intent': intent!.toTfJson(),
    if (targetFlow != null) 'target_flow': targetFlow!.toTfJson(),
    if (targetPage != null) 'target_page': targetPage!.toTfJson(),
    if (triggerFulfillment != null)
      'trigger_fulfillment': triggerFulfillment!.encode(),
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillment {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillment({
    this.returnPartialResponses,
    this.tag,
    this.webhook,
    this.conditionalCases,
    this.messages,
    this.setParameterActions,
  });

  final TfArg<bool>? returnPartialResponses;

  final TfArg<String>? tag;

  final TfArg<String>? webhook;

  final List<
    DialogflowCxFlowTransitionRoutesTriggerFulfillmentConditionalCases
  >?
  conditionalCases;

  final List<DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessages>?
  messages;

  final List<
    DialogflowCxFlowTransitionRoutesTriggerFulfillmentSetParameterActions
  >?
  setParameterActions;

  Map<String, Object?> encode() => {
    if (returnPartialResponses != null)
      'return_partial_responses': returnPartialResponses!.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
    if (webhook != null) 'webhook': webhook!.toTfJson(),
    if (conditionalCases != null)
      'conditional_cases': [for (final e in conditionalCases!) e.encode()],
    if (messages != null) 'messages': [for (final e in messages!) e.encode()],
    if (setParameterActions != null)
      'set_parameter_actions': [
        for (final e in setParameterActions!) e.encode(),
      ],
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentConditionalCases {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentConditionalCases({
    this.cases,
  });

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {
    if (cases != null) 'cases': cases!.toTfJson(),
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessages {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessages({
    this.channel,
    this.payload,
    this.conversationSuccess,
    this.liveAgentHandoff,
    this.outputAudioText,
    this.playAudio,
    this.telephonyTransferCall,
    this.text,
  });

  final TfArg<String>? channel;

  final TfArg<String>? payload;

  final DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesPlayAudio?
  playAudio;

  final DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesText? text;

  Map<String, Object?> encode() => {
    if (channel != null) 'channel': channel!.toTfJson(),
    if (payload != null) 'payload': payload!.toTfJson(),
    if (conversationSuccess != null)
      'conversation_success': conversationSuccess!.encode(),
    if (liveAgentHandoff != null)
      'live_agent_handoff': liveAgentHandoff!.encode(),
    if (outputAudioText != null) 'output_audio_text': outputAudioText!.encode(),
    if (playAudio != null) 'play_audio': playAudio!.encode(),
    if (telephonyTransferCall != null)
      'telephony_transfer_call': telephonyTransferCall!.encode(),
    if (text != null) 'text': text!.encode(),
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesConversationSuccess {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {
    if (metadata != null) 'metadata': metadata!.toTfJson(),
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {
    if (metadata != null) 'metadata': metadata!.toTfJson(),
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesOutputAudioText {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    if (ssml != null) 'ssml': ssml!.toTfJson(),
    if (text != null) 'text': text!.toTfJson(),
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesPlayAudio {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.text` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesText {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentMessagesText({
    this.text,
  });

  final TfArg<List<Object?>>? text;

  Map<String, Object?> encode() => {if (text != null) 'text': text!.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowTransitionRoutesTriggerFulfillmentSetParameterActions {
  const DialogflowCxFlowTransitionRoutesTriggerFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (parameter != null) 'parameter': parameter!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_flow`.
///
/// Flows represents the conversation flows when you build your chatbot agent.
///
/// Dialogflow CX **flow** — conversation flow under a CX agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: flows sit on the never_apply
/// [GoogleDialogflowCxAgent] session path. **Never** wire into
/// apply-smoke.
final class GoogleDialogflowCxFlow extends Resource {
  static const String tfType = 'google_dialogflow_cx_flow';

  GoogleDialogflowCxFlow({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? parent,
    TfArg<String>? description,
    TfArg<String>? languageCode,
    TfArg<bool>? isDefaultStartFlow,
    TfArg<List<String>>? transitionRouteGroups,
    DialogflowCxFlowNluSettings? nluSettings,
    List<DialogflowCxFlowEventHandlers>? eventHandlers,
    List<DialogflowCxFlowTransitionRoutes>? transitionRoutes,
    DialogflowCxFlowAdvancedSettings? advancedSettings,
    DialogflowCxFlowKnowledgeConnectorSettings? knowledgeConnectorSettings,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (parent != null) 'parent': parent,
           if (description != null) 'description': description,
           if (languageCode != null) 'language_code': languageCode,
           if (isDefaultStartFlow != null)
             'is_default_start_flow': isDefaultStartFlow,
           if (transitionRouteGroups != null)
             'transition_route_groups': transitionRouteGroups,
           if (nluSettings != null)
             'nlu_settings': TfArg.literal(nluSettings.encode()),
           if (eventHandlers != null)
             'event_handlers': TfArg.literal([
               for (final e in eventHandlers) e.encode(),
             ]),
           if (transitionRoutes != null)
             'transition_routes': TfArg.literal([
               for (final e in transitionRoutes) e.encode(),
             ]),
           if (advancedSettings != null)
             'advanced_settings': TfArg.literal(advancedSettings.encode()),
           if (knowledgeConnectorSettings != null)
             'knowledge_connector_settings': TfArg.literal(
               knowledgeConnectorSettings.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxFlowSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
