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

  final TfArg<BedrockagentFlowDefinitionConnectionType> type;

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

/// `type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionConnectionType implements TerraformEnum {
  data('Data'),
  conditional('Conditional');

  const BedrockagentFlowDefinitionConnectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `definition.connection.configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionConnectionConfiguration {
  const BedrockagentFlowDefinitionConnectionConfiguration({
    required this.conditionalOrData,
  });

  final BedrockagentFlowDefinitionConnectionConfigurationConditionalOrData
  conditionalOrData;

  Map<String, Object?> encode() => {...conditionalOrData.encode()};
}

/// Exactly one of `conditional`, `data` on the `definition.connection.configuration` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockagentFlowDefinitionConnectionConfigurationConditionalOrData {
  const BedrockagentFlowDefinitionConnectionConfigurationConditionalOrData();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `conditional` (one of the [BedrockagentFlowDefinitionConnectionConfigurationConditionalOrData] choices).
final class BedrockagentFlowDefinitionConnectionConfigurationConditionalOption
    extends BedrockagentFlowDefinitionConnectionConfigurationConditionalOrData {
  const BedrockagentFlowDefinitionConnectionConfigurationConditionalOption({
    required this.conditional,
  });

  final List<BedrockagentFlowDefinitionConnectionConfigurationConditional>
  conditional;

  @override
  String get blockKey => 'conditional';

  @override
  Map<String, Object?> encode() => {
    'conditional': [for (final e in conditional) e.encode()],
  };
}

/// Sets `data` (one of the [BedrockagentFlowDefinitionConnectionConfigurationConditionalOrData] choices).
final class BedrockagentFlowDefinitionConnectionConfigurationDataOption
    extends BedrockagentFlowDefinitionConnectionConfigurationConditionalOrData {
  const BedrockagentFlowDefinitionConnectionConfigurationDataOption({
    required this.data,
  });

  final List<BedrockagentFlowDefinitionConnectionConfigurationData> data;

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

  final TfArg<BedrockagentFlowDefinitionNodeType> type;

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

/// `type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeType implements TerraformEnum {
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

  const BedrockagentFlowDefinitionNodeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `definition.node.configuration` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfiguration {
  const BedrockagentFlowDefinitionNodeConfiguration({
    required this.agentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage,
  });

  final BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage
  agentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage;

  Map<String, Object?> encode() => {
    ...agentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage
        .encode(),
  };
}

/// Exactly one of `agent`, `collector`, `condition`, `inline_code`, `input`, `iterator`, `knowledge_base`, `lambda_function`, `lex`, `output`, `prompt`, `retrieval`, `storage` on the `definition.node.configuration` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `agent` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationAgentOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationAgentOption({
    required this.agent,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationAgent> agent;

  @override
  String get blockKey => 'agent';

  @override
  Map<String, Object?> encode() => {
    'agent': [for (final e in agent) e.encode()],
  };
}

/// Sets `collector` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationCollectorOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationCollectorOption({
    required this.collector,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationCollector> collector;

  @override
  String get blockKey => 'collector';

  @override
  Map<String, Object?> encode() => {
    'collector': [for (final e in collector) e.encode()],
  };
}

/// Sets `condition` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationConditionOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationConditionOption({
    required this.condition,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationCondition> condition;

  @override
  String get blockKey => 'condition';

  @override
  Map<String, Object?> encode() => {
    'condition': [for (final e in condition) e.encode()],
  };
}

/// Sets `inline_code` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationInlineCodeOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationInlineCodeOption({
    required this.inlineCode,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationInlineCode> inlineCode;

  @override
  String get blockKey => 'inline_code';

  @override
  Map<String, Object?> encode() => {
    'inline_code': [for (final e in inlineCode) e.encode()],
  };
}

/// Sets `input` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationInputOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationInputOption({
    required this.input,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationInput> input;

  @override
  String get blockKey => 'input';

  @override
  Map<String, Object?> encode() => {
    'input': [for (final e in input) e.encode()],
  };
}

/// Sets `iterator` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationIteratorOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationIteratorOption({
    required this.iterator,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationIterator> iterator;

  @override
  String get blockKey => 'iterator';

  @override
  Map<String, Object?> encode() => {
    'iterator': [for (final e in iterator) e.encode()],
  };
}

/// Sets `knowledge_base` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationKnowledgeBaseOption({
    required this.knowledgeBase,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationKnowledgeBase>
  knowledgeBase;

  @override
  String get blockKey => 'knowledge_base';

  @override
  Map<String, Object?> encode() => {
    'knowledge_base': [for (final e in knowledgeBase) e.encode()],
  };
}

