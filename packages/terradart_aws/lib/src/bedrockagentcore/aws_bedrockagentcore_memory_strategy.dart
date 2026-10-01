// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_bedrockagentcore_memory_strategy`.
const Set<String> _awsBedrockagentcoreMemoryStrategySensitive = <String>{};

/// Bedrockagentcore Memory Strategy enum for `type`.
enum BedrockagentcoreMemoryStrategyType implements TerraformEnum {
  semantic('SEMANTIC'),
  summarization('SUMMARIZATION'),
  userPreference('USER_PREFERENCE'),
  custom('CUSTOM'),
  episodic('EPISODIC');

  const BedrockagentcoreMemoryStrategyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyConfiguration {
  const BedrockagentcoreMemoryStrategyConfiguration({
    required this.type,
    this.consolidation,
    this.extraction,
    this.reflection,
    this.selfManagedConfiguration,
  });

  final TfArg<BedrockagentcoreMemoryStrategyConfigurationType> type;

  final List<BedrockagentcoreMemoryStrategyConsolidation>? consolidation;

  final List<BedrockagentcoreMemoryStrategyExtraction>? extraction;

  final List<BedrockagentcoreMemoryStrategyReflection>? reflection;

  final List<BedrockagentcoreMemoryStrategySelfManagedConfiguration>?
  selfManagedConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (consolidation != null)
      'consolidation': [for (final e in consolidation!) e.encode()],
    if (extraction != null)
      'extraction': [for (final e in extraction!) e.encode()],
    if (reflection != null)
      'reflection': [for (final e in reflection!) e.encode()],
    if (selfManagedConfiguration != null)
      'self_managed_configuration': [
        for (final e in selfManagedConfiguration!) e.encode(),
      ],
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentcoreMemoryStrategyConfigurationType implements TerraformEnum {
  semanticOverride('SEMANTIC_OVERRIDE'),
  summaryOverride('SUMMARY_OVERRIDE'),
  userPreferenceOverride('USER_PREFERENCE_OVERRIDE'),
  selfManaged('SELF_MANAGED'),
  episodicOverride('EPISODIC_OVERRIDE');

  const BedrockagentcoreMemoryStrategyConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.consolidation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyConsolidation {
  const BedrockagentcoreMemoryStrategyConsolidation({
    required this.appendToPrompt,
    required this.modelId,
  });

  final TfArg<String> appendToPrompt;

  final TfArg<String> modelId;

  Map<String, Object?> encode() => {
    'append_to_prompt': appendToPrompt.toTfJson(),
    'model_id': modelId.toTfJson(),
  };
}

/// Typed helper for the `configuration.extraction` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyExtraction {
  const BedrockagentcoreMemoryStrategyExtraction({
    required this.appendToPrompt,
    required this.modelId,
  });

  final TfArg<String> appendToPrompt;

  final TfArg<String> modelId;

  Map<String, Object?> encode() => {
    'append_to_prompt': appendToPrompt.toTfJson(),
    'model_id': modelId.toTfJson(),
  };
}

/// Typed helper for the `configuration.reflection` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyReflection {
  const BedrockagentcoreMemoryStrategyReflection({
    required this.appendToPrompt,
    required this.modelId,
    required this.namespaceTemplates,
  });

  final TfArg<String> appendToPrompt;

  final TfArg<String> modelId;

  final TfArg<List<String>> namespaceTemplates;

  Map<String, Object?> encode() => {
    'append_to_prompt': appendToPrompt.toTfJson(),
    'model_id': modelId.toTfJson(),
    'namespace_templates': namespaceTemplates.toTfJson(),
  };
}

/// Typed helper for the `configuration.self_managed_configuration` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategySelfManagedConfiguration {
  const BedrockagentcoreMemoryStrategySelfManagedConfiguration({
    this.historicalContextWindowSize,
    this.invocationConfiguration,
    this.triggerConditions,
  });

  final TfArg<num>? historicalContextWindowSize;

  final List<BedrockagentcoreMemoryStrategyInvocationConfiguration>?
  invocationConfiguration;

  final List<BedrockagentcoreMemoryStrategyTriggerConditions>?
  triggerConditions;

  Map<String, Object?> encode() => {
    'historical_context_window_size': ?historicalContextWindowSize?.toTfJson(),
    if (invocationConfiguration != null)
      'invocation_configuration': [
        for (final e in invocationConfiguration!) e.encode(),
      ],
    if (triggerConditions != null)
      'trigger_conditions': [for (final e in triggerConditions!) e.encode()],
  };
}

