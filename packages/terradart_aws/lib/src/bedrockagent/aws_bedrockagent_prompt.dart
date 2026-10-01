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

  final BedrockagentPromptModel model;

  final TfArg<String> name;

  final BedrockagentPromptTemplateType templateType;

  final List<BedrockagentPromptInferenceConfiguration>? inferenceConfiguration;

  final List<BedrockagentPromptMetadata>? metadata;

  final List<BedrockagentPromptTemplateConfiguration>? templateConfiguration;

  @internal
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
sealed class BedrockagentPromptModel {
  const BedrockagentPromptModel();

  /// Sets `gen_ai_resource`.
  const factory BedrockagentPromptModel.genAiResource(
    List<BedrockagentPromptGenAiResource> genAiResource,
  ) = BedrockagentPromptModelGenAiResource;

  /// Sets `model_id`.
  const factory BedrockagentPromptModel.modelId(TfArg<String> modelId) =
      BedrockagentPromptModelId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BedrockagentPromptModel.genAiResource] choice: sets `gen_ai_resource`.
final class BedrockagentPromptModelGenAiResource
    extends BedrockagentPromptModel {
  const BedrockagentPromptModelGenAiResource(this.genAiResource);

  final List<BedrockagentPromptGenAiResource> genAiResource;

  @internal
  @override
  String get blockKey => 'gen_ai_resource';

  @internal
  @override
  Map<String, Object?> encode() => {
    'gen_ai_resource': [for (final e in genAiResource) e.encode()],
  };
}

/// The [BedrockagentPromptModel.modelId] choice: sets `model_id`.
final class BedrockagentPromptModelId extends BedrockagentPromptModel {
  const BedrockagentPromptModelId(this.modelId);

  final TfArg<String> modelId;

  @internal
  @override
  String get blockKey => 'model_id';

  @internal
  @override
  Map<String, Object?> encode() => {'model_id': modelId.toTfJson()};
}

/// `template_type` — derived from the provider schema description.
extension type const BedrockagentPromptTemplateType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentPromptTemplateType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentPromptTemplateType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentPromptTemplateType.arg(TfArg<String> arg) : this._(arg);

  static const text = BedrockagentPromptTemplateType._(TfArgLiteral('TEXT'));
  static const chat = BedrockagentPromptTemplateType._(TfArgLiteral('CHAT'));

  static const List<BedrockagentPromptTemplateType> values = [text, chat];
}

/// Typed helper for the `variant.gen_ai_resource` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptGenAiResource {
  const BedrockagentPromptGenAiResource({this.agent});

  final List<BedrockagentPromptAgent>? agent;

  @internal
  Map<String, Object?> encode() => {
    if (agent != null) 'agent': [for (final e in agent!) e.encode()],
  };
}

/// Typed helper for the `variant.gen_ai_resource.agent` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptAgent {
  const BedrockagentPromptAgent({required this.agentIdentifier});

  final TfArg<String> agentIdentifier;

  @internal
  Map<String, Object?> encode() => {
    'agent_identifier': agentIdentifier.toTfJson(),
  };
}

/// Typed helper for the `variant.inference_configuration` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptInferenceConfiguration {
  const BedrockagentPromptInferenceConfiguration({this.text});

  final List<BedrockagentPromptInferenceConfigurationText>? text;

  @internal
  Map<String, Object?> encode() => {
    if (text != null) 'text': [for (final e in text!) e.encode()],
  };
}