/// Sets `lambda_function` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationLambdaFunctionOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationLambdaFunctionOption({
    required this.lambdaFunction,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationLambdaFunction>
  lambdaFunction;

  @override
  String get blockKey => 'lambda_function';

  @override
  Map<String, Object?> encode() => {
    'lambda_function': [for (final e in lambdaFunction) e.encode()],
  };
}

/// Sets `lex` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationLexOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationLexOption({
    required this.lex,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationLex> lex;

  @override
  String get blockKey => 'lex';

  @override
  Map<String, Object?> encode() => {
    'lex': [for (final e in lex) e.encode()],
  };
}

/// Sets `output` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationOutputOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationOutputOption({
    required this.output,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationOutput> output;

  @override
  String get blockKey => 'output';

  @override
  Map<String, Object?> encode() => {
    'output': [for (final e in output) e.encode()],
  };
}

/// Sets `prompt` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationPromptOption({
    required this.prompt,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationPrompt> prompt;

  @override
  String get blockKey => 'prompt';

  @override
  Map<String, Object?> encode() => {
    'prompt': [for (final e in prompt) e.encode()],
  };
}

/// Sets `retrieval` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationRetrievalOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationRetrievalOption({
    required this.retrieval,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationRetrieval> retrieval;

  @override
  String get blockKey => 'retrieval';

  @override
  Map<String, Object?> encode() => {
    'retrieval': [for (final e in retrieval) e.encode()],
  };
}

/// Sets `storage` (one of the [BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage] choices).
final class BedrockagentFlowDefinitionNodeConfigurationStorageOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationAgentOrCollectorOrConditionOrInlineCodeOrInputOrIteratorOrKnowledgeBaseOrLambdaFunctionOrLexOrOutputOrPromptOrRetrievalOrStorage {
  const BedrockagentFlowDefinitionNodeConfigurationStorageOption({
    required this.storage,
  });

  final List<BedrockagentFlowDefinitionNodeConfigurationStorage> storage;

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

  final TfArg<BedrockagentFlowDefinitionNodeConfigurationInlineCodeLanguage>
  language;

  Map<String, Object?> encode() => {
    'code': code.toTfJson(),
    'language': language.toTfJson(),
  };
}

/// `language` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeConfigurationInlineCodeLanguage
    implements TerraformEnum {
  python3('Python_3');

  const BedrockagentFlowDefinitionNodeConfigurationInlineCodeLanguage(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required this.inlineOrResource,
  });

  final BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOrResource
  inlineOrResource;

  Map<String, Object?> encode() => {...inlineOrResource.encode()};
}

/// Exactly one of `inline`, `resource` on the `definition.node.configuration.prompt.source_configuration` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOrResource {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOrResource();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `inline` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOrResource] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOrResource {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOption({
    required this.inline,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInline
  >
  inline;

  @override
  String get blockKey => 'inline';

  @override
  Map<String, Object?> encode() => {
    'inline': [for (final e in inline) e.encode()],
  };
}

/// Sets `resource` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOrResource] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationResourceOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineOrResource {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationResourceOption({
    required this.resource,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationResource
  >
  resource;

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

  final TfArg<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateType
  >
  templateType;

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

/// `template_type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateType
    implements TerraformEnum {
  text('TEXT'),
  chat('CHAT');

  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required this.chatOrText,
  });

  final BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOrText
  chatOrText;

  Map<String, Object?> encode() => {...chatOrText.encode()};
}

/// Exactly one of `chat`, `text` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOrText();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `chat` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOrText] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOption({
    required this.chat,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat
  >
  chat;

  @override
  String get blockKey => 'chat';

  @override
  Map<String, Object?> encode() => {
    'chat': [for (final e in chat) e.encode()],
  };
}

/// Sets `text` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOrText] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextOption({
    required this.text,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText
  >
  text;

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

  final TfArg<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageRole
  >
  role;

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent
  >?
  content;

  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (content != null) 'content': [for (final e in content!) e.encode()],
  };
}

/// `role` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageRole
    implements TerraformEnum {
  user('user'),
  assistant('assistant');

  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageRole(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message.content` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent({
    required this.cachePointOrText,
  });

  final BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOrText
  cachePointOrText;

  Map<String, Object?> encode() => {...cachePointOrText.encode()};
}

/// Exactly one of `cache_point`, `text` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message.content` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOrText();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `cache_point` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOrText] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOption({
    required this.cachePoint,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint
  >
  cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// Sets `text` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOrText] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentTextOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentTextOption({
    required this.text,
  });

  final TfArg<String> text;

  @override
  String get blockKey => 'text';

  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message.content.cache_point` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint({
    required this.type,
  });

  final TfArg<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointType
  >
  type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointType
    implements TerraformEnum {
  defaultCase('default');

  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.system` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem({
    required this.cachePointOrText,
  });

  final BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOrText
  cachePointOrText;

  Map<String, Object?> encode() => {...cachePointOrText.encode()};
}

