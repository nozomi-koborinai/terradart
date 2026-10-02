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

  final DialogflowCxFlowAudioExportGcsDestination? audioExportGcsDestination;

  final DialogflowCxFlowDtmfSettings? dtmfSettings;

  final DialogflowCxFlowLoggingSettings? loggingSettings;

  final DialogflowCxFlowSpeechSettings? speechSettings;

  @internal
  Map<String, Object?> encode() => {
    'audio_export_gcs_destination': ?audioExportGcsDestination?.encode(),
    'dtmf_settings': ?dtmfSettings?.encode(),
    'logging_settings': ?loggingSettings?.encode(),
    'speech_settings': ?speechSettings?.encode(),
  };
}

/// Typed helper for the `advanced_settings.audio_export_gcs_destination` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowAudioExportGcsDestination {
  const DialogflowCxFlowAudioExportGcsDestination({this.uri});

  final TfArg<String>? uri;

  @internal
  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// Typed helper for the `advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowDtmfSettings {
  const DialogflowCxFlowDtmfSettings({
    this.enabled,
    this.finishDigit,
    this.maxDigits,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? finishDigit;

  final TfArg<num>? maxDigits;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'finish_digit': ?finishDigit?.toTfJson(),
    'max_digits': ?maxDigits?.toTfJson(),
  };
}