/// Typed helper for the `variant.inference_configuration.text` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptInferenceConfigurationText {
  const BedrockagentPromptInferenceConfigurationText({
    this.maxTokens,
    this.stopSequences,
    this.temperature,
    this.topP,
  });

  final TfArg<num>? maxTokens;

  final TfArg<List<String>>? stopSequences;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  @internal
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
final class BedrockagentPromptMetadata {
  const BedrockagentPromptMetadata({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Exactly one of `chat`, `text` on the `variant.template_configuration` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.chat(...)`.
sealed class BedrockagentPromptTemplateConfiguration {
  const BedrockagentPromptTemplateConfiguration();

  /// Sets `chat`.
  const factory BedrockagentPromptTemplateConfiguration.chat(
    List<BedrockagentPromptChat> chat,
  ) = BedrockagentPromptTemplateConfigurationChat;

  /// Sets `text`.
  const factory BedrockagentPromptTemplateConfiguration.text(
    List<BedrockagentPromptTemplateConfigurationText> text,
  ) = BedrockagentPromptTemplateConfigurationTextChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BedrockagentPromptTemplateConfiguration.chat] choice: sets `chat`.
final class BedrockagentPromptTemplateConfigurationChat
    extends BedrockagentPromptTemplateConfiguration {
  const BedrockagentPromptTemplateConfigurationChat(this.chat);

  final List<BedrockagentPromptChat> chat;

  @internal
  @override
  String get blockKey => 'chat';

  @internal
  @override
  Map<String, Object?> encode() => {
    'chat': [for (final e in chat) e.encode()],
  };
}

/// The [BedrockagentPromptTemplateConfiguration.text] choice: sets `text`.
final class BedrockagentPromptTemplateConfigurationTextChoice
    extends BedrockagentPromptTemplateConfiguration {
  const BedrockagentPromptTemplateConfigurationTextChoice(this.text);

  final List<BedrockagentPromptTemplateConfigurationText> text;

  @internal
  @override
  String get blockKey => 'text';

  @internal
  @override
  Map<String, Object?> encode() => {
    'text': [for (final e in text) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptChat {
  const BedrockagentPromptChat({
    this.inputVariable,
    this.message,
    this.system,
    this.toolConfiguration,
  });

  final List<BedrockagentPromptInputVariable>? inputVariable;

  final List<BedrockagentPromptMessage>? message;

  final List<BedrockagentPromptSystem>? system;

  final List<BedrockagentPromptToolConfiguration>? toolConfiguration;

  @internal
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentPromptInputVariable {
  const BedrockagentPromptInputVariable({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.chat.message` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptMessage {
  const BedrockagentPromptMessage({required this.role, this.content});

  final BedrockagentPromptRole role;

  final List<BedrockagentPromptContent>? content;

  @internal
  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (content != null) 'content': [for (final e in content!) e.encode()],
  };
}

/// `role` — derived from the provider schema description.
extension type const BedrockagentPromptRole._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentPromptRole.variable(String name) : this._(TfArg.variable(name));
  BedrockagentPromptRole.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentPromptRole.arg(TfArg<String> arg) : this._(arg);

  static const user = BedrockagentPromptRole._(TfArgLiteral('user'));
  static const assistant = BedrockagentPromptRole._(TfArgLiteral('assistant'));

  static const List<BedrockagentPromptRole> values = [user, assistant];
}

/// Exactly one of `cache_point`, `text` on the `variant.template_configuration.chat.message.content` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cachePoint(...)`.
sealed class BedrockagentPromptContent {
  const BedrockagentPromptContent();

  /// Sets `cache_point`.
  const factory BedrockagentPromptContent.cachePoint(
    List<BedrockagentPromptCachePoint> cachePoint,
  ) = BedrockagentPromptContentCachePoint;

  /// Sets `text`.
  const factory BedrockagentPromptContent.text(TfArg<String> text) =
      BedrockagentPromptContentText;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BedrockagentPromptContent.cachePoint] choice: sets `cache_point`.
final class BedrockagentPromptContentCachePoint
    extends BedrockagentPromptContent {
  const BedrockagentPromptContentCachePoint(this.cachePoint);

  final List<BedrockagentPromptCachePoint> cachePoint;

  @internal
  @override
  String get blockKey => 'cache_point';

  @internal
  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentPromptContent.text] choice: sets `text`.
final class BedrockagentPromptContentText extends BedrockagentPromptContent {
  const BedrockagentPromptContentText(this.text);