/// Typed helper for the `configuration.self_managed_configuration.invocation_configuration` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyInvocationConfiguration {
  const BedrockagentcoreMemoryStrategyInvocationConfiguration({
    required this.payloadDeliveryBucketName,
    required this.topicArn,
  });

  final TfArg<String> payloadDeliveryBucketName;

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    'payload_delivery_bucket_name': payloadDeliveryBucketName.toTfJson(),
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `configuration.self_managed_configuration.trigger_conditions` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyTriggerConditions {
  const BedrockagentcoreMemoryStrategyTriggerConditions({
    this.messageBasedTrigger,
    this.timeBasedTrigger,
    this.tokenBasedTrigger,
  });

  final List<BedrockagentcoreMemoryStrategyMessageBasedTrigger>?
  messageBasedTrigger;

  final List<BedrockagentcoreMemoryStrategyTimeBasedTrigger>? timeBasedTrigger;

  final List<BedrockagentcoreMemoryStrategyTokenBasedTrigger>?
  tokenBasedTrigger;

  Map<String, Object?> encode() => {
    if (messageBasedTrigger != null)
      'message_based_trigger': [
        for (final e in messageBasedTrigger!) e.encode(),
      ],
    if (timeBasedTrigger != null)
      'time_based_trigger': [for (final e in timeBasedTrigger!) e.encode()],
    if (tokenBasedTrigger != null)
      'token_based_trigger': [for (final e in tokenBasedTrigger!) e.encode()],
  };
}

/// Typed helper for the `configuration.self_managed_configuration.trigger_conditions.message_based_trigger` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyMessageBasedTrigger {
  const BedrockagentcoreMemoryStrategyMessageBasedTrigger({
    required this.messageCount,
  });

  final TfArg<num> messageCount;

  Map<String, Object?> encode() => {'message_count': messageCount.toTfJson()};
}

/// Typed helper for the `configuration.self_managed_configuration.trigger_conditions.time_based_trigger` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyTimeBasedTrigger {
  const BedrockagentcoreMemoryStrategyTimeBasedTrigger({
    required this.idleSessionTimeout,
  });

  final TfArg<num> idleSessionTimeout;

  Map<String, Object?> encode() => {
    'idle_session_timeout': idleSessionTimeout.toTfJson(),
  };
}

/// Typed helper for the `configuration.self_managed_configuration.trigger_conditions.token_based_trigger` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyTokenBasedTrigger {
  const BedrockagentcoreMemoryStrategyTokenBasedTrigger({
    required this.tokenCount,
  });

  final TfArg<num> tokenCount;

  Map<String, Object?> encode() => {'token_count': tokenCount.toTfJson()};
}

