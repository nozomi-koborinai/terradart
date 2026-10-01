// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_bedrockagent_flow`.
const Set<String> _awsBedrockagentFlowSensitive = <String>{};

/// Typed helper for the `definition` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinition {
  const BedrockagentFlowDefinition({this.connection, this.node});

  final List<BedrockagentFlowConnection>? connection;

  final List<BedrockagentFlowNode>? node;

  Map<String, Object?> encode() => {
    if (connection != null)
      'connection': [for (final e in connection!) e.encode()],
    if (node != null) 'node': [for (final e in node!) e.encode()],
  };
}

/// Typed helper for the `definition.connection` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowConnection {
  const BedrockagentFlowConnection({
    required this.name,
    required this.source,
    required this.target,
    required this.type,
    this.configuration,
  });

  final TfArg<String> name;

  final TfArg<String> source;

  final TfArg<String> target;

  final TfArg<BedrockagentFlowConnectionType> type;

  final List<BedrockagentFlowConnectionConfiguration>? configuration;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'source': source.toTfJson(),
    'target': target.toTfJson(),
    'type': type.toTfJson(),
    if (configuration != null)
      'configuration': [for (final e in configuration!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowConnectionType implements TerraformEnum {
  data('Data'),
  conditional('Conditional');

  const BedrockagentFlowConnectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `conditional`, `data` on the `definition.connection.configuration` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.conditional(...)`.
sealed class BedrockagentFlowConnectionConfiguration {
  const BedrockagentFlowConnectionConfiguration();

  /// Sets `conditional`.
  const factory BedrockagentFlowConnectionConfiguration.conditional(
    List<BedrockagentFlowConditional> conditional,
  ) = BedrockagentFlowConnectionConfigurationConditional;

  /// Sets `data`.
  const factory BedrockagentFlowConnectionConfiguration.data(
    List<BedrockagentFlowData> data,
  ) = BedrockagentFlowConnectionConfigurationData;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentFlowConnectionConfiguration.conditional] choice: sets `conditional`.
final class BedrockagentFlowConnectionConfigurationConditional
    extends BedrockagentFlowConnectionConfiguration {
  const BedrockagentFlowConnectionConfigurationConditional(this.conditional);

  final List<BedrockagentFlowConditional> conditional;

  @override
  String get blockKey => 'conditional';

  @override
  Map<String, Object?> encode() => {
    'conditional': [for (final e in conditional) e.encode()],
  };
}

/// The [BedrockagentFlowConnectionConfiguration.data] choice: sets `data`.
final class BedrockagentFlowConnectionConfigurationData
    extends BedrockagentFlowConnectionConfiguration {
  const BedrockagentFlowConnectionConfigurationData(this.data);

  final List<BedrockagentFlowData> data;

  @override
  String get blockKey => 'data';

  @override
  Map<String, Object?> encode() => {
    'data': [for (final e in data) e.encode()],
  };
}

/// Typed helper for the `definition.connection.configuration.conditional` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowConditional {
  const BedrockagentFlowConditional({required this.condition});

  final TfArg<String> condition;

  Map<String, Object?> encode() => {'condition': condition.toTfJson()};
}

/// Typed helper for the `definition.connection.configuration.data` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowData {
  const BedrockagentFlowData({
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
final class BedrockagentFlowNode {
  const BedrockagentFlowNode({
    required this.name,
    required this.type,
    this.configuration,
    this.input,
    this.output,
  });

  final TfArg<String> name;

  final TfArg<BedrockagentFlowNodeType> type;

  final List<BedrockagentFlowNodeConfiguration>? configuration;

  final List<BedrockagentFlowInput>? input;

  final List<BedrockagentFlowOutput>? output;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    if (configuration != null)
      'configuration': [for (final e in configuration!) e.encode()],
    if (input != null) 'input': [for (final e in input!) e.encode()],
    if (output != null) 'output': [for (final e in output!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowNodeType implements TerraformEnum {
  input('Input'),
  output('Output'),
  knowledgebase('KnowledgeBase'),
  condition('Condition'),
  lex('Lex'),
  prompt('Prompt'),
  lambdafunction('LambdaFunction'),
  storage('Storage'),
  agent('Agent'),
  retrieval('Retrieval'),
  iterator('Iterator'),
  collector('Collector'),
  inlinecode('InlineCode'),
  loop('Loop'),
  loopinput('LoopInput'),
  loopcontroller('LoopController');

  const BedrockagentFlowNodeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `agent`, `collector`, `condition`, `inline_code`, `input`, `iterator`, `knowledge_base`, `lambda_function`, `lex`, `output`, `prompt`, `retrieval`, `storage` on the `definition.node.configuration` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.agent(...)`.
sealed class BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfiguration();

  /// Sets `agent`.
  const factory BedrockagentFlowNodeConfiguration.agent(
    List<BedrockagentFlowAgent> agent,
  ) = BedrockagentFlowNodeConfigurationAgent;

  /// Sets `collector`.
  const factory BedrockagentFlowNodeConfiguration.collector(
    List<BedrockagentFlowCollector> collector,
  ) = BedrockagentFlowNodeConfigurationCollector;

  /// Sets `condition`.
  const factory BedrockagentFlowNodeConfiguration.condition(
    List<BedrockagentFlowCondition> condition,
  ) = BedrockagentFlowNodeConfigurationCondition;

  /// Sets `inline_code`.
  const factory BedrockagentFlowNodeConfiguration.inlineCode(
    List<BedrockagentFlowInlineCode> inlineCode,
  ) = BedrockagentFlowNodeConfigurationInlineCode;

  /// Sets `input`.
  const factory BedrockagentFlowNodeConfiguration.input(
    List<BedrockagentFlowConfigurationInput> input,
  ) = BedrockagentFlowNodeConfigurationInput;

  /// Sets `iterator`.
  const factory BedrockagentFlowNodeConfiguration.iterator(
    List<BedrockagentFlowIterator> iterator,
  ) = BedrockagentFlowNodeConfigurationIterator;

  /// Sets `knowledge_base`.
  const factory BedrockagentFlowNodeConfiguration.knowledgeBase(
    List<BedrockagentFlowKnowledgeBase> knowledgeBase,
  ) = BedrockagentFlowNodeConfigurationKnowledgeBase;

  /// Sets `lambda_function`.
  const factory BedrockagentFlowNodeConfiguration.lambdaFunction(
    List<BedrockagentFlowLambdaFunction> lambdaFunction,
  ) = BedrockagentFlowNodeConfigurationLambdaFunction;

  /// Sets `lex`.
  const factory BedrockagentFlowNodeConfiguration.lex(
    List<BedrockagentFlowLex> lex,
  ) = BedrockagentFlowNodeConfigurationLex;

  /// Sets `output`.
  const factory BedrockagentFlowNodeConfiguration.output(
    List<BedrockagentFlowConfigurationOutput> output,
  ) = BedrockagentFlowNodeConfigurationOutput;

  /// Sets `prompt`.
  const factory BedrockagentFlowNodeConfiguration.prompt(
    List<BedrockagentFlowPrompt> prompt,
  ) = BedrockagentFlowNodeConfigurationPrompt;

  /// Sets `retrieval`.
  const factory BedrockagentFlowNodeConfiguration.retrieval(
    List<BedrockagentFlowRetrieval> retrieval,
  ) = BedrockagentFlowNodeConfigurationRetrieval;

  /// Sets `storage`.
  const factory BedrockagentFlowNodeConfiguration.storage(
    List<BedrockagentFlowStorage> storage,
  ) = BedrockagentFlowNodeConfigurationStorage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentFlowNodeConfiguration.agent] choice: sets `agent`.
final class BedrockagentFlowNodeConfigurationAgent
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationAgent(this.agent);

  final List<BedrockagentFlowAgent> agent;

  @override
  String get blockKey => 'agent';

  @override
  Map<String, Object?> encode() => {
    'agent': [for (final e in agent) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.collector] choice: sets `collector`.
final class BedrockagentFlowNodeConfigurationCollector
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationCollector(this.collector);

  final List<BedrockagentFlowCollector> collector;

  @override
  String get blockKey => 'collector';

  @override
  Map<String, Object?> encode() => {
    'collector': [for (final e in collector) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.condition] choice: sets `condition`.
final class BedrockagentFlowNodeConfigurationCondition
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationCondition(this.condition);

  final List<BedrockagentFlowCondition> condition;

  @override
  String get blockKey => 'condition';

  @override
  Map<String, Object?> encode() => {
    'condition': [for (final e in condition) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.inlineCode] choice: sets `inline_code`.
final class BedrockagentFlowNodeConfigurationInlineCode
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationInlineCode(this.inlineCode);

  final List<BedrockagentFlowInlineCode> inlineCode;

  @override
  String get blockKey => 'inline_code';

  @override
  Map<String, Object?> encode() => {
    'inline_code': [for (final e in inlineCode) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.input] choice: sets `input`.
final class BedrockagentFlowNodeConfigurationInput
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationInput(this.input);

  final List<BedrockagentFlowConfigurationInput> input;

  @override
  String get blockKey => 'input';

  @override
  Map<String, Object?> encode() => {
    'input': [for (final e in input) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.iterator] choice: sets `iterator`.
final class BedrockagentFlowNodeConfigurationIterator
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationIterator(this.iterator);

  final List<BedrockagentFlowIterator> iterator;

  @override
  String get blockKey => 'iterator';

  @override
  Map<String, Object?> encode() => {
    'iterator': [for (final e in iterator) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.knowledgeBase] choice: sets `knowledge_base`.
final class BedrockagentFlowNodeConfigurationKnowledgeBase
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationKnowledgeBase(this.knowledgeBase);

  final List<BedrockagentFlowKnowledgeBase> knowledgeBase;

  @override
  String get blockKey => 'knowledge_base';

  @override
  Map<String, Object?> encode() => {
    'knowledge_base': [for (final e in knowledgeBase) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.lambdaFunction] choice: sets `lambda_function`.
final class BedrockagentFlowNodeConfigurationLambdaFunction
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationLambdaFunction(this.lambdaFunction);

  final List<BedrockagentFlowLambdaFunction> lambdaFunction;

  @override
  String get blockKey => 'lambda_function';

  @override
  Map<String, Object?> encode() => {
    'lambda_function': [for (final e in lambdaFunction) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.lex] choice: sets `lex`.
final class BedrockagentFlowNodeConfigurationLex
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationLex(this.lex);

  final List<BedrockagentFlowLex> lex;

  @override
  String get blockKey => 'lex';

  @override
  Map<String, Object?> encode() => {
    'lex': [for (final e in lex) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.output] choice: sets `output`.
final class BedrockagentFlowNodeConfigurationOutput
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationOutput(this.output);

  final List<BedrockagentFlowConfigurationOutput> output;

  @override
  String get blockKey => 'output';

  @override
  Map<String, Object?> encode() => {
    'output': [for (final e in output) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.prompt] choice: sets `prompt`.
final class BedrockagentFlowNodeConfigurationPrompt
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationPrompt(this.prompt);

  final List<BedrockagentFlowPrompt> prompt;

  @override
  String get blockKey => 'prompt';

  @override
  Map<String, Object?> encode() => {
    'prompt': [for (final e in prompt) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.retrieval] choice: sets `retrieval`.
final class BedrockagentFlowNodeConfigurationRetrieval
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationRetrieval(this.retrieval);

  final List<BedrockagentFlowRetrieval> retrieval;

  @override
  String get blockKey => 'retrieval';

  @override
  Map<String, Object?> encode() => {
    'retrieval': [for (final e in retrieval) e.encode()],
  };
}

/// The [BedrockagentFlowNodeConfiguration.storage] choice: sets `storage`.
final class BedrockagentFlowNodeConfigurationStorage
    extends BedrockagentFlowNodeConfiguration {
  const BedrockagentFlowNodeConfigurationStorage(this.storage);

  final List<BedrockagentFlowStorage> storage;

  @override
  String get blockKey => 'storage';

  @override
  Map<String, Object?> encode() => {
    'storage': [for (final e in storage) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.agent` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowAgent {
  const BedrockagentFlowAgent({required this.agentAliasArn});

  final TfArg<String> agentAliasArn;

  Map<String, Object?> encode() => {
    'agent_alias_arn': agentAliasArn.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.collector` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowCollector {
  const BedrockagentFlowCollector();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.condition` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowCondition {
  const BedrockagentFlowCondition({this.condition});

  final List<BedrockagentFlowConditionCondition>? condition;

  Map<String, Object?> encode() => {
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.condition.condition` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowConditionCondition {
  const BedrockagentFlowConditionCondition({
    this.expression,
    required this.name,
  });

  final TfArg<String>? expression;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'expression': ?expression?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.inline_code` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowInlineCode {
  const BedrockagentFlowInlineCode({
    required this.code,
    required this.language,
  });

  final TfArg<String> code;

  final TfArg<BedrockagentFlowLanguage> language;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'language': language.toTfJson(),
  };
}

/// `language` — derived from the provider schema description.
enum BedrockagentFlowLanguage implements TerraformEnum {
  python3('Python_3');

  const BedrockagentFlowLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `definition.node.configuration.input` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowConfigurationInput {
  const BedrockagentFlowConfigurationInput();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.iterator` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowIterator {
  const BedrockagentFlowIterator();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.knowledge_base` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowKnowledgeBase {
  const BedrockagentFlowKnowledgeBase({
    required this.knowledgeBaseId,
    required this.modelId,
    this.numberOfResults,
    this.guardrailConfiguration,
    this.inferenceConfiguration,
  });

  final TfArg<String> knowledgeBaseId;

  final TfArg<String> modelId;

  final TfArg<num>? numberOfResults;

  final List<BedrockagentFlowGuardrailConfiguration>? guardrailConfiguration;

  final List<BedrockagentFlowInferenceConfiguration>? inferenceConfiguration;

  Map<String, Object?> encode() => {
    'knowledge_base_id': knowledgeBaseId.toTfJson(),
    'model_id': modelId.toTfJson(),
    'number_of_results': ?numberOfResults?.toTfJson(),
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentFlowGuardrailConfiguration {
  const BedrockagentFlowGuardrailConfiguration({
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentFlowInferenceConfiguration {
  const BedrockagentFlowInferenceConfiguration({this.text});

  final List<BedrockagentFlowText>? text;

  Map<String, Object?> encode() => {
    if (text != null) 'text': [for (final e in text!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.knowledge_base.inference_configuration.text` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentFlowText {
  const BedrockagentFlowText({
    this.maxTokens,
    this.stopSequences,
    this.temperature,
    this.topP,
  });

  final TfArg<num>? maxTokens;

  final TfArg<List<String>>? stopSequences;

  final TfArg<num>? temperature;

  final TfArg<num>? topP;

  Map<String, Object?> encode() => {
    'max_tokens': ?maxTokens?.toTfJson(),
    'stop_sequences': ?stopSequences?.toTfJson(),
    'temperature': ?temperature?.toTfJson(),
    'top_p': ?topP?.toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.lambda_function` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowLambdaFunction {
  const BedrockagentFlowLambdaFunction({required this.lambdaArn});

  final RefTo<AwsLambdaFunction> lambdaArn;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.lex` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowLex {
  const BedrockagentFlowLex({
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
final class BedrockagentFlowConfigurationOutput {
  const BedrockagentFlowConfigurationOutput();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.prompt` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowPrompt {
  const BedrockagentFlowPrompt({
    this.guardrailConfiguration,
    this.sourceConfiguration,
  });

  final List<BedrockagentFlowGuardrailConfiguration>? guardrailConfiguration;

  final List<BedrockagentFlowSourceConfiguration>? sourceConfiguration;

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

/// Exactly one of `inline`, `resource` on the `definition.node.configuration.prompt.source_configuration` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.inline(...)`.
sealed class BedrockagentFlowSourceConfiguration {
  const BedrockagentFlowSourceConfiguration();

  /// Sets `inline`.
  const factory BedrockagentFlowSourceConfiguration.inline(
    List<BedrockagentFlowInline> inline,
  ) = BedrockagentFlowSourceConfigurationInline;

  /// Sets `resource`.
  const factory BedrockagentFlowSourceConfiguration.resource(
    List<BedrockagentFlowResource> resource,
  ) = BedrockagentFlowSourceConfigurationResource;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentFlowSourceConfiguration.inline] choice: sets `inline`.
final class BedrockagentFlowSourceConfigurationInline
    extends BedrockagentFlowSourceConfiguration {
  const BedrockagentFlowSourceConfigurationInline(this.inline);

  final List<BedrockagentFlowInline> inline;

  @override
  String get blockKey => 'inline';

  @override
  Map<String, Object?> encode() => {
    'inline': [for (final e in inline) e.encode()],
  };
}

/// The [BedrockagentFlowSourceConfiguration.resource] choice: sets `resource`.
final class BedrockagentFlowSourceConfigurationResource
    extends BedrockagentFlowSourceConfiguration {
  const BedrockagentFlowSourceConfigurationResource(this.resource);

  final List<BedrockagentFlowResource> resource;

  @override
  String get blockKey => 'resource';

  @override
  Map<String, Object?> encode() => {
    'resource': [for (final e in resource) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowInline {
  const BedrockagentFlowInline({
    this.additionalModelRequestFields,
    required this.modelId,
    required this.templateType,
    this.inferenceConfiguration,
    this.templateConfiguration,
  });

  final TfArg<String>? additionalModelRequestFields;

  final TfArg<String> modelId;

  final TfArg<BedrockagentFlowTemplateType> templateType;

  final List<BedrockagentFlowInferenceConfiguration>? inferenceConfiguration;

  final List<BedrockagentFlowTemplateConfiguration>? templateConfiguration;

  Map<String, Object?> encode() => {
    'additional_model_request_fields': ?additionalModelRequestFields
        ?.toTfJson(),
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

/// `template_type` — derived from the provider schema description.
enum BedrockagentFlowTemplateType implements TerraformEnum {
  text('TEXT'),
  chat('CHAT');

  const BedrockagentFlowTemplateType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `chat`, `text` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.chat(...)`.
sealed class BedrockagentFlowTemplateConfiguration {
  const BedrockagentFlowTemplateConfiguration();

  /// Sets `chat`.
  const factory BedrockagentFlowTemplateConfiguration.chat(
    List<BedrockagentFlowChat> chat,
  ) = BedrockagentFlowTemplateConfigurationChat;

  /// Sets `text`.
  const factory BedrockagentFlowTemplateConfiguration.text(
    List<BedrockagentFlowTemplateConfigurationText> text,
  ) = BedrockagentFlowTemplateConfigurationTextChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentFlowTemplateConfiguration.chat] choice: sets `chat`.
final class BedrockagentFlowTemplateConfigurationChat
    extends BedrockagentFlowTemplateConfiguration {
  const BedrockagentFlowTemplateConfigurationChat(this.chat);

  final List<BedrockagentFlowChat> chat;

  @override
  String get blockKey => 'chat';

  @override
  Map<String, Object?> encode() => {
    'chat': [for (final e in chat) e.encode()],
  };
}

/// The [BedrockagentFlowTemplateConfiguration.text] choice: sets `text`.
final class BedrockagentFlowTemplateConfigurationTextChoice
    extends BedrockagentFlowTemplateConfiguration {
  const BedrockagentFlowTemplateConfigurationTextChoice(this.text);

  final List<BedrockagentFlowTemplateConfigurationText> text;

  @override
  String get blockKey => 'text';

  @override
  Map<String, Object?> encode() => {
    'text': [for (final e in text) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowChat {
  const BedrockagentFlowChat({
    this.inputVariable,
    this.message,
    this.system,
    this.toolConfiguration,
  });

  final List<BedrockagentFlowInputVariable>? inputVariable;

  final List<BedrockagentFlowMessage>? message;

  final List<BedrockagentFlowSystem>? system;

  final List<BedrockagentFlowToolConfiguration>? toolConfiguration;

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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentFlowInputVariable {
  const BedrockagentFlowInputVariable({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowMessage {
  const BedrockagentFlowMessage({required this.role, this.content});

  final TfArg<BedrockagentFlowRole> role;

  final List<BedrockagentFlowContent>? content;

  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (content != null) 'content': [for (final e in content!) e.encode()],
  };
}

/// `role` — derived from the provider schema description.
enum BedrockagentFlowRole implements TerraformEnum {
  user('user'),
  assistant('assistant');

  const BedrockagentFlowRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `cache_point`, `text` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message.content` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cachePoint(...)`.
sealed class BedrockagentFlowContent {
  const BedrockagentFlowContent();

  /// Sets `cache_point`.
  const factory BedrockagentFlowContent.cachePoint(
    List<BedrockagentFlowCachePoint> cachePoint,
  ) = BedrockagentFlowContentCachePoint;

  /// Sets `text`.
  const factory BedrockagentFlowContent.text(TfArg<String> text) =
      BedrockagentFlowContentText;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentFlowContent.cachePoint] choice: sets `cache_point`.
final class BedrockagentFlowContentCachePoint extends BedrockagentFlowContent {
  const BedrockagentFlowContentCachePoint(this.cachePoint);

  final List<BedrockagentFlowCachePoint> cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentFlowContent.text] choice: sets `text`.
final class BedrockagentFlowContentText extends BedrockagentFlowContent {
  const BedrockagentFlowContentText(this.text);

  final TfArg<String> text;

  @override
  String get blockKey => 'text';

  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.cache_point` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentFlowCachePoint {
  const BedrockagentFlowCachePoint({required this.type});

  final TfArg<BedrockagentFlowCachePointType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowCachePointType implements TerraformEnum {
  defaultCase('default');

  const BedrockagentFlowCachePointType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `cache_point`, `text` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.system` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cachePoint(...)`.
sealed class BedrockagentFlowSystem {
  const BedrockagentFlowSystem();

  /// Sets `cache_point`.
  const factory BedrockagentFlowSystem.cachePoint(
    List<BedrockagentFlowCachePoint> cachePoint,
  ) = BedrockagentFlowSystemCachePoint;

  /// Sets `text`.
  const factory BedrockagentFlowSystem.text(TfArg<String> text) =
      BedrockagentFlowSystemText;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentFlowSystem.cachePoint] choice: sets `cache_point`.
final class BedrockagentFlowSystemCachePoint extends BedrockagentFlowSystem {
  const BedrockagentFlowSystemCachePoint(this.cachePoint);

  final List<BedrockagentFlowCachePoint> cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentFlowSystem.text] choice: sets `text`.
final class BedrockagentFlowSystemText extends BedrockagentFlowSystem {
  const BedrockagentFlowSystemText(this.text);

  final TfArg<String> text;

  @override
  String get blockKey => 'text';

  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowToolConfiguration {
  const BedrockagentFlowToolConfiguration({this.tool, this.toolChoice});

  final List<BedrockagentFlowTool>? tool;

  final List<BedrockagentFlowToolChoice>? toolChoice;

  Map<String, Object?> encode() => {
    if (tool != null) 'tool': [for (final e in tool!) e.encode()],
    if (toolChoice != null)
      'tool_choice': [for (final e in toolChoice!) e.encode()],
  };
}

/// Exactly one of `cache_point`, `tool_spec` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cachePoint(...)`.
sealed class BedrockagentFlowTool {
  const BedrockagentFlowTool();

  /// Sets `cache_point`.
  const factory BedrockagentFlowTool.cachePoint(
    List<BedrockagentFlowCachePoint> cachePoint,
  ) = BedrockagentFlowToolCachePoint;

  /// Sets `tool_spec`.
  const factory BedrockagentFlowTool.toolSpec(
    List<BedrockagentFlowToolSpec> toolSpec,
  ) = BedrockagentFlowToolSpecChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentFlowTool.cachePoint] choice: sets `cache_point`.
final class BedrockagentFlowToolCachePoint extends BedrockagentFlowTool {
  const BedrockagentFlowToolCachePoint(this.cachePoint);

  final List<BedrockagentFlowCachePoint> cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// The [BedrockagentFlowTool.toolSpec] choice: sets `tool_spec`.
final class BedrockagentFlowToolSpecChoice extends BedrockagentFlowTool {
  const BedrockagentFlowToolSpecChoice(this.toolSpec);

  final List<BedrockagentFlowToolSpec> toolSpec;

  @override
  String get blockKey => 'tool_spec';

  @override
  Map<String, Object?> encode() => {
    'tool_spec': [for (final e in toolSpec) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.tool_spec` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowToolSpec {
  const BedrockagentFlowToolSpec({
    this.description,
    required this.name,
    this.inputSchema,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<BedrockagentFlowInputSchema>? inputSchema;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    if (inputSchema != null)
      'input_schema': [for (final e in inputSchema!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.tool_spec.input_schema` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowInputSchema {
  const BedrockagentFlowInputSchema({this.json});

  final TfArg<String>? json;

  Map<String, Object?> encode() => {'json': ?json?.toTfJson()};
}

/// Exactly one of `any`, `auto`, `tool` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.any(...)`.
sealed class BedrockagentFlowToolChoice {
  const BedrockagentFlowToolChoice();

  /// Sets `any`.
  const factory BedrockagentFlowToolChoice.any(List<BedrockagentFlowAny> any) =
      BedrockagentFlowToolChoiceAny;

  /// Sets `auto`.
  const factory BedrockagentFlowToolChoice.auto(
    List<BedrockagentFlowAuto> auto,
  ) = BedrockagentFlowToolChoiceAuto;

  /// Sets `tool`.
  const factory BedrockagentFlowToolChoice.tool(
    List<BedrockagentFlowToolChoiceTool> tool,
  ) = BedrockagentFlowToolChoiceToolOption;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentFlowToolChoice.any] choice: sets `any`.
final class BedrockagentFlowToolChoiceAny extends BedrockagentFlowToolChoice {
  const BedrockagentFlowToolChoiceAny(this.any);

  final List<BedrockagentFlowAny> any;

  @override
  String get blockKey => 'any';

  @override
  Map<String, Object?> encode() => {
    'any': [for (final e in any) e.encode()],
  };
}

/// The [BedrockagentFlowToolChoice.auto] choice: sets `auto`.
final class BedrockagentFlowToolChoiceAuto extends BedrockagentFlowToolChoice {
  const BedrockagentFlowToolChoiceAuto(this.auto);

  final List<BedrockagentFlowAuto> auto;

  @override
  String get blockKey => 'auto';

  @override
  Map<String, Object?> encode() => {
    'auto': [for (final e in auto) e.encode()],
  };
}

/// The [BedrockagentFlowToolChoice.tool] choice: sets `tool`.
final class BedrockagentFlowToolChoiceToolOption
    extends BedrockagentFlowToolChoice {
  const BedrockagentFlowToolChoiceToolOption(this.tool);

  final List<BedrockagentFlowToolChoiceTool> tool;

  @override
  String get blockKey => 'tool';

  @override
  Map<String, Object?> encode() => {
    'tool': [for (final e in tool) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.any` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowAny {
  const BedrockagentFlowAny();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.auto` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowAuto {
  const BedrockagentFlowAuto();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowToolChoiceTool {
  const BedrockagentFlowToolChoiceTool({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowTemplateConfigurationText {
  const BedrockagentFlowTemplateConfigurationText({
    required this.text,
    this.cachePoint,
    this.inputVariable,
  });

  final TfArg<String> text;

  final List<BedrockagentFlowCachePoint>? cachePoint;

  final List<BedrockagentFlowInputVariable>? inputVariable;

  Map<String, Object?> encode() => {
    'text': text.toTfJson(),
    if (cachePoint != null)
      'cache_point': [for (final e in cachePoint!) e.encode()],
    if (inputVariable != null)
      'input_variable': [for (final e in inputVariable!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.resource` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowResource {
  const BedrockagentFlowResource({required this.promptArn});

  final TfArg<String> promptArn;

  Map<String, Object?> encode() => {'prompt_arn': promptArn.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.retrieval` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowRetrieval {
  const BedrockagentFlowRetrieval({this.serviceConfiguration});

  final List<BedrockagentFlowServiceConfiguration>? serviceConfiguration;

  Map<String, Object?> encode() => {
    if (serviceConfiguration != null)
      'service_configuration': [
        for (final e in serviceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.node.configuration.retrieval.service_configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentFlowServiceConfiguration {
  const BedrockagentFlowServiceConfiguration({this.s3});

  final List<BedrockagentFlowS3>? s3;

  Map<String, Object?> encode() => {
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.retrieval.service_configuration.s3` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentFlowS3 {
  const BedrockagentFlowS3({required this.bucketName});

  final RefTo<AwsS3Bucket> bucketName;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `definition.node.configuration.storage` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowStorage {
  const BedrockagentFlowStorage({this.serviceConfiguration});

  final List<BedrockagentFlowServiceConfiguration>? serviceConfiguration;

  Map<String, Object?> encode() => {
    if (serviceConfiguration != null)
      'service_configuration': [
        for (final e in serviceConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `definition.node.input` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowInput {
  const BedrockagentFlowInput({
    this.category,
    required this.expression,
    required this.name,
    required this.type,
  });

  final TfArg<BedrockagentFlowCategory>? category;

  final TfArg<String> expression;

  final TfArg<String> name;

  final TfArg<BedrockagentFlowInputType> type;

  Map<String, Object?> encode() => {
    'category': ?category?.toTfJson(),
    'expression': expression.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `category` — derived from the provider schema description.
enum BedrockagentFlowCategory implements TerraformEnum {
  loopcondition('LoopCondition'),
  returnvaluetoloopstart('ReturnValueToLoopStart'),
  exitloop('ExitLoop');

  const BedrockagentFlowCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowInputType implements TerraformEnum {
  string('String'),
  number('Number'),
  boolean('Boolean'),
  object('Object'),
  array('Array');

  const BedrockagentFlowInputType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `definition.node.output` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowOutput {
  const BedrockagentFlowOutput({required this.name, required this.type});

  final TfArg<String> name;

  final TfArg<BedrockagentFlowInputType> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagent_flow`.
final class AwsBedrockagentFlow extends Resource {
  static const String tfType = 'aws_bedrockagent_flow';

  AwsBedrockagentFlow(
    super.localName, {
    TfArg<String>? customerEncryptionKeyArn,
    TfArg<String>? description,
    required RefTo<AwsIamRole> executionRoleArn,
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
           'customer_encryption_key_arn': ?customerEncryptionKeyArn,
           'description': ?description,
           'execution_role_arn': executionRoleArn.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (definition != null)
             'definition': TfArg.literal([
               for (final e in definition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentFlowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentFlow>`.
  RefTo<AwsBedrockagentFlow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `customer_encryption_key_arn` attribute.
  TfRef<String> get customerEncryptionKeyArn =>
      TfRef.attribute<String>(this, 'customer_encryption_key_arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