  final TfArg<String> text;

  @internal
  @override
  String get blockKey => 'text';

  @internal
  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.text.cache_point` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentPromptCachePoint {
  const BedrockagentPromptCachePoint({required this.type});

  final BedrockagentPromptType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const BedrockagentPromptType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockagentPromptType.variable(String name) : this._(TfArg.variable(name));
  BedrockagentPromptType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentPromptType.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = BedrockagentPromptType._(TfArgLiteral('default'));

  static const List<BedrockagentPromptType> values = [defaultCase];
}

/// Exactly one of `cache_point`, `text` on the `variant.template_configuration.chat.system` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cachePoint(...)`.
sealed class BedrockagentPromptSystem {
  const BedrockagentPromptSystem();

  /// Sets `cache_point`.
  const factory BedrockagentPromptSystem.cachePoint(
    List<BedrockagentPromptCachePoint> cachePoint,
  ) = BedrockagentPromptSystemCachePoint;

  /// Sets `text`.
  const factory BedrockagentPromptSystem.text(TfArg<String> text) =
      BedrockagentPromptSystemText;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BedrockagentPromptSystem.cachePoint] choice: sets `cache_point`.
final class BedrockagentPromptSystemCachePoint
    extends BedrockagentPromptSystem {
  const BedrockagentPromptSystemCachePoint(this.cachePoint);

  final List<BedrockagentPromptCachePoint> cachePoint;

  @internal
  @override
  String get blockKey => 'cache_point';

  @internal
  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentPromptSystem.text] choice: sets `text`.
final class BedrockagentPromptSystemText extends BedrockagentPromptSystem {
  const BedrockagentPromptSystemText(this.text);

  final TfArg<String> text;

  @internal
  @override
  String get blockKey => 'text';

