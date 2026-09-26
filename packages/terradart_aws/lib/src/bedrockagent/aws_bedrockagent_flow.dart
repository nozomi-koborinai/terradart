// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_flow`.
const Set<String> _awsBedrockagentFlowSensitive = <String>{};

/// Typed helper for the `definition` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinition {
  const BedrockagentFlowDefinition({this.connection, this.node});

  final List<BedrockagentFlowDefinitionConnection>? connection;

  final List<BedrockagentFlowDefinitionNode>? node;

  Map<String, Object?> encode() => {
    if (connection != null)
      'connection': [for (final e in connection!) e.encode()],
    if (node != null) 'node': [for (final e in node!) e.encode()],
  };
}

/// Typed helper for the `definition.connection` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionConnection {
  const BedrockagentFlowDefinitionConnection({
    required this.name,
    required this.source,
    required this.target,
    required this.type,
    this.configuration,
  });

  final TfArg<String> name;

  final TfArg<String> source;

  final TfArg<String> target;

  final TfArg<String> type;

  final List<BedrockagentFlowDefinitionConnectionConfiguration>? configuration;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'source': source.toTfJson(),
    'target': target.toTfJson(),
    'type': type.toTfJson(),
    if (configuration != null)
      'configuration': [for (final e in configuration!) e.encode()],
  };
}

/// Typed helper for the `definition.connection.configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionConnectionConfiguration {
  const BedrockagentFlowDefinitionConnectionConfiguration({
    this.conditional,
    this.data,
  });

  final List<BedrockagentFlowDefinitionConnectionConfigurationConditional>?
  conditional;

  final List<BedrockagentFlowDefinitionConnectionConfigurationData>? data;

  Map<String, Object?> encode() => {
    if (conditional != null)
      'conditional': [for (final e in conditional!) e.encode()],
    if (data != null) 'data': [for (final e in data!) e.encode()],
  };
}

/// Typed helper for the `definition.connection.configuration.conditional` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionConnectionConfigurationConditional {
  const BedrockagentFlowDefinitionConnectionConfigurationConditional({
    required this.condition,
  });

  final TfArg<String> condition;

  Map<String, Object?> encode() => {'condition': condition.toTfJson()};
}

/// Typed helper for the `definition.connection.configuration.data` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionConnectionConfigurationData {
  const BedrockagentFlowDefinitionConnectionConfigurationData({
    required this.sourceOutput,
    required this.targetInput,
  });

  final TfArg<String> sourceOutput;

  final TfArg<String> targetInput;

  Map<String, Object?> encode() => {
    'source_output': sourceOutput.toTfJson(),
    'target_input': targetInput.toTfJson(),
  };
}

