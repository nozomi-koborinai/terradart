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
    'allow_multiple_values': ?allowMultipleValues?.toTfJson(),
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

  final List<Lexv2modelsSlotSpecification>? slotSpecification;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    if (slotSpecification != null)
      'slot_specification': [for (final e in slotSpecification!) e.encode()],
  };
}

/// Typed helper for the `sub_slot_setting.slot_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotSpecification {
  const Lexv2modelsSlotSpecification({
    required this.mapBlockKey,
    required this.slotTypeId,
    this.valueElicitationSetting,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<String> slotTypeId;

  final List<Lexv2modelsSlotSpecificationValueElicitationSetting>?
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
final class Lexv2modelsSlotSpecificationValueElicitationSetting {
  const Lexv2modelsSlotSpecificationValueElicitationSetting({
    this.defaultValueSpecification,
    this.promptSpecification,
    this.sampleUtterance,
    this.waitAndContinueSpecification,
  });

  final List<Lexv2modelsSlotDefaultValueSpecification>?
  defaultValueSpecification;

  final List<Lexv2modelsSlotPromptSpecification>? promptSpecification;

  final List<Lexv2modelsSlotSampleUtterance>? sampleUtterance;

  final List<Lexv2modelsSlotWaitAndContinueSpecification>?
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

/// Typed helper for the `value_elicitation_setting.default_value_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotDefaultValueSpecification {
  const Lexv2modelsSlotDefaultValueSpecification({this.defaultValueList});

  final List<Lexv2modelsSlotDefaultValueList>? defaultValueList;

  Map<String, Object?> encode() => {
    if (defaultValueList != null)
      'default_value_list': [for (final e in defaultValueList!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.default_value_specification.default_value_list` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotDefaultValueList {
  const Lexv2modelsSlotDefaultValueList({required this.defaultValue});

  final TfArg<String> defaultValue;

  Map<String, Object?> encode() => {'default_value': defaultValue.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotPromptSpecification {
  const Lexv2modelsSlotPromptSpecification({
    this.allowInterrupt,
    required this.maxRetries,
    this.messageSelectionStrategy,
    this.messageGroup,
    this.promptAttemptsSpecification,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num> maxRetries;

  final TfArg<String>? messageSelectionStrategy;

  final List<Lexv2modelsSlotMessageGroup>? messageGroup;

  final List<Lexv2modelsSlotPromptAttemptsSpecification>?
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

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotMessageGroup {
  const Lexv2modelsSlotMessageGroup({this.message, this.variation});

  final List<Lexv2modelsSlotMessage>? message;

  final List<Lexv2modelsSlotVariation>? variation;

  Map<String, Object?> encode() => {
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (variation != null)
      'variation': [for (final e in variation!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotMessage {
  const Lexv2modelsSlotMessage({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<Lexv2modelsSlotCustomPayload>? customPayload;

  final List<Lexv2modelsSlotImageResponseCard>? imageResponseCard;

  final List<Lexv2modelsSlotPlainTextMessage>? plainTextMessage;

  final List<Lexv2modelsSlotSsmlMessage>? ssmlMessage;

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
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotCustomPayload {
  const Lexv2modelsSlotCustomPayload({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.image_response_card` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotImageResponseCard {
  const Lexv2modelsSlotImageResponseCard({
    this.imageUrl,
    this.subtitle,
    required this.title,
    this.button,
  });

  final TfArg<String>? imageUrl;

  final TfArg<String>? subtitle;

  final TfArg<String> title;

  final List<Lexv2modelsSlotButton>? button;

  Map<String, Object?> encode() => {
    'image_url': ?imageUrl?.toTfJson(),
    'subtitle': ?subtitle?.toTfJson(),
    'title': title.toTfJson(),
    if (button != null) 'button': [for (final e in button!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.image_response_card.button` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotButton {
  const Lexv2modelsSlotButton({required this.text, required this.value});

  final TfArg<String> text;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.plain_text_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotPlainTextMessage {
  const Lexv2modelsSlotPlainTextMessage({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.message.ssml_message` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotSsmlMessage {
  const Lexv2modelsSlotSsmlMessage({required this.value});

  final TfArg<String> value;

  Map<String, Object?> encode() => {'value': value.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.prompt_specification.message_group.variation` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotVariation {
  const Lexv2modelsSlotVariation({
    this.customPayload,
    this.imageResponseCard,
    this.plainTextMessage,
    this.ssmlMessage,
  });

  final List<Lexv2modelsSlotCustomPayload>? customPayload;

  final List<Lexv2modelsSlotImageResponseCard>? imageResponseCard;

  final List<Lexv2modelsSlotPlainTextMessage>? plainTextMessage;

  final List<Lexv2modelsSlotSsmlMessage>? ssmlMessage;

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

/// Typed helper for the `value_elicitation_setting.prompt_specification.prompt_attempts_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotPromptAttemptsSpecification {
  const Lexv2modelsSlotPromptAttemptsSpecification({
    this.allowInterrupt,
    required this.mapBlockKey,
    this.allowedInputTypes,
    this.audioAndDtmfInputSpecification,
    this.textInputSpecification,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<String> mapBlockKey;

  final List<Lexv2modelsSlotAllowedInputTypes>? allowedInputTypes;

  final List<Lexv2modelsSlotAudioAndDtmfInputSpecification>?
  audioAndDtmfInputSpecification;

  final List<Lexv2modelsSlotTextInputSpecification>? textInputSpecification;

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

/// Typed helper for the `value_elicitation_setting.prompt_specification.prompt_attempts_specification.allowed_input_types` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotAllowedInputTypes {
  const Lexv2modelsSlotAllowedInputTypes({
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
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotAudioAndDtmfInputSpecification {
  const Lexv2modelsSlotAudioAndDtmfInputSpecification({
    required this.startTimeoutMs,
    this.audioSpecification,
    this.dtmfSpecification,
  });

  final TfArg<num> startTimeoutMs;

  final List<Lexv2modelsSlotAudioSpecification>? audioSpecification;

  final List<Lexv2modelsSlotDtmfSpecification>? dtmfSpecification;

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
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotAudioSpecification {
  const Lexv2modelsSlotAudioSpecification({
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
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotDtmfSpecification {
  const Lexv2modelsSlotDtmfSpecification({
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
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotTextInputSpecification {
  const Lexv2modelsSlotTextInputSpecification({required this.startTimeoutMs});

  final TfArg<num> startTimeoutMs;

  Map<String, Object?> encode() => {
    'start_timeout_ms': startTimeoutMs.toTfJson(),
  };
}

/// Typed helper for the `value_elicitation_setting.sample_utterance` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotSampleUtterance {
  const Lexv2modelsSlotSampleUtterance({required this.utterance});

  final TfArg<String> utterance;

  Map<String, Object?> encode() => {'utterance': utterance.toTfJson()};
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotWaitAndContinueSpecification {
  const Lexv2modelsSlotWaitAndContinueSpecification({
    this.active,
    this.continueResponse,
    this.stillWaitingResponse,
    this.waitingResponse,
  });

  final TfArg<bool>? active;

  final List<Lexv2modelsSlotContinueResponse>? continueResponse;

  final List<Lexv2modelsSlotStillWaitingResponse>? stillWaitingResponse;

  final List<Lexv2modelsSlotWaitingResponse>? waitingResponse;

  Map<String, Object?> encode() => {
    'active': ?active?.toTfJson(),
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
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotContinueResponse {
  const Lexv2modelsSlotContinueResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsSlotMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.still_waiting_response` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotStillWaitingResponse {
  const Lexv2modelsSlotStillWaitingResponse({
    this.allowInterrupt,
    required this.frequencyInSeconds,
    required this.timeoutInSeconds,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final TfArg<num> frequencyInSeconds;

  final TfArg<num> timeoutInSeconds;

  final List<Lexv2modelsSlotMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    'frequency_in_seconds': frequencyInSeconds.toTfJson(),
    'timeout_in_seconds': timeoutInSeconds.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
}

/// Typed helper for the `value_elicitation_setting.wait_and_continue_specification.waiting_response` block of
/// `aws_lexv2models_slot` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Lexv2modelsSlotWaitingResponse {
  const Lexv2modelsSlotWaitingResponse({
    this.allowInterrupt,
    this.messageGroup,
  });

  final TfArg<bool>? allowInterrupt;

  final List<Lexv2modelsSlotMessageGroup>? messageGroup;

  Map<String, Object?> encode() => {
    'allow_interrupt': ?allowInterrupt?.toTfJson(),
    if (messageGroup != null)
      'message_group': [for (final e in messageGroup!) e.encode()],
  };
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

  final List<Lexv2modelsSlotDefaultValueSpecification>?
  defaultValueSpecification;

  final List<Lexv2modelsSlotPromptSpecification>? promptSpecification;

  final List<Lexv2modelsSlotSampleUtterance>? sampleUtterance;

  final List<Lexv2modelsSlotResolutionSetting>? slotResolutionSetting;

  final List<Lexv2modelsSlotWaitAndContinueSpecification>?
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

/// Typed helper for the `value_elicitation_setting.slot_resolution_setting` block of
/// `aws_lexv2models_slot` (derived from provider schema).
@immutable
final class Lexv2modelsSlotResolutionSetting {
  const Lexv2modelsSlotResolutionSetting({
    required this.slotResolutionStrategy,
  });

  final TfArg<String> slotResolutionStrategy;

  Map<String, Object?> encode() => {
    'slot_resolution_strategy': slotResolutionStrategy.toTfJson(),
  };
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
           'description': ?description,
           'intent_id': intentId,
           'locale_id': localeId,
           'name': name,
           'region': ?region,
           'slot_type_id': ?slotTypeId,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexv2modelsSlot>`.
  RefTo<AwsLexv2modelsSlot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `slot_id` attribute.
  TfRef<String> get slotId => TfRef.attribute<String>(this, 'slot_id');

  /// Reference to `bot_id` attribute.
  TfRef<String> get botId => TfRef.attribute<String>(this, 'bot_id');

  /// Reference to `bot_version` attribute.
  TfRef<String> get botVersion => TfRef.attribute<String>(this, 'bot_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `intent_id` attribute.
  TfRef<String> get intentId => TfRef.attribute<String>(this, 'intent_id');

  /// Reference to `locale_id` attribute.
  TfRef<String> get localeId => TfRef.attribute<String>(this, 'locale_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `slot_type_id` attribute.
  TfRef<String> get slotTypeId => TfRef.attribute<String>(this, 'slot_type_id');
}
