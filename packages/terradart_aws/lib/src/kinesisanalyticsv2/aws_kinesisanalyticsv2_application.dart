// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesisanalyticsv2_application`.
const Set<String> _awsKinesisanalyticsv2ApplicationSensitive = <String>{};

/// Typed helper for the `application_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfiguration({
    required this.applicationCodeConfiguration,
    this.applicationEncryptionConfiguration,
    this.applicationSnapshotConfiguration,
    this.environmentProperties,
    this.flinkApplicationConfiguration,
    this.runConfiguration,
    this.sqlApplicationConfiguration,
    this.vpcConfiguration,
  });

  final Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfiguration
  applicationCodeConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationEncryptionConfiguration?
  applicationEncryptionConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationSnapshotConfiguration?
  applicationSnapshotConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationEnvironmentProperties?
  environmentProperties;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfiguration?
  flinkApplicationConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfiguration?
  runConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfiguration?
  sqlApplicationConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationVpcConfiguration?
  vpcConfiguration;

  Map<String, Object?> encode() => {
    'application_code_configuration': applicationCodeConfiguration.encode(),
    if (applicationEncryptionConfiguration != null)
      'application_encryption_configuration':
          applicationEncryptionConfiguration!.encode(),
    if (applicationSnapshotConfiguration != null)
      'application_snapshot_configuration': applicationSnapshotConfiguration!
          .encode(),
    if (environmentProperties != null)
      'environment_properties': environmentProperties!.encode(),
    if (flinkApplicationConfiguration != null)
      'flink_application_configuration': flinkApplicationConfiguration!
          .encode(),
    if (runConfiguration != null)
      'run_configuration': runConfiguration!.encode(),
    if (sqlApplicationConfiguration != null)
      'sql_application_configuration': sqlApplicationConfiguration!.encode(),
    if (vpcConfiguration != null)
      'vpc_configuration': vpcConfiguration!.encode(),
  };
}

/// Typed helper for the `application_configuration.application_code_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfiguration({
    required this.codeContentType,
    this.codeContent,
  });

  final TfArg<String> codeContentType;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent?
  codeContent;

  Map<String, Object?> encode() => {
    'code_content_type': codeContentType.toTfJson(),
    if (codeContent != null) 'code_content': codeContent!.encode(),
  };
}

/// Typed helper for the `application_configuration.application_code_configuration.code_content` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContent({
    this.textContent,
    this.s3ContentLocation,
  });

  final TfArg<String>? textContent;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation?
  s3ContentLocation;

  Map<String, Object?> encode() => {
    if (textContent != null) 'text_content': textContent!.toTfJson(),
    if (s3ContentLocation != null)
      's3_content_location': s3ContentLocation!.encode(),
  };
}

