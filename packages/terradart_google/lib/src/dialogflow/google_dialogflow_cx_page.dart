// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_page`.
const Set<String> _googleDialogflowCxPageSensitive = <String>{};

/// Typed helper for the `advanced_settings` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageAdvancedSettings {
  const DialogflowCxPageAdvancedSettings({this.dtmfSettings});

  final DialogflowCxPageAdvancedSettingsDtmfSettings? dtmfSettings;

  Map<String, Object?> encode() => {'dtmf_settings': ?dtmfSettings?.encode()};
}

/// Typed helper for the `advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageAdvancedSettingsDtmfSettings {
  const DialogflowCxPageAdvancedSettingsDtmfSettings({
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

/// Typed helper for the `entry_fulfillment` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillment {
  const DialogflowCxPageEntryFulfillment({
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

  final List<DialogflowCxPageEntryFulfillmentConditionalCases>?
  conditionalCases;

  final List<DialogflowCxPageEntryFulfillmentMessages>? messages;

  final List<DialogflowCxPageEntryFulfillmentSetParameterActions>?
  setParameterActions;

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

/// Typed helper for the `entry_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentConditionalCases {
  const DialogflowCxPageEntryFulfillmentConditionalCases({this.cases});

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {'cases': ?cases?.toTfJson()};
}

/// Typed helper for the `entry_fulfillment.messages` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentMessages {
  const DialogflowCxPageEntryFulfillmentMessages({
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

  final DialogflowCxPageEntryFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxPageEntryFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxPageEntryFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxPageEntryFulfillmentMessagesPlayAudio? playAudio;

  final DialogflowCxPageEntryFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxPageEntryFulfillmentMessagesText? text;

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

/// Typed helper for the `entry_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentMessagesConversationSuccess {
  const DialogflowCxPageEntryFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `entry_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxPageEntryFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `entry_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentMessagesOutputAudioText {
  const DialogflowCxPageEntryFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    'ssml': ?ssml?.toTfJson(),
    'text': ?text?.toTfJson(),
  };
}

/// Typed helper for the `entry_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentMessagesPlayAudio {
  const DialogflowCxPageEntryFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `entry_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxPageEntryFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `entry_fulfillment.messages.text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentMessagesText {
  const DialogflowCxPageEntryFulfillmentMessagesText({this.text});

  final TfArg<List<String>>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `entry_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEntryFulfillmentSetParameterActions {
  const DialogflowCxPageEntryFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `event_handlers` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlers {
  const DialogflowCxPageEventHandlers({
    this.event,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  final TfArg<String>? event;

  final TfArg<String>? targetFlow;

  final TfArg<String>? targetPage;

  final DialogflowCxPageEventHandlersTriggerFulfillment? triggerFulfillment;

  Map<String, Object?> encode() => {
    'event': ?event?.toTfJson(),
    'target_flow': ?targetFlow?.toTfJson(),
    'target_page': ?targetPage?.toTfJson(),
    'trigger_fulfillment': ?triggerFulfillment?.encode(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillment {
  const DialogflowCxPageEventHandlersTriggerFulfillment({
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

  final List<DialogflowCxPageEventHandlersTriggerFulfillmentConditionalCases>?
  conditionalCases;

  final List<DialogflowCxPageEventHandlersTriggerFulfillmentMessages>? messages;

  final List<
    DialogflowCxPageEventHandlersTriggerFulfillmentSetParameterActions
  >?
  setParameterActions;

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

/// Typed helper for the `event_handlers.trigger_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentConditionalCases {
  const DialogflowCxPageEventHandlersTriggerFulfillmentConditionalCases({
    this.cases,
  });

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {'cases': ?cases?.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentMessages {
  const DialogflowCxPageEventHandlersTriggerFulfillmentMessages({
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

  final DialogflowCxPageEventHandlersTriggerFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxPageEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxPageEventHandlersTriggerFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxPageEventHandlersTriggerFulfillmentMessagesPlayAudio?
  playAudio;

  final DialogflowCxPageEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxPageEventHandlersTriggerFulfillmentMessagesText? text;

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
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentMessagesConversationSuccess {
  const DialogflowCxPageEventHandlersTriggerFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxPageEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentMessagesOutputAudioText {
  const DialogflowCxPageEventHandlersTriggerFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    'ssml': ?ssml?.toTfJson(),
    'text': ?text?.toTfJson(),
  };
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentMessagesPlayAudio {
  const DialogflowCxPageEventHandlersTriggerFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxPageEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.messages.text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentMessagesText {
  const DialogflowCxPageEventHandlersTriggerFulfillmentMessagesText({
    this.text,
  });

  final TfArg<List<String>>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `event_handlers.trigger_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageEventHandlersTriggerFulfillmentSetParameterActions {
  const DialogflowCxPageEventHandlersTriggerFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `form` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageForm {
  const DialogflowCxPageForm({this.parameters});

  final List<DialogflowCxPageFormParameters>? parameters;

  Map<String, Object?> encode() => {
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `form.parameters` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParameters {
  const DialogflowCxPageFormParameters({
    this.defaultValue,
    this.displayName,
    this.entityType,
    this.isList,
    this.redact,
    this.required,
    this.advancedSettings,
    this.fillBehavior,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String>? displayName;

  final TfArg<String>? entityType;

  final TfArg<bool>? isList;

  final TfArg<bool>? redact;

  final TfArg<bool>? required;

  final DialogflowCxPageFormParametersAdvancedSettings? advancedSettings;

  final DialogflowCxPageFormParametersFillBehavior? fillBehavior;

  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'entity_type': ?entityType?.toTfJson(),
    'is_list': ?isList?.toTfJson(),
    'redact': ?redact?.toTfJson(),
    'required': ?required?.toTfJson(),
    'advanced_settings': ?advancedSettings?.encode(),
    'fill_behavior': ?fillBehavior?.encode(),
  };
}

/// Typed helper for the `form.parameters.advanced_settings` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersAdvancedSettings {
  const DialogflowCxPageFormParametersAdvancedSettings({this.dtmfSettings});

  final DialogflowCxPageFormParametersAdvancedSettingsDtmfSettings?
  dtmfSettings;

  Map<String, Object?> encode() => {'dtmf_settings': ?dtmfSettings?.encode()};
}

/// Typed helper for the `form.parameters.advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersAdvancedSettingsDtmfSettings {
  const DialogflowCxPageFormParametersAdvancedSettingsDtmfSettings({
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

/// Typed helper for the `form.parameters.fill_behavior` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehavior {
  const DialogflowCxPageFormParametersFillBehavior({
    this.initialPromptFulfillment,
    this.repromptEventHandlers,
  });

  final DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillment?
  initialPromptFulfillment;

  final List<DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlers>?
  repromptEventHandlers;

  Map<String, Object?> encode() => {
    'initial_prompt_fulfillment': ?initialPromptFulfillment?.encode(),
    if (repromptEventHandlers != null)
      'reprompt_event_handlers': [
        for (final e in repromptEventHandlers!) e.encode(),
      ],
  };
}

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillment {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillment({
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
    DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentConditionalCases
  >?
  conditionalCases;

  final List<
    DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessages
  >?
  messages;

  final List<
    DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentSetParameterActions
  >?
  setParameterActions;

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

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentConditionalCases {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentConditionalCases({
    this.cases,
  });

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {'cases': ?cases?.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.messages` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessages {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessages({
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

  final DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesPlayAudio?
  playAudio;

  final DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesText?
  text;

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

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesConversationSuccess {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesOutputAudioText {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    'ssml': ?ssml?.toTfJson(),
    'text': ?text?.toTfJson(),
  };
}

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesPlayAudio {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.messages.text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesText {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentMessagesText({
    this.text,
  });

  final TfArg<List<String>>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.initial_prompt_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentSetParameterActions {
  const DialogflowCxPageFormParametersFillBehaviorInitialPromptFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlers {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlers({
    this.event,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  final TfArg<String>? event;

  final TfArg<String>? targetFlow;

  final TfArg<String>? targetPage;

  final DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillment?
  triggerFulfillment;

  Map<String, Object?> encode() => {
    'event': ?event?.toTfJson(),
    'target_flow': ?targetFlow?.toTfJson(),
    'target_page': ?targetPage?.toTfJson(),
    'trigger_fulfillment': ?triggerFulfillment?.encode(),
  };
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillment {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillment({
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
    DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentConditionalCases
  >?
  conditionalCases;

  final List<
    DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessages
  >?
  messages;

  final List<
    DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentSetParameterActions
  >?
  setParameterActions;

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

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentConditionalCases {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentConditionalCases({
    this.cases,
  });

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {'cases': ?cases?.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessages {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessages({
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

  final DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesPlayAudio?
  playAudio;

  final DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesText?
  text;

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

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesConversationSuccess {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesOutputAudioText {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    'ssml': ?ssml?.toTfJson(),
    'text': ?text?.toTfJson(),
  };
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesPlayAudio {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesText {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentMessagesText({
    this.text,
  });

  final TfArg<List<String>>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentSetParameterActions {
  const DialogflowCxPageFormParametersFillBehaviorRepromptEventHandlersTriggerFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettings {
  const DialogflowCxPageKnowledgeConnectorSettings({
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.dataStoreConnections,
    this.triggerFulfillment,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? targetFlow;

  final TfArg<String>? targetPage;

  final List<DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnections>?
  dataStoreConnections;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillment?
  triggerFulfillment;

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
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnections {
  const DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnections({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  final TfArg<String>? dataStore;

  final TfArg<
    DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnectionsDataStoreType
  >?
  dataStoreType;

  final TfArg<
    DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnectionsDocumentProcessingMode
  >?
  documentProcessingMode;

  Map<String, Object?> encode() => {
    'data_store': ?dataStore?.toTfJson(),
    'data_store_type': ?dataStoreType?.toTfJson(),
    'document_processing_mode': ?documentProcessingMode?.toTfJson(),
  };
}

/// `data_store_type` — derived from the provider schema description.
enum DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnectionsDataStoreType
    implements TerraformEnum {
  publicWeb('PUBLIC_WEB'),
  unstructured('UNSTRUCTURED'),
  structured('STRUCTURED');

  const DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnectionsDataStoreType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `document_processing_mode` — derived from the provider schema description.
enum DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnectionsDocumentProcessingMode
    implements TerraformEnum {
  documents('DOCUMENTS'),
  chunks('CHUNKS');

  const DialogflowCxPageKnowledgeConnectorSettingsDataStoreConnectionsDocumentProcessingMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillment {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillment({
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

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings?
  advancedSettings;

  final List<
    DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCases
  >?
  conditionalCases;

  final List<
    DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessages
  >?
  messages;

  final List<
    DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActions
  >?
  setParameterActions;

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
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettings({
    this.dtmfSettings,
    this.loggingSettings,
    this.speechSettings,
  });

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings?
  dtmfSettings;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings?
  loggingSettings;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings?
  speechSettings;

  Map<String, Object?> encode() => {
    'dtmf_settings': ?dtmfSettings?.encode(),
    'logging_settings': ?loggingSettings?.encode(),
    'speech_settings': ?speechSettings?.encode(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.advanced_settings.dtmf_settings` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings({
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
    'enabled': ?enabled?.toTfJson(),
    'endpointing_timeout_duration': ?endpointingTimeoutDuration?.toTfJson(),
    'finish_digit': ?finishDigit?.toTfJson(),
    'interdigit_timeout_duration': ?interdigitTimeoutDuration?.toTfJson(),
    'max_digits': ?maxDigits?.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.advanced_settings.logging_settings` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings({
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

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.advanced_settings.speech_settings` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings({
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

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCases {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentConditionalCases({
    this.cases,
  });

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {'cases': ?cases?.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessages {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessages({
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

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesKnowledgeInfoCard?
  knowledgeInfoCard;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesPlayAudio?
  playAudio;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesText?
  text;

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

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesConversationSuccess {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.knowledge_info_card` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesKnowledgeInfoCard {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesKnowledgeInfoCard();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesOutputAudioText {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    'ssml': ?ssml?.toTfJson(),
    'text': ?text?.toTfJson(),
  };
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesPlayAudio {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.messages.text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesText {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentMessagesText({
    this.text,
  });

  final TfArg<List<String>>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `knowledge_connector_settings.trigger_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActions {
  const DialogflowCxPageKnowledgeConnectorSettingsTriggerFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `transition_routes` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutes {
  const DialogflowCxPageTransitionRoutes({
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

  final DialogflowCxPageTransitionRoutesTriggerFulfillment? triggerFulfillment;

  Map<String, Object?> encode() => {
    'condition': ?condition?.toTfJson(),
    'intent': ?intent?.toTfJson(),
    'target_flow': ?targetFlow?.toTfJson(),
    'target_page': ?targetPage?.toTfJson(),
    'trigger_fulfillment': ?triggerFulfillment?.encode(),
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillment {
  const DialogflowCxPageTransitionRoutesTriggerFulfillment({
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
    DialogflowCxPageTransitionRoutesTriggerFulfillmentConditionalCases
  >?
  conditionalCases;

  final List<DialogflowCxPageTransitionRoutesTriggerFulfillmentMessages>?
  messages;

  final List<
    DialogflowCxPageTransitionRoutesTriggerFulfillmentSetParameterActions
  >?
  setParameterActions;

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

/// Typed helper for the `transition_routes.trigger_fulfillment.conditional_cases` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentConditionalCases {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentConditionalCases({
    this.cases,
  });

  final TfArg<String>? cases;

  Map<String, Object?> encode() => {'cases': ?cases?.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentMessages {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentMessages({
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

  final DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesConversationSuccess?
  conversationSuccess;

  final DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesLiveAgentHandoff?
  liveAgentHandoff;

  final DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesOutputAudioText?
  outputAudioText;

  final DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesPlayAudio?
  playAudio;

  final DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesTelephonyTransferCall?
  telephonyTransferCall;

  final DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesText? text;

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

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.conversation_success` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesConversationSuccess {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesConversationSuccess({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.live_agent_handoff` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesLiveAgentHandoff {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesLiveAgentHandoff({
    this.metadata,
  });

  final TfArg<String>? metadata;

  Map<String, Object?> encode() => {'metadata': ?metadata?.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.output_audio_text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesOutputAudioText {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesOutputAudioText({
    this.ssml,
    this.text,
  });

  final TfArg<String>? ssml;

  final TfArg<String>? text;

  Map<String, Object?> encode() => {
    'ssml': ?ssml?.toTfJson(),
    'text': ?text?.toTfJson(),
  };
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.play_audio` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesPlayAudio {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesPlayAudio({
    required this.audioUri,
  });

  final TfArg<String> audioUri;

  Map<String, Object?> encode() => {'audio_uri': audioUri.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.telephony_transfer_call` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesTelephonyTransferCall {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesTelephonyTransferCall({
    required this.phoneNumber,
  });

  final TfArg<String> phoneNumber;

  Map<String, Object?> encode() => {'phone_number': phoneNumber.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.messages.text` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesText {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentMessagesText({
    this.text,
  });

  final TfArg<List<String>>? text;

  Map<String, Object?> encode() => {'text': ?text?.toTfJson()};
}

/// Typed helper for the `transition_routes.trigger_fulfillment.set_parameter_actions` block of
/// `google_dialogflow_cx_page` (derived from provider schema).
@immutable
final class DialogflowCxPageTransitionRoutesTriggerFulfillmentSetParameterActions {
  const DialogflowCxPageTransitionRoutesTriggerFulfillmentSetParameterActions({
    this.parameter,
    this.value,
  });

  final TfArg<String>? parameter;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'parameter': ?parameter?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `google_dialogflow_cx_page`.
///
/// A Dialogflow CX conversation (session) can be described and visualized as a
/// state machine. The states of a CX session are represented by pages.
///
/// Dialogflow CX **page** — form / fulfillment / transition page in a flow.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: pages sit on the never_apply
/// [GoogleDialogflowCxAgent] session path. **Never** wire into
/// apply-smoke.
final class GoogleDialogflowCxPage extends Resource {
  static const String tfType = 'google_dialogflow_cx_page';

  GoogleDialogflowCxPage({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<String>? parent,
    TfArg<String>? languageCode,
    TfArg<List<String>>? transitionRouteGroups,
    DialogflowCxPageEntryFulfillment? entryFulfillment,
    DialogflowCxPageForm? form,
    List<DialogflowCxPageTransitionRoutes>? transitionRoutes,
    List<DialogflowCxPageEventHandlers>? eventHandlers,
    DialogflowCxPageAdvancedSettings? advancedSettings,
    DialogflowCxPageKnowledgeConnectorSettings? knowledgeConnectorSettings,
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
           'language_code': ?languageCode,
           'transition_route_groups': ?transitionRouteGroups,
           if (entryFulfillment != null)
             'entry_fulfillment': TfArg.literal(entryFulfillment.encode()),
           if (form != null) 'form': TfArg.literal(form.encode()),
           if (transitionRoutes != null)
             'transition_routes': TfArg.literal([
               for (final e in transitionRoutes) e.encode(),
             ]),
           if (eventHandlers != null)
             'event_handlers': TfArg.literal([
               for (final e in eventHandlers) e.encode(),
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
  Set<String> get sensitiveFields => _googleDialogflowCxPageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxPage>`.
  RefTo<GoogleDialogflowCxPage> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCodeRef =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `transition_route_groups` attribute.
  TfRef<List<String>> get transitionRouteGroupsRef =>
      TfRef.attribute<List<String>>(this, 'transition_route_groups');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
