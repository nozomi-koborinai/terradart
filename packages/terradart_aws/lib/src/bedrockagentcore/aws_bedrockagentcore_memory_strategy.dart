// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagentcore_memory_strategy`.
const Set<String> _awsBedrockagentcoreMemoryStrategySensitive = <String>{};

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

  final TfArg<String> type;

  final List<BedrockagentcoreMemoryStrategyConfigurationConsolidation>?
  consolidation;

  final List<BedrockagentcoreMemoryStrategyConfigurationExtraction>? extraction;

  final List<BedrockagentcoreMemoryStrategyConfigurationReflection>? reflection;

  final List<
    BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfiguration
  >?
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

/// Typed helper for the `configuration.consolidation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyConfigurationConsolidation {
  const BedrockagentcoreMemoryStrategyConfigurationConsolidation({
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
final class BedrockagentcoreMemoryStrategyConfigurationExtraction {
  const BedrockagentcoreMemoryStrategyConfigurationExtraction({
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
final class BedrockagentcoreMemoryStrategyConfigurationReflection {
  const BedrockagentcoreMemoryStrategyConfigurationReflection({
    required this.appendToPrompt,
    required this.modelId,
    required this.namespaceTemplates,
  });

  final TfArg<String> appendToPrompt;

  final TfArg<String> modelId;

  final TfArg<List<Object?>> namespaceTemplates;

  Map<String, Object?> encode() => {
    'append_to_prompt': appendToPrompt.toTfJson(),
    'model_id': modelId.toTfJson(),
    'namespace_templates': namespaceTemplates.toTfJson(),
  };
}

/// Typed helper for the `configuration.self_managed_configuration` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfiguration {
  const BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfiguration({
    this.historicalContextWindowSize,
    this.invocationConfiguration,
    this.triggerConditions,
  });

  final TfArg<num>? historicalContextWindowSize;

  final List<
    BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration
  >?
  invocationConfiguration;

  final List<
    BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions
  >?
  triggerConditions;

  Map<String, Object?> encode() => {
    if (historicalContextWindowSize != null)
      'historical_context_window_size': historicalContextWindowSize!.toTfJson(),
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
final class BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration {
  const BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationInvocationConfiguration({
    required this.payloadDeliveryBucketName,
    required this.topicArn,
  });

  final TfArg<String> payloadDeliveryBucketName;

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {
    'payload_delivery_bucket_name': payloadDeliveryBucketName.toTfJson(),
    'topic_arn': topicArn.toTfJson(),
  };
}

/// Typed helper for the `configuration.self_managed_configuration.trigger_conditions` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions {
  const BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditions({
    this.messageBasedTrigger,
    this.timeBasedTrigger,
    this.tokenBasedTrigger,
  });

  final List<
    BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger
  >?
  messageBasedTrigger;

  final List<
    BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger
  >?
  timeBasedTrigger;

  final List<
    BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger
  >?
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
final class BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger {
  const BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsMessageBasedTrigger({
    required this.messageCount,
  });

  final TfArg<num> messageCount;

  Map<String, Object?> encode() => {'message_count': messageCount.toTfJson()};
}

/// Typed helper for the `configuration.self_managed_configuration.trigger_conditions.time_based_trigger` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger {
  const BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTimeBasedTrigger({
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
final class BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger {
  const BedrockagentcoreMemoryStrategyConfigurationSelfManagedConfigurationTriggerConditionsTokenBasedTrigger({
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

  final List<BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchema>?
  metadataSchema;

  Map<String, Object?> encode() => {
    if (metadataSchema != null)
      'metadata_schema': [for (final e in metadataSchema!) e.encode()],
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchema {
  const BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchema({
    this.extractionType,
    required this.key,
    this.type,
    this.extractionConfig,
  });

  final TfArg<String>? extractionType;

  final TfArg<String> key;

  final TfArg<String>? type;

  final List<
    BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig
  >?
  extractionConfig;

  Map<String, Object?> encode() => {
    if (extractionType != null) 'extraction_type': extractionType!.toTfJson(),
    'key': key.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (extractionConfig != null)
      'extraction_config': [for (final e in extractionConfig!) e.encode()],
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig {
  const BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfig({
    this.llmExtractionConfig,
  });

  final List<
    BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig
  >?
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
final class BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig {
  const BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfig({
    required this.definition,
    this.llmExtractionInstruction,
    this.validation,
  });

  final TfArg<String> definition;

  final TfArg<String>? llmExtractionInstruction;

  final List<
    BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation
  >?
  validation;

  Map<String, Object?> encode() => {
    'definition': definition.toTfJson(),
    if (llmExtractionInstruction != null)
      'llm_extraction_instruction': llmExtractionInstruction!.toTfJson(),
    if (validation != null)
      'validation': [for (final e in validation!) e.encode()],
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config.llm_extraction_config.validation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation {
  const BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidation({
    this.numberValidation,
    this.stringListValidation,
    this.stringValidation,
  });

  final List<
    BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation
  >?
  numberValidation;

  final List<
    BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringListValidation
  >?
  stringListValidation;

  final List<
    BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation
  >?
  stringValidation;

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
final class BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation {
  const BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationNumberValidation({
    this.maxValue,
    this.minValue,
  });

  final TfArg<num>? maxValue;

  final TfArg<num>? minValue;

  Map<String, Object?> encode() => {
    if (maxValue != null) 'max_value': maxValue!.toTfJson(),
    if (minValue != null) 'min_value': minValue!.toTfJson(),
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config.llm_extraction_config.validation.string_list_validation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringListValidation {
  const BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringListValidation({
    this.allowedValues,
    this.maxItems,
  });

  final TfArg<List<Object?>>? allowedValues;

  final TfArg<num>? maxItems;

  Map<String, Object?> encode() => {
    if (allowedValues != null) 'allowed_values': allowedValues!.toTfJson(),
    if (maxItems != null) 'max_items': maxItems!.toTfJson(),
  };
}

/// Typed helper for the `memory_record_schema.metadata_schema.extraction_config.llm_extraction_config.validation.string_validation` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation {
  const BedrockagentcoreMemoryStrategyMemoryRecordSchemaMetadataSchemaExtractionConfigLlmExtractionConfigValidationStringValidation({
    required this.allowedValues,
  });

  final TfArg<List<Object?>> allowedValues;

  Map<String, Object?> encode() => {'allowed_values': allowedValues.toTfJson()};
}

/// Typed helper for the `reflection_configuration` block of
/// `aws_bedrockagentcore_memory_strategy` (derived from provider schema).
@immutable
final class BedrockagentcoreMemoryStrategyReflectionConfiguration {
  const BedrockagentcoreMemoryStrategyReflectionConfiguration({
    required this.namespaceTemplates,
  });

  final TfArg<List<Object?>> namespaceTemplates;

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
    required TfArg<String> type,
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
           if (description != null) 'description': description,
           if (memoryExecutionRoleArn != null)
             'memory_execution_role_arn': memoryExecutionRoleArn,
           'memory_id': memoryId,
           'name': name,
           if (namespaceTemplates != null)
             'namespace_templates': namespaceTemplates,
           if (namespaces != null) 'namespaces': namespaces,
           if (region != null) 'region': region,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `memory_strategy_id` attribute.
  TfRef<String> get memoryStrategyId =>
      TfRef.attribute<String>(this, 'memory_strategy_id');
}
