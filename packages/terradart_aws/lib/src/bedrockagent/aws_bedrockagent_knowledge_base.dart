// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bedrockagent_knowledge_base`.
const Set<String> _awsBedrockagentKnowledgeBaseSensitive = <String>{};

/// Typed helper for the `knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfiguration({
    required this.type,
    this.kendraKnowledgeBaseConfiguration,
    this.managedKnowledgeBaseConfiguration,
    this.sqlKnowledgeBaseConfiguration,
    this.vectorKnowledgeBaseConfiguration,
  });

  final TfArg<String> type;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration
  >?
  kendraKnowledgeBaseConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfiguration
  >?
  managedKnowledgeBaseConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration
  >?
  sqlKnowledgeBaseConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration
  >?
  vectorKnowledgeBaseConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (kendraKnowledgeBaseConfiguration != null)
      'kendra_knowledge_base_configuration': [
        for (final e in kendraKnowledgeBaseConfiguration!) e.encode(),
      ],
    if (managedKnowledgeBaseConfiguration != null)
      'managed_knowledge_base_configuration': [
        for (final e in managedKnowledgeBaseConfiguration!) e.encode(),
      ],
    if (sqlKnowledgeBaseConfiguration != null)
      'sql_knowledge_base_configuration': [
        for (final e in sqlKnowledgeBaseConfiguration!) e.encode(),
      ],
    if (vectorKnowledgeBaseConfiguration != null)
      'vector_knowledge_base_configuration': [
        for (final e in vectorKnowledgeBaseConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.kendra_knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration({
    required this.kendraIndexArn,
  });

  final TfArg<String> kendraIndexArn;

  Map<String, Object?> encode() => {
    'kendra_index_arn': kendraIndexArn.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfiguration({
    this.embeddingModelArn,
    this.embeddingModelType,
    this.embeddingModelConfiguration,
    this.serverSideEncryptionConfiguration,
  });

  final TfArg<String>? embeddingModelArn;

  final TfArg<String>? embeddingModelType;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration
  >?
  embeddingModelConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration
  >?
  serverSideEncryptionConfiguration;

  Map<String, Object?> encode() => {
    if (embeddingModelArn != null)
      'embedding_model_arn': embeddingModelArn!.toTfJson(),
    if (embeddingModelType != null)
      'embedding_model_type': embeddingModelType!.toTfJson(),
    if (embeddingModelConfiguration != null)
      'embedding_model_configuration': [
        for (final e in embeddingModelConfiguration!) e.encode(),
      ],
    if (serverSideEncryptionConfiguration != null)
      'server_side_encryption_configuration': [
        for (final e in serverSideEncryptionConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration({
    this.bedrockEmbeddingModelConfiguration,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration
  >?
  bedrockEmbeddingModelConfiguration;

  Map<String, Object?> encode() => {
    if (bedrockEmbeddingModelConfiguration != null)
      'bedrock_embedding_model_configuration': [
        for (final e in bedrockEmbeddingModelConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration({
    this.dimensions,
    this.embeddingDataType,
    this.audio,
    this.video,
  });

  final TfArg<num>? dimensions;

  final TfArg<String>? embeddingDataType;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio
  >?
  audio;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo
  >?
  video;

  Map<String, Object?> encode() => {
    if (dimensions != null) 'dimensions': dimensions!.toTfJson(),
    if (embeddingDataType != null)
      'embedding_data_type': embeddingDataType!.toTfJson(),
    if (audio != null) 'audio': [for (final e in audio!) e.encode()],
    if (video != null) 'video': [for (final e in video!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio({
    this.segmentationConfiguration,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration
  >?
  segmentationConfiguration;

  Map<String, Object?> encode() => {
    if (segmentationConfiguration != null)
      'segmentation_configuration': [
        for (final e in segmentationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio.segmentation_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration({
    required this.fixedLengthDuration,
  });

  final TfArg<num> fixedLengthDuration;

  Map<String, Object?> encode() => {
    'fixed_length_duration': fixedLengthDuration.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo({
    this.segmentationConfiguration,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration
  >?
  segmentationConfiguration;

  Map<String, Object?> encode() => {
    if (segmentationConfiguration != null)
      'segmentation_configuration': [
        for (final e in segmentationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video.segmentation_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration({
    required this.fixedLengthDuration,
  });

  final TfArg<num> fixedLengthDuration;

  Map<String, Object?> encode() => {
    'fixed_length_duration': fixedLengthDuration.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.server_side_encryption_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration({
    this.kmsKeyArn,
  });

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration({
    required this.type,
    this.redshiftConfiguration,
  });

  final TfArg<String> type;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration
  >?
  redshiftConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (redshiftConfiguration != null)
      'redshift_configuration': [
        for (final e in redshiftConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration({
    this.queryEngineConfiguration,
    this.queryGenerationConfiguration,
    this.storageConfiguration,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration
  >?
  queryEngineConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration
  >?
  queryGenerationConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration
  >?
  storageConfiguration;

  Map<String, Object?> encode() => {
    if (queryEngineConfiguration != null)
      'query_engine_configuration': [
        for (final e in queryEngineConfiguration!) e.encode(),
      ],
    if (queryGenerationConfiguration != null)
      'query_generation_configuration': [
        for (final e in queryGenerationConfiguration!) e.encode(),
      ],
    if (storageConfiguration != null)
      'storage_configuration': [
        for (final e in storageConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration({
    required this.type,
    this.provisionedConfiguration,
    this.serverlessConfiguration,
  });

  final TfArg<String> type;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration
  >?
  provisionedConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration
  >?
  serverlessConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (provisionedConfiguration != null)
      'provisioned_configuration': [
        for (final e in provisionedConfiguration!) e.encode(),
      ],
    if (serverlessConfiguration != null)
      'serverless_configuration': [
        for (final e in serverlessConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration({
    required this.clusterIdentifier,
    this.authConfiguration,
  });

  final TfArg<String> clusterIdentifier;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration
  >?
  authConfiguration;

  Map<String, Object?> encode() => {
    'cluster_identifier': clusterIdentifier.toTfJson(),
    if (authConfiguration != null)
      'auth_configuration': [for (final e in authConfiguration!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration.auth_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration({
    this.databaseUser,
    required this.type,
    this.usernamePasswordSecretArn,
  });

  final TfArg<String>? databaseUser;

  final TfArg<String> type;

  final TfArg<String>? usernamePasswordSecretArn;

  Map<String, Object?> encode() => {
    if (databaseUser != null) 'database_user': databaseUser!.toTfJson(),
    'type': type.toTfJson(),
    if (usernamePasswordSecretArn != null)
      'username_password_secret_arn': usernamePasswordSecretArn!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration({
    required this.workgroupArn,
    this.authConfiguration,
  });

  final TfArg<String> workgroupArn;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration
  >?
  authConfiguration;

  Map<String, Object?> encode() => {
    'workgroup_arn': workgroupArn.toTfJson(),
    if (authConfiguration != null)
      'auth_configuration': [for (final e in authConfiguration!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration.auth_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration({
    required this.type,
    this.usernamePasswordSecretArn,
  });

  final TfArg<String> type;

  final TfArg<String>? usernamePasswordSecretArn;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (usernamePasswordSecretArn != null)
      'username_password_secret_arn': usernamePasswordSecretArn!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration({
    this.executionTimeoutSeconds,
    this.generationContext,
  });

  final TfArg<num>? executionTimeoutSeconds;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext
  >?
  generationContext;

  Map<String, Object?> encode() => {
    if (executionTimeoutSeconds != null)
      'execution_timeout_seconds': executionTimeoutSeconds!.toTfJson(),
    if (generationContext != null)
      'generation_context': [for (final e in generationContext!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext({
    this.curatedQuery,
    this.table,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery
  >?
  curatedQuery;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable
  >?
  table;

  Map<String, Object?> encode() => {
    if (curatedQuery != null)
      'curated_query': [for (final e in curatedQuery!) e.encode()],
    if (table != null) 'table': [for (final e in table!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_query` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextCuratedQuery({
    required this.naturalLanguage,
    required this.sql,
  });

  final TfArg<String> naturalLanguage;

  final TfArg<String> sql;

  Map<String, Object?> encode() => {
    'natural_language': naturalLanguage.toTfJson(),
    'sql': sql.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.table` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTable({
    this.description,
    this.inclusion,
    required this.name,
    this.column,
  });

  final TfArg<String>? description;

  final TfArg<String>? inclusion;

  final TfArg<String> name;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn
  >?
  column;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (inclusion != null) 'inclusion': inclusion!.toTfJson(),
    'name': name.toTfJson(),
    if (column != null) 'column': [for (final e in column!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.table.column` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContextTableColumn({
    this.description,
    this.inclusion,
    this.name,
  });

  final TfArg<String>? description;

  final TfArg<String>? inclusion;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (inclusion != null) 'inclusion': inclusion!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration({
    required this.type,
    this.awsDataCatalogConfiguration,
    this.redshiftConfiguration,
  });

  final TfArg<String> type;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration
  >?
  awsDataCatalogConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration
  >?
  redshiftConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (awsDataCatalogConfiguration != null)
      'aws_data_catalog_configuration': [
        for (final e in awsDataCatalogConfiguration!) e.encode(),
      ],
    if (redshiftConfiguration != null)
      'redshift_configuration': [
        for (final e in redshiftConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configuration.aws_data_catalog_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationAwsDataCatalogConfiguration({
    required this.tableNames,
  });

  final TfArg<List<Object?>> tableNames;

  Map<String, Object?> encode() => {'table_names': tableNames.toTfJson()};
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configuration.redshift_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfiguration({
    required this.databaseName,
  });

  final TfArg<String> databaseName;

  Map<String, Object?> encode() => {'database_name': databaseName.toTfJson()};
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration({
    required this.embeddingModelArn,
    this.embeddingModelConfiguration,
    this.supplementalDataStorageConfiguration,
  });

  final TfArg<String> embeddingModelArn;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration
  >?
  embeddingModelConfiguration;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration
  >?
  supplementalDataStorageConfiguration;

  Map<String, Object?> encode() => {
    'embedding_model_arn': embeddingModelArn.toTfJson(),
    if (embeddingModelConfiguration != null)
      'embedding_model_configuration': [
        for (final e in embeddingModelConfiguration!) e.encode(),
      ],
    if (supplementalDataStorageConfiguration != null)
      'supplemental_data_storage_configuration': [
        for (final e in supplementalDataStorageConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration({
    this.bedrockEmbeddingModelConfiguration,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration
  >?
  bedrockEmbeddingModelConfiguration;

  Map<String, Object?> encode() => {
    if (bedrockEmbeddingModelConfiguration != null)
      'bedrock_embedding_model_configuration': [
        for (final e in bedrockEmbeddingModelConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration({
    this.dimensions,
    this.embeddingDataType,
    this.audio,
    this.video,
  });

  final TfArg<num>? dimensions;

  final TfArg<String>? embeddingDataType;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio
  >?
  audio;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo
  >?
  video;

  Map<String, Object?> encode() => {
    if (dimensions != null) 'dimensions': dimensions!.toTfJson(),
    if (embeddingDataType != null)
      'embedding_data_type': embeddingDataType!.toTfJson(),
    if (audio != null) 'audio': [for (final e in audio!) e.encode()],
    if (video != null) 'video': [for (final e in video!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudio({
    this.segmentationConfiguration,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration
  >?
  segmentationConfiguration;

  Map<String, Object?> encode() => {
    if (segmentationConfiguration != null)
      'segmentation_configuration': [
        for (final e in segmentationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio.segmentation_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfiguration({
    required this.fixedLengthDuration,
  });

  final TfArg<num> fixedLengthDuration;

  Map<String, Object?> encode() => {
    'fixed_length_duration': fixedLengthDuration.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideo({
    this.segmentationConfiguration,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration
  >?
  segmentationConfiguration;

  Map<String, Object?> encode() => {
    if (segmentationConfiguration != null)
      'segmentation_configuration': [
        for (final e in segmentationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video.segmentation_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfiguration({
    required this.fixedLengthDuration,
  });

  final TfArg<num> fixedLengthDuration;

  Map<String, Object?> encode() => {
    'fixed_length_duration': fixedLengthDuration.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration({
    this.storageLocation,
  });

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation
  >?
  storageLocation;

  Map<String, Object?> encode() => {
    if (storageLocation != null)
      'storage_location': [for (final e in storageLocation!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_location` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocation({
    required this.type,
    this.s3Location,
  });

  final TfArg<String> type;

  final List<
    BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location
  >?
  s3Location;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (s3Location != null)
      's3_location': [for (final e in s3Location!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_location.s3_location` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location {
  const BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationStorageLocationS3Location({
    required this.uri,
  });

  final TfArg<String> uri;

  Map<String, Object?> encode() => {'uri': uri.toTfJson()};
}

/// Typed helper for the `storage_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfiguration {
  const BedrockagentKnowledgeBaseStorageConfiguration({
    required this.type,
    this.mongoDbAtlasConfiguration,
    this.neptuneAnalyticsConfiguration,
    this.opensearchManagedClusterConfiguration,
    this.opensearchServerlessConfiguration,
    this.pineconeConfiguration,
    this.rdsConfiguration,
    this.redisEnterpriseCloudConfiguration,
    this.s3VectorsConfiguration,
  });

  final TfArg<String> type;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration
  >?
  mongoDbAtlasConfiguration;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration
  >?
  neptuneAnalyticsConfiguration;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration
  >?
  opensearchManagedClusterConfiguration;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration
  >?
  opensearchServerlessConfiguration;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationPineconeConfiguration
  >?
  pineconeConfiguration;

  final List<BedrockagentKnowledgeBaseStorageConfigurationRdsConfiguration>?
  rdsConfiguration;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration
  >?
  redisEnterpriseCloudConfiguration;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationS3VectorsConfiguration
  >?
  s3VectorsConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (mongoDbAtlasConfiguration != null)
      'mongo_db_atlas_configuration': [
        for (final e in mongoDbAtlasConfiguration!) e.encode(),
      ],
    if (neptuneAnalyticsConfiguration != null)
      'neptune_analytics_configuration': [
        for (final e in neptuneAnalyticsConfiguration!) e.encode(),
      ],
    if (opensearchManagedClusterConfiguration != null)
      'opensearch_managed_cluster_configuration': [
        for (final e in opensearchManagedClusterConfiguration!) e.encode(),
      ],
    if (opensearchServerlessConfiguration != null)
      'opensearch_serverless_configuration': [
        for (final e in opensearchServerlessConfiguration!) e.encode(),
      ],
    if (pineconeConfiguration != null)
      'pinecone_configuration': [
        for (final e in pineconeConfiguration!) e.encode(),
      ],
    if (rdsConfiguration != null)
      'rds_configuration': [for (final e in rdsConfiguration!) e.encode()],
    if (redisEnterpriseCloudConfiguration != null)
      'redis_enterprise_cloud_configuration': [
        for (final e in redisEnterpriseCloudConfiguration!) e.encode(),
      ],
    if (s3VectorsConfiguration != null)
      's3_vectors_configuration': [
        for (final e in s3VectorsConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `storage_configuration.mongo_db_atlas_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationMongoDbAtlasConfiguration({
    required this.collectionName,
    required this.credentialsSecretArn,
    required this.databaseName,
    required this.endpoint,
    this.endpointServiceName,
    this.textIndexName,
    required this.vectorIndexName,
    this.fieldMapping,
  });

  final TfArg<String> collectionName;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> databaseName;

  final TfArg<String> endpoint;

  final TfArg<String>? endpointServiceName;

  final TfArg<String>? textIndexName;

  final TfArg<String> vectorIndexName;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping
  >?
  fieldMapping;

  Map<String, Object?> encode() => {
    'collection_name': collectionName.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'endpoint': endpoint.toTfJson(),
    if (endpointServiceName != null)
      'endpoint_service_name': endpointServiceName!.toTfJson(),
    if (textIndexName != null) 'text_index_name': textIndexName!.toTfJson(),
    'vector_index_name': vectorIndexName.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.mongo_db_atlas_configuration.field_mapping` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseStorageConfigurationMongoDbAtlasConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
    required this.vectorField,
  });

  final TfArg<String> metadataField;

  final TfArg<String> textField;

  final TfArg<String> vectorField;

  Map<String, Object?> encode() => {
    'metadata_field': metadataField.toTfJson(),
    'text_field': textField.toTfJson(),
    'vector_field': vectorField.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.neptune_analytics_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfiguration({
    required this.graphArn,
    this.fieldMapping,
  });

  final TfArg<String> graphArn;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping
  >?
  fieldMapping;

  Map<String, Object?> encode() => {
    'graph_arn': graphArn.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.neptune_analytics_configuration.field_mapping` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
  });

  final TfArg<String> metadataField;

  final TfArg<String> textField;

  Map<String, Object?> encode() => {
    'metadata_field': metadataField.toTfJson(),
    'text_field': textField.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.opensearch_managed_cluster_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration({
    required this.domainArn,
    required this.domainEndpoint,
    required this.vectorIndexName,
    this.fieldMapping,
  });

  final TfArg<String> domainArn;

  final TfArg<String> domainEndpoint;

  final TfArg<String> vectorIndexName;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping
  >?
  fieldMapping;

  Map<String, Object?> encode() => {
    'domain_arn': domainArn.toTfJson(),
    'domain_endpoint': domainEndpoint.toTfJson(),
    'vector_index_name': vectorIndexName.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.opensearch_managed_cluster_configuration.field_mapping` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
    required this.vectorField,
  });

  final TfArg<String> metadataField;

  final TfArg<String> textField;

  final TfArg<String> vectorField;

  Map<String, Object?> encode() => {
    'metadata_field': metadataField.toTfJson(),
    'text_field': textField.toTfJson(),
    'vector_field': vectorField.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.opensearch_serverless_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration({
    required this.collectionArn,
    required this.vectorIndexName,
    this.fieldMapping,
  });

  final TfArg<String> collectionArn;

  final TfArg<String> vectorIndexName;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping
  >?
  fieldMapping;

  Map<String, Object?> encode() => {
    'collection_arn': collectionArn.toTfJson(),
    'vector_index_name': vectorIndexName.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.opensearch_serverless_configuration.field_mapping` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
    required this.vectorField,
  });

  final TfArg<String> metadataField;

  final TfArg<String> textField;

  final TfArg<String> vectorField;

  Map<String, Object?> encode() => {
    'metadata_field': metadataField.toTfJson(),
    'text_field': textField.toTfJson(),
    'vector_field': vectorField.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.pinecone_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationPineconeConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationPineconeConfiguration({
    required this.connectionString,
    required this.credentialsSecretArn,
    this.namespace,
    this.fieldMapping,
  });

  final TfArg<String> connectionString;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String>? namespace;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping
  >?
  fieldMapping;

  Map<String, Object?> encode() => {
    'connection_string': connectionString.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.pinecone_configuration.field_mapping` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
  });

  final TfArg<String> metadataField;

  final TfArg<String> textField;

  Map<String, Object?> encode() => {
    'metadata_field': metadataField.toTfJson(),
    'text_field': textField.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.rds_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationRdsConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationRdsConfiguration({
    required this.credentialsSecretArn,
    required this.databaseName,
    required this.resourceArn,
    required this.tableName,
    this.fieldMapping,
  });

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> databaseName;

  final TfArg<String> resourceArn;

  final TfArg<String> tableName;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping
  >?
  fieldMapping;

  Map<String, Object?> encode() => {
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'resource_arn': resourceArn.toTfJson(),
    'table_name': tableName.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.rds_configuration.field_mapping` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping({
    this.customMetadataField,
    required this.metadataField,
    required this.primaryKeyField,
    required this.textField,
    required this.vectorField,
  });

  final TfArg<String>? customMetadataField;

  final TfArg<String> metadataField;

  final TfArg<String> primaryKeyField;

  final TfArg<String> textField;

  final TfArg<String> vectorField;

  Map<String, Object?> encode() => {
    if (customMetadataField != null)
      'custom_metadata_field': customMetadataField!.toTfJson(),
    'metadata_field': metadataField.toTfJson(),
    'primary_key_field': primaryKeyField.toTfJson(),
    'text_field': textField.toTfJson(),
    'vector_field': vectorField.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.redis_enterprise_cloud_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration({
    required this.credentialsSecretArn,
    required this.endpoint,
    required this.vectorIndexName,
    this.fieldMapping,
  });

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> endpoint;

  final TfArg<String> vectorIndexName;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping
  >?
  fieldMapping;

  Map<String, Object?> encode() => {
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'endpoint': endpoint.toTfJson(),
    'vector_index_name': vectorIndexName.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.redis_enterprise_cloud_configuration.field_mapping` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping({
    this.metadataField,
    this.textField,
    this.vectorField,
  });

  final TfArg<String>? metadataField;

  final TfArg<String>? textField;

  final TfArg<String>? vectorField;

  Map<String, Object?> encode() => {
    if (metadataField != null) 'metadata_field': metadataField!.toTfJson(),
    if (textField != null) 'text_field': textField!.toTfJson(),
    if (vectorField != null) 'vector_field': vectorField!.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.s3_vectors_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationS3VectorsConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationS3VectorsConfiguration({
    this.indexArn,
    this.indexName,
    this.vectorBucketArn,
  });

  final TfArg<String>? indexArn;

  final TfArg<String>? indexName;

  final TfArg<String>? vectorBucketArn;

  Map<String, Object?> encode() => {
    if (indexArn != null) 'index_arn': indexArn!.toTfJson(),
    if (indexName != null) 'index_name': indexName!.toTfJson(),
    if (vectorBucketArn != null)
      'vector_bucket_arn': vectorBucketArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockagent_knowledge_base`.
final class AwsBedrockagentKnowledgeBase extends Resource {
  static const String tfType = 'aws_bedrockagent_knowledge_base';

  AwsBedrockagentKnowledgeBase({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentKnowledgeBaseKnowledgeBaseConfiguration>?
    knowledgeBaseConfiguration,
    List<BedrockagentKnowledgeBaseStorageConfiguration>? storageConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (knowledgeBaseConfiguration != null)
             'knowledge_base_configuration': TfArg.literal([
               for (final e in knowledgeBaseConfiguration) e.encode(),
             ]),
           if (storageConfiguration != null)
             'storage_configuration': TfArg.literal([
               for (final e in storageConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockagentKnowledgeBaseSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `failure_reasons` attribute.
  TfRef<List<String>> get failureReasons =>
      TfRef.attribute<List<String>>(this, 'failure_reasons');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
