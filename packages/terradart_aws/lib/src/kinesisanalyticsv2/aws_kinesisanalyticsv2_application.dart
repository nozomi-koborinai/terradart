// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_kinesisanalyticsv2_application`.
const Set<String> _awsKinesisanalyticsv2ApplicationSensitive = <String>{};

/// Kinesisanalyticsv2 Application Application enum for `application_mode`.
enum Kinesisanalyticsv2ApplicationApplicationMode implements TerraformEnum {
  streaming('STREAMING'),
  interactive('INTERACTIVE');

  const Kinesisanalyticsv2ApplicationApplicationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Kinesisanalyticsv2 Application Runtime enum for `runtime_environment`.
enum Kinesisanalyticsv2ApplicationRuntimeEnvironment implements TerraformEnum {
  sql10('SQL-1_0'),
  flink16('FLINK-1_6'),
  flink18('FLINK-1_8'),
  zeppelinFlink10('ZEPPELIN-FLINK-1_0'),
  flink111('FLINK-1_11'),
  flink113('FLINK-1_13'),
  zeppelinFlink20('ZEPPELIN-FLINK-2_0'),
  flink115('FLINK-1_15'),
  zeppelinFlink30('ZEPPELIN-FLINK-3_0'),
  flink118('FLINK-1_18'),
  flink119('FLINK-1_19'),
  flink120('FLINK-1_20'),
  flink22('FLINK-2_2'),
  flink23('FLINK-2_3');