/// Typed helper for the `definition.node` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNode {
  const BedrockagentFlowDefinitionNode({
    required this.name,
    required this.type,
    this.configuration,
    this.input,
    this.output,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  final List<BedrockagentFlowDefinitionNodeConfiguration>? configuration;

  final List<BedrockagentFlowDefinitionNodeInput>? input;

  final List<BedrockagentFlowDefinitionNodeOutput>? output;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    if (configuration != null)
      'configuration': [for (final e in configuration!) e.encode()],
    if (input != null) 'input': [for (final e in input!) e.encode()],
    if (output != null) 'output': [for (final e in output!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfiguration {
  const BedrockagentFlowDefinitionNodeConfiguration({
    this.agent,
    this.collector,
    this.condition,
    this.inlineCode,
    this.input,
    this.iterator,
    this.knowledgeBase,
    this.lambdaFunction,
    this.lex,
    this.output,
    this.prompt,
    this.retrieval,
    this.storage,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationAgent>? agent;

  final List<BedrockagentFlowDefinitionNodeConfigurationCollector>? collector;

  final List<BedrockagentFlowDefinitionNodeConfigurationCondition>? condition;

  final List<BedrockagentFlowDefinitionNodeConfigurationInlineCode>? inlineCode;

  final List<BedrockagentFlowDefinitionNodeConfigurationInput>? input;

  final List<BedrockagentFlowDefinitionNodeConfigurationIterator>? iterator;

  final List<BedrockagentFlowDefinitionNodeConfigurationKnowledgeBase>?
  knowledgeBase;

  final List<BedrockagentFlowDefinitionNodeConfigurationLambdaFunction>?
  lambdaFunction;

  final List<BedrockagentFlowDefinitionNodeConfigurationLex>? lex;

  final List<BedrockagentFlowDefinitionNodeConfigurationOutput>? output;

  final List<BedrockagentFlowDefinitionNodeConfigurationPrompt>? prompt;

  final List<BedrockagentFlowDefinitionNodeConfigurationRetrieval>? retrieval;

  final List<BedrockagentFlowDefinitionNodeConfigurationStorage>? storage;

  Map<String, Object?> encode() => {
    if (agent != null) 'agent': [for (final e in agent!) e.encode()],
    if (collector != null)
      'collector': [for (final e in collector!) e.encode()],
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (inlineCode != null)
      'inline_code': [for (final e in inlineCode!) e.encode()],
    if (input != null) 'input': [for (final e in input!) e.encode()],
    if (iterator != null) 'iterator': [for (final e in iterator!) e.encode()],
    if (knowledgeBase != null)
      'knowledge_base': [for (final e in knowledgeBase!) e.encode()],
    if (lambdaFunction != null)
      'lambda_function': [for (final e in lambdaFunction!) e.encode()],
    if (lex != null) 'lex': [for (final e in lex!) e.encode()],
    if (output != null) 'output': [for (final e in output!) e.encode()],
    if (prompt != null) 'prompt': [for (final e in prompt!) e.encode()],
    if (retrieval != null)
      'retrieval': [for (final e in retrieval!) e.encode()],
    if (storage != null) 'storage': [for (final e in storage!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.agent` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationAgent {
  const BedrockagentFlowDefinitionNodeConfigurationAgent({
    required this.agentAliasArn,
  });

  final TfArg<String> agentAliasArn;

  Map<String, Object?> encode() => {
    'agent_alias_arn': agentAliasArn.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.collector` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationCollector {
  const BedrockagentFlowDefinitionNodeConfigurationCollector();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.condition` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationCondition {
  const BedrockagentFlowDefinitionNodeConfigurationCondition({this.condition});

  final List<BedrockagentFlowDefinitionNodeConfigurationConditionCondition>?
  condition;

  Map<String, Object?> encode() => {
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.condition.condition` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationConditionCondition {
  const BedrockagentFlowDefinitionNodeConfigurationConditionCondition({
    this.expression,
    required this.name,
  });

  final TfArg<String>? expression;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (expression != null) 'expression': expression!.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.inline_code` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationInlineCode {
  const BedrockagentFlowDefinitionNodeConfigurationInlineCode({
    required this.code,
    required this.language,
  });

  final TfArg<String> code;

  final TfArg<String> language;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'language': language.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.input` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationInput {
  const BedrockagentFlowDefinitionNodeConfigurationInput();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.iterator` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationIterator {
  const BedrockagentFlowDefinitionNodeConfigurationIterator();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.knowledge_base` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationKnowledgeBase {
  const BedrockagentFlowDefinitionNodeConfigurationKnowledgeBase({
    required this.knowledgeBaseId,
    required this.modelId,
    this.numberOfResults,
    this.guardrailConfiguration,
    this.inferenceConfiguration,
  });

  final TfArg<String> knowledgeBaseId;

  final TfArg<String> modelId;

  final TfArg<num>? numberOfResults;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration
  >?
  guardrailConfiguration;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration
  >?
  inferenceConfiguration;

  Map<String, Object?> encode() => {
    'knowledge_base_id': knowledgeBaseId.toTfJson(),
    'model_id': modelId.toTfJson(),
    if (numberOfResults != null)
      'number_of_results': numberOfResults!.toTfJson(),
    if (guardrailConfiguration != null)
      'guardrail_configuration': [
        for (final e in guardrailConfiguration!) e.encode(),
      ],
    if (inferenceConfiguration != null)
      'inference_configuration': [
        for (final e in inferenceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.node.configuration.knowledge_base.guardrail_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  final TfArg<String> guardrailIdentifier;

  final TfArg<String> guardrailVersion;

  Map<String, Object?> encode() => {
    'guardrail_identifier': guardrailIdentifier.toTfJson(),
    'guardrail_version': guardrailVersion.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.knowledge_base.inference_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration({
    this.text,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText
  >?
  text;

  Map<String, Object?> encode() => {
    if (text != null) 'text': [for (final e in text!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.knowledge_base.inference_configuration.text` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText {
  const BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText({
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

/// Typed helper for the `definition.node.configuration.lambda_function` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationLambdaFunction {
  const BedrockagentFlowDefinitionNodeConfigurationLambdaFunction({
    required this.lambdaArn,
  });

  final TfArg<String> lambdaArn;

  Map<String, Object?> encode() => {'lambda_arn': lambdaArn.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.lex` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationLex {
  const BedrockagentFlowDefinitionNodeConfigurationLex({
    required this.botAliasArn,
    required this.localeId,
  });

  final TfArg<String> botAliasArn;

  final TfArg<String> localeId;

  Map<String, Object?> encode() => {
    'bot_alias_arn': botAliasArn.toTfJson(),
    'locale_id': localeId.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.output` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationOutput {
  const BedrockagentFlowDefinitionNodeConfigurationOutput();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.prompt` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPrompt {
  const BedrockagentFlowDefinitionNodeConfigurationPrompt({
    this.guardrailConfiguration,
    this.sourceConfiguration,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration
  >?
  guardrailConfiguration;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfiguration
  >?
  sourceConfiguration;

  Map<String, Object?> encode() => {
    if (guardrailConfiguration != null)
      'guardrail_configuration': [
        for (final e in guardrailConfiguration!) e.encode(),
      ],
    if (sourceConfiguration != null)
      'source_configuration': [
        for (final e in sourceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.guardrail_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  final TfArg<String> guardrailIdentifier;

  final TfArg<String> guardrailVersion;

  Map<String, Object?> encode() => {
    'guardrail_identifier': guardrailIdentifier.toTfJson(),
    'guardrail_version': guardrailVersion.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfiguration({
    this.inline,
    this.resource,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline
  >?
  inline;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource
  >?
  resource;

  Map<String, Object?> encode() => {
    if (inline != null) 'inline': [for (final e in inline!) e.encode()],
    if (resource != null) 'resource': [for (final e in resource!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline({
    this.additionalModelRequestFields,
    required this.modelId,
    required this.templateType,
    this.inferenceConfiguration,
    this.templateConfiguration,
  });

  final TfArg<String>? additionalModelRequestFields;

  final TfArg<String> modelId;

  final TfArg<String> templateType;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration
  >?
  inferenceConfiguration;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration
  >?
  templateConfiguration;

  Map<String, Object?> encode() => {
    if (additionalModelRequestFields != null)
      'additional_model_request_fields': additionalModelRequestFields!
          .toTfJson(),
    'model_id': modelId.toTfJson(),
    'template_type': templateType.toTfJson(),
    if (inferenceConfiguration != null)
      'inference_configuration': [
        for (final e in inferenceConfiguration!) e.encode(),
      ],
    if (templateConfiguration != null)
      'template_configuration': [
        for (final e in templateConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.inference_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration({
    this.text,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText
  >?
  text;

  Map<String, Object?> encode() => {
    if (text != null) 'text': [for (final e in text!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.inference_configuration.text` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText({
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

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration({
    this.chat,
    this.text,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat
  >?
  chat;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText
  >?
  text;

  Map<String, Object?> encode() => {
    if (chat != null) 'chat': [for (final e in chat!) e.encode()],
    if (text != null) 'text': [for (final e in text!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat({
    this.inputVariable,
    this.message,
    this.system,
    this.toolConfiguration,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable
  >?
  inputVariable;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage
  >?
  message;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem
  >?
  system;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration
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

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.input_variable` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage({
    required this.role,
    this.content,
  });

  final TfArg<String> role;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent
  >?
  content;

  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (content != null) 'content': [for (final e in content!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message.content` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent({
    this.text,
    this.cachePoint,
  });

  final TfArg<String>? text;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint
  >?
  cachePoint;

  Map<String, Object?> encode() => {
    if (text != null) 'text': text!.toTfJson(),
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message.content.cache_point` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.system` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem({
    this.text,
    this.cachePoint,
  });

  final TfArg<String>? text;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint
  >?
  cachePoint;

  Map<String, Object?> encode() => {
    if (text != null) 'text': text!.toTfJson(),
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.system.cache_point` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration({
    this.tool,
    this.toolChoice,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool
  >?
  tool;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice
  >?
  toolChoice;

  Map<String, Object?> encode() => {
    if (tool != null) 'tool': [for (final e in tool!) e.encode()],
    if (toolChoice != null)
      'tool_choice': [for (final e in toolChoice!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool({
    this.cachePoint,
    this.toolSpec,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint
  >?
  cachePoint;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec
  >?
  toolSpec;

  Map<String, Object?> encode() => {
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
    if (toolSpec != null) 'tool_spec': [for (final e in toolSpec!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.cache_point` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.tool_spec` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec({
    this.description,
    required this.name,
    this.inputSchema,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema
  >?
  inputSchema;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (inputSchema != null)
      'input_schema': [for (final e in inputSchema!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.tool_spec.input_schema` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema({
    this.json,
  });

  final TfArg<String>? json;

  Map<String, Object?> encode() => {if (json != null) 'json': json!.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice({
    this.any,
    this.auto,
    this.tool,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAny
  >?
  any;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAuto
  >?
  auto;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceTool
  >?
  tool;

  Map<String, Object?> encode() => {
    if (any != null) 'any': [for (final e in any!) e.encode()],
    if (auto != null) 'auto': [for (final e in auto!) e.encode()],
    if (tool != null) 'tool': [for (final e in tool!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.any` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAny {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAny();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.auto` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAuto {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAuto();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceTool {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceTool({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText({
    required this.text,
    this.cachePoint,
    this.inputVariable,
  });

  final TfArg<String> text;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint
  >?
  cachePoint;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable
  >?
  inputVariable;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
    if (inputVariable != null)
      'input_variable': [for (final e in inputVariable!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.cache_point` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePoint({
    required this.type,
  });

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.input_variable` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextInputVariable({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.resource` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource({
    required this.promptArn,
  });

  final TfArg<String> promptArn;

  Map<String, Object?> encode() => {'prompt_arn': promptArn.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.retrieval` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationRetrieval {
  const BedrockagentFlowDefinitionNodeConfigurationRetrieval({
    this.serviceConfiguration,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration
  >?
  serviceConfiguration;

  Map<String, Object?> encode() => {
    if (serviceConfiguration != null)
      'service_configuration': [
        for (final e in serviceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.node.configuration.retrieval.service_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationRetrievalServiceConfiguration({
    this.s3,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.retrieval.service_configuration.s3` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3 {
  const BedrockagentFlowDefinitionNodeConfigurationRetrievalServiceConfigurationS3({
    required this.bucketName,
  });

  final TfArg<String> bucketName;

  Map<String, Object?> encode() => {'bucket_name': bucketName.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.storage` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationStorage {
  const BedrockagentFlowDefinitionNodeConfigurationStorage({
    this.serviceConfiguration,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationStorageServiceConfiguration
  >?
  serviceConfiguration;

  Map<String, Object?> encode() => {
    if (serviceConfiguration != null)
      'service_configuration': [
        for (final e in serviceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.node.configuration.storage.service_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationStorageServiceConfiguration {
  const BedrockagentFlowDefinitionNodeConfigurationStorageServiceConfiguration({
    this.s3,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3
  >?
  s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.storage.service_configuration.s3` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3 {
  const BedrockagentFlowDefinitionNodeConfigurationStorageServiceConfigurationS3({
    required this.bucketName,
  });

  final TfArg<String> bucketName;

  Map<String, Object?> encode() => {'bucket_name': bucketName.toTfJson()};
}

/// Typed helper for the `definition.node.input` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeInput {
  const BedrockagentFlowDefinitionNodeInput({
    this.category,
    required this.expression,
    required this.name,
    required this.type,
  });

  final TfArg<String>? category;

  final TfArg<String> expression;

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (category != null) 'category': category!.toTfJson(),
    'expression': expression.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `definition.node.output` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeOutput {
  const BedrockagentFlowDefinitionNodeOutput({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagent_flow`.
final class AwsBedrockagentFlow extends Resource {
  static const String tfType = 'aws_bedrockagent_flow';

  AwsBedrockagentFlow({
    required super.localName,
    TfArg<String>? customerEncryptionKeyArn,
    TfArg<String>? description,
    required TfArg<String> executionRoleArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentFlowDefinition>? definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customerEncryptionKeyArn != null)
             'customer_encryption_key_arn': customerEncryptionKeyArn,
           if (description != null) 'description': description,
           'execution_role_arn': executionRoleArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (definition != null)
             'definition': TfArg.literal([
               for (final e in definition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentFlowSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