/// Typed helper for the `application_configuration.application_code_configuration.code_content.s3_content_location` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation({
    required this.bucketArn,
    required this.fileKey,
    this.objectVersion,
  });

  final TfArg<String> bucketArn;

  final TfArg<String> fileKey;

  final TfArg<String>? objectVersion;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    'file_key': fileKey.toTfJson(),
    if (objectVersion != null) 'object_version': objectVersion!.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.application_encryption_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationEncryptionConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationEncryptionConfiguration({
    this.keyId,
    required this.keyType,
  });

  final TfArg<String>? keyId;

  final TfArg<String> keyType;

  Map<String, Object?> encode() => {
    if (keyId != null) 'key_id': keyId!.toTfJson(),
    'key_type': keyType.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.application_snapshot_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationSnapshotConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationApplicationSnapshotConfiguration({
    required this.snapshotsEnabled,
  });

  final TfArg<bool> snapshotsEnabled;

  Map<String, Object?> encode() => {
    'snapshots_enabled': snapshotsEnabled.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.environment_properties` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationEnvironmentProperties {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationEnvironmentProperties({
    required this.propertyGroup,
  });

  final List<
    Kinesisanalyticsv2ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup
  >
  propertyGroup;

  Map<String, Object?> encode() => {
    'property_group': [for (final e in propertyGroup) e.encode()],
  };
}

/// Typed helper for the `application_configuration.environment_properties.property_group` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroup({
    required this.propertyGroupId,
    required this.propertyMap,
  });

  final TfArg<String> propertyGroupId;

  final TfArg<Map<String, String>> propertyMap;

  Map<String, Object?> encode() => {
    'property_group_id': propertyGroupId.toTfJson(),
    'property_map': propertyMap.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.flink_application_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfiguration({
    this.checkpointConfiguration,
    this.monitoringConfiguration,
    this.parallelismConfiguration,
  });

  final Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration?
  checkpointConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration?
  monitoringConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration?
  parallelismConfiguration;

  Map<String, Object?> encode() => {
    if (checkpointConfiguration != null)
      'checkpoint_configuration': checkpointConfiguration!.encode(),
    if (monitoringConfiguration != null)
      'monitoring_configuration': monitoringConfiguration!.encode(),
    if (parallelismConfiguration != null)
      'parallelism_configuration': parallelismConfiguration!.encode(),
  };
}

/// Typed helper for the `application_configuration.flink_application_configuration.checkpoint_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration({
    this.checkpointInterval,
    this.checkpointingEnabled,
    required this.configurationType,
    this.minPauseBetweenCheckpoints,
  });

  final TfArg<num>? checkpointInterval;

  final TfArg<bool>? checkpointingEnabled;

  final TfArg<String> configurationType;

  final TfArg<num>? minPauseBetweenCheckpoints;

  Map<String, Object?> encode() => {
    if (checkpointInterval != null)
      'checkpoint_interval': checkpointInterval!.toTfJson(),
    if (checkpointingEnabled != null)
      'checkpointing_enabled': checkpointingEnabled!.toTfJson(),
    'configuration_type': configurationType.toTfJson(),
    if (minPauseBetweenCheckpoints != null)
      'min_pause_between_checkpoints': minPauseBetweenCheckpoints!.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.flink_application_configuration.monitoring_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration({
    required this.configurationType,
    this.logLevel,
    this.metricsLevel,
  });

  final TfArg<String> configurationType;

  final TfArg<String>? logLevel;

  final TfArg<String>? metricsLevel;

  Map<String, Object?> encode() => {
    'configuration_type': configurationType.toTfJson(),
    if (logLevel != null) 'log_level': logLevel!.toTfJson(),
    if (metricsLevel != null) 'metrics_level': metricsLevel!.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.flink_application_configuration.parallelism_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration({
    this.autoScalingEnabled,
    required this.configurationType,
    this.parallelism,
    this.parallelismPerKpu,
  });

  final TfArg<bool>? autoScalingEnabled;

  final TfArg<String> configurationType;

  final TfArg<num>? parallelism;

  final TfArg<num>? parallelismPerKpu;

  Map<String, Object?> encode() => {
    if (autoScalingEnabled != null)
      'auto_scaling_enabled': autoScalingEnabled!.toTfJson(),
    'configuration_type': configurationType.toTfJson(),
    if (parallelism != null) 'parallelism': parallelism!.toTfJson(),
    if (parallelismPerKpu != null)
      'parallelism_per_kpu': parallelismPerKpu!.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.run_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfiguration({
    this.applicationRestoreConfiguration,
    this.flinkRunConfiguration,
  });

  final Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration?
  applicationRestoreConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration?
  flinkRunConfiguration;

  Map<String, Object?> encode() => {
    if (applicationRestoreConfiguration != null)
      'application_restore_configuration': applicationRestoreConfiguration!
          .encode(),
    if (flinkRunConfiguration != null)
      'flink_run_configuration': flinkRunConfiguration!.encode(),
  };
}

/// Typed helper for the `application_configuration.run_configuration.application_restore_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration({
    this.applicationRestoreType,
    this.snapshotName,
  });

  final TfArg<String>? applicationRestoreType;

  final TfArg<String>? snapshotName;

  Map<String, Object?> encode() => {
    if (applicationRestoreType != null)
      'application_restore_type': applicationRestoreType!.toTfJson(),
    if (snapshotName != null) 'snapshot_name': snapshotName!.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.run_configuration.flink_run_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration({
    this.allowNonRestoredState,
  });

  final TfArg<bool>? allowNonRestoredState;

  Map<String, Object?> encode() => {
    if (allowNonRestoredState != null)
      'allow_non_restored_state': allowNonRestoredState!.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfiguration({
    this.input,
    this.output,
    this.referenceDataSource,
  });

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInput?
  input;

  final List<
    Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutput
  >?
  output;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource?
  referenceDataSource;

  Map<String, Object?> encode() => {
    if (input != null) 'input': input!.encode(),
    if (output != null) 'output': [for (final e in output!) e.encode()],
    if (referenceDataSource != null)
      'reference_data_source': referenceDataSource!.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInput {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInput({
    required this.namePrefix,
    this.inputParallelism,
    this.inputProcessingConfiguration,
    required this.inputSchema,
    this.inputStartingPositionConfiguration,
    this.kinesisFirehoseInput,
    this.kinesisStreamsInput,
  });

  final TfArg<String> namePrefix;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism?
  inputParallelism;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration?
  inputProcessingConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema
  inputSchema;

  final List<
    Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration
  >?
  inputStartingPositionConfiguration;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput?
  kinesisFirehoseInput;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput?
  kinesisStreamsInput;

  Map<String, Object?> encode() => {
    'name_prefix': namePrefix.toTfJson(),
    if (inputParallelism != null)
      'input_parallelism': inputParallelism!.encode(),
    if (inputProcessingConfiguration != null)
      'input_processing_configuration': inputProcessingConfiguration!.encode(),
    'input_schema': inputSchema.encode(),
    if (inputStartingPositionConfiguration != null)
      'input_starting_position_configuration': [
        for (final e in inputStartingPositionConfiguration!) e.encode(),
      ],
    if (kinesisFirehoseInput != null)
      'kinesis_firehose_input': kinesisFirehoseInput!.encode(),
    if (kinesisStreamsInput != null)
      'kinesis_streams_input': kinesisStreamsInput!.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_parallelism` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism({
    this.count,
  });

  final TfArg<num>? count;

  Map<String, Object?> encode() => {
    if (count != null) 'count': count!.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_processing_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfiguration({
    required this.inputLambdaProcessor,
  });

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfigurationInputLambdaProcessor
  inputLambdaProcessor;

  Map<String, Object?> encode() => {
    'input_lambda_processor': inputLambdaProcessor.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_processing_configuration.input_lambda_processor` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfigurationInputLambdaProcessor {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputProcessingConfigurationInputLambdaProcessor({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchema({
    this.recordEncoding,
    required this.recordColumn,
    required this.recordFormat,
  });

  final TfArg<String>? recordEncoding;

  final List<
    Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn
  >
  recordColumn;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat
  recordFormat;

  Map<String, Object?> encode() => {
    if (recordEncoding != null) 'record_encoding': recordEncoding!.toTfJson(),
    'record_column': [for (final e in recordColumn) e.encode()],
    'record_format': recordFormat.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema.record_column` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumn({
    this.mapping,
    required this.name,
    required this.sqlType,
  });

  final TfArg<String>? mapping;

  final TfArg<String> name;

  final TfArg<String> sqlType;

  Map<String, Object?> encode() => {
    if (mapping != null) 'mapping': mapping!.toTfJson(),
    'name': name.toTfJson(),
    'sql_type': sqlType.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema.record_format` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormat({
    required this.recordFormatType,
    required this.mappingParameters,
  });

  final TfArg<String> recordFormatType;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters
  mappingParameters;

  Map<String, Object?> encode() => {
    'record_format_type': recordFormatType.toTfJson(),
    'mapping_parameters': mappingParameters.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema.record_format.mapping_parameters` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParameters({
    this.csvMappingParameters,
    this.jsonMappingParameters,
  });

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters?
  csvMappingParameters;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters?
  jsonMappingParameters;

  Map<String, Object?> encode() => {
    if (csvMappingParameters != null)
      'csv_mapping_parameters': csvMappingParameters!.encode(),
    if (jsonMappingParameters != null)
      'json_mapping_parameters': jsonMappingParameters!.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema.record_format.mapping_parameters.csv_mapping_parameters` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParameters({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  final TfArg<String> recordColumnDelimiter;

  final TfArg<String> recordRowDelimiter;

  Map<String, Object?> encode() => {
    'record_column_delimiter': recordColumnDelimiter.toTfJson(),
    'record_row_delimiter': recordRowDelimiter.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema.record_format.mapping_parameters.json_mapping_parameters` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersJsonMappingParameters({
    required this.recordRowPath,
  });

  final TfArg<String> recordRowPath;

  Map<String, Object?> encode() => {
    'record_row_path': recordRowPath.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_starting_position_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputStartingPositionConfiguration({
    this.inputStartingPosition,
  });

  final TfArg<String>? inputStartingPosition;

  Map<String, Object?> encode() => {
    if (inputStartingPosition != null)
      'input_starting_position': inputStartingPosition!.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.kinesis_firehose_input` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.kinesis_streams_input` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.output` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutput {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutput({
    required this.name,
    required this.destinationSchema,
    this.kinesisFirehoseOutput,
    this.kinesisStreamsOutput,
    this.lambdaOutput,
  });

  final TfArg<String> name;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema
  destinationSchema;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput?
  kinesisFirehoseOutput;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput?
  kinesisStreamsOutput;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput?
  lambdaOutput;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'destination_schema': destinationSchema.encode(),
    if (kinesisFirehoseOutput != null)
      'kinesis_firehose_output': kinesisFirehoseOutput!.encode(),
    if (kinesisStreamsOutput != null)
      'kinesis_streams_output': kinesisStreamsOutput!.encode(),
    if (lambdaOutput != null) 'lambda_output': lambdaOutput!.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.output.destination_schema` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema({
    required this.recordFormatType,
  });

  final TfArg<String> recordFormatType;

  Map<String, Object?> encode() => {
    'record_format_type': recordFormatType.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.output.kinesis_firehose_output` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.output.kinesis_streams_output` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.output.lambda_output` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource({
    required this.tableName,
    required this.referenceSchema,
    required this.s3ReferenceDataSource,
  });

  final TfArg<String> tableName;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema
  referenceSchema;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource
  s3ReferenceDataSource;

  Map<String, Object?> encode() => {
    'table_name': tableName.toTfJson(),
    'reference_schema': referenceSchema.encode(),
    's3_reference_data_source': s3ReferenceDataSource.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source.reference_schema` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchema({
    this.recordEncoding,
    required this.recordColumn,
    required this.recordFormat,
  });

  final TfArg<String>? recordEncoding;

  final List<
    Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn
  >
  recordColumn;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat
  recordFormat;

  Map<String, Object?> encode() => {
    if (recordEncoding != null) 'record_encoding': recordEncoding!.toTfJson(),
    'record_column': [for (final e in recordColumn) e.encode()],
    'record_format': recordFormat.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source.reference_schema.record_column` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumn({
    this.mapping,
    required this.name,
    required this.sqlType,
  });

  final TfArg<String>? mapping;

  final TfArg<String> name;

  final TfArg<String> sqlType;

  Map<String, Object?> encode() => {
    if (mapping != null) 'mapping': mapping!.toTfJson(),
    'name': name.toTfJson(),
    'sql_type': sqlType.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source.reference_schema.record_format` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormat({
    required this.recordFormatType,
    required this.mappingParameters,
  });

  final TfArg<String> recordFormatType;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters
  mappingParameters;

  Map<String, Object?> encode() => {
    'record_format_type': recordFormatType.toTfJson(),
    'mapping_parameters': mappingParameters.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source.reference_schema.record_format.mapping_parameters` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParameters({
    this.csvMappingParameters,
    this.jsonMappingParameters,
  });

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters?
  csvMappingParameters;

  final Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters?
  jsonMappingParameters;

  Map<String, Object?> encode() => {
    if (csvMappingParameters != null)
      'csv_mapping_parameters': csvMappingParameters!.encode(),
    if (jsonMappingParameters != null)
      'json_mapping_parameters': jsonMappingParameters!.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source.reference_schema.record_format.mapping_parameters.csv_mapping_parameters` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersCsvMappingParameters({
    required this.recordColumnDelimiter,
    required this.recordRowDelimiter,
  });

  final TfArg<String> recordColumnDelimiter;

  final TfArg<String> recordRowDelimiter;

  Map<String, Object?> encode() => {
    'record_column_delimiter': recordColumnDelimiter.toTfJson(),
    'record_row_delimiter': recordRowDelimiter.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source.reference_schema.record_format.mapping_parameters.json_mapping_parameters` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParameters({
    required this.recordRowPath,
  });

  final TfArg<String> recordRowPath;

  Map<String, Object?> encode() => {
    'record_row_path': recordRowPath.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source.s3_reference_data_source` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSource({
    required this.bucketArn,
    required this.fileKey,
  });

  final TfArg<String> bucketArn;

  final TfArg<String> fileKey;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    'file_key': fileKey.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.vpc_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationApplicationConfigurationVpcConfiguration {
  const Kinesisanalyticsv2ApplicationApplicationConfigurationVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
  };
}

/// Typed helper for the `cloudwatch_logging_options` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationCloudwatchLoggingOptions {
  const Kinesisanalyticsv2ApplicationCloudwatchLoggingOptions({
    required this.logStreamArn,
  });

  final TfArg<String> logStreamArn;

  Map<String, Object?> encode() => {'log_stream_arn': logStreamArn.toTfJson()};
}

/// Factory wrapper for `aws_kinesisanalyticsv2_application`.
final class AwsKinesisanalyticsv2Application extends Resource {
  static const String tfType = 'aws_kinesisanalyticsv2_application';

  AwsKinesisanalyticsv2Application({
    required super.localName,
    TfArg<String>? applicationMode,
    TfArg<String>? description,
    TfArg<bool>? forceStop,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> runtimeEnvironment,
    required TfArg<String> serviceExecutionRole,
    TfArg<bool>? startApplication,
    TfArg<Map<String, String>>? tags,
    Kinesisanalyticsv2ApplicationApplicationConfiguration?
    applicationConfiguration,
    Kinesisanalyticsv2ApplicationCloudwatchLoggingOptions?
    cloudwatchLoggingOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applicationMode != null) 'application_mode': applicationMode,
           if (description != null) 'description': description,
           if (forceStop != null) 'force_stop': forceStop,
           'name': name,
           if (region != null) 'region': region,
           'runtime_environment': runtimeEnvironment,
           'service_execution_role': serviceExecutionRole,
           if (startApplication != null) 'start_application': startApplication,
           if (tags != null) 'tags': tags,
           if (applicationConfiguration != null)
             'application_configuration': TfArg.literal(
               applicationConfiguration.encode(),
             ),
           if (cloudwatchLoggingOptions != null)
             'cloudwatch_logging_options': TfArg.literal(
               cloudwatchLoggingOptions.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisanalyticsv2ApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_timestamp` attribute.
  TfRef<String> get createTimestamp =>
      TfRef.attribute<String>(this, 'create_timestamp');

  /// Reference to `last_update_timestamp` attribute.
  TfRef<String> get lastUpdateTimestamp =>
      TfRef.attribute<String>(this, 'last_update_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version_id` attribute.
  TfRef<num> get versionId => TfRef.attribute<num>(this, 'version_id');
}