  const Kinesisanalyticsv2ApplicationRuntimeEnvironment(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `application_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationConfiguration {
  const Kinesisanalyticsv2ApplicationConfiguration({
    required this.applicationCodeConfiguration,
    this.applicationEncryptionConfiguration,
    this.applicationSnapshotConfiguration,
    this.environmentProperties,
    this.flinkApplicationConfiguration,
    this.runConfiguration,
    this.sqlApplicationConfiguration,
    this.vpcConfiguration,
  });

  final Kinesisanalyticsv2ApplicationCodeConfiguration
  applicationCodeConfiguration;

  final Kinesisanalyticsv2ApplicationEncryptionConfiguration?
  applicationEncryptionConfiguration;

  final Kinesisanalyticsv2ApplicationSnapshotConfiguration?
  applicationSnapshotConfiguration;

  final Kinesisanalyticsv2ApplicationEnvironmentProperties?
  environmentProperties;

  final Kinesisanalyticsv2ApplicationFlinkApplicationConfiguration?
  flinkApplicationConfiguration;

  final Kinesisanalyticsv2ApplicationRunConfiguration? runConfiguration;

  final Kinesisanalyticsv2ApplicationSqlApplicationConfiguration?
  sqlApplicationConfiguration;

  final Kinesisanalyticsv2ApplicationVpcConfiguration? vpcConfiguration;

  Map<String, Object?> encode() => {
    'application_code_configuration': applicationCodeConfiguration.encode(),
    'application_encryption_configuration': ?applicationEncryptionConfiguration
        ?.encode(),
    'application_snapshot_configuration': ?applicationSnapshotConfiguration
        ?.encode(),
    'environment_properties': ?environmentProperties?.encode(),
    'flink_application_configuration': ?flinkApplicationConfiguration?.encode(),
    'run_configuration': ?runConfiguration?.encode(),
    'sql_application_configuration': ?sqlApplicationConfiguration?.encode(),
    'vpc_configuration': ?vpcConfiguration?.encode(),
  };
}

/// Typed helper for the `application_configuration.application_code_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationCodeConfiguration {
  const Kinesisanalyticsv2ApplicationCodeConfiguration({
    required this.codeContentType,
    this.codeContent,
  });

  final TfArg<Kinesisanalyticsv2ApplicationCodeContentType> codeContentType;

  final Kinesisanalyticsv2ApplicationCodeContent? codeContent;

  Map<String, Object?> encode() => {
    'code_content_type': codeContentType.toTfJson(),
    'code_content': ?codeContent?.encode(),
  };
}

/// `code_content_type` — derived from the provider schema description.
enum Kinesisanalyticsv2ApplicationCodeContentType implements TerraformEnum {
  plaintext('PLAINTEXT'),
  zipfile('ZIPFILE');

  const Kinesisanalyticsv2ApplicationCodeContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `s3_content_location`, `text_content` on the `application_configuration.application_code_configuration.code_content` block of `aws_kinesisanalyticsv2_application`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.s3ContentLocation(...)`.
sealed class Kinesisanalyticsv2ApplicationCodeContent {
  const Kinesisanalyticsv2ApplicationCodeContent();

  /// Sets `s3_content_location`.
  const factory Kinesisanalyticsv2ApplicationCodeContent.s3ContentLocation(
    Kinesisanalyticsv2ApplicationS3ContentLocation s3ContentLocation,
  ) = Kinesisanalyticsv2ApplicationCodeContentS3ContentLocation;

  /// Sets `text_content`.
  const factory Kinesisanalyticsv2ApplicationCodeContent.textContent(
    TfArg<String> textContent,
  ) = Kinesisanalyticsv2ApplicationCodeContentTextContent;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Kinesisanalyticsv2ApplicationCodeContent.s3ContentLocation] choice: sets `s3_content_location`.
final class Kinesisanalyticsv2ApplicationCodeContentS3ContentLocation
    extends Kinesisanalyticsv2ApplicationCodeContent {
  const Kinesisanalyticsv2ApplicationCodeContentS3ContentLocation(
    this.s3ContentLocation,
  );

  final Kinesisanalyticsv2ApplicationS3ContentLocation s3ContentLocation;

  @override
  String get blockKey => 's3_content_location';

  @override
  Map<String, Object?> encode() => {
    's3_content_location': s3ContentLocation.encode(),
  };
}

/// The [Kinesisanalyticsv2ApplicationCodeContent.textContent] choice: sets `text_content`.
final class Kinesisanalyticsv2ApplicationCodeContentTextContent
    extends Kinesisanalyticsv2ApplicationCodeContent {
  const Kinesisanalyticsv2ApplicationCodeContentTextContent(this.textContent);

  final TfArg<String> textContent;

  @override
  String get blockKey => 'text_content';

  @override
  Map<String, Object?> encode() => {'text_content': textContent.toTfJson()};
}

/// Typed helper for the `application_configuration.application_code_configuration.code_content.s3_content_location` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationS3ContentLocation {
  const Kinesisanalyticsv2ApplicationS3ContentLocation({
    required this.bucketArn,
    required this.fileKey,
    this.objectVersion,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<String> fileKey;

  final TfArg<String>? objectVersion;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'file_key': fileKey.toTfJson(),
    'object_version': ?objectVersion?.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.application_encryption_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationEncryptionConfiguration {
  const Kinesisanalyticsv2ApplicationEncryptionConfiguration({
    this.keyId,
    required this.keyType,
  });

  final RefTo<AwsKmsKey>? keyId;

  final TfArg<Kinesisanalyticsv2ApplicationKeyType> keyType;

  Map<String, Object?> encode() => {
    'key_id': ?keyId?.encodeAs('arn').toTfJson(),
    'key_type': keyType.toTfJson(),
  };
}

/// `key_type` — derived from the provider schema description.
enum Kinesisanalyticsv2ApplicationKeyType implements TerraformEnum {
  awsOwnedKey('AWS_OWNED_KEY'),
  customerManagedKey('CUSTOMER_MANAGED_KEY');

  const Kinesisanalyticsv2ApplicationKeyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `application_configuration.application_snapshot_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationSnapshotConfiguration {
  const Kinesisanalyticsv2ApplicationSnapshotConfiguration({
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
final class Kinesisanalyticsv2ApplicationEnvironmentProperties {
  const Kinesisanalyticsv2ApplicationEnvironmentProperties({
    required this.propertyGroup,
  });

  final List<Kinesisanalyticsv2ApplicationPropertyGroup> propertyGroup;

  Map<String, Object?> encode() => {
    'property_group': [for (final e in propertyGroup) e.encode()],
  };
}

/// Typed helper for the `application_configuration.environment_properties.property_group` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationPropertyGroup {
  const Kinesisanalyticsv2ApplicationPropertyGroup({
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
final class Kinesisanalyticsv2ApplicationFlinkApplicationConfiguration {
  const Kinesisanalyticsv2ApplicationFlinkApplicationConfiguration({
    this.checkpointConfiguration,
    this.monitoringConfiguration,
    this.parallelismConfiguration,
  });

  final Kinesisanalyticsv2ApplicationCheckpointConfiguration?
  checkpointConfiguration;

  final Kinesisanalyticsv2ApplicationMonitoringConfiguration?
  monitoringConfiguration;

  final Kinesisanalyticsv2ApplicationParallelismConfiguration?
  parallelismConfiguration;

  Map<String, Object?> encode() => {
    'checkpoint_configuration': ?checkpointConfiguration?.encode(),
    'monitoring_configuration': ?monitoringConfiguration?.encode(),
    'parallelism_configuration': ?parallelismConfiguration?.encode(),
  };
}

/// Typed helper for the `application_configuration.flink_application_configuration.checkpoint_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationCheckpointConfiguration {
  const Kinesisanalyticsv2ApplicationCheckpointConfiguration({
    this.checkpointInterval,
    this.checkpointingEnabled,
    required this.configurationType,
    this.minPauseBetweenCheckpoints,
  });

  final TfArg<num>? checkpointInterval;

  final TfArg<bool>? checkpointingEnabled;

  final TfArg<Kinesisanalyticsv2ApplicationConfigurationType> configurationType;

  final TfArg<num>? minPauseBetweenCheckpoints;

  Map<String, Object?> encode() => {
    'checkpoint_interval': ?checkpointInterval?.toTfJson(),
    'checkpointing_enabled': ?checkpointingEnabled?.toTfJson(),
    'configuration_type': configurationType.toTfJson(),
    'min_pause_between_checkpoints': ?minPauseBetweenCheckpoints?.toTfJson(),
  };
}

/// `configuration_type` — derived from the provider schema description.
enum Kinesisanalyticsv2ApplicationConfigurationType implements TerraformEnum {
  defaultCase('DEFAULT'),
  custom('CUSTOM');

  const Kinesisanalyticsv2ApplicationConfigurationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `application_configuration.flink_application_configuration.monitoring_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationMonitoringConfiguration {
  const Kinesisanalyticsv2ApplicationMonitoringConfiguration({
    required this.configurationType,
    this.logLevel,
    this.metricsLevel,
  });

  final TfArg<Kinesisanalyticsv2ApplicationConfigurationType> configurationType;

  final TfArg<Kinesisanalyticsv2ApplicationLogLevel>? logLevel;

  final TfArg<Kinesisanalyticsv2ApplicationMetricsLevel>? metricsLevel;

  Map<String, Object?> encode() => {
    'configuration_type': configurationType.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
    'metrics_level': ?metricsLevel?.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
enum Kinesisanalyticsv2ApplicationLogLevel implements TerraformEnum {
  info('INFO'),
  warn('WARN'),
  error('ERROR'),
  debug('DEBUG');

  const Kinesisanalyticsv2ApplicationLogLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// `metrics_level` — derived from the provider schema description.
enum Kinesisanalyticsv2ApplicationMetricsLevel implements TerraformEnum {
  application('APPLICATION'),
  task('TASK'),
  operator('OPERATOR'),
  parallelism('PARALLELISM');

  const Kinesisanalyticsv2ApplicationMetricsLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `application_configuration.flink_application_configuration.parallelism_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationParallelismConfiguration {
  const Kinesisanalyticsv2ApplicationParallelismConfiguration({
    this.autoScalingEnabled,
    required this.configurationType,
    this.parallelism,
    this.parallelismPerKpu,
  });

  final TfArg<bool>? autoScalingEnabled;

  final TfArg<Kinesisanalyticsv2ApplicationConfigurationType> configurationType;

  final TfArg<num>? parallelism;

  final TfArg<num>? parallelismPerKpu;

  Map<String, Object?> encode() => {
    'auto_scaling_enabled': ?autoScalingEnabled?.toTfJson(),
    'configuration_type': configurationType.toTfJson(),
    'parallelism': ?parallelism?.toTfJson(),
    'parallelism_per_kpu': ?parallelismPerKpu?.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.run_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationRunConfiguration {
  const Kinesisanalyticsv2ApplicationRunConfiguration({
    this.applicationRestoreConfiguration,
    this.flinkRunConfiguration,
  });

  final Kinesisanalyticsv2ApplicationRestoreConfiguration?
  applicationRestoreConfiguration;

  final Kinesisanalyticsv2ApplicationFlinkRunConfiguration?
  flinkRunConfiguration;

  Map<String, Object?> encode() => {
    'application_restore_configuration': ?applicationRestoreConfiguration
        ?.encode(),
    'flink_run_configuration': ?flinkRunConfiguration?.encode(),
  };
}

/// Typed helper for the `application_configuration.run_configuration.application_restore_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationRestoreConfiguration {
  const Kinesisanalyticsv2ApplicationRestoreConfiguration({
    this.applicationRestoreType,
    this.snapshotName,
  });

  final TfArg<Kinesisanalyticsv2ApplicationRestoreType>? applicationRestoreType;

  final TfArg<String>? snapshotName;

  Map<String, Object?> encode() => {
    'application_restore_type': ?applicationRestoreType?.toTfJson(),
    'snapshot_name': ?snapshotName?.toTfJson(),
  };
}

/// `application_restore_type` — derived from the provider schema description.
enum Kinesisanalyticsv2ApplicationRestoreType implements TerraformEnum {
  skipRestoreFromSnapshot('SKIP_RESTORE_FROM_SNAPSHOT'),
  restoreFromLatestSnapshot('RESTORE_FROM_LATEST_SNAPSHOT'),
  restoreFromCustomSnapshot('RESTORE_FROM_CUSTOM_SNAPSHOT');

  const Kinesisanalyticsv2ApplicationRestoreType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `application_configuration.run_configuration.flink_run_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationFlinkRunConfiguration {
  const Kinesisanalyticsv2ApplicationFlinkRunConfiguration({
    this.allowNonRestoredState,
  });

  final TfArg<bool>? allowNonRestoredState;

  Map<String, Object?> encode() => {
    'allow_non_restored_state': ?allowNonRestoredState?.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationSqlApplicationConfiguration {
  const Kinesisanalyticsv2ApplicationSqlApplicationConfiguration({
    this.input,
    this.output,
    this.referenceDataSource,
  });

  final Kinesisanalyticsv2ApplicationInput? input;

  final List<Kinesisanalyticsv2ApplicationOutput>? output;

  final Kinesisanalyticsv2ApplicationReferenceDataSource? referenceDataSource;

  Map<String, Object?> encode() => {
    'input': ?input?.encode(),
    if (output != null) 'output': [for (final e in output!) e.encode()],
    'reference_data_source': ?referenceDataSource?.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationInput {
  const Kinesisanalyticsv2ApplicationInput({
    required this.namePrefix,
    this.inputParallelism,
    this.inputProcessingConfiguration,
    required this.inputSchema,
    this.inputStartingPositionConfiguration,
    required this.kinesis,
  });

  final TfArg<String> namePrefix;

  final Kinesisanalyticsv2ApplicationInputParallelism? inputParallelism;

  final Kinesisanalyticsv2ApplicationInputProcessingConfiguration?
  inputProcessingConfiguration;

  final Kinesisanalyticsv2ApplicationInputSchema inputSchema;

  final List<Kinesisanalyticsv2ApplicationInputStartingPositionConfiguration>?
  inputStartingPositionConfiguration;

  final Kinesisanalyticsv2ApplicationKinesis kinesis;

  Map<String, Object?> encode() => {
    'name_prefix': namePrefix.toTfJson(),
    'input_parallelism': ?inputParallelism?.encode(),
    'input_processing_configuration': ?inputProcessingConfiguration?.encode(),
    'input_schema': inputSchema.encode(),
    if (inputStartingPositionConfiguration != null)
      'input_starting_position_configuration': [
        for (final e in inputStartingPositionConfiguration!) e.encode(),
      ],
    ...kinesis.encode(),
  };
}

/// Exactly one of `kinesis_firehose_input`, `kinesis_streams_input` on the `application_configuration.sql_application_configuration.input` block of `aws_kinesisanalyticsv2_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.kinesisFirehoseInput(...)`.
sealed class Kinesisanalyticsv2ApplicationKinesis {
  const Kinesisanalyticsv2ApplicationKinesis();

  /// Sets `kinesis_firehose_input`.
  const factory Kinesisanalyticsv2ApplicationKinesis.kinesisFirehoseInput(
    Kinesisanalyticsv2ApplicationKinesisFirehoseInput kinesisFirehoseInput,
  ) = Kinesisanalyticsv2ApplicationKinesisFirehoseInputChoice;

  /// Sets `kinesis_streams_input`.
  const factory Kinesisanalyticsv2ApplicationKinesis.kinesisStreamsInput(
    Kinesisanalyticsv2ApplicationKinesisStreamsInput kinesisStreamsInput,
  ) = Kinesisanalyticsv2ApplicationKinesisStreamsInputChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Kinesisanalyticsv2ApplicationKinesis.kinesisFirehoseInput] choice: sets `kinesis_firehose_input`.
final class Kinesisanalyticsv2ApplicationKinesisFirehoseInputChoice
    extends Kinesisanalyticsv2ApplicationKinesis {
  const Kinesisanalyticsv2ApplicationKinesisFirehoseInputChoice(
    this.kinesisFirehoseInput,
  );

  final Kinesisanalyticsv2ApplicationKinesisFirehoseInput kinesisFirehoseInput;

  @override
  String get blockKey => 'kinesis_firehose_input';

  @override
  Map<String, Object?> encode() => {
    'kinesis_firehose_input': kinesisFirehoseInput.encode(),
  };
}

/// The [Kinesisanalyticsv2ApplicationKinesis.kinesisStreamsInput] choice: sets `kinesis_streams_input`.
final class Kinesisanalyticsv2ApplicationKinesisStreamsInputChoice
    extends Kinesisanalyticsv2ApplicationKinesis {
  const Kinesisanalyticsv2ApplicationKinesisStreamsInputChoice(
    this.kinesisStreamsInput,
  );

  final Kinesisanalyticsv2ApplicationKinesisStreamsInput kinesisStreamsInput;

  @override
  String get blockKey => 'kinesis_streams_input';

  @override
  Map<String, Object?> encode() => {
    'kinesis_streams_input': kinesisStreamsInput.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_parallelism` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationInputParallelism {
  const Kinesisanalyticsv2ApplicationInputParallelism({this.count});

  final TfArg<num>? count;

  Map<String, Object?> encode() => {'count': ?count?.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_processing_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationInputProcessingConfiguration {
  const Kinesisanalyticsv2ApplicationInputProcessingConfiguration({
    required this.inputLambdaProcessor,
  });

  final Kinesisanalyticsv2ApplicationInputLambdaProcessor inputLambdaProcessor;

  Map<String, Object?> encode() => {
    'input_lambda_processor': inputLambdaProcessor.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_processing_configuration.input_lambda_processor` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationInputLambdaProcessor {
  const Kinesisanalyticsv2ApplicationInputLambdaProcessor({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationInputSchema {
  const Kinesisanalyticsv2ApplicationInputSchema({
    this.recordEncoding,
    required this.recordColumn,
    required this.recordFormat,
  });

  final TfArg<String>? recordEncoding;

  final List<Kinesisanalyticsv2ApplicationRecordColumn> recordColumn;

  final Kinesisanalyticsv2ApplicationRecordFormat recordFormat;

  Map<String, Object?> encode() => {
    'record_encoding': ?recordEncoding?.toTfJson(),
    'record_column': [for (final e in recordColumn) e.encode()],
    'record_format': recordFormat.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema.record_column` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Kinesisanalyticsv2ApplicationRecordColumn {
  const Kinesisanalyticsv2ApplicationRecordColumn({
    this.mapping,
    required this.name,
    required this.sqlType,
  });

  final TfArg<String>? mapping;

  final TfArg<String> name;

  final TfArg<String> sqlType;

  Map<String, Object?> encode() => {
    'mapping': ?mapping?.toTfJson(),
    'name': name.toTfJson(),
    'sql_type': sqlType.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema.record_format` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Kinesisanalyticsv2ApplicationRecordFormat {
  const Kinesisanalyticsv2ApplicationRecordFormat({
    required this.recordFormatType,
    required this.mappingParameters,
  });

  final TfArg<Kinesisanalyticsv2ApplicationRecordFormatType> recordFormatType;

  final Kinesisanalyticsv2ApplicationMappingParameters mappingParameters;

  Map<String, Object?> encode() => {
    'record_format_type': recordFormatType.toTfJson(),
    'mapping_parameters': mappingParameters.encode(),
  };
}

/// `record_format_type` — derived from the provider schema description.
enum Kinesisanalyticsv2ApplicationRecordFormatType implements TerraformEnum {
  json('JSON'),
  csv('CSV');

  const Kinesisanalyticsv2ApplicationRecordFormatType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `csv_mapping_parameters`, `json_mapping_parameters` on the `application_configuration.sql_application_configuration.input.input_schema.record_format.mapping_parameters` block of `aws_kinesisanalyticsv2_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.csvMappingParameters(...)`.
sealed class Kinesisanalyticsv2ApplicationMappingParameters {
  const Kinesisanalyticsv2ApplicationMappingParameters();

  /// Sets `csv_mapping_parameters`.
  const factory Kinesisanalyticsv2ApplicationMappingParameters.csvMappingParameters(
    Kinesisanalyticsv2ApplicationCsvMappingParameters csvMappingParameters,
  ) = Kinesisanalyticsv2ApplicationCsvMappingParametersChoice;

  /// Sets `json_mapping_parameters`.
  const factory Kinesisanalyticsv2ApplicationMappingParameters.jsonMappingParameters(
    Kinesisanalyticsv2ApplicationJsonMappingParameters jsonMappingParameters,
  ) = Kinesisanalyticsv2ApplicationJsonMappingParametersChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Kinesisanalyticsv2ApplicationMappingParameters.csvMappingParameters] choice: sets `csv_mapping_parameters`.
final class Kinesisanalyticsv2ApplicationCsvMappingParametersChoice
    extends Kinesisanalyticsv2ApplicationMappingParameters {
  const Kinesisanalyticsv2ApplicationCsvMappingParametersChoice(
    this.csvMappingParameters,
  );

  final Kinesisanalyticsv2ApplicationCsvMappingParameters csvMappingParameters;

  @override
  String get blockKey => 'csv_mapping_parameters';

  @override
  Map<String, Object?> encode() => {
    'csv_mapping_parameters': csvMappingParameters.encode(),
  };
}

/// The [Kinesisanalyticsv2ApplicationMappingParameters.jsonMappingParameters] choice: sets `json_mapping_parameters`.
final class Kinesisanalyticsv2ApplicationJsonMappingParametersChoice
    extends Kinesisanalyticsv2ApplicationMappingParameters {
  const Kinesisanalyticsv2ApplicationJsonMappingParametersChoice(
    this.jsonMappingParameters,
  );

  final Kinesisanalyticsv2ApplicationJsonMappingParameters
  jsonMappingParameters;

  @override
  String get blockKey => 'json_mapping_parameters';

  @override
  Map<String, Object?> encode() => {
    'json_mapping_parameters': jsonMappingParameters.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.input_schema.record_format.mapping_parameters.csv_mapping_parameters` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Kinesisanalyticsv2ApplicationCsvMappingParameters {
  const Kinesisanalyticsv2ApplicationCsvMappingParameters({
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
/// Shared by every block of this shape in the resource.
@immutable
final class Kinesisanalyticsv2ApplicationJsonMappingParameters {
  const Kinesisanalyticsv2ApplicationJsonMappingParameters({
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
final class Kinesisanalyticsv2ApplicationInputStartingPositionConfiguration {
  const Kinesisanalyticsv2ApplicationInputStartingPositionConfiguration({
    this.inputStartingPosition,
  });

  final TfArg<Kinesisanalyticsv2ApplicationInputStartingPosition>?
  inputStartingPosition;

  Map<String, Object?> encode() => {
    'input_starting_position': ?inputStartingPosition?.toTfJson(),
  };
}

/// `input_starting_position` — derived from the provider schema description.
enum Kinesisanalyticsv2ApplicationInputStartingPosition
    implements TerraformEnum {
  now('NOW'),
  trimHorizon('TRIM_HORIZON'),
  lastStoppedPoint('LAST_STOPPED_POINT');

  const Kinesisanalyticsv2ApplicationInputStartingPosition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.kinesis_firehose_input` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationKinesisFirehoseInput {
  const Kinesisanalyticsv2ApplicationKinesisFirehoseInput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.input.kinesis_streams_input` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationKinesisStreamsInput {
  const Kinesisanalyticsv2ApplicationKinesisStreamsInput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.output` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationOutput {
  const Kinesisanalyticsv2ApplicationOutput({
    required this.name,
    required this.destinationSchema,
    this.kinesisFirehoseOutput,
    this.kinesisStreamsOutput,
    this.lambdaOutput,
  });

  final TfArg<String> name;

  final Kinesisanalyticsv2ApplicationDestinationSchema destinationSchema;

  final Kinesisanalyticsv2ApplicationKinesisFirehoseOutput?
  kinesisFirehoseOutput;

  final Kinesisanalyticsv2ApplicationKinesisStreamsOutput? kinesisStreamsOutput;

  final Kinesisanalyticsv2ApplicationLambdaOutput? lambdaOutput;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'destination_schema': destinationSchema.encode(),
    'kinesis_firehose_output': ?kinesisFirehoseOutput?.encode(),
    'kinesis_streams_output': ?kinesisStreamsOutput?.encode(),
    'lambda_output': ?lambdaOutput?.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.output.destination_schema` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationDestinationSchema {
  const Kinesisanalyticsv2ApplicationDestinationSchema({
    required this.recordFormatType,
  });

  final TfArg<Kinesisanalyticsv2ApplicationRecordFormatType> recordFormatType;

  Map<String, Object?> encode() => {
    'record_format_type': recordFormatType.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.output.kinesis_firehose_output` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationKinesisFirehoseOutput {
  const Kinesisanalyticsv2ApplicationKinesisFirehoseOutput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.output.kinesis_streams_output` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationKinesisStreamsOutput {
  const Kinesisanalyticsv2ApplicationKinesisStreamsOutput({
    required this.resourceArn,
  });

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.output.lambda_output` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationLambdaOutput {
  const Kinesisanalyticsv2ApplicationLambdaOutput({required this.resourceArn});

  final TfArg<String> resourceArn;

  Map<String, Object?> encode() => {'resource_arn': resourceArn.toTfJson()};
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationReferenceDataSource {
  const Kinesisanalyticsv2ApplicationReferenceDataSource({
    required this.tableName,
    required this.referenceSchema,
    required this.s3ReferenceDataSource,
  });

  final TfArg<String> tableName;

  final Kinesisanalyticsv2ApplicationReferenceSchema referenceSchema;

  final Kinesisanalyticsv2ApplicationS3ReferenceDataSource
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
final class Kinesisanalyticsv2ApplicationReferenceSchema {
  const Kinesisanalyticsv2ApplicationReferenceSchema({
    this.recordEncoding,
    required this.recordColumn,
    required this.recordFormat,
  });

  final TfArg<String>? recordEncoding;

  final List<Kinesisanalyticsv2ApplicationRecordColumn> recordColumn;

  final Kinesisanalyticsv2ApplicationRecordFormat recordFormat;

  Map<String, Object?> encode() => {
    'record_encoding': ?recordEncoding?.toTfJson(),
    'record_column': [for (final e in recordColumn) e.encode()],
    'record_format': recordFormat.encode(),
  };
}

/// Typed helper for the `application_configuration.sql_application_configuration.reference_data_source.s3_reference_data_source` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationS3ReferenceDataSource {
  const Kinesisanalyticsv2ApplicationS3ReferenceDataSource({
    required this.bucketArn,
    required this.fileKey,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<String> fileKey;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'file_key': fileKey.toTfJson(),
  };
}

/// Typed helper for the `application_configuration.vpc_configuration` block of
/// `aws_kinesisanalyticsv2_application` (derived from provider schema).
@immutable
final class Kinesisanalyticsv2ApplicationVpcConfiguration {
  const Kinesisanalyticsv2ApplicationVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
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
    TfArg<Kinesisanalyticsv2ApplicationApplicationMode>? applicationMode,
    TfArg<String>? description,
    TfArg<bool>? forceStop,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<Kinesisanalyticsv2ApplicationRuntimeEnvironment>
    runtimeEnvironment,
    required TfArg<String> serviceExecutionRole,
    TfArg<bool>? startApplication,
    TfArg<Map<String, String>>? tags,
    Kinesisanalyticsv2ApplicationConfiguration? applicationConfiguration,
    Kinesisanalyticsv2ApplicationCloudwatchLoggingOptions?
    cloudwatchLoggingOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_mode': ?applicationMode,
           'description': ?description,
           'force_stop': ?forceStop,
           'name': name,
           'region': ?region,
           'runtime_environment': runtimeEnvironment,
           'service_execution_role': serviceExecutionRole,
           'start_application': ?startApplication,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKinesisanalyticsv2Application>`.
  RefTo<AwsKinesisanalyticsv2Application> get ref => RefTo.of(this);

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

  /// Reference to `application_mode` attribute.
  TfRef<String> get applicationModeRef =>
      TfRef.attribute<String>(this, 'application_mode');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `force_stop` attribute.
  TfRef<bool> get forceStopRef => TfRef.attribute<bool>(this, 'force_stop');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `runtime_environment` attribute.
  TfRef<String> get runtimeEnvironmentRef =>
      TfRef.attribute<String>(this, 'runtime_environment');

  /// Reference to `service_execution_role` attribute.
  TfRef<String> get serviceExecutionRoleRef =>
      TfRef.attribute<String>(this, 'service_execution_role');

  /// Reference to `start_application` attribute.
  TfRef<bool> get startApplicationRef =>
      TfRef.attribute<bool>(this, 'start_application');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
