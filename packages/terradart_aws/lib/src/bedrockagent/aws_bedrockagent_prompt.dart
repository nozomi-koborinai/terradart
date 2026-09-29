// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_prompt`.
const Set<String> _awsBedrockagentPromptSensitive = <String>{};

/// Typed helper for the `variant` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariant {
  const BedrockagentPromptVariant({
    this.additionalModelRequestFields,
    required this.model,
    required this.name,
    required this.templateType,
    this.inferenceConfiguration,
    this.metadata,
    this.templateConfiguration,
  });

  final TfArg<String>? additionalModelRequestFields;

  final BedrockagentPromptVariantModel model;

  final TfArg<String> name;

  final TfArg<BedrockagentPromptVariantTemplateType> templateType;

  final List<BedrockagentPromptVariantInferenceConfiguration>?
  inferenceConfiguration;

  final List<BedrockagentPromptVariantMetadata>? metadata;

  final List<BedrockagentPromptVariantTemplateConfiguration>?
  templateConfiguration;

  Map<String, Object?> encode() => {
    'additional_model_request_fields': ?additionalModelRequestFields
        ?.toTfJson(),
    ...model.encode(),
    'name': name.toTfJson(),
    'template_type': templateType.toTfJson(),
    if (inferenceConfiguration != null)
      'inference_configuration': [
        for (final e in inferenceConfiguration!) e.encode(),
      ],
    if (metadata != null) 'metadata': [for (final e in metadata!) e.encode()],
    if (templateConfiguration != null)
      'template_configuration': [
        for (final e in templateConfiguration!) e.encode(),
      ],
  };
}

/// Exactly one of `gen_ai_resource`, `model_id` on the `variant` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.genAiResource(...)`.
sealed class BedrockagentPromptVariantModel {
  const BedrockagentPromptVariantModel();

  /// Sets `gen_ai_resource`.
  const factory BedrockagentPromptVariantModel.genAiResource(
    List<BedrockagentPromptVariantGenAiResource> genAiResource,
  ) = BedrockagentPromptVariantModelGenAiResource;

  /// Sets `model_id`.
  const factory BedrockagentPromptVariantModel.modelId(TfArg<String> modelId) =
      BedrockagentPromptVariantModelId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentPromptVariantModel.genAiResource] choice: sets `gen_ai_resource`.
final class BedrockagentPromptVariantModelGenAiResource
    extends BedrockagentPromptVariantModel {
  const BedrockagentPromptVariantModelGenAiResource(this.genAiResource);

  final List<BedrockagentPromptVariantGenAiResource> genAiResource;

  @override
  String get blockKey => 'gen_ai_resource';

  @override
  Map<String, Object?> encode() => {
    'gen_ai_resource': [for (final e in genAiResource) e.encode()],
  };
}

/// The [BedrockagentPromptVariantModel.modelId] choice: sets `model_id`.
final class BedrockagentPromptVariantModelId
    extends BedrockagentPromptVariantModel {
  const BedrockagentPromptVariantModelId(this.modelId);

  final TfArg<String> modelId;

  @override
  String get blockKey => 'model_id';

  @override
  Map<String, Object?> encode() => {'model_id': modelId.toTfJson()};
}

/// `template_type` — derived from the provider schema description.
enum BedrockagentPromptVariantTemplateType implements TerraformEnum {
  text('TEXT'),
  chat('CHAT');

  const BedrockagentPromptVariantTemplateType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `variant.gen_ai_resource` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantGenAiResource {
  const BedrockagentPromptVariantGenAiResource({this.agent});

  final List<BedrockagentPromptVariantGenAiResourceAgent>? agent;

  Map<String, Object?> encode() => {
    if (agent != null) 'agent': [for (final e in agent!) e.encode()],
  };
}

/// Typed helper for the `variant.gen_ai_resource.agent` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantGenAiResourceAgent {
  const BedrockagentPromptVariantGenAiResourceAgent({
    required this.agentIdentifier,
  });

  final TfArg<String> agentIdentifier;

  Map<String, Object?> encode() => {
    'agent_identifier': agentIdentifier.toTfJson(),
  };
}

/// Typed helper for the `variant.inference_configuration` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantInferenceConfiguration {
  const BedrockagentPromptVariantInferenceConfiguration({this.text});

  final List<BedrockagentPromptVariantInferenceConfigurationText>? text;

  Map<String, Object?> encode() => {
    if (text != null) 'text': [for (final e in text!) e.encode()],
  };
}