/// Exactly one of `cache_point`, `text` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.system` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOrText();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `cache_point` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOrText] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOption({
    required this.cachePoint,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint
  >
  cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// Sets `text` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOrText] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemTextOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointOrText {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemTextOption({
    required this.text,
  });

  final TfArg<String> text;

  @override
  String get blockKey => 'text';

  @override
  Map<String, Object?> encode() => {'text': text.toTfJson()};
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.system.cache_point` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint({
    required this.type,
  });

  final TfArg<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointType
  >
  type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointType
    implements TerraformEnum {
  defaultCase('default');

  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required this.cachePointOrToolSpec,
  });

  final BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOrToolSpec
  cachePointOrToolSpec;

  Map<String, Object?> encode() => {...cachePointOrToolSpec.encode()};
}

/// Exactly one of `cache_point`, `tool_spec` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOrToolSpec {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOrToolSpec();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `cache_point` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOrToolSpec] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOrToolSpec {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOption({
    required this.cachePoint,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint
  >
  cachePoint;

  @override
  String get blockKey => 'cache_point';

  @override
  Map<String, Object?> encode() => {
    'cache_point': [for (final e in cachePoint) e.encode()],
  };
}

/// Sets `tool_spec` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOrToolSpec] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointOrToolSpec {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecOption({
    required this.toolSpec,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec
  >
  toolSpec;

  @override
  String get blockKey => 'tool_spec';

  @override
  Map<String, Object?> encode() => {
    'tool_spec': [for (final e in toolSpec) e.encode()],
  };
}

/// Typed helper for the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.cache_point` block of
/// `aws_bedrockagent_flow` (derived from provider schema).
@immutable
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint({
    required this.type,
  });

  final TfArg<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointType
  >
  type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointType
    implements TerraformEnum {
  defaultCase('default');

  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    required this.anyOrAutoOrTool,
  });

  final BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool
  anyOrAutoOrTool;

  Map<String, Object?> encode() => {...anyOrAutoOrTool.encode()};
}

/// Exactly one of `any`, `auto`, `tool` on the `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice` block of `aws_bedrockagent_flow`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `any` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOption({
    required this.any,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAny
  >
  any;

  @override
  String get blockKey => 'any';

  @override
  Map<String, Object?> encode() => {
    'any': [for (final e in any) e.encode()],
  };
}

/// Sets `auto` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAutoOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAutoOption({
    required this.auto,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAuto
  >
  auto;

  @override
  String get blockKey => 'auto';

  @override
  Map<String, Object?> encode() => {
    'auto': [for (final e in auto) e.encode()],
  };
}

/// Sets `tool` (one of the [BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool] choices).
final class BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceToolOption
    extends
        BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceAnyOrAutoOrTool {
  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceToolOption({
    required this.tool,
  });

  final List<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceTool
  >
  tool;

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

  final TfArg<
    BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePointType
  >
  type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePointType
    implements TerraformEnum {
  defaultCase('default');

  const BedrockagentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationTextCachePointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<BedrockagentFlowDefinitionNodeInputCategory>? category;

  final TfArg<String> expression;

  final TfArg<String> name;

  final TfArg<BedrockagentFlowDefinitionNodeInputType> type;

  Map<String, Object?> encode() => {
    if (category != null) 'category': category!.toTfJson(),
    'expression': expression.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `category` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeInputCategory implements TerraformEnum {
  loopcondition('LoopCondition'),
  returnvaluetoloopstart('ReturnValueToLoopStart'),
  exitloop('ExitLoop');

  const BedrockagentFlowDefinitionNodeInputCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeInputType implements TerraformEnum {
  string('String'),
  number('Number'),
  boolean('Boolean'),
  object('Object'),
  array('Array');

  const BedrockagentFlowDefinitionNodeInputType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<BedrockagentFlowDefinitionNodeOutputType> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentFlowDefinitionNodeOutputType implements TerraformEnum {
  string('String'),
  number('Number'),
  boolean('Boolean'),
  object('Object'),
  array('Array');

  const BedrockagentFlowDefinitionNodeOutputType(this.terraformValue);
  @override
  final String terraformValue;
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
