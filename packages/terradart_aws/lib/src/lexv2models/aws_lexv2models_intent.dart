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

  final List<Lexv2modelsIntentClosingSettingClosingResponse>? closingResponse;

  final List<Lexv2modelsIntentClosingSettingConditional>? conditional;

  final List<Lexv2modelsIntentClosingSettingNextStep>? nextStep;

  Map<String, Object?> encode() => {
    if (active != null) 'active': active!.toTfJson(),
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
final class Lexv2modelsIntentClosingSettingClosingResponse {
  const Lexv2modelsIntentClosingSettingClosingResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentClosingSettingClosingResponseMessageGroup>?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroup {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessage>?
  message;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessage {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.closing_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.closing_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariation {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `closing_setting.closing_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.closing_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.closing_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.closing_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditional {
  const Lexv2modelsIntentClosingSettingConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<Lexv2modelsIntentClosingSettingConditionalConditionalBranch>?
  conditionalBranch;

  final List<Lexv2modelsIntentClosingSettingConditionalDefaultBranch>?
  defaultBranch;

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
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranch {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponse
  >?
  response;

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
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchCondition {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponse {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranch {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStep>?
  nextStep;

  final List<Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponse>?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponse {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `closing_setting.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingNextStep {
  const Lexv2modelsIntentClosingSettingNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentClosingSettingNextStepDialogAction>? dialogAction;

  final List<Lexv2modelsIntentClosingSettingNextStepIntent>? intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingNextStepDialogAction {
  const Lexv2modelsIntentClosingSettingNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `closing_setting.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingNextStepIntent {
  const Lexv2modelsIntentClosingSettingNextStepIntent({this.name, this.slot});

  final TfArg<String>? name;

  final List<Lexv2modelsIntentClosingSettingNextStepIntentSlot>? slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingNextStepIntentSlot {
  const Lexv2modelsIntentClosingSettingNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<Lexv2modelsIntentClosingSettingNextStepIntentSlotValue>? value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `closing_setting.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentClosingSettingNextStepIntentSlotValue {
  const Lexv2modelsIntentClosingSettingNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
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

  final List<Lexv2modelsIntentConfirmationSettingCodeHook>? codeHook;

  final List<Lexv2modelsIntentConfirmationSettingConfirmationConditional>?
  confirmationConditional;

  final List<Lexv2modelsIntentConfirmationSettingConfirmationNextStep>?
  confirmationNextStep;

  final List<Lexv2modelsIntentConfirmationSettingConfirmationResponse>?
  confirmationResponse;

  final List<Lexv2modelsIntentConfirmationSettingDeclinationConditional>?
  declinationConditional;

  final List<Lexv2modelsIntentConfirmationSettingDeclinationNextStep>?
  declinationNextStep;

  final List<Lexv2modelsIntentConfirmationSettingDeclinationResponse>?
  declinationResponse;

  final List<Lexv2modelsIntentConfirmationSettingElicitationCodeHook>?
  elicitationCodeHook;

  final List<Lexv2modelsIntentConfirmationSettingFailureConditional>?
  failureConditional;

  final List<Lexv2modelsIntentConfirmationSettingFailureNextStep>?
  failureNextStep;

  final List<Lexv2modelsIntentConfirmationSettingFailureResponse>?
  failureResponse;

  final List<Lexv2modelsIntentConfirmationSettingPromptSpecification>?
  promptSpecification;

  Map<String, Object?> encode() => {
    if (active != null) 'active': active!.toTfJson(),
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
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHook {
  const Lexv2modelsIntentConfirmationSettingCodeHook({
    required this.active,
    required this.enableCodeHookInvocation,
    this.invocationLabel,
    this.postCodeHookSpecification,
  });

  final TfArg<bool> active;

  final TfArg<bool> enableCodeHookInvocation;

  final TfArg<String>? invocationLabel;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification
  >?
  postCodeHookSpecification;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    'enable_code_hook_invocation': enableCodeHookInvocation.toTfJson(),
    if (invocationLabel != null)
      'invocation_label': invocationLabel!.toTfJson(),
    if (postCodeHookSpecification != null)
      'post_code_hook_specification': [
        for (final e in postCodeHookSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification({
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

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional
  >?
  failureConditional;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep
  >?
  failureNextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse
  >?
  failureResponse;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional
  >?
  successConditional;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep
  >?
  successNextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse
  >?
  successResponse;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional
  >?
  timeoutConditional;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep
  >?
  timeoutNextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse
  >?
  timeoutResponse;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranch {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranch {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchCondition {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranch {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditional {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranch {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponse {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationNextStep {
  const Lexv2modelsIntentConfirmationSettingConfirmationNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationNextStepDialogAction
  >?
  dialogAction;

  final List<Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntent>?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingConfirmationNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingConfirmationNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponse {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.confirmation_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditional {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranch {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranch {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationNextStep {
  const Lexv2modelsIntentConfirmationSettingDeclinationNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationNextStepDialogAction
  >?
  dialogAction;

  final List<Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntent>?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingDeclinationNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot>?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingDeclinationNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponse {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.declination_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.declination_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.declination_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.elicitation_code_hook` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingElicitationCodeHook {
  const Lexv2modelsIntentConfirmationSettingElicitationCodeHook({
    this.enableCodeHookInvocation,
    this.invocationLabel,
  });

  final TfArg<bool>? enableCodeHookInvocation;

  final TfArg<String>? invocationLabel;

  Map<String, Object?> encode() => {
    if (enableCodeHookInvocation != null)
      'enable_code_hook_invocation': enableCodeHookInvocation!.toTfJson(),
    if (invocationLabel != null)
      'invocation_label': invocationLabel!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditional {
  const Lexv2modelsIntentConfirmationSettingFailureConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranch {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponse {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranch {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponse {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureNextStep {
  const Lexv2modelsIntentConfirmationSettingFailureNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentConfirmationSettingFailureNextStepDialogAction>?
  dialogAction;

  final List<Lexv2modelsIntentConfirmationSettingFailureNextStepIntent>? intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureNextStepDialogAction {
  const Lexv2modelsIntentConfirmationSettingFailureNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureNextStepIntent {
  const Lexv2modelsIntentConfirmationSettingFailureNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<Lexv2modelsIntentConfirmationSettingFailureNextStepIntentSlot>?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureNextStepIntentSlot {
  const Lexv2modelsIntentConfirmationSettingFailureNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureNextStepIntentSlotValue {
  const Lexv2modelsIntentConfirmationSettingFailureNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponse {
  const Lexv2modelsIntentConfirmationSettingFailureResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroup>?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroup {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.failure_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.failure_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.failure_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.prompt_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecification {
  const Lexv2modelsIntentConfirmationSettingPromptSpecification({
    this.allowInterrupt,
    required this.maxRetries,
    this.messageSelectionStrategy,
    this.messageGroup,
    this.promptAttemptsSpecification,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num> maxRetries;

  final TfArg<String>? messageSelectionStrategy;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroup
  >?
  messageGroup;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification
  >?
  promptAttemptsSpecification;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    'max_retries': maxRetries.toTfJson(),
    if (messageSelectionStrategy != null)
      'message_selection_strategy': messageSelectionStrategy!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
    if (promptAttemptsSpecification != null)
      'prompt_attempts_specification': [
        for (final e in promptAttemptsSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroup {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariation {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.prompt_specification.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `confirmation_setting.prompt_specification.prompt_attempts_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecification({
    this.allowInterrupt,
    required this.mapBlockKey,
    this.allowedInputTypes,
    this.audioAndDtmfInputSpecification,
    this.textInputSpecification,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<String> mapBlockKey;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes
  >?
  allowedInputTypes;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification
  >?
  audioAndDtmfInputSpecification;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification
  >?
  textInputSpecification;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
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
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes({
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
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification({
    required this.startTimeoutMs,
    this.audioSpecification,
    this.dtmfSpecification,
  });

  final TfArg<num> startTimeoutMs;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification
  >?
  audioSpecification;

  final List<
    Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification
  >?
  dtmfSpecification;

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
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification({
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
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification({
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
final class Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification {
  const Lexv2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification({
    required this.startTimeoutMs,
  });

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

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification
  >?
  fulfillmentUpdatesSpecification;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification
  >?
  postFulfillmentStatusSpecification;

  Map<String, Object?> encode() => {
    if (active != null) 'active': active!.toTfJson(),
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
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecification({
    required this.active,
    this.timeoutInSeconds,
    this.startResponse,
    this.updateResponse,
  });

  final TfArg<bool> active;

  final TfArg<num>? timeoutInSeconds;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse
  >?
  startResponse;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse
  >?
  updateResponse;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (timeoutInSeconds != null)
      'timeout_in_seconds': timeoutInSeconds!.toTfJson(),
    if (startResponse != null)
      'start_response': [for (final e in startResponse!) e.encode()],
    if (updateResponse != null)
      'update_response': [for (final e in updateResponse!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponse({
    this.allowInterrupt,
    this.delayInSeconds,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num>? delayInSeconds;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (delayInSeconds != null) 'delay_in_seconds': delayInSeconds!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.start_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponse({
    this.allowInterrupt,
    required this.frequencyInSeconds,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num> frequencyInSeconds;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    'frequency_in_seconds': frequencyInSeconds.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.fulfillment_updates_specification.update_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification({
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

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional
  >?
  failureConditional;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep
  >?
  failureNextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse
  >?
  failureResponse;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional
  >?
  successConditional;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep
  >?
  successNextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse
  >?
  successResponse;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional
  >?
  timeoutConditional;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep
  >?
  timeoutNextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse
  >?
  timeoutResponse;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranch {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchCondition {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranch {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.failure_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchCondition {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranch {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranch {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchCondition {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranch {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepDialogAction {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntent {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlot {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlotValue {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroup {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariation {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `fulfillment_code_hook.post_fulfillment_status_specification.timeout_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
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

  final List<Lexv2modelsIntentInitialResponseSettingCodeHook>? codeHook;

  final List<Lexv2modelsIntentInitialResponseSettingConditional>? conditional;

  final List<Lexv2modelsIntentInitialResponseSettingInitialResponse>?
  initialResponse;

  final List<Lexv2modelsIntentInitialResponseSettingNextStep>? nextStep;

  Map<String, Object?> encode() => {
    if (codeHook != null) 'code_hook': [for (final e in codeHook!) e.encode()],
    if (conditional != null)
      'conditional': [for (final e in conditional!) e.encode()],
    if (initialResponse != null)
      'initial_response': [for (final e in initialResponse!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHook {
  const Lexv2modelsIntentInitialResponseSettingCodeHook({
    required this.active,
    required this.enableCodeHookInvocation,
    this.invocationLabel,
    this.postCodeHookSpecification,
  });

  final TfArg<bool> active;

  final TfArg<bool> enableCodeHookInvocation;

  final TfArg<String>? invocationLabel;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification
  >?
  postCodeHookSpecification;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    'enable_code_hook_invocation': enableCodeHookInvocation.toTfJson(),
    if (invocationLabel != null)
      'invocation_label': invocationLabel!.toTfJson(),
    if (postCodeHookSpecification != null)
      'post_code_hook_specification': [
        for (final e in postCodeHookSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification({
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

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditional
  >?
  failureConditional;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStep
  >?
  failureNextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponse
  >?
  failureResponse;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditional
  >?
  successConditional;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStep
  >?
  successNextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponse
  >?
  successResponse;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditional
  >?
  timeoutConditional;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep
  >?
  timeoutNextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponse
  >?
  timeoutResponse;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditional {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.failure_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditional {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranch {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.success_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditional {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranch
  >?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranch {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchCondition {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranch {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponse {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.code_hook.post_code_hook_specification.timeout_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditional {
  const Lexv2modelsIntentInitialResponseSettingConditional({
    required this.active,
    this.conditionalBranch,
    this.defaultBranch,
  });

  final TfArg<bool> active;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranch
  >?
  conditionalBranch;

  final List<Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranch>?
  defaultBranch;

  Map<String, Object?> encode() => {
    'active': active.toTfJson(),
    if (conditionalBranch != null)
      'conditional_branch': [for (final e in conditionalBranch!) e.encode()],
    if (defaultBranch != null)
      'default_branch': [for (final e in defaultBranch!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranch {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranch({
    required this.name,
    this.condition,
    this.nextStep,
    this.response,
  });

  final TfArg<String> name;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchCondition
  >?
  condition;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.condition` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchCondition {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  final TfArg<String> expressionString;

  Map<String, Object?> encode() => {
    'expression_string': expressionString.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStep {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponse {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.conditional_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.default_branch` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranch {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStep
  >?
  nextStep;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse
  >?
  response;

  Map<String, Object?> encode() => {
    if (nextStep != null) 'next_step': [for (final e in nextStep!) e.encode()],
    if (response != null) 'response': [for (final e in response!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStep {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepDialogAction
  >?
  dialogAction;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntent
  >?
  intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlot
  >?
  slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlotValue
  >?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.conditional.default_branch.response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.initial_response` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponse {
  const Lexv2modelsIntentInitialResponseSettingInitialResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.initial_response.message_group` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroup {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessage {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.initial_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.variation` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariation {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationSsmlMessage
  >?
  ssmlMessage;

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

/// Typed helper for the `initial_response_setting.initial_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.initial_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `initial_response_setting.next_step` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingNextStep {
  const Lexv2modelsIntentInitialResponseSettingNextStep({
    this.sessionAttributes,
    this.dialogAction,
    this.intent,
  });

  final TfArg<Map<String, String>>? sessionAttributes;

  final List<Lexv2modelsIntentInitialResponseSettingNextStepDialogAction>?
  dialogAction;

  final List<Lexv2modelsIntentInitialResponseSettingNextStepIntent>? intent;

  Map<String, Object?> encode() => {
    if (sessionAttributes != null)
      'session_attributes': sessionAttributes!.toTfJson(),
    if (dialogAction != null)
      'dialog_action': [for (final e in dialogAction!) e.encode()],
    if (intent != null) 'intent': [for (final e in intent!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.next_step.dialog_action` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingNextStepDialogAction {
  const Lexv2modelsIntentInitialResponseSettingNextStepDialogAction({
    this.slotToElicit,
    this.suppressNextMessage,
    required this.type,
  });

  final TfArg<String>? slotToElicit;

  final TfArg<bool>? suppressNextMessage;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (slotToElicit != null) 'slot_to_elicit': slotToElicit!.toTfJson(),
    if (suppressNextMessage != null)
      'suppress_next_message': suppressNextMessage!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `initial_response_setting.next_step.intent` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingNextStepIntent {
  const Lexv2modelsIntentInitialResponseSettingNextStepIntent({
    this.name,
    this.slot,
  });

  final TfArg<String>? name;

  final List<Lexv2modelsIntentInitialResponseSettingNextStepIntentSlot>? slot;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (slot != null) 'slot': [for (final e in slot!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.next_step.intent.slot` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingNextStepIntentSlot {
  const Lexv2modelsIntentInitialResponseSettingNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String>? shape;

  final List<Lexv2modelsIntentInitialResponseSettingNextStepIntentSlotValue>?
  value;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (shape != null) 'shape': shape!.toTfJson(),
    if (value != null) 'value': [for (final e in value!) e.encode()],
  };
}

/// Typed helper for the `initial_response_setting.next_step.intent.slot.value` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentInitialResponseSettingNextStepIntentSlotValue {
  const Lexv2modelsIntentInitialResponseSettingNextStepIntentSlotValue({
    this.interpretedValue,
  });

  final TfArg<String>? interpretedValue;

  Map<String, Object?> encode() => {
    if (interpretedValue != null)
      'interpreted_value': interpretedValue!.toTfJson(),
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
    if (queryFilterString != null)
      'query_filter_string': queryFilterString!.toTfJson(),
    if (queryFilterStringEnabled != null)
      'query_filter_string_enabled': queryFilterStringEnabled!.toTfJson(),
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

  final List<Lexv2modelsIntentQnaIntentConfigurationBedrockModelConfiguration>?
  bedrockModelConfiguration;

  final List<Lexv2modelsIntentQnaIntentConfigurationDataSourceConfiguration>?
  dataSourceConfiguration;

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
final class Lexv2modelsIntentQnaIntentConfigurationBedrockModelConfiguration {
  const Lexv2modelsIntentQnaIntentConfigurationBedrockModelConfiguration({
    this.customPrompt,
    required this.modelArn,
    this.traceStatus,
    this.guardrail,
  });

  final TfArg<String>? customPrompt;

  final TfArg<String> modelArn;

  final TfArg<String>? traceStatus;

  final List<
    Lexv2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail
  >?
  guardrail;

  Map<String, Object?> encode() => {
    if (customPrompt != null) 'custom_prompt': customPrompt!.toTfJson(),
    'model_arn': modelArn.toTfJson(),
    if (traceStatus != null) 'trace_status': traceStatus!.toTfJson(),
    if (guardrail != null)
      'guardrail': [for (final e in guardrail!) e.encode()],
  };
}

/// Typed helper for the `qna_intent_configuration.bedrock_model_configuration.guardrail` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail {
  const Lexv2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail({
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
final class Lexv2modelsIntentQnaIntentConfigurationDataSourceConfiguration {
  const Lexv2modelsIntentQnaIntentConfigurationDataSourceConfiguration({
    this.bedrockKnowledgeStoreConfiguration,
    this.kendraConfiguration,
    this.opensearchConfiguration,
  });

  final List<
    Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration
  >?
  bedrockKnowledgeStoreConfiguration;

  final List<
    Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration
  >?
  kendraConfiguration;

  final List<
    Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration
  >?
  opensearchConfiguration;

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
final class Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration {
  const Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration({
    required this.bedrockKnowledgeBaseArn,
    this.exactResponse,
    this.exactResponseFields,
  });

  final TfArg<String> bedrockKnowledgeBaseArn;

  final TfArg<bool>? exactResponse;

  final List<
    Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields
  >?
  exactResponseFields;

  Map<String, Object?> encode() => {
    'bedrock_knowledge_base_arn': bedrockKnowledgeBaseArn.toTfJson(),
    if (exactResponse != null) 'exact_response': exactResponse!.toTfJson(),
    if (exactResponseFields != null)
      'exact_response_fields': [
        for (final e in exactResponseFields!) e.encode(),
      ],
  };
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration.bedrock_knowledge_store_configuration.exact_response_fields` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields {
  const Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields({
    this.answerField,
  });

  final TfArg<String>? answerField;

  Map<String, Object?> encode() => {
    if (answerField != null) 'answer_field': answerField!.toTfJson(),
  };
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration.kendra_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration {
  const Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration({
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
    if (exactResponse != null) 'exact_response': exactResponse!.toTfJson(),
    'kendra_index': kendraIndex.toTfJson(),
    if (queryFilterString != null)
      'query_filter_string': queryFilterString!.toTfJson(),
    if (queryFilterStringEnabled != null)
      'query_filter_string_enabled': queryFilterStringEnabled!.toTfJson(),
  };
}

/// Typed helper for the `qna_intent_configuration.data_source_configuration.opensearch_configuration` block of
/// `aws_lexv2models_intent` (derived from provider schema).
@immutable
final class Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration {
  const Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration({
    required this.domainEndpoint,
    this.exactResponse,
    this.includeFields,
    required this.indexName,
    this.exactResponseFields,
  });

  final TfArg<String> domainEndpoint;

  final TfArg<bool>? exactResponse;

  final TfArg<List<Object?>>? includeFields;

  final TfArg<String> indexName;

  final List<
    Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields
  >?
  exactResponseFields;

  Map<String, Object?> encode() => {
    'domain_endpoint': domainEndpoint.toTfJson(),
    if (exactResponse != null) 'exact_response': exactResponse!.toTfJson(),
    if (includeFields != null) 'include_fields': includeFields!.toTfJson(),
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
final class Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields {
  const Lexv2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields({
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
           if (description != null) 'description': description,
           'locale_id': localeId,
           'name': name,
           if (parentIntentSignature != null)
             'parent_intent_signature': parentIntentSignature,
           if (region != null) 'region': region,
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
}
