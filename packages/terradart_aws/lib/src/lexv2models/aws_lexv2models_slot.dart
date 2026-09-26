// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lexv2models_slot`.
const Set<String> _awsLexv2modelsSlotSensitive = <String>{};

/// Typed helper for the `multiple_values_setting` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotMultipleValuesSetting {
  const Lexv2modelsSlotMultipleValuesSetting({this.allowMultipleValues});

  final TfArg<bool>? allowMultipleValues;

  Map<String, Object?> encode() => {
    if (allowMultipleValues != null)
      'allow_multiple_values': allowMultipleValues!.toTfJson(),
  };
}

/// Typed helper for the `obfuscation_setting` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotObfuscationSetting {
  const Lexv2modelsSlotObfuscationSetting({
    required this.obfuscationSettingType,
  });

  final TfArg<String> obfuscationSettingType;

  Map<String, Object?> encode() => {
    'obfuscation_setting_type': obfuscationSettingType.toTfJson(),
  };
}

/// Typed helper for the `sub_slot_setting` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSetting {
  const Lexv2modelsSlotSubSlotSetting({
    this.expression,
    this.slotSpecification,
  });

  final TfArg<String>? expression;

  final List<Lexv2modelsSlotSubSlotSettingSlotSpecification>? slotSpecification;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    if (slotSpecification != null)
      'slot_specification': [for (final e in slotSpecification!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecification({
    required this.mapBlockKey,
    required this.slotTypeId,
    this.valueElicitationSetting,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String> slotTypeId;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting
  >?
  valueElicitationSetting;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    'slot_type_id': slotTypeId.toTfJson(),
    if (valueElicitationSetting != null)
      'value_elicitation_setting': [
        for (final e in valueElicitationSetting!) e.encode(),
      ],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSetting({
    this.defaultValueSpecification,
    this.promptSpecification,
    this.sampleUtterance,
    this.waitAndContinueSpecification,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification
  >?
  defaultValueSpecification;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification
  >?
  promptSpecification;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance
  >?
  sampleUtterance;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification
  >?
  waitAndContinueSpecification;

  Map<String, Object?> encode() => {
    if (defaultValueSpecification != null)
      'default_value_specification': [
        for (final e in defaultValueSpecification!) e.encode(),
      ],
    if (promptSpecification != null)
      'prompt_specification': [
        for (final e in promptSpecification!) e.encode(),
      ],
    if (sampleUtterance != null)
      'sample_utterance': [for (final e in sampleUtterance!) e.encode()],
    if (waitAndContinueSpecification != null)
      'wait_and_continue_specification': [
        for (final e in waitAndContinueSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.default_value_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecification({
    this.defaultValueList,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList
  >?
  defaultValueList;

  Map<String, Object?> encode() => {
    if (defaultValueList != null)
      'default_value_list': [for (final e in defaultValueList!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.default_value_specification.default_value_list` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingDefaultValueSpecificationDefaultValueList({
    required this.defaultValue,
  });

  final TfArg<String> defaultValue;

  Map<String, Object?> encode() => {'default_value': defaultValue.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecification({
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
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup
  >?
  messageGroup;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.message.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariation {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.variation.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.variation.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.message_group.variation.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.prompt_attempts_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecification({
    this.allowInterrupt,
    required this.mapBlockKey,
    this.allowedInputTypes,
    this.audioAndDtmfInputSpecification,
    this.textInputSpecification,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<String> mapBlockKey;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes
  >?
  allowedInputTypes;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification
  >?
  audioAndDtmfInputSpecification;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.prompt_attempts_specification.allowed_input_types` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification({
    required this.startTimeoutMs,
    this.audioSpecification,
    this.dtmfSpecification,
  });

  final TfArg<num> startTimeoutMs;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification
  >?
  audioSpecification;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification.audio_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification.dtmf_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.prompt_specification.prompt_attempts_specification.text_input_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification({
    required this.startTimeoutMs,
  });

  final TfArg<num> startTimeoutMs;

  Map<String, Object?> encode() => {
    'start_timeout_ms': startTimeoutMs.toTfJson(),
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.sample_utterance` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingSampleUtterance({
    required this.utterance,
  });

  final TfArg<String> utterance;

  Map<String, Object?> encode() => {'utterance': utterance.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecification({
    this.active,
    this.continueResponse,
    this.stillWaitingResponse,
    this.waitingResponse,
  });

  final TfArg<bool>? active;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse
  >?
  continueResponse;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse
  >?
  stillWaitingResponse;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse
  >?
  waitingResponse;

  Map<String, Object?> encode() => {
    if (active != null) 'active': active!.toTfJson(),
    if (continueResponse != null)
      'continue_response': [for (final e in continueResponse!) e.encode()],
    if (stillWaitingResponse != null)
      'still_waiting_response': [
        for (final e in stillWaitingResponse!) e.encode(),
      ],
    if (waitingResponse != null)
      'waiting_response': [for (final e in waitingResponse!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationSsmlMessage
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCardButton({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse({
    this.allowInterrupt,
    required this.frequencyInSeconds,
    required this.timeoutInSeconds,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num> frequencyInSeconds;

  final TfArg<num> timeoutInSeconds;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    'frequency_in_seconds': frequencyInSeconds.toTfJson(),
    'timeout_in_seconds': timeoutInSeconds.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCardButton({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCardButton({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationSsmlMessage
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton({
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

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `sub_slot_setting.slot_specification.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSetting {
  const Lexv2modelsSlotValueElicitationSetting({
    required this.slotConstraint,
    this.defaultValueSpecification,
    this.promptSpecification,
    this.sampleUtterance,
    this.slotResolutionSetting,
    this.waitAndContinueSpecification,
  });

  final TfArg<String> slotConstraint;

  final List<Lexv2modelsSlotValueElicitationSettingDefaultValueSpecification>?
  defaultValueSpecification;

  final List<Lexv2modelsSlotValueElicitationSettingPromptSpecification>?
  promptSpecification;

  final List<Lexv2modelsSlotValueElicitationSettingSampleUtterance>?
  sampleUtterance;

  final List<Lexv2modelsSlotValueElicitationSettingSlotResolutionSetting>?
  slotResolutionSetting;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecification
  >?
  waitAndContinueSpecification;

  Map<String, Object?> encode() => {
    'slot_constraint': slotConstraint.toTfJson(),
    if (defaultValueSpecification != null)
      'default_value_specification': [
        for (final e in defaultValueSpecification!) e.encode(),
      ],
    if (promptSpecification != null)
      'prompt_specification': [
        for (final e in promptSpecification!) e.encode(),
      ],
    if (sampleUtterance != null)
      'sample_utterance': [for (final e in sampleUtterance!) e.encode()],
    if (slotResolutionSetting != null)
      'slot_resolution_setting': [
        for (final e in slotResolutionSetting!) e.encode(),
      ],
    if (waitAndContinueSpecification != null)
      'wait_and_continue_specification': [
        for (final e in waitAndContinueSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `value_elicitation_setting.default_value_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingDefaultValueSpecification {
  const Lexv2modelsSlotValueElicitationSettingDefaultValueSpecification({
    this.defaultValueList,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList
  >?
  defaultValueList;

  Map<String, Object?> encode() => {
    if (defaultValueList != null)
      'default_value_list': [for (final e in defaultValueList!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.default_value_specification.default_value_list` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList {
  const Lexv2modelsSlotValueElicitationSettingDefaultValueSpecificationDefaultValueList({
    required this.defaultValue,
  });

  final TfArg<String> defaultValue;

  Map<String, Object?> encode() => {'default_value': defaultValue.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecification {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecification({
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
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup
  >?
  messageGroup;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageImageResponseCardButton({
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.variation.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.variation.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton({
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.variation.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.prompt_attempts_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecification({
    this.allowInterrupt,
    required this.mapBlockKey,
    this.allowedInputTypes,
    this.audioAndDtmfInputSpecification,
    this.textInputSpecification,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<String> mapBlockKey;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes
  >?
  allowedInputTypes;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification
  >?
  audioAndDtmfInputSpecification;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.prompt_attempts_specification.allowed_input_types` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes({
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecification({
    required this.startTimeoutMs,
    this.audioSpecification,
    this.dtmfSpecification,
  });

  final TfArg<num> startTimeoutMs;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification
  >?
  audioSpecification;

  final List<
    Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification.audio_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification({
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.prompt_attempts_specification.audio_and_dtmf_input_specification.dtmf_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification({
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.prompt_attempts_specification.text_input_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification {
  const Lexv2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification({
    required this.startTimeoutMs,
  });

  final TfArg<num> startTimeoutMs;

  Map<String, Object?> encode() => {
    'start_timeout_ms': startTimeoutMs.toTfJson(),
  };
}

/// Typed helper for the `value_elicitation_setting.sample_utterance` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingSampleUtterance {
  const Lexv2modelsSlotValueElicitationSettingSampleUtterance({
    required this.utterance,
  });

  final TfArg<String> utterance;

  Map<String, Object?> encode() => {'utterance': utterance.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.slot_resolution_setting` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingSlotResolutionSetting {
  const Lexv2modelsSlotValueElicitationSettingSlotResolutionSetting({
    required this.slotResolutionStrategy,
  });

  final TfArg<String> slotResolutionStrategy;

  Map<String, Object?> encode() => {
    'slot_resolution_strategy': slotResolutionStrategy.toTfJson(),
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecification {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecification({
    this.active,
    this.continueResponse,
    this.stillWaitingResponse,
    this.waitingResponse,
  });

  final TfArg<bool>? active;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse
  >?
  continueResponse;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse
  >?
  stillWaitingResponse;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse
  >?
  waitingResponse;

  Map<String, Object?> encode() => {
    if (active != null) 'active': active!.toTfJson(),
    if (continueResponse != null)
      'continue_response': [for (final e in continueResponse!) e.encode()],
    if (stillWaitingResponse != null)
      'still_waiting_response': [
        for (final e in stillWaitingResponse!) e.encode(),
      ],
    if (waitingResponse != null)
      'waiting_response': [for (final e in waitingResponse!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton({
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationSsmlMessage
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationImageResponseCardButton({
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.continue_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponse({
    this.allowInterrupt,
    required this.frequencyInSeconds,
    required this.timeoutInSeconds,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num> frequencyInSeconds;

  final TfArg<num> timeoutInSeconds;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    'frequency_in_seconds': frequencyInSeconds.toTfJson(),
    'timeout_in_seconds': timeoutInSeconds.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageImageResponseCardButton({
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationImageResponseCardButton({
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup
  >?
  messageGroup;

  Map<String, Object?> encode() => {
    if (allowInterrupt != null) 'allow_interrupt': allowInterrupt!.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroup({
    this.message,
    this.variation,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage
  >?
  message;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation
  >?
  variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCardButton {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageImageResponseCardButton({
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload
  >?
  customPayload;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCard
  >?
  imageResponseCard;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage
  >?
  plainTextMessage;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationSsmlMessage
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.custom_payload` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCard {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<
    Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton
  >?
  button;

  Map<String, Object?> encode() => {
    if (imageUrl != null) 'image_url': imageUrl!.toTfJson(),
    if (subtitle != null) 'subtitle': subtitle!.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton({
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

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response.message_group.variation.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationSsmlMessage {
  const Lexv2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Factory wrapper for `aws_lexv2models_slot`.
final class AwsLexv2modelsSlot extends Resource {
  static const String tfType = 'aws_lexv2models_slot';

  AwsLexv2modelsSlot({
    required super.localName,
    required TfArg<String> botId,
    required TfArg<String> botVersion,
    TfArg<String>? description,
    required TfArg<String> intentId,
    required TfArg<String> localeId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? slotTypeId,
    List<Lexv2modelsSlotMultipleValuesSetting>? multipleValuesSetting,
    List<Lexv2modelsSlotObfuscationSetting>? obfuscationSetting,
    List<Lexv2modelsSlotSubSlotSetting>? subSlotSetting,
    List<Lexv2modelsSlotValueElicitationSetting>? valueElicitationSetting,
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
           'intent_id': intentId,
           'locale_id': localeId,
           'name': name,
           if (region != null) 'region': region,
           if (slotTypeId != null) 'slot_type_id': slotTypeId,
           if (multipleValuesSetting != null)
             'multiple_values_setting': TfArg.literal([
               for (final e in multipleValuesSetting) e.encode(),
             ]),
           if (obfuscationSetting != null)
             'obfuscation_setting': TfArg.literal([
               for (final e in obfuscationSetting) e.encode(),
             ]),
           if (subSlotSetting != null)
             'sub_slot_setting': TfArg.literal([
               for (final e in subSlotSetting) e.encode(),
             ]),
           if (valueElicitationSetting != null)
             'value_elicitation_setting': TfArg.literal([
               for (final e in valueElicitationSetting) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexv2modelsSlotSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `slot_id` attribute.
  TfRef<String> get slotId => TfRef.attribute<String>(this, 'slot_id');
}