/// Typed helper for the `variant.inference_configuration.text` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantInferenceConfigurationText {
  const BedrockagentPromptVariantInferenceConfigurationText({
    this.maxTokens,
    this.stopSequences,
    this.temperature,
    this.topP,
  });

  final TfArg<num>? maxTokens;

  final TfArg<List<Object?>>? stopSequences;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    'max_tokens': ?maxTokens?.toTfJson(),
    'stop_sequences': ?stopSequences?.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'top_p': ?topP?.toTfJson(),
  };
}

/// Typed helper for the `variant.metadata` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantMetadata {
  const BedrockagentPromptVariantMetadata({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Exactly one of `chat`, `text` on the `variant.template_configuration` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.chat(...)`.
sealed class BedrockagentPromptVariantTemplateConfiguration {
  const BedrockagentPromptVariantTemplateConfiguration();

  /// Sets `chat`.
  const factory BedrockagentPromptVariantTemplateConfiguration.chat(
    List<BedrockagentPromptVariantTemplateConfigurationChat> chat,
  ) = BedrockagentPromptVariantTemplateConfigurationChatChoice;

  /// Sets `text`.
  const factory BedrockagentPromptVariantTemplateConfiguration.text(
    List<BedrockagentPromptVariantTemplateConfigurationText> text,
  ) = BedrockagentPromptVariantTemplateConfigurationTextChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentPromptVariantTemplateConfiguration.chat] choice: sets `chat`.
final class BedrockagentPromptVariantTemplateConfigurationChatChoice
    extends BedrockagentPromptVariantTemplateConfiguration {
  const BedrockagentPromptVariantTemplateConfigurationChatChoice(this.chat);

  final List<BedrockagentPromptVariantTemplateConfigurationChat> chat;

  @override
  String get blockKey => 'chat';

  @override
  Map<String, Object?> encode() => {
    'chat': [for (final e in chat) e.encode()],
  };
}

/// The [BedrockagentPromptVariantTemplateConfiguration.text] choice: sets `text`.
final class BedrockagentPromptVariantTemplateConfigurationTextChoice
    extends BedrockagentPromptVariantTemplateConfiguration {
  const BedrockagentPromptVariantTemplateConfigurationTextChoice(this.text);

  final List<BedrockagentPromptVariantTemplateConfigurationText> text;

  @override
  String get blockKey => 'text';

  @override
  Map<String, Object?> encode() => {
    'text': [for (final e in text) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChat {
  const BedrockagentPromptVariantTemplateConfigurationChat({
    this.inputVariable,
    this.message,
    this.system,
    this.toolConfiguration,
  });

  final List<BedrockagentPromptVariantTemplateConfigurationChatInputVariable>?
  inputVariable;

  final List<BedrockagentPromptVariantTemplateConfigurationChatMessage>?
  message;

  final List<BedrockagentPromptVariantTemplateConfigurationChatSystem>? system;

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfiguration
  >?
  toolConfiguration;

  Map<String, Object?> encode() => {
    if (inputVariable != null)
      'input_variable': [for (final e in inputVariable!) e.encode()],
    if (message != null) 'message': [for (final e in message!) e.encode()],
    if (system != null) 'system': [for (final e in system!) e.encode()],
    if (toolConfiguration != null)
      'tool_configuration': [for (final e in toolConfiguration!) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.input_variable` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatInputVariable {
  const BedrockagentPromptVariantTemplateConfigurationChatInputVariable({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.chat.message` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatMessage {
  const BedrockagentPromptVariantTemplateConfigurationChatMessage({
    required this.role,
    this.content,
  });

  final TfArg<BedrockagentPromptVariantTemplateConfigurationChatMessageRole>
  role;

  final List<BedrockagentPromptVariantTemplateConfigurationChatMessageContent>?
  content;

  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (content != null) 'content': [for (final e in content!) e.encode()],
  };
}

/// `role` — derived from the provider schema description.
enum BedrockagentPromptVariantTemplateConfigurationChatMessageRole
    implements TerraformEnum {
  user('user'),
  assistant('assistant');

  const BedrockagentPromptVariantTemplateConfigurationChatMessageRole(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `cache_point`, `text` on the `variant.template_configuration.chat.message.content` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cachePoint(...)`.
sealed class BedrockagentPromptVariantTemplateConfigurationChatMessageContent {
  const BedrockagentPromptVariantTemplateConfigurationChatMessageContent();

  /// Sets `cache_point`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatMessageContent.cachePoint(
    List<
      BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePoint
    >
    cachePoint,
  ) = BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePointChoice;

  /// Sets `text`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatMessageContent.text(
    TfArg<String> text,
  ) = BedrockagentPromptVariantTemplateConfigurationChatMessageContentText;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatMessageContent.cachePoint] choice: sets `cache_point`.
final class BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePointChoice
    extends BedrockagentPromptVariantTemplateConfigurationChatMessageContent {
  const BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePointChoice(
    this.cachePoint,
  );

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePoint
  >
  cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatMessageContent.text] choice: sets `text`.
final class BedrockagentPromptVariantTemplateConfigurationChatMessageContentText
    extends BedrockagentPromptVariantTemplateConfigurationChatMessageContent {
  const BedrockagentPromptVariantTemplateConfigurationChatMessageContentText(
    this.text,
  );

  final TfArg<String> text;

  @override
  String get blockKey => 'text';

  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.chat.message.content.cache_point` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePoint {
  const BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePoint({
    required this.type,
  });

  final TfArg<
    BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePointType
  >
  type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePointType
    implements TerraformEnum {
  defaultCase('default');

  const BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `cache_point`, `text` on the `variant.template_configuration.chat.system` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cachePoint(...)`.
sealed class BedrockagentPromptVariantTemplateConfigurationChatSystem {
  const BedrockagentPromptVariantTemplateConfigurationChatSystem();

  /// Sets `cache_point`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatSystem.cachePoint(
    List<BedrockagentPromptVariantTemplateConfigurationChatSystemCachePoint>
    cachePoint,
  ) = BedrockagentPromptVariantTemplateConfigurationChatSystemCachePointChoice;

  /// Sets `text`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatSystem.text(
    TfArg<String> text,
  ) = BedrockagentPromptVariantTemplateConfigurationChatSystemText;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatSystem.cachePoint] choice: sets `cache_point`.
final class BedrockagentPromptVariantTemplateConfigurationChatSystemCachePointChoice
    extends BedrockagentPromptVariantTemplateConfigurationChatSystem {
  const BedrockagentPromptVariantTemplateConfigurationChatSystemCachePointChoice(
    this.cachePoint,
  );

  final List<BedrockagentPromptVariantTemplateConfigurationChatSystemCachePoint>
  cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatSystem.text] choice: sets `text`.
final class BedrockagentPromptVariantTemplateConfigurationChatSystemText
    extends BedrockagentPromptVariantTemplateConfigurationChatSystem {
  const BedrockagentPromptVariantTemplateConfigurationChatSystemText(this.text);

  final TfArg<String> text;

  @override
  String get blockKey => 'text';

  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.chat.system.cache_point` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatSystemCachePoint {
  const BedrockagentPromptVariantTemplateConfigurationChatSystemCachePoint({
    required this.type,
  });

  final TfArg<
    BedrockagentPromptVariantTemplateConfigurationChatSystemCachePointType
  >
  type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentPromptVariantTemplateConfigurationChatSystemCachePointType
    implements TerraformEnum {
  defaultCase('default');

  const BedrockagentPromptVariantTemplateConfigurationChatSystemCachePointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfiguration {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfiguration({
    this.tool,
    this.toolChoice,
  });

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool
  >?
  tool;

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice
  >?
  toolChoice;

  Map<String, Object?> encode() => {
    if (tool != null) 'tool': [for (final e in tool!) e.encode()],
    if (toolChoice != null)
      'tool_choice': [for (final e in toolChoice!) e.encode()],
  };
}

/// Exactly one of `cache_point`, `tool_spec` on the `variant.template_configuration.chat.tool_configuration.tool` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cachePoint(...)`.
sealed class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool();

  /// Sets `cache_point`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool.cachePoint(
    List<
      BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint
    >
    cachePoint,
  ) = BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePointChoice;

  /// Sets `tool_spec`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool.toolSpec(
    List<
      BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec
    >
    toolSpec,
  ) = BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolSpec;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool.cachePoint] choice: sets `cache_point`.
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePointChoice
    extends
        BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePointChoice(
    this.cachePoint,
  );

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint
  >
  cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool.toolSpec] choice: sets `tool_spec`.
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolSpec
    extends
        BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolSpec(
    this.toolSpec,
  );

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec
  >
  toolSpec;

  @override
  String get blockKey => 'tool_spec';

  @override
  Map<String, Object?> encode() => {
    'tool_spec': [for (final e in toolSpec) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool.cache_point` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint({
    required this.type,
  });

  final TfArg<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePointType
  >
  type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePointType
    implements TerraformEnum {
  defaultCase('default');

  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool.tool_spec` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec({
    this.description,
    required this.name,
    this.inputSchema,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema
  >?
  inputSchema;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    if (inputSchema != null)
      'input_schema': [for (final e in inputSchema!) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool.tool_spec.input_schema` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema({
    this.json,
  });

  final TfArg<String>? json;

  Map<String, Object?> encode() => {'json': ?json?.toTfJson()};
}

/// Exactly one of `any`, `auto`, `tool` on the `variant.template_configuration.chat.tool_configuration.tool_choice` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.any(...)`.
sealed class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice();

  /// Sets `any`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.any(
    List<
      BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAny
    >
    any,
  ) = BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAnyChoice;

  /// Sets `auto`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.auto(
    List<
      BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAuto
    >
    auto,
  ) = BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAutoChoice;

  /// Sets `tool`.
  const factory BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.tool(
    List<
      BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool
    >
    tool,
  ) = BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceToolOption;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.any] choice: sets `any`.
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAnyChoice
    extends
        BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAnyChoice(
    this.any,
  );

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAny
  >
  any;

  @override
  String get blockKey => 'any';

  @override
  Map<String, Object?> encode() => {
    'any': [for (final e in any) e.encode()],
  };
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.auto] choice: sets `auto`.
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAutoChoice
    extends
        BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAutoChoice(
    this.auto,
  );

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAuto
  >
  auto;

  @override
  String get blockKey => 'auto';

  @override
  Map<String, Object?> encode() => {
    'auto': [for (final e in auto) e.encode()],
  };
}

