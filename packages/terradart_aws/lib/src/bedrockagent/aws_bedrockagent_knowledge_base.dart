// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockagent_knowledge_base`.
const Set<String> _awsBedrockagentKnowledgeBaseSensitive = <String>{};

/// Typed helper for the `knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseConfiguration({
    required this.type,
    this.kendraKnowledgeBaseConfiguration,
    this.managedKnowledgeBaseConfiguration,
    this.sqlKnowledgeBaseConfiguration,
    this.vectorKnowledgeBaseConfiguration,
  });

  final TfArg<BedrockagentKnowledgeBaseConfigurationType> type;

  final List<BedrockagentKnowledgeBaseKendraKnowledgeBaseConfiguration>?
  kendraKnowledgeBaseConfiguration;

  final List<BedrockagentKnowledgeBaseManagedKnowledgeBaseConfiguration>?
  managedKnowledgeBaseConfiguration;

  final List<BedrockagentKnowledgeBaseSqlKnowledgeBaseConfiguration>?
  sqlKnowledgeBaseConfiguration;

  final List<BedrockagentKnowledgeBaseVectorKnowledgeBaseConfiguration>?
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

/// `type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseConfigurationType implements TerraformEnum {
  vector('VECTOR'),
  kendra('KENDRA'),
  sql('SQL'),
  managed('MANAGED');

  const BedrockagentKnowledgeBaseConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.kendra_knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseKendraKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseKendraKnowledgeBaseConfiguration({
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
final class BedrockagentKnowledgeBaseManagedKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseManagedKnowledgeBaseConfiguration({
    this.embeddingModelArn,
    this.embeddingModelType,
    this.embeddingModelConfiguration,
    this.serverSideEncryptionConfiguration,
  });

  final TfArg<String>? embeddingModelArn;

  final TfArg<BedrockagentKnowledgeBaseEmbeddingModelType>? embeddingModelType;

  final List<BedrockagentKnowledgeBaseEmbeddingModelConfiguration>?
  embeddingModelConfiguration;

  final List<BedrockagentKnowledgeBaseServerSideEncryptionConfiguration>?
  serverSideEncryptionConfiguration;

  Map<String, Object?> encode() => {
    'embedding_model_arn': ?embeddingModelArn?.toTfJson(),
    'embedding_model_type': ?embeddingModelType?.toTfJson(),
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

/// `embedding_model_type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseEmbeddingModelType implements TerraformEnum {
  custom('CUSTOM'),
  managed('MANAGED');

  const BedrockagentKnowledgeBaseEmbeddingModelType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentKnowledgeBaseEmbeddingModelConfiguration {
  const BedrockagentKnowledgeBaseEmbeddingModelConfiguration({
    this.bedrockEmbeddingModelConfiguration,
  });

  final List<BedrockagentKnowledgeBaseBedrockEmbeddingModelConfiguration>?
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentKnowledgeBaseBedrockEmbeddingModelConfiguration {
  const BedrockagentKnowledgeBaseBedrockEmbeddingModelConfiguration({
    this.dimensions,
    this.embeddingDataType,
    this.audio,
    this.video,
  });

  final TfArg<num>? dimensions;

  final TfArg<BedrockagentKnowledgeBaseEmbeddingDataType>? embeddingDataType;

  final List<BedrockagentKnowledgeBaseAudio>? audio;

  final List<BedrockagentKnowledgeBaseVideo>? video;

  Map<String, Object?> encode() => {
    'dimensions': ?dimensions?.toTfJson(),
    'embedding_data_type': ?embeddingDataType?.toTfJson(),
    if (audio != null) 'audio': [for (final e in audio!) e.encode()],
    if (video != null) 'video': [for (final e in video!) e.encode()],
  };
}

/// `embedding_data_type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseEmbeddingDataType implements TerraformEnum {
  float32('FLOAT32'),
  binary('BINARY');

  const BedrockagentKnowledgeBaseEmbeddingDataType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.audio` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentKnowledgeBaseAudio {
  const BedrockagentKnowledgeBaseAudio({this.segmentationConfiguration});

  final List<BedrockagentKnowledgeBaseSegmentationConfiguration>?
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentKnowledgeBaseSegmentationConfiguration {
  const BedrockagentKnowledgeBaseSegmentationConfiguration({
    required this.fixedLengthDuration,
  });

  final TfArg<num> fixedLengthDuration;

  Map<String, Object?> encode() => {
    'fixed_length_duration': fixedLengthDuration.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.embedding_model_configuration.bedrock_embedding_model_configuration.video` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentKnowledgeBaseVideo {
  const BedrockagentKnowledgeBaseVideo({this.segmentationConfiguration});

  final List<BedrockagentKnowledgeBaseSegmentationConfiguration>?
  segmentationConfiguration;

  Map<String, Object?> encode() => {
    if (segmentationConfiguration != null)
      'segmentation_configuration': [
        for (final e in segmentationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `knowledge_base_configuration.managed_knowledge_base_configuration.server_side_encryption_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseServerSideEncryptionConfiguration {
  const BedrockagentKnowledgeBaseServerSideEncryptionConfiguration({
    this.kmsKeyArn,
  });

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseSqlKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseSqlKnowledgeBaseConfiguration({
    required this.type,
    this.redshiftConfiguration,
  });

  final TfArg<BedrockagentKnowledgeBaseSqlKnowledgeBaseConfigurationType> type;

  final List<BedrockagentKnowledgeBaseRedshiftConfiguration>?
  redshiftConfiguration;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (redshiftConfiguration != null)
      'redshift_configuration': [
        for (final e in redshiftConfiguration!) e.encode(),
      ],
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseSqlKnowledgeBaseConfigurationType
    implements TerraformEnum {
  redshift('REDSHIFT');

  const BedrockagentKnowledgeBaseSqlKnowledgeBaseConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseRedshiftConfiguration {
  const BedrockagentKnowledgeBaseRedshiftConfiguration({
    this.queryEngineConfiguration,
    this.queryGenerationConfiguration,
    this.storageConfiguration,
  });

  final List<BedrockagentKnowledgeBaseQueryEngineConfiguration>?
  queryEngineConfiguration;

  final List<BedrockagentKnowledgeBaseQueryGenerationConfiguration>?
  queryGenerationConfiguration;

  final List<
    BedrockagentKnowledgeBaseRedshiftConfigurationStorageConfiguration
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
final class BedrockagentKnowledgeBaseQueryEngineConfiguration {
  const BedrockagentKnowledgeBaseQueryEngineConfiguration({
    required this.type,
    this.provisionedConfiguration,
    this.serverlessConfiguration,
  });

  final TfArg<BedrockagentKnowledgeBaseQueryEngineConfigurationType> type;

  final List<BedrockagentKnowledgeBaseProvisionedConfiguration>?
  provisionedConfiguration;

  final List<BedrockagentKnowledgeBaseServerlessConfiguration>?
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

/// `type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseQueryEngineConfigurationType
    implements TerraformEnum {
  serverless('SERVERLESS'),
  provisioned('PROVISIONED');

  const BedrockagentKnowledgeBaseQueryEngineConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.provisioned_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseProvisionedConfiguration {
  const BedrockagentKnowledgeBaseProvisionedConfiguration({
    required this.clusterIdentifier,
    this.authConfiguration,
  });

  final TfArg<String> clusterIdentifier;

  final List<
    BedrockagentKnowledgeBaseProvisionedConfigurationAuthConfiguration
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
final class BedrockagentKnowledgeBaseProvisionedConfigurationAuthConfiguration {
  const BedrockagentKnowledgeBaseProvisionedConfigurationAuthConfiguration({
    this.databaseUser,
    required this.type,
    this.usernamePasswordSecretArn,
  });

  final TfArg<String>? databaseUser;

  final TfArg<BedrockagentKnowledgeBaseProvisionedConfigurationType> type;

  final TfArg<String>? usernamePasswordSecretArn;

  Map<String, Object?> encode() => {
    'database_user': ?databaseUser?.toTfJson(),
    'type': type.toTfJson(),
    'username_password_secret_arn': ?usernamePasswordSecretArn?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseProvisionedConfigurationType
    implements TerraformEnum {
  iam('IAM'),
  usernamePassword('USERNAME_PASSWORD'),
  username('USERNAME');

  const BedrockagentKnowledgeBaseProvisionedConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_engine_configuration.serverless_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseServerlessConfiguration {
  const BedrockagentKnowledgeBaseServerlessConfiguration({
    required this.workgroupArn,
    this.authConfiguration,
  });

  final TfArg<String> workgroupArn;

  final List<BedrockagentKnowledgeBaseServerlessConfigurationAuthConfiguration>?
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
final class BedrockagentKnowledgeBaseServerlessConfigurationAuthConfiguration {
  const BedrockagentKnowledgeBaseServerlessConfigurationAuthConfiguration({
    required this.type,
    this.usernamePasswordSecretArn,
  });

  final TfArg<BedrockagentKnowledgeBaseServerlessConfigurationType> type;

  final TfArg<String>? usernamePasswordSecretArn;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'username_password_secret_arn': ?usernamePasswordSecretArn?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseServerlessConfigurationType
    implements TerraformEnum {
  iam('IAM'),
  usernamePassword('USERNAME_PASSWORD');

  const BedrockagentKnowledgeBaseServerlessConfigurationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseQueryGenerationConfiguration {
  const BedrockagentKnowledgeBaseQueryGenerationConfiguration({
    this.executionTimeoutSeconds,
    this.generationContext,
  });

  final TfArg<num>? executionTimeoutSeconds;

  final List<BedrockagentKnowledgeBaseGenerationContext>? generationContext;

  Map<String, Object?> encode() => {
    'execution_timeout_seconds': ?executionTimeoutSeconds?.toTfJson(),
    if (generationContext != null)
      'generation_context': [for (final e in generationContext!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseGenerationContext {
  const BedrockagentKnowledgeBaseGenerationContext({
    this.curatedQuery,
    this.table,
  });

  final List<BedrockagentKnowledgeBaseCuratedQuery>? curatedQuery;

  final List<BedrockagentKnowledgeBaseTable>? table;

  Map<String, Object?> encode() => {
    if (curatedQuery != null)
      'curated_query': [for (final e in curatedQuery!) e.encode()],
    if (table != null) 'table': [for (final e in table!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.curated_query` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseCuratedQuery {
  const BedrockagentKnowledgeBaseCuratedQuery({
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
final class BedrockagentKnowledgeBaseTable {
  const BedrockagentKnowledgeBaseTable({
    this.description,
    this.inclusion,
    required this.name,
    this.column,
  });

  final TfArg<String>? description;

  final TfArg<BedrockagentKnowledgeBaseInclusion>? inclusion;

  final TfArg<String> name;

  final List<BedrockagentKnowledgeBaseColumn>? column;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'inclusion': ?inclusion?.toTfJson(),
    'name': name.toTfJson(),
    if (column != null) 'column': [for (final e in column!) e.encode()],
  };
}

/// `inclusion` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseInclusion implements TerraformEnum {
  include('INCLUDE'),
  exclude('EXCLUDE');

  const BedrockagentKnowledgeBaseInclusion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.query_generation_configuration.generation_context.table.column` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseColumn {
  const BedrockagentKnowledgeBaseColumn({
    this.description,
    this.inclusion,
    this.name,
  });

  final TfArg<String>? description;

  final TfArg<BedrockagentKnowledgeBaseInclusion>? inclusion;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'inclusion': ?inclusion?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseRedshiftConfigurationStorageConfiguration {
  const BedrockagentKnowledgeBaseRedshiftConfigurationStorageConfiguration({
    required this.type,
    this.awsDataCatalogConfiguration,
    this.redshiftConfiguration,
  });

  final TfArg<BedrockagentKnowledgeBaseRedshiftConfigurationType> type;

  final List<BedrockagentKnowledgeBaseAwsDataCatalogConfiguration>?
  awsDataCatalogConfiguration;

  final List<
    BedrockagentKnowledgeBaseStorageConfigurationRedshiftConfiguration
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

/// `type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseRedshiftConfigurationType
    implements TerraformEnum {
  redshift('REDSHIFT'),
  awsDataCatalog('AWS_DATA_CATALOG');

  const BedrockagentKnowledgeBaseRedshiftConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configuration.aws_data_catalog_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseAwsDataCatalogConfiguration {
  const BedrockagentKnowledgeBaseAwsDataCatalogConfiguration({
    required this.tableNames,
  });

  final TfArg<List<String>> tableNames;

  Map<String, Object?> encode() => {'table_names': tableNames.toTfJson()};
}

/// Typed helper for the `knowledge_base_configuration.sql_knowledge_base_configuration.redshift_configuration.storage_configuration.redshift_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageConfigurationRedshiftConfiguration {
  const BedrockagentKnowledgeBaseStorageConfigurationRedshiftConfiguration({
    required this.databaseName,
  });

  final TfArg<String> databaseName;

  Map<String, Object?> encode() => {'database_name': databaseName.toTfJson()};
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseVectorKnowledgeBaseConfiguration {
  const BedrockagentKnowledgeBaseVectorKnowledgeBaseConfiguration({
    required this.embeddingModelArn,
    this.embeddingModelConfiguration,
    this.supplementalDataStorageConfiguration,
  });

  final TfArg<String> embeddingModelArn;

  final List<BedrockagentKnowledgeBaseEmbeddingModelConfiguration>?
  embeddingModelConfiguration;

  final List<BedrockagentKnowledgeBaseSupplementalDataStorageConfiguration>?
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

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseSupplementalDataStorageConfiguration {
  const BedrockagentKnowledgeBaseSupplementalDataStorageConfiguration({
    this.storageLocation,
  });

  final List<BedrockagentKnowledgeBaseStorageLocation>? storageLocation;

  Map<String, Object?> encode() => {
    if (storageLocation != null)
      'storage_location': [for (final e in storageLocation!) e.encode()],
  };
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_location` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseStorageLocation {
  const BedrockagentKnowledgeBaseStorageLocation({
    required this.type,
    this.s3Location,
  });

  final TfArg<BedrockagentKnowledgeBaseStorageLocationType> type;

  final List<BedrockagentKnowledgeBaseS3Location>? s3Location;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (s3Location != null)
      's3_location': [for (final e in s3Location!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseStorageLocationType implements TerraformEnum {
  s3('S3');

  const BedrockagentKnowledgeBaseStorageLocationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `knowledge_base_configuration.vector_knowledge_base_configuration.supplemental_data_storage_configuration.storage_location.s3_location` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseS3Location {
  const BedrockagentKnowledgeBaseS3Location({required this.uri});

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

  final TfArg<BedrockagentKnowledgeBaseStorageConfigurationType> type;

  final List<BedrockagentKnowledgeBaseMongoDbAtlasConfiguration>?
  mongoDbAtlasConfiguration;

  final List<BedrockagentKnowledgeBaseNeptuneAnalyticsConfiguration>?
  neptuneAnalyticsConfiguration;

  final List<BedrockagentKnowledgeBaseOpensearchManagedClusterConfiguration>?
  opensearchManagedClusterConfiguration;

  final List<BedrockagentKnowledgeBaseOpensearchServerlessConfiguration>?
  opensearchServerlessConfiguration;

  final List<BedrockagentKnowledgeBasePineconeConfiguration>?
  pineconeConfiguration;

  final List<BedrockagentKnowledgeBaseRdsConfiguration>? rdsConfiguration;

  final List<BedrockagentKnowledgeBaseRedisEnterpriseCloudConfiguration>?
  redisEnterpriseCloudConfiguration;

  final List<BedrockagentKnowledgeBaseS3VectorsConfiguration>?
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

/// `type` — derived from the provider schema description.
enum BedrockagentKnowledgeBaseStorageConfigurationType
    implements TerraformEnum {
  opensearchServerless('OPENSEARCH_SERVERLESS'),
  pinecone('PINECONE'),
  redisEnterpriseCloud('REDIS_ENTERPRISE_CLOUD'),
  rds('RDS'),
  mongoDbAtlas('MONGO_DB_ATLAS'),
  neptuneAnalytics('NEPTUNE_ANALYTICS'),
  opensearchManagedCluster('OPENSEARCH_MANAGED_CLUSTER'),
  s3Vectors('S3_VECTORS');

  const BedrockagentKnowledgeBaseStorageConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `storage_configuration.mongo_db_atlas_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseMongoDbAtlasConfiguration {
  const BedrockagentKnowledgeBaseMongoDbAtlasConfiguration({
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

  final List<BedrockagentKnowledgeBaseMongoDbAtlasConfigurationFieldMapping>?
  fieldMapping;

  Map<String, Object?> encode() => {
    'collection_name': collectionName.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'endpoint': endpoint.toTfJson(),
    'endpoint_service_name': ?endpointServiceName?.toTfJson(),
    'text_index_name': ?textIndexName?.toTfJson(),
    'vector_index_name': vectorIndexName.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.mongo_db_atlas_configuration.field_mapping` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentKnowledgeBaseMongoDbAtlasConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseMongoDbAtlasConfigurationFieldMapping({
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
final class BedrockagentKnowledgeBaseNeptuneAnalyticsConfiguration {
  const BedrockagentKnowledgeBaseNeptuneAnalyticsConfiguration({
    required this.graphArn,
    this.fieldMapping,
  });

  final TfArg<String> graphArn;

  final List<
    BedrockagentKnowledgeBaseNeptuneAnalyticsConfigurationFieldMapping
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
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentKnowledgeBaseNeptuneAnalyticsConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseNeptuneAnalyticsConfigurationFieldMapping({
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
final class BedrockagentKnowledgeBaseOpensearchManagedClusterConfiguration {
  const BedrockagentKnowledgeBaseOpensearchManagedClusterConfiguration({
    required this.domainArn,
    required this.domainEndpoint,
    required this.vectorIndexName,
    this.fieldMapping,
  });

  final TfArg<String> domainArn;

  final TfArg<String> domainEndpoint;

  final TfArg<String> vectorIndexName;

  final List<BedrockagentKnowledgeBaseMongoDbAtlasConfigurationFieldMapping>?
  fieldMapping;

  Map<String, Object?> encode() => {
    'domain_arn': domainArn.toTfJson(),
    'domain_endpoint': domainEndpoint.toTfJson(),
    'vector_index_name': vectorIndexName.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.opensearch_serverless_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseOpensearchServerlessConfiguration {
  const BedrockagentKnowledgeBaseOpensearchServerlessConfiguration({
    required this.collectionArn,
    required this.vectorIndexName,
    this.fieldMapping,
  });

  final TfArg<String> collectionArn;

  final TfArg<String> vectorIndexName;

  final List<BedrockagentKnowledgeBaseMongoDbAtlasConfigurationFieldMapping>?
  fieldMapping;

  Map<String, Object?> encode() => {
    'collection_arn': collectionArn.toTfJson(),
    'vector_index_name': vectorIndexName.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.pinecone_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBasePineconeConfiguration {
  const BedrockagentKnowledgeBasePineconeConfiguration({
    required this.connectionString,
    required this.credentialsSecretArn,
    this.namespace,
    this.fieldMapping,
  });

  final TfArg<String> connectionString;

  final TfArg<String> credentialsSecretArn;

  final TfArg<String>? namespace;

  final List<
    BedrockagentKnowledgeBaseNeptuneAnalyticsConfigurationFieldMapping
  >?
  fieldMapping;

  Map<String, Object?> encode() => {
    'connection_string': connectionString.toTfJson(),
    'credentials_secret_arn': credentialsSecretArn.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
    if (fieldMapping != null)
      'field_mapping': [for (final e in fieldMapping!) e.encode()],
  };
}

/// Typed helper for the `storage_configuration.rds_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseRdsConfiguration {
  const BedrockagentKnowledgeBaseRdsConfiguration({
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

  final List<BedrockagentKnowledgeBaseRdsConfigurationFieldMapping>?
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
final class BedrockagentKnowledgeBaseRdsConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseRdsConfigurationFieldMapping({
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
    'custom_metadata_field': ?customMetadataField?.toTfJson(),
    'metadata_field': metadataField.toTfJson(),
    'primary_key_field': primaryKeyField.toTfJson(),
    'text_field': textField.toTfJson(),
    'vector_field': vectorField.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.redis_enterprise_cloud_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseRedisEnterpriseCloudConfiguration {
  const BedrockagentKnowledgeBaseRedisEnterpriseCloudConfiguration({
    required this.credentialsSecretArn,
    required this.endpoint,
    required this.vectorIndexName,
    this.fieldMapping,
  });

  final TfArg<String> credentialsSecretArn;

  final TfArg<String> endpoint;

  final TfArg<String> vectorIndexName;

  final List<
    BedrockagentKnowledgeBaseRedisEnterpriseCloudConfigurationFieldMapping
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
final class BedrockagentKnowledgeBaseRedisEnterpriseCloudConfigurationFieldMapping {
  const BedrockagentKnowledgeBaseRedisEnterpriseCloudConfigurationFieldMapping({
    this.metadataField,
    this.textField,
    this.vectorField,
  });

  final TfArg<String>? metadataField;

  final TfArg<String>? textField;

  final TfArg<String>? vectorField;

  Map<String, Object?> encode() => {
    'metadata_field': ?metadataField?.toTfJson(),
    'text_field': ?textField?.toTfJson(),
    'vector_field': ?vectorField?.toTfJson(),
  };
}

/// Typed helper for the `storage_configuration.s3_vectors_configuration` block of
/// `aws_bedrockagent_knowledge_base` (derived from provider schema).
@immutable
final class BedrockagentKnowledgeBaseS3VectorsConfiguration {
  const BedrockagentKnowledgeBaseS3VectorsConfiguration({
    this.indexArn,
    this.indexName,
    this.vectorBucketArn,
  });

  final TfArg<String>? indexArn;

  final TfArg<String>? indexName;

  final TfArg<String>? vectorBucketArn;

  Map<String, Object?> encode() => {
    'index_arn': ?indexArn?.toTfJson(),
    'index_name': ?indexName?.toTfJson(),
    'vector_bucket_arn': ?vectorBucketArn?.toTfJson(),
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
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentKnowledgeBaseConfiguration>? knowledgeBaseConfiguration,
    List<BedrockagentKnowledgeBaseStorageConfiguration>? storageConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentKnowledgeBase>`.
  RefTo<AwsBedrockagentKnowledgeBase> get ref => RefTo.of(this);

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

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