/// Typed helper for the `memory_record_schema` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyMemoryRecordSchema {
  const BedrockagentcoreMemoryStrategyMemoryRecordSchema({this.metadataSchema});

  final List<BedrockagentcoreMemoryStrategyMetadataSchema>? metadataSchema;

  Map<String, Object?> encode() => {
    if (metadataSchema != null)
      'metadata_schema': [for (final e in metadataSchema!) e.encode()],
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyMetadataSchema {
  const BedrockagentcoreMemoryStrategyMetadataSchema({
    this.extractionType,
    required this.key,
    this.type,
    this.extractionConfig,
  });

  final TfArg<BedrockagentcoreMemoryStrategyExtractionType>? extractionType;

  final TfArg<String> key;

  final TfArg<BedrockagentcoreMemoryStrategyMetadataSchemaType>? type;

  final List<BedrockagentcoreMemoryStrategyExtractionConfig>? extractionConfig;

  Map<String, Object?> encode() => {
    'extraction_type': ?extractionType?.toTfJson(),
    'key': key.toTfJson(),
    'type': ?type?.toTfJson(),
    if (extractionConfig != null)
      'extraction_config': [for (final e in extractionConfig!) e.encode()],
  };
}

/// `extraction_type` — derived from the provider schema description.
enum BedrockagentcoreMemoryStrategyExtractionType implements TerraformEnum {
  llmInferred('LLM_INFERRED'),
  strictlyConsistent('STRICTLY_CONSISTENT');

  const BedrockagentcoreMemoryStrategyExtractionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BedrockagentcoreMemoryStrategyMetadataSchemaType implements TerraformEnum {
  string('STRING'),
  stringlist('STRINGLIST'),
  number('NUMBER');

  const BedrockagentcoreMemoryStrategyMetadataSchemaType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyExtractionConfig {
  const BedrockagentcoreMemoryStrategyExtractionConfig({
    this.llmExtractionConfig,
  });

  final List<BedrockagentcoreMemoryStrategyLlmExtractionConfig>?
  llmExtractionConfig;

  Map<String, Object?> encode() => {
    if (llmExtractionConfig != null)
      'llm_extraction_config': [
        for (final e in llmExtractionConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config.llm_extraction_config` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyLlmExtractionConfig {
  const BedrockagentcoreMemoryStrategyLlmExtractionConfig({
    required this.definition,
    this.llmExtractionInstruction,
    this.validation,
  });

  final TfArg<String> definition;

  final TfArg<String>? llmExtractionInstruction;

  final List<BedrockagentcoreMemoryStrategyValidation>? validation;

  Map<String, Object?> encode() => {
    'definition': definition.toTfJson(),
    'llm_extraction_instruction': ?llmExtractionInstruction?.toTfJson(),
    if (validation != null)
      'validation': [for (final e in validation!) e.encode()],
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config.llm_extraction_config.validation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyValidation {
  const BedrockagentcoreMemoryStrategyValidation({
    this.numberValidation,
    this.stringListValidation,
    this.stringValidation,
  });

  final List<BedrockagentcoreMemoryStrategyNumberValidation>? numberValidation;

  final List<BedrockagentcoreMemoryStrategyStringListValidation>?
  stringListValidation;

  final List<BedrockagentcoreMemoryStrategyStringValidation>? stringValidation;

  Map<String, Object?> encode() => {
    if (numberValidation != null)
      'number_validation': [for (final e in numberValidation!) e.encode()],
    if (stringListValidation != null)
      'string_list_validation': [
        for (final e in stringListValidation!) e.encode(),
      ],
    if (stringValidation != null)
      'string_validation': [for (final e in stringValidation!) e.encode()],
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config.llm_extraction_config.validation.number_validation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyNumberValidation {
  const BedrockagentcoreMemoryStrategyNumberValidation({
    this.maxValue,
    this.minValue,
  });

  final TfArg<num>? maxValue;

  final TfArg<num>? minValue;

  Map<String, Object?> encode() => {
    'max_value': ?maxValue?.toTfJson(),
    'min_value': ?minValue?.toTfJson(),
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config.llm_extraction_config.validation.string_list_validation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyStringListValidation {
  const BedrockagentcoreMemoryStrategyStringListValidation({
    this.allowedValues,
    this.maxItems,
  });

  final TfArg<List<String>>? allowedValues;

  final TfArg<num>? maxItems;

  Map<String, Object?> encode() => {
    'allowed_values': ?allowedValues?.toTfJson(),
    'max_items': ?maxItems?.toTfJson(),
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config.llm_extraction_config.validation.string_validation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyStringValidation {
  const BedrockagentcoreMemoryStrategyStringValidation({
    required this.allowedValues,
  });

  final TfArg<List<String>> allowedValues;

  Map<String, Object?> encode() => {'allowed_values': allowedValues.toTfJson()};
}

/// Typed helper for the `reflection_configuration` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyReflectionConfiguration {
  const BedrockagentcoreMemoryStrategyReflectionConfiguration({
    required this.namespaceTemplates,
  });

  final TfArg<List<String>> namespaceTemplates;

  Map<String, Object?> encode() => {
    'namespace_templates': namespaceTemplates.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagentcore_memory_strategy`.
final class AwsBedrockagentcoreMemoryStrategy extends Resource {
  static const String tfType = 'aws_bedrockagentcore_memory_strategy';

  AwsBedrockagentcoreMemoryStrategy({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? memoryExecutionRoleArn,
    required TfArg<String> memoryId,
    required TfArg<String> name,
    TfArg<List<String>>? namespaceTemplates,
    TfArg<List<String>>? namespaces,
    TfArg<String>? region,
    required TfArg<BedrockagentcoreMemoryStrategyType> type,
    List<BedrockagentcoreMemoryStrategyConfiguration>? configuration,
    List<BedrockagentcoreMemoryStrategyMemoryRecordSchema>? memoryRecordSchema,
    List<BedrockagentcoreMemoryStrategyReflectionConfiguration>?
    reflectionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'memory_execution_role_arn': ?memoryExecutionRoleArn,
           'memory_id': memoryId,
           'name': name,
           'namespace_templates': ?namespaceTemplates,
           'namespaces': ?namespaces,
           'region': ?region,
           'type': type,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
           if (memoryRecordSchema != null)
             'memory_record_schema': TfArg.literal([
               for (final e in memoryRecordSchema) e.encode(),
             ]),
           if (reflectionConfiguration != null)
             'reflection_configuration': TfArg.literal([
               for (final e in reflectionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreMemoryStrategySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreMemoryStrategy>`.
  RefTo<AwsBedrockagentcoreMemoryStrategy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `memory_strategy_id` attribute.
  TfRef<String> get memoryStrategyId =>
      TfRef.attribute<String>(this, 'memory_strategy_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `memory_execution_role_arn` attribute.
  TfRef<String> get memoryExecutionRoleArnRef =>
      TfRef.attribute<String>(this, 'memory_execution_role_arn');

  /// Reference to `memory_id` attribute.
  TfRef<String> get memoryIdRef => TfRef.attribute<String>(this, 'memory_id');

  /// Reference to `namespace_templates` attribute.
  TfRef<List<String>> get namespaceTemplatesRef =>
      TfRef.attribute<List<String>>(this, 'namespace_templates');

  /// Reference to `namespaces` attribute.
  TfRef<List<String>> get namespacesRef =>
      TfRef.attribute<List<String>>(this, 'namespaces');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
