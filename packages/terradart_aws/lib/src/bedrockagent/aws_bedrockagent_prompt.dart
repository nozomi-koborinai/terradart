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
    this.modelId,
    required this.name,
    required this.templateType,
    this.genAiResource,
    this.inferenceConfiguration,
    this.metadata,
    this.templateConfiguration,
  });

  final TfArg<String>? additionalModelRequestFields;

  final TfArg<String>? modelId;

  final TfArg<String> name;

  final TfArg<String> templateType;

  final List<BedrockagentPromptVariantGenAiResource>? genAiResource;

  final List<BedrockagentPromptVariantInferenceConfiguration>?
  inferenceConfiguration;

  final List<BedrockagentPromptVariantMetadata>? metadata;

  final List<BedrockagentPromptVariantTemplateConfiguration>?
  templateConfiguration;

  Map<String, Object?> encode() => {
    if (additionalModelRequestFields != null)
      'additional_model_request_fields': additionalModelRequestFields!
          .toTfJson(),
    if (modelId != null) 'model_id': modelId!.toTfJson(),
    'name': name.toTfJson(),
    'template_type': templateType.toTfJson(),
    if (genAiResource != null)
      'gen_ai_resource': [for (final e in genAiResource!) e.encode()],
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
    if (maxTokens != null) 'max_tokens': maxTokens!.toTfJson(),
    if (stopSequences != null) 'stop_sequences': stopSequences!.toTfJson(),
    if (temperature != null) 'temperature': temperature!.toTfJson(),
    if (topP != null) 'top_p': topP!.toTfJson(),
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

/// Typed helper for the `variant.template_configuration` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfiguration {
  const BedrockagentPromptVariantTemplateConfiguration({this.chat, this.text});

  final List<BedrockagentPromptVariantTemplateConfigurationChat>? chat;

  final List<BedrockagentPromptVariantTemplateConfigurationText>? text;

  Map<String, Object?> encode() => {
    if (chat != null) 'chat': [for (final e in chat!) e.encode()],
    if (text != null) 'text': [for (final e in text!) e.encode()],
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

  final TfArg<String> role;

  final List<BedrockagentPromptVariantTemplateConfigurationChatMessageContent>?
  content;

  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (content != null) 'content': [for (final e in content!) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.message.content` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatMessageContent {
  const BedrockagentPromptVariantTemplateConfigurationChatMessageContent({
    this.text,
    this.cachePoint,
  });

  final TfArg<String>? text;

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePoint
  >?
  cachePoint;

  Map<String, Object?> encode() => {
    if (text != null) 'text': text!.toTfJson(),
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.message.content.cache_point` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePoint {
  const BedrockagentPromptVariantTemplateConfigurationChatMessageContentCachePoint({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.chat.system` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatSystem {
  const BedrockagentPromptVariantTemplateConfigurationChatSystem({
    this.text,
    this.cachePoint,
  });

  final TfArg<String>? text;

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatSystemCachePoint
  >?
  cachePoint;

  Map<String, Object?> encode() => {
    if (text != null) 'text': text!.toTfJson(),
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.system.cache_point` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatSystemCachePoint {
  const BedrockagentPromptVariantTemplateConfigurationChatSystemCachePoint({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
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

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationTool({
    this.cachePoint,
    this.toolSpec,
  });

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint
  >?
  cachePoint;

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec
  >?
  toolSpec;

  Map<String, Object?> encode() => {
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
    if (toolSpec != null) 'tool_spec': [for (final e in toolSpec!) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool.cache_point` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
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
    if (description != null) 'description': description!.toTfJson(),
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

  Map<String, Object?> encode() => {if (json != null) 'json': json!.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool_choice` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice {
  const BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice({
    this.any,
    this.auto,
    this.tool,
  });

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAny
  >?
  any;

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceAuto
  >?
  auto;

  final List<
    BedrockagentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool
  >?
  tool;

  Map<String, Object?> encode() => {
    if (any != null) 'any': [for (final e in any!) e.encode()],
    if (auto != null) 'auto': [for (final e in auto!) e.encode()],
    if (tool != null) 'tool': [for (final e in tool!) e.encode()],
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
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
           if (customerEncryptionKeyArn != null)
             'customer_encryption_key_arn': customerEncryptionKeyArn,
           if (defaultVariant != null) 'default_variant': defaultVariant,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (variant != null)
             'variant': TfArg.literal([for (final e in variant) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentPromptSensitive;

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
