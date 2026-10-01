// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lexv2models_intent`.
const Set<String> _awsLexv2modelsIntentSensitive = <String>{};

/// Typed helper for the `closing_setting` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSetting {
  const Lexv2modelsIntentClosingSetting({
    this.active,
    this.closingResponse,
    this.conditional,
    this.nextStep,
  });

  final TfArg<bool>? active;

  final List<Lexv2modelsIntentClosingResponse>? closingResponse;

  final List<Lexv2modelsIntentConditional>? conditional;

  final List<Lexv2modelsIntentNextStep>? nextStep;

  Map<String, Object?> encode() => {
    'active': ?active?.toTfJson(),
    if (closingResponse != null)
      'closing_response': [for (final e in closingResponse!) e.encode()],
    if (conditional != null)
      'conditional': [for (final e in conditional!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingResponse {
  const Lexv2modelsIntentClosingResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentMessageGroup {
  const Lexv2modelsIntentMessageGroup({this.message, this.variation});

  final List<Lexv2modelsIntentMessage>? message;

  final List<Lexv2modelsIntentVariation>? variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentMessage {
  const Lexv2modelsIntentMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<Lexv2modelsIntentCustomPayload>? customPayload;

  final List<Lexv2modelsIntentImageResponseCard>? imageResponseCard;

  final List<Lexv2modelsIntentPlainTextMessage>? plainTextMessage;

  final List<Lexv2modelsIntentSsmlMessage>? ssmlMessage;

  Map<String, Object?> encode() => {
    if (customPayload != null)
      'custom_payload': [for (final e in customPayload!) e.encode()],
    if (imageResponseCard != null)
      'image_response_card': [for (final e in imageResponseCard!) e.encode()],
    if (plainTextMessage != null)
      'plain_text_message': [for (final e in plainTextMessage!) e.encode()],
    if (ssmlMessage != null)
      'ssml_message': [for (final e in ssmlMessage!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentCustomPayload {
  const Lexv2modelsIntentCustomPayload({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentImageResponseCard {
  const Lexv2modelsIntentImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<Lexv2modelsIntentButton>? button;

  Map<String, Object?> encode() => {
    'image_url': ?imageUrl?.toTfJson(),
    'subtitle': ?subtitle?.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentButton {
  const Lexv2modelsIntentButton({required this.text, required this.value});

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentPlainTextMessage {
  const Lexv2modelsIntentPlainTextMessage({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentSsmlMessage {
  const Lexv2modelsIntentSsmlMessage({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.closing_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentVariation {
  const Lexv2modelsIntentVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<Lexv2modelsIntentCustomPayload>? customPayload;

  final List<Lexv2modelsIntentImageResponseCard>? imageResponseCard;

  final List<Lexv2modelsIntentPlainTextMessage>? plainTextMessage;

  final List<Lexv2modelsIntentSsmlMessage>? ssmlMessage;

  Map<String, Object?> encode() => {
    if (customPayload != null)
      'custom_payload': [for (final e in customPayload!) e.encode()],
    if (imageResponseCard != null)
      'image_response_card': [for (final e in imageResponseCard!) e.encode()],
    if (plainTextMessage != null)
      'plain_text_message': [for (final e in plainTextMessage!) e.encode()],
    if (ssmlMessage != null)
      'ssml_message': [for (final e in ssmlMessage!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentConditional {
  const Lexv2modelsIntentConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<Lexv2modelsIntentConditionalBranch>? conditionalBranch;

  final List<Lexv2modelsIntentDefaultBranch>? defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentConditionalBranch {
  const Lexv2modelsIntentConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<Lexv2modelsIntentCondition>? condition;

  final List<Lexv2modelsIntentNextStep>? nextStep;

  final List<Lexv2modelsIntentResponse>? response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentCondition {
  const Lexv2modelsIntentCondition({required this.expressionString});

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentNextStep {
  const Lexv2modelsIntentNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentDialogAction>? dialogAction;

  final List<Lexv2modelsIntentIntent>? intent;

  Map<String, Object?> encode() => {
    'session_attributes': ?sessionAttributes?.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentDialogAction {
  const Lexv2modelsIntentDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'slot_to_elicit': ?slotToElicit?.toTfJson(),
    'suppress_next_message': ?suppressNextMessage?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentIntent {
  const Lexv2modelsIntentIntent({this.name, this.slot});

  final TfArg<String>? name;

  final List<Lexv2modelsIntentSlot>? slot;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentSlot {
  const Lexv2modelsIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<Lexv2modelsIntentValue>? value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    'shape': ?shape?.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentValue {
  const Lexv2modelsIntentValue({this.interpretedValue});

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    'interpreted_value': ?interpretedValue?.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentResponse {
  const Lexv2modelsIntentResponse({this.allowInterrupt, this.messageGroup});

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentDefaultBranch {
  const Lexv2modelsIntentDefaultBranch({this.nextStep, this.response});

  final List<Lexv2modelsIntentNextStep>? nextStep;

  final List<Lexv2modelsIntentResponse>? response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSetting {
  const Lexv2modelsIntentConfirmationSetting({
    this.active,
    this.codeHook,
    this.confirmationConditional,
    this.confirmationNextStep,
    this.confirmationResponse,
    this.declinationConditional,
    this.declinationNextStep,
    this.declinationResponse,
    this.elicitationCodeHook,
    this.failureConditional,
    this.failureNextStep,
    this.failureResponse,
    this.promptSpecification,
  });

  final TfArg<bool>? active;

  final List<Lexv2modelsIntentCodeHook>? codeHook;

  final List<Lexv2modelsIntentConfirmationConditional>? confirmationConditional;

  final List<Lexv2modelsIntentConfirmationNextStep>? confirmationNextStep;

  final List<Lexv2modelsIntentConfirmationResponse>? confirmationResponse;

  final List<Lexv2modelsIntentDeclinationConditional>? declinationConditional;

  final List<Lexv2modelsIntentDeclinationNextStep>? declinationNextStep;

  final List<Lexv2modelsIntentDeclinationResponse>? declinationResponse;

  final List<Lexv2modelsIntentElicitationCodeHook>? elicitationCodeHook;

  final List<Lexv2modelsIntentFailureConditional>? failureConditional;

  final List<Lexv2modelsIntentFailureNextStep>? failureNextStep;

  final List<Lexv2modelsIntentFailureResponse>? failureResponse;

  final List<Lexv2modelsIntentPromptSpecification>? promptSpecification;

  Map<String, Object?> encode() => {
    'active': ?active?.toTfJson(),
    if (codeHook != null) 'code_hook': [for (final e in codeHook!) e.encode()],
    if (confirmationConditional != null)
      'confirmation_conditional': [
        for (final e in confirmationConditional!) e.encode(),
      ],
    if (confirmationNextStep != null)
      'confirmation_next_step': [
        for (final e in confirmationNextStep!) e.encode(),
      ],
    if (confirmationResponse != null)
      'confirmation_response': [
        for (final e in confirmationResponse!) e.encode(),
      ],
    if (declinationConditional != null)
      'declination_conditional': [
        for (final e in declinationConditional!) e.encode(),
      ],
    if (declinationNextStep != null)
      'declination_next_step': [
        for (final e in declinationNextStep!) e.encode(),
      ],
    if (declinationResponse != null)
      'declination_response': [
        for (final e in declinationResponse!) e.encode(),
      ],
    if (elicitationCodeHook != null)
      'elicitation_code_hook': [
        for (final e in elicitationCodeHook!) e.encode(),
      ],
    if (failureConditional != null)
      'failure_conditional': [for (final e in failureConditional!) e.encode()],
    if (failureNextStep != null)
      'failure_next_step': [for (final e in failureNextStep!) e.encode()],
    if (failureResponse != null)
      'failure_response': [for (final e in failureResponse!) e.encode()],
    if (promptSpecification != null)
      'prompt_specification': [
        for (final e in promptSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `confirmation_setting.code_hook` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentCodeHook {
  const Lexv2modelsIntentCodeHook({
    required this.active,
    required this.enableCodeHookInvocation,
    this.invocationLabel,
    this.postCodeHookSpecification,
  });

  final TfArg<bool> active;

  final TfArg<bool> enableCodeHookInvocation;

  final TfArg<String>? invocationLabel;

  final List<Lexv2modelsIntentPostCodeHookSpecification>?
  postCodeHookSpecification;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    'enable_code_hook_invocation': enableCodeHookInvocation.toTfJson(),
    'invocation_label': ?invocationLabel?.toTfJson(),
    if (postCodeHookSpecification != null)
      'post_code_hook_specification': [
        for (final e in postCodeHookSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentPostCodeHookSpecification {
  const Lexv2modelsIntentPostCodeHookSpecification({
    this.failureConditional,
    this.failureNextStep,
    this.failureResponse,
    this.successConditional,
    this.successNextStep,
    this.successResponse,
    this.timeoutConditional,
    this.timeoutNextStep,
    this.timeoutResponse,
  });

  final List<Lexv2modelsIntentFailureConditional>? failureConditional;

  final List<Lexv2modelsIntentFailureNextStep>? failureNextStep;

  final List<Lexv2modelsIntentFailureResponse>? failureResponse;

  final List<Lexv2modelsIntentSuccessConditional>? successConditional;

  final List<Lexv2modelsIntentSuccessNextStep>? successNextStep;

  final List<Lexv2modelsIntentSuccessResponse>? successResponse;

  final List<Lexv2modelsIntentTimeoutConditional>? timeoutConditional;

  final List<Lexv2modelsIntentTimeoutNextStep>? timeoutNextStep;

  final List<Lexv2modelsIntentTimeoutResponse>? timeoutResponse;

  Map<String, Object?> encode() => {
    if (failureConditional != null)
      'failure_conditional': [for (final e in failureConditional!) e.encode()],
    if (failureNextStep != null)
      'failure_next_step': [for (final e in failureNextStep!) e.encode()],
    if (failureResponse != null)
      'failure_response': [for (final e in failureResponse!) e.encode()],
    if (successConditional != null)
      'success_conditional': [for (final e in successConditional!) e.encode()],
    if (successNextStep != null)
      'success_next_step': [for (final e in successNextStep!) e.encode()],
    if (successResponse != null)
      'success_response': [for (final e in successResponse!) e.encode()],
    if (timeoutConditional != null)
      'timeout_conditional': [for (final e in timeoutConditional!) e.encode()],
    if (timeoutNextStep != null)
      'timeout_next_step': [for (final e in timeoutNextStep!) e.encode()],
    if (timeoutResponse != null)
      'timeout_response': [for (final e in timeoutResponse!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentFailureConditional {
  const Lexv2modelsIntentFailureConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<Lexv2modelsIntentConditionalBranch>? conditionalBranch;

  final List<Lexv2modelsIntentDefaultBranch>? defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentFailureNextStep {
  const Lexv2modelsIntentFailureNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentDialogAction>? dialogAction;

  final List<Lexv2modelsIntentIntent>? intent;

  Map<String, Object?> encode() => {
    'session_attributes': ?sessionAttributes?.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentFailureResponse {
  const Lexv2modelsIntentFailureResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentSuccessConditional {
  const Lexv2modelsIntentSuccessConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<Lexv2modelsIntentConditionalBranch>? conditionalBranch;

  final List<Lexv2modelsIntentDefaultBranch>? defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentSuccessNextStep {
  const Lexv2modelsIntentSuccessNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentDialogAction>? dialogAction;

  final List<Lexv2modelsIntentIntent>? intent;

  Map<String, Object?> encode() => {
    'session_attributes': ?sessionAttributes?.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentSuccessResponse {
  const Lexv2modelsIntentSuccessResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentTimeoutConditional {
  const Lexv2modelsIntentTimeoutConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<Lexv2modelsIntentConditionalBranch>? conditionalBranch;

  final List<Lexv2modelsIntentDefaultBranch>? defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentTimeoutNextStep {
  const Lexv2modelsIntentTimeoutNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentDialogAction>? dialogAction;

  final List<Lexv2modelsIntentIntent>? intent;

  Map<String, Object?> encode() => {
    'session_attributes': ?sessionAttributes?.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsIntentTimeoutResponse {
  const Lexv2modelsIntentTimeoutResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationConditional {
  const Lexv2modelsIntentConfirmationConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<Lexv2modelsIntentConditionalBranch>? conditionalBranch;

  final List<Lexv2modelsIntentDefaultBranch>? defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationNextStep {
  const Lexv2modelsIntentConfirmationNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentDialogAction>? dialogAction;

  final List<Lexv2modelsIntentIntent>? intent;

  Map<String, Object?> encode() => {
    'session_attributes': ?sessionAttributes?.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationResponse {
  const Lexv2modelsIntentConfirmationResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentDeclinationConditional {
  const Lexv2modelsIntentDeclinationConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<Lexv2modelsIntentConditionalBranch>? conditionalBranch;

  final List<Lexv2modelsIntentDefaultBranch>? defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentDeclinationNextStep {
  const Lexv2modelsIntentDeclinationNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentDialogAction>? dialogAction;

  final List<Lexv2modelsIntentIntent>? intent;

  Map<String, Object?> encode() => {
    'session_attributes': ?sessionAttributes?.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentDeclinationResponse {
  const Lexv2modelsIntentDeclinationResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.elicitation_code_hook` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentElicitationCodeHook {
  const Lexv2modelsIntentElicitationCodeHook({
    this.enableCodeHookInvocation,
    this.invocationLabel,
  });

  final TfArg<bool>? enableCodeHookInvocation;

  final TfArg<String>? invocationLabel;

  Map<String, Object?> encode() => {
    'enable_code_hook_invocation': ?enableCodeHookInvocation?.toTfJson(),
    'invocation_label': ?invocationLabel?.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentPromptSpecification {
  const Lexv2modelsIntentPromptSpecification({
    this.allowInterrupt,
    required this.maxRetries,
    this.messageSelectionStrategy,
    this.messageGroup,
    this.promptAttemptsSpecification,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num> maxRetries;

  final TfArg<String>? messageSelectionStrategy;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  final List<Lexv2modelsIntentPromptAttemptsSpecification>?
  promptAttemptsSpecification;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    'max_retries': maxRetries.toTfJson(),
    'message_selection_strategy': ?messageSelectionStrategy?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
    if (promptAttemptsSpecification != null)
      'prompt_attempts_specification': [
        for (final e in promptAttemptsSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.prompt_attempts_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentPromptAttemptsSpecification {
  const Lexv2modelsIntentPromptAttemptsSpecification({
    this.allowInterrupt,
    required this.mapBlockKey,
    this.allowedInputTypes,
    this.audioAndDtmfInputSpecification,
    this.textInputSpecification,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<String> mapBlockKey;

  final List<Lexv2modelsIntentAllowedInputTypes>? allowedInputTypes;

  final List<Lexv2modelsIntentAudioAndDtmfInputSpecification>?
  audioAndDtmfInputSpecification;

  final List<Lexv2modelsIntentTextInputSpecification>? textInputSpecification;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    'map_block_key': mapBlockKey.toTfJson(),
    if (allowedInputTypes != null)
      'allowed_input_types': [for (final e in allowedInputTypes!) e.encode()],
    if (audioAndDtmfInputSpecification != null)
      'audio_and_dtmf_input_specification': [
        for (final e in audioAndDtmfInputSpecification!) e.encode(),
      ],
    if (textInputSpecification != null)
      'text_input_specification': [
        for (final e in textInputSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.prompt_attempts_specification.allowed_input_types` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentAllowedInputTypes {
  const Lexv2modelsIntentAllowedInputTypes({
    required this.allowAudioInput,
    required this.allowDtmfInput,
  });

  final TfArg<bool> allowAudioInput;

  final TfArg<bool> allowDtmfInput;

  Map<String, Object?> encode() => {
    'allow_audio_input': allowAudioInput.toTfJson(),
    'allow_dtmf_input': allowDtmfInput.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentAudioAndDtmfInputSpecification {
  const Lexv2modelsIntentAudioAndDtmfInputSpecification({
    required this.startTimeoutMs,
    this.audioSpecification,
    this.dtmfSpecification,
  });

  final TfArg<num> startTimeoutMs;

  final List<Lexv2modelsIntentAudioSpecification>? audioSpecification;

  final List<Lexv2modelsIntentDtmfSpecification>? dtmfSpecification;

  Map<String, Object?> encode() => {
    'start_timeout_ms': startTimeoutMs.toTfJson(),
    if (audioSpecification != null)
      'audio_specification': [for (final e in audioSpecification!) e.encode()],
    if (dtmfSpecification != null)
      'dtmf_specification': [for (final e in dtmfSpecification!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification.audio_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentAudioSpecification {
  const Lexv2modelsIntentAudioSpecification({
    required this.endTimeoutMs,
    required this.maxLengthMs,
  });

  final TfArg<num> endTimeoutMs;

  final TfArg<num> maxLengthMs;

  Map<String, Object?> encode() => {
    'end_timeout_ms': endTimeoutMs.toTfJson(),
    'max_length_ms': maxLengthMs.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification.dtmf_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentDtmfSpecification {
  const Lexv2modelsIntentDtmfSpecification({
    required this.deletionCharacter,
    required this.endCharacter,
    required this.endTimeoutMs,
    required this.maxLength,
  });

  final TfArg<String> deletionCharacter;

  final TfArg<String> endCharacter;

  final TfArg<num> endTimeoutMs;

  final TfArg<num> maxLength;

  Map<String, Object?> encode() => {
    'deletion_character': deletionCharacter.toTfJson(),
    'end_character': endCharacter.toTfJson(),
    'end_timeout_ms': endTimeoutMs.toTfJson(),
    'max_length': maxLength.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.prompt_attempts_specification.text_input_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentTextInputSpecification {
  const Lexv2modelsIntentTextInputSpecification({required this.startTimeoutMs});

  final TfArg<num> startTimeoutMs;

  Map<String, Object?> encode() => {
    'start_timeout_ms': startTimeoutMs.toTfJson(),
  };
}

/// Typed helper for the `dialog_code_hook` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentDialogCodeHook {
  const Lexv2modelsIntentDialogCodeHook({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHook {
  const Lexv2modelsIntentFulfillmentCodeHook({
    this.active,
    required this.enabled,
    this.fulfillmentUpdatesSpecification,
    this.postFulfillmentStatusSpecification,
  });

  final TfArg<bool>? active;

  final TfArg<bool> enabled;

  final List<Lexv2modelsIntentFulfillmentUpdatesSpecification>?
  fulfillmentUpdatesSpecification;

  final List<Lexv2modelsIntentPostFulfillmentStatusSpecification>?
  postFulfillmentStatusSpecification;

  Map<String, Object?> encode() => {
    'active': ?active?.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (fulfillmentUpdatesSpecification != null)
      'fulfillment_updates_specification': [
        for (final e in fulfillmentUpdatesSpecification!) e.encode(),
      ],
    if (postFulfillmentStatusSpecification != null)
      'post_fulfillment_status_specification': [
        for (final e in postFulfillmentStatusSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentUpdatesSpecification {
  const Lexv2modelsIntentFulfillmentUpdatesSpecification({
    required this.active,
    this.timeoutInSeconds,
    this.startResponse,
    this.updateResponse,
  });

  final TfArg<bool> active;

  final TfArg<num>? timeoutInSeconds;

  final List<Lexv2modelsIntentStartResponse>? startResponse;

  final List<Lexv2modelsIntentUpdateResponse>? updateResponse;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
    if (startResponse != null)
      'start_response': [for (final e in startResponse!) e.encode()],
    if (updateResponse != null)
      'update_response': [for (final e in updateResponse!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentStartResponse {
  const Lexv2modelsIntentStartResponse({
    this.allowInterrupt,
    this.delayInSeconds,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num>? delayInSeconds;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    'delay_in_seconds': ?delayInSeconds?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentUpdateResponse {
  const Lexv2modelsIntentUpdateResponse({
    this.allowInterrupt,
    required this.frequencyInSeconds,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num> frequencyInSeconds;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    'frequency_in_seconds': frequencyInSeconds.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentPostFulfillmentStatusSpecification {
  const Lexv2modelsIntentPostFulfillmentStatusSpecification({
    this.failureConditional,
    this.failureNextStep,
    this.failureResponse,
    this.successConditional,
    this.successNextStep,
    this.successResponse,
    this.timeoutConditional,
    this.timeoutNextStep,
    this.timeoutResponse,
  });

  final List<Lexv2modelsIntentFailureConditional>? failureConditional;

  final List<Lexv2modelsIntentFailureNextStep>? failureNextStep;

  final List<Lexv2modelsIntentFailureResponse>? failureResponse;

  final List<Lexv2modelsIntentSuccessConditional>? successConditional;

  final List<Lexv2modelsIntentSuccessNextStep>? successNextStep;

  final List<Lexv2modelsIntentSuccessResponse>? successResponse;

  final List<Lexv2modelsIntentTimeoutConditional>? timeoutConditional;

  final List<Lexv2modelsIntentTimeoutNextStep>? timeoutNextStep;

  final List<Lexv2modelsIntentTimeoutResponse>? timeoutResponse;

  Map<String, Object?> encode() => {
    if (failureConditional != null)
      'failure_conditional': [for (final e in failureConditional!) e.encode()],
    if (failureNextStep != null)
      'failure_next_step': [for (final e in failureNextStep!) e.encode()],
    if (failureResponse != null)
      'failure_response': [for (final e in failureResponse!) e.encode()],
    if (successConditional != null)
      'success_conditional': [for (final e in successConditional!) e.encode()],
    if (successNextStep != null)
      'success_next_step': [for (final e in successNextStep!) e.encode()],
    if (successResponse != null)
      'success_response': [for (final e in successResponse!) e.encode()],
    if (timeoutConditional != null)
      'timeout_conditional': [for (final e in timeoutConditional!) e.encode()],
    if (timeoutNextStep != null)
      'timeout_next_step': [for (final e in timeoutNextStep!) e.encode()],
    if (timeoutResponse != null)
      'timeout_response': [for (final e in timeoutResponse!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSetting {
  const Lexv2modelsIntentInitialResponseSetting({
    this.codeHook,
    this.conditional,
    this.initialResponse,
    this.nextStep,
  });

  final List<Lexv2modelsIntentCodeHook>? codeHook;

  final List<Lexv2modelsIntentConditional>? conditional;

  final List<Lexv2modelsIntentInitialResponse>? initialResponse;

  final List<Lexv2modelsIntentNextStep>? nextStep;

  Map<String, Object?> encode() => {
    if (codeHook != null) 'code_hook': [for (final e in codeHook!) e.encode()],
    if (conditional != null)
      'conditional': [for (final e in conditional!) e.encode()],
    if (initialResponse != null)
      'initial_response': [for (final e in initialResponse!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.initial_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponse {
  const Lexv2modelsIntentInitialResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `input_context` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInputContext {
  const Lexv2modelsIntentInputContext({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `kendra_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentKendraConfiguration {
  const Lexv2modelsIntentKendraConfiguration({
    required this.kendraIndex,
    this.queryFilterString,
    this.queryFilterStringEnabled,
  });

  final TfArg<String> kendraIndex;

  final TfArg<String>? queryFilterString;

  final TfArg<bool>? queryFilterStringEnabled;

  Map<String, Object?> encode() => {
    'kendra_index': kendraIndex.toTfJson(),
    'query_filter_string': ?queryFilterString?.toTfJson(),
    'query_filter_string_enabled': ?queryFilterStringEnabled?.toTfJson(),
  };
}

/// Typed helper for the `output_context` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentOutputContext {
  const Lexv2modelsIntentOutputContext({
    required this.name,
    required this.timeToLiveInSeconds,
    required this.turnsToLive,
  });

  final TfArg<String> name;

  final TfArg<num> timeToLiveInSeconds;

  final TfArg<num> turnsToLive;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'time_to_live_in_seconds': timeToLiveInSeconds.toTfJson(),
    'turns_to_live': turnsToLive.toTfJson(),
  };
}

/// Typed helper for the `qna_intent_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentQnaIntentConfiguration {
  const Lexv2modelsIntentQnaIntentConfiguration({
    this.bedrockModelConfiguration,
    this.dataSourceConfiguration,
  });

  final List<Lexv2modelsIntentBedrockModelConfiguration>?
  bedrockModelConfiguration;

  final List<Lexv2modelsIntentDataSourceConfiguration>? dataSourceConfiguration;

  Map<String, Object?> encode() => {
    if (bedrockModelConfiguration != null)
      'bedrock_model_configuration': [
        for (final e in bedrockModelConfiguration!) e.encode(),
      ],
    if (dataSourceConfiguration != null)
      'data_source_configuration': [
        for (final e in dataSourceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `qna_intent_configuration.bedrock_model_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentBedrockModelConfiguration {
  const Lexv2modelsIntentBedrockModelConfiguration({
    this.customPrompt,
    required this.modelArn,
    this.traceStatus,
    this.guardrail,
  });

  final TfArg<String>? customPrompt;

  final TfArg<String> modelArn;

  final TfArg<String>? traceStatus;

  final List<Lexv2modelsIntentGuardrail>? guardrail;

  Map<String, Object?> encode() => {
    'custom_prompt': ?customPrompt?.toTfJson(),
    'model_arn': modelArn.toTfJson(),
    'trace_status': ?traceStatus?.toTfJson(),
    if (guardrail != null)
      'guardrail': [for (final e in guardrail!) e.encode()],
  };
}

/// Typed helper for the `qna_intent_configuration.bedrock_model_configuration.guardrail` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentGuardrail {
  const Lexv2modelsIntentGuardrail({
    required this.identifier,
    required this.version,
  });

  final TfArg<String> identifier;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentDataSourceConfiguration {
  const Lexv2modelsIntentDataSourceConfiguration({
    this.bedrockKnowledgeStoreConfiguration,
    this.kendraConfiguration,
    this.opensearchConfiguration,
  });

  final List<Lexv2modelsIntentBedrockKnowledgeStoreConfiguration>?
  bedrockKnowledgeStoreConfiguration;

  final List<Lexv2modelsIntentDataSourceConfigurationKendraConfiguration>?
  kendraConfiguration;

  final List<Lexv2modelsIntentOpensearchConfiguration>? opensearchConfiguration;

  Map<String, Object?> encode() => {
    if (bedrockKnowledgeStoreConfiguration != null)
      'bedrock_knowledge_store_configuration': [
        for (final e in bedrockKnowledgeStoreConfiguration!) e.encode(),
      ],
    if (kendraConfiguration != null)
      'kendra_configuration': [
        for (final e in kendraConfiguration!) e.encode(),
      ],
    if (opensearchConfiguration != null)
      'opensearch_configuration': [
        for (final e in opensearchConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration.bedrock_knowledge_store_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentBedrockKnowledgeStoreConfiguration {
  const Lexv2modelsIntentBedrockKnowledgeStoreConfiguration({
    required this.bedrockKnowledgeBaseArn,
    this.exactResponse,
    this.exactResponseFields,
  });

  final TfArg<String> bedrockKnowledgeBaseArn;

  final TfArg<bool>? exactResponse;

  final List<
    Lexv2modelsIntentBedrockKnowledgeStoreConfigurationExactResponseFields
  >?
  exactResponseFields;

  Map<String, Object?> encode() => {
    'bedrock_knowledge_base_arn': bedrockKnowledgeBaseArn.toTfJson(),
    'exact_response': ?exactResponse?.toTfJson(),
    if (exactResponseFields != null)
      'exact_response_fields': [
        for (final e in exactResponseFields!) e.encode(),
      ],
  };
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration.bedrock_knowledge_store_configuration.exact_response_fields` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentBedrockKnowledgeStoreConfigurationExactResponseFields {
  const Lexv2modelsIntentBedrockKnowledgeStoreConfigurationExactResponseFields({
    this.answerField,
  });

  final TfArg<String>? answerField;

  Map<String, Object?> encode() => {'answer_field': ?answerField?.toTfJson()};
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration.kendra_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentDataSourceConfigurationKendraConfiguration {
  const Lexv2modelsIntentDataSourceConfigurationKendraConfiguration({
    this.exactResponse,
    required this.kendraIndex,
    this.queryFilterString,
    this.queryFilterStringEnabled,
  });

  final TfArg<bool>? exactResponse;

  final TfArg<String> kendraIndex;

  final TfArg<String>? queryFilterString;

  final TfArg<bool>? queryFilterStringEnabled;

  Map<String, Object?> encode() => {
    'exact_response': ?exactResponse?.toTfJson(),
    'kendra_index': kendraIndex.toTfJson(),
    'query_filter_string': ?queryFilterString?.toTfJson(),
    'query_filter_string_enabled': ?queryFilterStringEnabled?.toTfJson(),
  };
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration.opensearch_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentOpensearchConfiguration {
  const Lexv2modelsIntentOpensearchConfiguration({
    required this.domainEndpoint,
    this.exactResponse,
    this.includeFields,
    required this.indexName,
    this.exactResponseFields,
  });

  final TfArg<String> domainEndpoint;

  final TfArg<bool>? exactResponse;

  final TfArg<List<String>>? includeFields;

  final TfArg<String> indexName;

  final List<Lexv2modelsIntentOpensearchConfigurationExactResponseFields>?
  exactResponseFields;

  Map<String, Object?> encode() => {
    'domain_endpoint': domainEndpoint.toTfJson(),
    'exact_response': ?exactResponse?.toTfJson(),
    'include_fields': ?includeFields?.toTfJson(),
    'index_name': indexName.toTfJson(),
    if (exactResponseFields != null)
      'exact_response_fields': [
        for (final e in exactResponseFields!) e.encode(),
      ],
  };
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration.opensearch_configuration.exact_response_fields` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentOpensearchConfigurationExactResponseFields {
  const Lexv2modelsIntentOpensearchConfigurationExactResponseFields({
    required this.answerField,
    required this.questionField,
  });

  final TfArg<String> answerField;

  final TfArg<String> questionField;

  Map<String, Object?> encode() => {
    'answer_field': answerField.toTfJson(),
    'question_field': questionField.toTfJson(),
  };
}

/// Typed helper for the `sample_utterance` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentSampleUtterance {
  const Lexv2modelsIntentSampleUtterance({required this.utterance});

  final TfArg<String> utterance;

  Map<String, Object?> encode() => {'utterance': utterance.toTfJson()};
}

/// Typed helper for the `slot_priority` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentSlotPriority {
  const Lexv2modelsIntentSlotPriority({
    required this.priority,
    required this.slotId,
  });

  final TfArg<num> priority;

  final TfArg<String> slotId;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'slot_id': slotId.toTfJson(),
  };
}

/// Factory wrapper for `aws_lexv2models_intent`.
final class AwsLexv2modelsIntent extends Resource {
  static const String tfType = 'aws_lexv2models_intent';

  AwsLexv2modelsIntent({
    required super.localName,
    required TfArg<String> botId,
    required TfArg<String> botVersion,
    TfArg<String>? description,
    required TfArg<String> localeId,
    required TfArg<String> name,
    TfArg<String>? parentIntentSignature,
    TfArg<String>? region,
    List<Lexv2modelsIntentClosingSetting>? closingSetting,
    List<Lexv2modelsIntentConfirmationSetting>? confirmationSetting,
    List<Lexv2modelsIntentDialogCodeHook>? dialogCodeHook,
    List<Lexv2modelsIntentFulfillmentCodeHook>? fulfillmentCodeHook,
    List<Lexv2modelsIntentInitialResponseSetting>? initialResponseSetting,
    List<Lexv2modelsIntentInputContext>? inputContext,
    List<Lexv2modelsIntentKendraConfiguration>? kendraConfiguration,
    List<Lexv2modelsIntentOutputContext>? outputContext,
    List<Lexv2modelsIntentQnaIntentConfiguration>? qnaIntentConfiguration,
    List<Lexv2modelsIntentSampleUtterance>? sampleUtterance,
    List<Lexv2modelsIntentSlotPriority>? slotPriority,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_id': botId,
           'bot_version': botVersion,
           'description': ?description,
           'locale_id': localeId,
           'name': name,
           'parent_intent_signature': ?parentIntentSignature,
           'region': ?region,
           if (closingSetting != null)
             'closing_setting': TfArg.literal([
               for (final e in closingSetting) e.encode(),
             ]),
           if (confirmationSetting != null)
             'confirmation_setting': TfArg.literal([
               for (final e in confirmationSetting) e.encode(),
             ]),
           if (dialogCodeHook != null)
             'dialog_code_hook': TfArg.literal([
               for (final e in dialogCodeHook) e.encode(),
             ]),
           if (fulfillmentCodeHook != null)
             'fulfillment_code_hook': TfArg.literal([
               for (final e in fulfillmentCodeHook) e.encode(),
             ]),
           if (initialResponseSetting != null)
             'initial_response_setting': TfArg.literal([
               for (final e in initialResponseSetting) e.encode(),
             ]),
           if (inputContext != null)
             'input_context': TfArg.literal([
               for (final e in inputContext) e.encode(),
             ]),
           if (kendraConfiguration != null)
             'kendra_configuration': TfArg.literal([
               for (final e in kendraConfiguration) e.encode(),
             ]),
           if (outputContext != null)
             'output_context': TfArg.literal([
               for (final e in outputContext) e.encode(),
             ]),
           if (qnaIntentConfiguration != null)
             'qna_intent_configuration': TfArg.literal([
               for (final e in qnaIntentConfiguration) e.encode(),
             ]),
           if (sampleUtterance != null)
             'sample_utterance': TfArg.literal([
               for (final e in sampleUtterance) e.encode(),
             ]),
           if (slotPriority != null)
             'slot_priority': TfArg.literal([
               for (final e in slotPriority) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexv2modelsIntentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexv2modelsIntent>`.
  RefTo<AwsLexv2modelsIntent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date_time` attribute.
  TfRef<String> get creationDateTime =>
      TfRef.attribute<String>(this, 'creation_date_time');

  /// Reference to `intent_id` attribute.
  TfRef<String> get intentId => TfRef.attribute<String>(this, 'intent_id');

  /// Reference to `last_updated_date_time` attribute.
  TfRef<String> get lastUpdatedDateTime =>
      TfRef.attribute<String>(this, 'last_updated_date_time');

  /// Reference to `bot_id` attribute.
  TfRef<String> get botIdRef => TfRef.attribute<String>(this, 'bot_id');

  /// Reference to `bot_version` attribute.
  TfRef<String> get botVersionRef =>
      TfRef.attribute<String>(this, 'bot_version');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `locale_id` attribute.
  TfRef<String> get localeIdRef => TfRef.attribute<String>(this, 'locale_id');

  /// Reference to `parent_intent_signature` attribute.
  TfRef<String> get parentIntentSignatureRef =>
      TfRef.attribute<String>(this, 'parent_intent_signature');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