/// The [BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.tool] choice: sets `tool`.
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceToolOption
    extends
        BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceToolOption(
    this.tool,
  );

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool
  >
  tool;

  @override
  String get blockKey => 'tool';

  @override
  Map<String, Object?> encode() => {
    'tool': [for (final e in tool) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool_choice.any` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAny {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAny();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool_choice.auto` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAuto {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAuto();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool_choice.tool` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.text` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationText {
  const BedrockagentPromptVariantTemplateConfigurationText({
    required this.text,
    this.cachePoint,
    this.inputVariable,
  });

  final TfArg<String> text;

  final List<BedrockagentPromptVariantTemplateConfigurationTextCachePoint>?
  cachePoint;

  final List<BedrockagentPromptVariantTemplateConfigurationTextInputVariable>?
  inputVariable;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
    if (inputVariable != null)
      'input_variable': [for (final e in inputVariable!) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.text.cache_point` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationTextCachePoint {
  const BedrockagentPromptVariantTemplateConfigurationTextCachePoint({
    required this.type,
  });

  final TfArg<BedrockagentPromptVariantTemplateConfigurationTextCachePointType>
  type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentPromptVariantTemplateConfigurationTextCachePointType
    implements TerraformEnum {
  defaultCase('default');

  const BedrockagentPromptVariantTemplateConfigurationTextCachePointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `variant.template_configuration.text.input_variable` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationTextInputVariable {
  const BedrockagentPromptVariantTemplateConfigurationTextInputVariable({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `aws_bedrockagent_prompt`.
final class AwsBedrockagentPrompt extends Resource {
  static const String tfType = 'aws_bedrockagent_prompt';

  AwsBedrockagentPrompt({
    required super.localName,
    TfArg<String>? customerEncryptionKeyArn,
    TfArg<String>? defaultVariant,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentPromptVariant>? variant,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_encryption_key_arn': ?customerEncryptionKeyArn,
           'default_variant': ?defaultVariant,
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (variant != null)
             'variant': TfArg.literal([for (final e in variant) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentPromptSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentPrompt>`.
  RefTo<AwsBedrockagentPrompt> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