  @internal
  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptToolConfiguration {
  const BedrockagentPromptToolConfiguration({this.tool, this.toolChoice});

  final List<BedrockagentPromptTool>? tool;

  final List<BedrockagentPromptToolChoice>? toolChoice;

  @internal
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
sealed class BedrockagentPromptTool {
  const BedrockagentPromptTool();

  /// Sets `cache_point`.
  const factory BedrockagentPromptTool.cachePoint(
    List<BedrockagentPromptCachePoint> cachePoint,
  ) = BedrockagentPromptToolCachePoint;

  /// Sets `tool_spec`.
  const factory BedrockagentPromptTool.toolSpec(
    List<BedrockagentPromptToolSpec> toolSpec,
  ) = BedrockagentPromptToolSpecChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BedrockagentPromptTool.cachePoint] choice: sets `cache_point`.
final class BedrockagentPromptToolCachePoint extends BedrockagentPromptTool {
  const BedrockagentPromptToolCachePoint(this.cachePoint);

  final List<BedrockagentPromptCachePoint> cachePoint;

  @internal
  @override
  String get blockKey => 'cache_point';

  @internal
  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentPromptTool.toolSpec] choice: sets `tool_spec`.
final class BedrockagentPromptToolSpecChoice extends BedrockagentPromptTool {
  const BedrockagentPromptToolSpecChoice(this.toolSpec);

  final List<BedrockagentPromptToolSpec> toolSpec;

  @internal
  @override
  String get blockKey => 'tool_spec';

  @internal
  @override
  Map<String, Object?> encode() => {
    'tool_spec': [for (final e in toolSpec) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool.tool_spec` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptToolSpec {
  const BedrockagentPromptToolSpec({
    this.description,
    required this.name,
    this.inputSchema,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<BedrockagentPromptInputSchema>? inputSchema;

  @internal
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
final class BedrockagentPromptInputSchema {
  const BedrockagentPromptInputSchema({this.json});

  final TfArg<String>? json;

  @internal
  Map<String, Object?> encode() => {'json': ?json?.toTfJson()};
}

/// Exactly one of `any`, `auto`, `tool` on the `variant.template_configuration.chat.tool_configuration.tool_choice` block of `aws_bedrockagent_prompt`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.any(...)`.
sealed class BedrockagentPromptToolChoice {
  const BedrockagentPromptToolChoice();

  /// Sets `any`.
  const factory BedrockagentPromptToolChoice.any(
    List<BedrockagentPromptAny> any,
  ) = BedrockagentPromptToolChoiceAny;

  /// Sets `auto`.
  const factory BedrockagentPromptToolChoice.auto(
    List<BedrockagentPromptAuto> auto,
  ) = BedrockagentPromptToolChoiceAuto;

  /// Sets `tool`.
  const factory BedrockagentPromptToolChoice.tool(
    List<BedrockagentPromptToolChoiceTool> tool,
  ) = BedrockagentPromptToolChoiceToolOption;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [BedrockagentPromptToolChoice.any] choice: sets `any`.
final class BedrockagentPromptToolChoiceAny
    extends BedrockagentPromptToolChoice {
  const BedrockagentPromptToolChoiceAny(this.any);

  final List<BedrockagentPromptAny> any;

  @internal
  @override
  String get blockKey => 'any';

  @internal
  @override
  Map<String, Object?> encode() => {
    'any': [for (final e in any) e.encode()],
  };
}

/// The [BedrockagentPromptToolChoice.auto] choice: sets `auto`.
final class BedrockagentPromptToolChoiceAuto
    extends BedrockagentPromptToolChoice {
  const BedrockagentPromptToolChoiceAuto(this.auto);

  final List<BedrockagentPromptAuto> auto;

  @internal
  @override
  String get blockKey => 'auto';

  @internal
  @override
  Map<String, Object?> encode() => {
    'auto': [for (final e in auto) e.encode()],
  };
}

/// The [BedrockagentPromptToolChoice.tool] choice: sets `tool`.
final class BedrockagentPromptToolChoiceToolOption
    extends BedrockagentPromptToolChoice {
  const BedrockagentPromptToolChoiceToolOption(this.tool);

  final List<BedrockagentPromptToolChoiceTool> tool;

  @internal
  @override
  String get blockKey => 'tool';

  @internal
  @override
  Map<String, Object?> encode() => {
    'tool': [for (final e in tool) e.encode()],
  };
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool_choice.any` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptAny {
  const BedrockagentPromptAny();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool_choice.auto` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptAuto {
  const BedrockagentPromptAuto();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `variant.template_configuration.chat.tool_configuration.tool_choice.tool` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptToolChoiceTool {
  const BedrockagentPromptToolChoiceTool({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `variant.template_configuration.text` block of
/// `aws_bedrockagent_prompt` (derived from provider schema).
@immutable
final class BedrockagentPromptTemplateConfigurationText {
  const BedrockagentPromptTemplateConfigurationText({
    required this.text,
    this.cachePoint,
    this.inputVariable,
  });

  final TfArg<String> text;

  final List<BedrockagentPromptCachePoint>? cachePoint;

  final List<BedrockagentPromptInputVariable>? inputVariable;

  @internal
  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
    if (inputVariable != null)
      'input_variable': [for (final e in inputVariable!) e.encode()],
  };
}

/// Factory wrapper for `aws_bedrockagent_prompt`.
final class AwsBedrockagentPrompt extends Resource {
  static const String tfType = 'aws_bedrockagent_prompt';

  AwsBedrockagentPrompt(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `customer_encryption_key_arn` attribute.
  TfRef<String> get customerEncryptionKeyArn =>
      TfRef.attribute<String>(this, 'customer_encryption_key_arn');

  /// Reference to `default_variant` attribute.
  TfRef<String> get defaultVariant =>
      TfRef.attribute<String>(this, 'default_variant');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