/// Typed helper for the `advanced_settings.logging_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowLoggingSettings {
  const DialogflowCxFlowLoggingSettings({
    this.enableConsentBasedRedaction,
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  final TfArg<bool>? enableConsentBasedRedaction;

  final TfArg<bool>? enableInteractionLogging;

  final TfArg<bool>? enableStackdriverLogging;

  @internal
  Map<String, Object?> encode() => {
    'enable_consent_based_redaction': ?enableConsentBasedRedaction?.toTfJson(),
    'enable_interaction_logging': ?enableInteractionLogging?.toTfJson(),
    'enable_stackdriver_logging': ?enableStackdriverLogging?.toTfJson(),
  };
}

/// Typed helper for the `advanced_settings.speech_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowSpeechSettings {
  const DialogflowCxFlowSpeechSettings({
    this.endpointerSensitivity,
    this.models,
    this.noSpeechTimeout,
    this.useTimeoutBasedEndpointing,
  });

  final TfArg<num>? endpointerSensitivity;

  final TfArg<Map<String, String>>? models;

  final TfArg<String>? noSpeechTimeout;

  final TfArg<bool>? useTimeoutBasedEndpointing;

  @internal
  Map<String, Object?> encode() => {
    'endpointer_sensitivity': ?endpointerSensitivity?.toTfJson(),
    'models': ?models?.toTfJson(),
    'no_speech_timeout': ?noSpeechTimeout?.toTfJson(),
    'use_timeout_based_endpointing': ?useTimeoutBasedEndpointing?.toTfJson(),
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

  @internal
  Map<String, Object?> encode() => {
    'event': ?event?.toTfJson(),
    'target_flow': ?targetFlow?.toTfJson(),
    'target_page': ?targetPage?.toTfJson(),
    'trigger_fulfillment': ?triggerFulfillment?.encode(),
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

  final List<DialogflowCxFlowConditionalCases>? conditionalCases;

  final List<DialogflowCxFlowEventHandlersMessages>? messages;

  final List<DialogflowCxFlowSetParameterActions>? setParameterActions;

  @internal
  Map<String, Object?> encode() => {
    'enable_generative_fallback': ?enableGenerativeFallback?.toTfJson(),
    'return_partial_responses': ?returnPartialResponses?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'webhook': ?webhook?.toTfJson(),
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
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowConditionalCases {
  const DialogflowCxFlowConditionalCases({this.cases});

  final TfArg<String>? cases;

  @internal
  Map<String, Object?> encode() => {'cases': ?cases?.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowEventHandlersMessages {
  const DialogflowCxFlowEventHandlersMessages({
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

  final DialogflowCxFlowConversationSuccess? conversationSuccess;

  final DialogflowCxFlowLiveAgentHandoff? liveAgentHandoff;

  final DialogflowCxFlowOutputAudioText? outputAudioText;

  final DialogflowCxFlowPlayAudio? playAudio;

  final DialogflowCxFlowTelephonyTransferCall? telephonyTransferCall;

  final DialogflowCxFlowText? text;

  @internal
  Map<String, Object?> encode() => {
    'channel': ?channel?.toTfJson(),
    'payload': ?payload?.toTfJson(),
    'conversation_success': ?conversationSuccess?.encode(),
    'live_agent_handoff': ?liveAgentHandoff?.encode(),
    'output_audio_text': ?outputAudioText?.encode(),
    'play_audio': ?playAudio?.encode(),
    'telephony_transfer_call': ?telephonyTransferCall?.encode(),
    'text': ?text?.encode(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowConversationSuccess {
  const DialogflowCxFlowConversationSuccess({this.metadata});

  final TfArg<String>? metadata;

  @internal
  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowLiveAgentHandoff {
  const DialogflowCxFlowLiveAgentHandoff({this.metadata});

  final TfArg<String>? metadata;

  @internal
  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowOutputAudioText {
  const DialogflowCxFlowOutputAudioText({this.ssml, this.text});

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  @internal
  Map<String, Object?> encode() => {
    'ssml': ?ssml?.toTfJson(),
    'text': ?text?.toTfJson(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowPlayAudio {
  const DialogflowCxFlowPlayAudio({required this.audioUri});

  final TfArg<String> audioUri;

  @internal
  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowTelephonyTransferCall {
  const DialogflowCxFlowTelephonyTransferCall({required this.phoneNumber});

  final TfArg<String> phoneNumber;

  @internal
  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.text` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowText {
  const DialogflowCxFlowText({this.text});

  final TfArg<List<String>>? text;

  @internal
  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DialogflowCxFlowSetParameterActions {
  const DialogflowCxFlowSetParameterActions({this.parameter, this.value});

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'value': ?value?.toTfJson(),
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

  final List<DialogflowCxFlowDataStoreConnections>? dataStoreConnections;

  final DialogflowCxFlowKnowledgeConnectorSettingsTriggerFulfillment?
  triggerFulfillment;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'target_flow': ?targetFlow?.toTfJson(),
    'target_page': ?targetPage?.toTfJson(),
    if (dataStoreConnections != null)
      'data_store_connections': [
        for (final e in dataStoreConnections!) e.encode(),
      ],
    'trigger_fulfillment': ?triggerFulfillment?.encode(),
  };
}

/// Typed helper for the `knowledge_connector_settings.data_store_connections` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowDataStoreConnections {
  const DialogflowCxFlowDataStoreConnections({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  final TfArg<String>? dataStore;

  final DialogflowCxFlowDataStoreType? dataStoreType;

  final DialogflowCxFlowDocumentProcessingMode? documentProcessingMode;

  @internal
  Map<String, Object?> encode() => {
    'data_store': ?dataStore?.toTfJson(),
    'data_store_type': ?dataStoreType?.toTfJson(),
    'document_processing_mode': ?documentProcessingMode?.toTfJson(),
  };
}

/// `data_store_type` — derived from the provider schema description.
extension type const DialogflowCxFlowDataStoreType._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxFlowDataStoreType.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxFlowDataStoreType.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxFlowDataStoreType.arg(TfArg<String> arg) : this._(arg);

  static const publicWeb = DialogflowCxFlowDataStoreType._(
    TfArgLiteral('PUBLIC_WEB'),
  );
  static const unstructured = DialogflowCxFlowDataStoreType._(
    TfArgLiteral('UNSTRUCTURED'),
  );
  static const structured = DialogflowCxFlowDataStoreType._(
    TfArgLiteral('STRUCTURED'),
  );

  static const List<DialogflowCxFlowDataStoreType> values = [
    publicWeb,
    unstructured,
    structured,
  ];
}

/// `document_processing_mode` — derived from the provider schema description.
extension type const DialogflowCxFlowDocumentProcessingMode._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxFlowDocumentProcessingMode.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxFlowDocumentProcessingMode.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxFlowDocumentProcessingMode.arg(TfArg<String> arg)
    : this._(arg);

  static const documents = DialogflowCxFlowDocumentProcessingMode._(
    TfArgLiteral('DOCUMENTS'),
  );
  static const chunks = DialogflowCxFlowDocumentProcessingMode._(
    TfArgLiteral('CHUNKS'),
  );

  static const List<DialogflowCxFlowDocumentProcessingMode> values = [
    documents,
    chunks,
  ];
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

  final DialogflowCxFlowTriggerFulfillmentAdvancedSettings? advancedSettings;

  final List<DialogflowCxFlowConditionalCases>? conditionalCases;

  final List<DialogflowCxFlowKnowledgeConnectorSettingsMessages>? messages;

  final List<DialogflowCxFlowSetParameterActions>? setParameterActions;

  @internal
  Map<String, Object?> encode() => {
    'enable_generative_fallback': ?enableGenerativeFallback?.toTfJson(),
    'return_partial_responses': ?returnPartialResponses?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'webhook': ?webhook?.toTfJson(),
    'advanced_settings': ?advancedSettings?.encode(),
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
final class DialogflowCxFlowTriggerFulfillmentAdvancedSettings {
  const DialogflowCxFlowTriggerFulfillmentAdvancedSettings({
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  final DialogflowCxFlowAdvancedSettingsDtmfSettings? dtmfSettings;

  final DialogflowCxFlowLoggingSettings? loggingSettings;

  final DialogflowCxFlowSpeechSettings? speechSettings;

  @internal
  Map<String, Object?> encode() => {
    'dtmf_settings': ?dtmfSettings?.encode(),
    'logging_settings': ?loggingSettings?.encode(),
    'speech_settings': ?speechSettings?.encode(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowAdvancedSettingsDtmfSettings {
  const DialogflowCxFlowAdvancedSettingsDtmfSettings({
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

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'endpointing_timeout_duration': ?endpointingTimeoutDuration?.toTfJson(),
    'finish_digit': ?finishDigit?.toTfJson(),
    'interdigit_timeout_duration': ?interdigitTimeoutDuration?.toTfJson(),
    'max_digits': ?maxDigits?.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeConnectorSettingsMessages {
  const DialogflowCxFlowKnowledgeConnectorSettingsMessages({
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

  final DialogflowCxFlowConversationSuccess? conversationSuccess;

  final DialogflowCxFlowKnowledgeInfoCard? knowledgeInfoCard;

  final DialogflowCxFlowLiveAgentHandoff? liveAgentHandoff;

  final DialogflowCxFlowOutputAudioText? outputAudioText;

  final DialogflowCxFlowPlayAudio? playAudio;

  final DialogflowCxFlowTelephonyTransferCall? telephonyTransferCall;

  final DialogflowCxFlowText? text;

  @internal
  Map<String, Object?> encode() => {
    'channel': ?channel?.toTfJson(),
    'payload': ?payload?.toTfJson(),
    'conversation_success': ?conversationSuccess?.encode(),
    'knowledge_info_card': ?knowledgeInfoCard?.encode(),
    'live_agent_handoff': ?liveAgentHandoff?.encode(),
    'output_audio_text': ?outputAudioText?.encode(),
    'play_audio': ?playAudio?.encode(),
    'telephony_transfer_call': ?telephonyTransferCall?.encode(),
    'text': ?text?.encode(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.knowledge_info_card` block of
/// `google_dialogflow_cx_flow` (derived from provider schema).
@immutable
final class DialogflowCxFlowKnowledgeInfoCard {
  const DialogflowCxFlowKnowledgeInfoCard();

  @internal
  Map<String, Object?> encode() => {};
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

  final DialogflowCxFlowModelTrainingMode? modelTrainingMode;

  final DialogflowCxFlowModelType? modelType;

  @internal
  Map<String, Object?> encode() => {
    'classification_threshold': ?classificationThreshold?.toTfJson(),
    'model_training_mode': ?modelTrainingMode?.toTfJson(),
    'model_type': ?modelType?.toTfJson(),
  };
}

/// `model_training_mode` — derived from the provider schema description.
extension type const DialogflowCxFlowModelTrainingMode._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxFlowModelTrainingMode.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxFlowModelTrainingMode.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxFlowModelTrainingMode.arg(TfArg<String> arg) : this._(arg);

  static const modelTrainingModeAutomatic = DialogflowCxFlowModelTrainingMode._(
    TfArgLiteral('MODEL_TRAINING_MODE_AUTOMATIC'),
  );
  static const modelTrainingModeManual = DialogflowCxFlowModelTrainingMode._(
    TfArgLiteral('MODEL_TRAINING_MODE_MANUAL'),
  );

  static const List<DialogflowCxFlowModelTrainingMode> values = [
    modelTrainingModeAutomatic,
    modelTrainingModeManual,
  ];
}

/// `model_type` — derived from the provider schema description.
extension type const DialogflowCxFlowModelType._(TfArg<String> _)
    implements TfArg<String> {
  DialogflowCxFlowModelType.variable(String name)
    : this._(TfArg.variable(name));
  DialogflowCxFlowModelType.expression(String template)
    : this._(TfArg.expression(template));
  const DialogflowCxFlowModelType.arg(TfArg<String> arg) : this._(arg);

  static const modelTypeStandard = DialogflowCxFlowModelType._(
    TfArgLiteral('MODEL_TYPE_STANDARD'),
  );
  static const modelTypeAdvanced = DialogflowCxFlowModelType._(
    TfArgLiteral('MODEL_TYPE_ADVANCED'),
  );

  static const List<DialogflowCxFlowModelType> values = [
    modelTypeStandard,
    modelTypeAdvanced,
  ];
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

  @internal
  Map<String, Object?> encode() => {
    'condition': ?condition?.toTfJson(),
    'intent': ?intent?.toTfJson(),
    'target_flow': ?targetFlow?.toTfJson(),
    'target_page': ?targetPage?.toTfJson(),
    'trigger_fulfillment': ?triggerFulfillment?.encode(),
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

  final List<DialogflowCxFlowConditionalCases>? conditionalCases;

  final List<DialogflowCxFlowEventHandlersMessages>? messages;

  final List<DialogflowCxFlowSetParameterActions>? setParameterActions;

  @internal
  Map<String, Object?> encode() => {
    'return_partial_responses': ?returnPartialResponses?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'webhook': ?webhook?.toTfJson(),
    if (conditionalCases != null)
      'conditional_cases': [for (final e in conditionalCases!) e.encode()],
    if (messages != null) 'messages': [for (final e in messages!) e.encode()],
    if (setParameterActions != null)
      'set_parameter_actions': [
        for (final e in setParameterActions!) e.encode(),
      ],
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

  GoogleDialogflowCxFlow(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'parent': ?parent,
           'description': ?description,
           'language_code': ?languageCode,
           'is_default_start_flow': ?isDefaultStartFlow,
           'transition_route_groups': ?transitionRouteGroups,
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
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxFlowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxFlow>`.
  RefTo<GoogleDialogflowCxFlow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `is_default_start_flow` attribute.
  TfRef<bool> get isDefaultStartFlow =>
      TfRef.attribute<bool>(this, 'is_default_start_flow');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `transition_route_groups` attribute.
  TfRef<List<String>> get transitionRouteGroups =>
      TfRef.attribute<List<String>>(this, 'transition_route_groups');
}
