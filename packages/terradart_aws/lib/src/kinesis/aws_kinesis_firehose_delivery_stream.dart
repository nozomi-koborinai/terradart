// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_kinesis_firehose_delivery_stream`.
const Set<String> _awsKinesisFirehoseDeliveryStreamSensitive = <String>{
  'http_endpoint_configuration.access_key',
  'redshift_configuration.password',
  'snowflake_configuration.key_passphrase',
  'snowflake_configuration.private_key',
};

/// Kinesis Firehose Delivery Stream enum for `destination`.
enum KinesisFirehoseDeliveryStreamDestination implements TerraformEnum {
  elasticsearch('elasticsearch'),
  extendedS3('extended_s3'),
  httpEndpoint('http_endpoint'),
  iceberg('iceberg'),
  opensearch('opensearch'),
  opensearchserverless('opensearchserverless'),
  redshift('redshift'),
  snowflake('snowflake'),
  splunk('splunk');

  const KinesisFirehoseDeliveryStreamDestination(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `kinesis_source_configuration`, `msk_source_configuration`, `server_side_encryption` on `aws_kinesis_firehose_delivery_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.kinesisSourceConfiguration(...)`.
sealed class KinesisFirehoseDeliveryStreamSource {
  const KinesisFirehoseDeliveryStreamSource();

  /// Sets `kinesis_source_configuration`.
  const factory KinesisFirehoseDeliveryStreamSource.kinesisSourceConfiguration(
    KinesisFirehoseDeliveryStreamKinesisSourceConfiguration
    kinesisSourceConfiguration,
  ) = KinesisFirehoseDeliveryStreamSourceKinesisSourceConfiguration;

  /// Sets `msk_source_configuration`.
  const factory KinesisFirehoseDeliveryStreamSource.mskSourceConfiguration(
    KinesisFirehoseDeliveryStreamMskSourceConfiguration mskSourceConfiguration,
  ) = KinesisFirehoseDeliveryStreamSourceMskSourceConfiguration;

  /// Sets `server_side_encryption`.
  const factory KinesisFirehoseDeliveryStreamSource.serverSideEncryption(
    KinesisFirehoseDeliveryStreamServerSideEncryption serverSideEncryption,
  ) = KinesisFirehoseDeliveryStreamSourceServerSideEncryption;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KinesisFirehoseDeliveryStreamSource.kinesisSourceConfiguration] choice: sets `kinesis_source_configuration`.
final class KinesisFirehoseDeliveryStreamSourceKinesisSourceConfiguration
    extends KinesisFirehoseDeliveryStreamSource {
  const KinesisFirehoseDeliveryStreamSourceKinesisSourceConfiguration(
    this.kinesisSourceConfiguration,
  );

  final KinesisFirehoseDeliveryStreamKinesisSourceConfiguration
  kinesisSourceConfiguration;

  @override
  String get blockKey => 'kinesis_source_configuration';

  @override
  Map<String, Object?> encode() => {
    'kinesis_source_configuration': kinesisSourceConfiguration.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'kinesis_source_configuration': TfArg.literal(
      kinesisSourceConfiguration.encode(),
    ),
  };
}

/// The [KinesisFirehoseDeliveryStreamSource.mskSourceConfiguration] choice: sets `msk_source_configuration`.
final class KinesisFirehoseDeliveryStreamSourceMskSourceConfiguration
    extends KinesisFirehoseDeliveryStreamSource {
  const KinesisFirehoseDeliveryStreamSourceMskSourceConfiguration(
    this.mskSourceConfiguration,
  );

  final KinesisFirehoseDeliveryStreamMskSourceConfiguration
  mskSourceConfiguration;

  @override
  String get blockKey => 'msk_source_configuration';

  @override
  Map<String, Object?> encode() => {
    'msk_source_configuration': mskSourceConfiguration.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'msk_source_configuration': TfArg.literal(mskSourceConfiguration.encode()),
  };
}

/// The [KinesisFirehoseDeliveryStreamSource.serverSideEncryption] choice: sets `server_side_encryption`.
final class KinesisFirehoseDeliveryStreamSourceServerSideEncryption
    extends KinesisFirehoseDeliveryStreamSource {
  const KinesisFirehoseDeliveryStreamSourceServerSideEncryption(
    this.serverSideEncryption,
  );

  final KinesisFirehoseDeliveryStreamServerSideEncryption serverSideEncryption;

  @override
  String get blockKey => 'server_side_encryption';

  @override
  Map<String, Object?> encode() => {
    'server_side_encryption': serverSideEncryption.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'server_side_encryption': TfArg.literal(serverSideEncryption.encode()),
  };
}

/// Typed helper for the `elasticsearch_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfiguration {
  const KinesisFirehoseDeliveryStreamElasticsearchConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.domain,
    required this.indexName,
    this.indexRotationPeriod,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    this.typeName,
    this.cloudwatchLoggingOptions,
    this.processingConfiguration,
    required this.s3Configuration,
    this.vpcConfig,
  });

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain? domain;

  final TfArg<String> indexName;

  final TfArg<
    KinesisFirehoseDeliveryStreamElasticsearchConfigurationIndexRotationPeriod
  >?
  indexRotationPeriod;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<
    KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3BackupMode
  >?
  s3BackupMode;

  final TfArg<String>? typeName;

  final KinesisFirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamElasticsearchConfigurationVpcConfig?
  vpcConfig;

  Map<String, Object?> encode() => {
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    ...?domain?.encode(),
    'index_name': indexName.toTfJson(),
    'index_rotation_period': ?indexRotationPeriod?.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'type_name': ?typeName?.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    's3_configuration': s3Configuration.encode(),
    'vpc_config': ?vpcConfig?.encode(),
  };
}

/// At most one of `cluster_endpoint`, `domain_arn` on the `elasticsearch_configuration` block of `aws_kinesis_firehose_delivery_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clusterEndpoint(...)`.
sealed class KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain();

  /// Sets `cluster_endpoint`.
  const factory KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain.clusterEndpoint(
    TfArg<String> clusterEndpoint,
  ) = KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomainClusterEndpoint;

  /// Sets `domain_arn`.
  const factory KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain.domainArn(
    TfArg<String> domainArn,
  ) = KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomainArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain.clusterEndpoint] choice: sets `cluster_endpoint`.
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomainClusterEndpoint
    extends KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomainClusterEndpoint(
    this.clusterEndpoint,
  );

  final TfArg<String> clusterEndpoint;

  @override
  String get blockKey => 'cluster_endpoint';

  @override
  Map<String, Object?> encode() => {
    'cluster_endpoint': clusterEndpoint.toTfJson(),
  };
}

/// The [KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain.domainArn] choice: sets `domain_arn`.
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomainArn
    extends KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomain {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationDomainArn(
    this.domainArn,
  );

  final TfArg<String> domainArn;

  @override
  String get blockKey => 'domain_arn';

  @override
  Map<String, Object?> encode() => {'domain_arn': domainArn.toTfJson()};
}

/// `index_rotation_period` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamElasticsearchConfigurationIndexRotationPeriod
    implements TerraformEnum {
  norotation('NoRotation'),
  onehour('OneHour'),
  oneday('OneDay'),
  oneweek('OneWeek'),
  onemonth('OneMonth');

  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationIndexRotationPeriod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3BackupMode
    implements TerraformEnum {
  faileddocumentsonly('FailedDocumentsOnly'),
  alldocuments('AllDocuments');

  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `elasticsearch_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `elasticsearch_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `elasticsearch_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `elasticsearch_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `elasticsearch_configuration.s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3Configuration {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `elasticsearch_configuration.s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `elasticsearch_configuration.vpc_config` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfigurationVpcConfig {
  const KinesisFirehoseDeliveryStreamElasticsearchConfigurationVpcConfig({
    required this.roleArn,
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final RefTo<AwsIamRole> roleArn;

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `extended_s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3Configuration {
  const KinesisFirehoseDeliveryStreamExtendedS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.customTimeZone,
    this.errorOutputPrefix,
    this.fileExtension,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.s3BackupMode,
    this.cloudwatchLoggingOptions,
    this.dataFormatConversionConfiguration,
    this.dynamicPartitioningConfiguration,
    this.processingConfiguration,
    this.s3BackupConfiguration,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationCompressionFormat
  >?
  compressionFormat;

  final TfArg<String>? customTimeZone;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? fileExtension;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupMode>?
  s3BackupMode;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration?
  dataFormatConversionConfiguration;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration?
  dynamicPartitioningConfiguration;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration?
  s3BackupConfiguration;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'custom_time_zone': ?customTimeZone?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'file_extension': ?fileExtension?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    'data_format_conversion_configuration': ?dataFormatConversionConfiguration
        ?.encode(),
    'dynamic_partitioning_configuration': ?dynamicPartitioningConfiguration
        ?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    's3_backup_configuration': ?s3BackupConfiguration?.encode(),
  };
}

/// `compression_format` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamExtendedS3ConfigurationCompressionFormat
    implements TerraformEnum {
  uncompressed('UNCOMPRESSED'),
  gzip('GZIP'),
  zip('ZIP'),
  snappy('Snappy'),
  hadoopSnappy('HADOOP_SNAPPY');

  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationCompressionFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupMode
    implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `extended_s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration({
    this.enabled,
    required this.inputFormatConfiguration,
    required this.outputFormatConfiguration,
    required this.schemaConfiguration,
  });

  final TfArg<bool>? enabled;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration
  inputFormatConfiguration;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration
  outputFormatConfiguration;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration
  schemaConfiguration;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'input_format_configuration': inputFormatConfiguration.encode(),
    'output_format_configuration': outputFormatConfiguration.encode(),
    'schema_configuration': schemaConfiguration.encode(),
  };
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.input_format_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfiguration({
    required this.deserializer,
  });

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer
  deserializer;

  Map<String, Object?> encode() => {'deserializer': deserializer.encode()};
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.input_format_configuration.deserializer` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializer({
    this.jsonSerDe,
  });

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe?
  jsonSerDe;

  Map<String, Object?> encode() => {...?jsonSerDe?.encode()};
}

/// At most one of `hive_json_ser_de`, `open_x_json_ser_de` on the `extended_s3_configuration.data_format_conversion_configuration.input_format_configuration.deserializer` block of `aws_kinesis_firehose_delivery_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hiveJsonSerDe(...)`.
sealed class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe();

  /// Sets `hive_json_ser_de`.
  const factory KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe.hiveJsonSerDe(
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe
    hiveJsonSerDe,
  ) = KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDeHiveJsonSerDe;

  /// Sets `open_x_json_ser_de`.
  const factory KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe.openXJsonSerDe(
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe
    openXJsonSerDe,
  ) = KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDeOpenXJsonSerDe;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe.hiveJsonSerDe] choice: sets `hive_json_ser_de`.
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDeHiveJsonSerDe
    extends
        KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDeHiveJsonSerDe(
    this.hiveJsonSerDe,
  );

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe
  hiveJsonSerDe;

  @override
  String get blockKey => 'hive_json_ser_de';

  @override
  Map<String, Object?> encode() => {'hive_json_ser_de': hiveJsonSerDe.encode()};
}

/// The [KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe.openXJsonSerDe] choice: sets `open_x_json_ser_de`.
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDeOpenXJsonSerDe
    extends
        KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerJsonSerDeOpenXJsonSerDe(
    this.openXJsonSerDe,
  );

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe
  openXJsonSerDe;

  @override
  String get blockKey => 'open_x_json_ser_de';

  @override
  Map<String, Object?> encode() => {
    'open_x_json_ser_de': openXJsonSerDe.encode(),
  };
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.input_format_configuration.deserializer.hive_json_ser_de` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe({
    this.timestampFormats,
  });

  final TfArg<List<Object?>>? timestampFormats;

  Map<String, Object?> encode() => {
    'timestamp_formats': ?timestampFormats?.toTfJson(),
  };
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe({
    this.caseInsensitive,
    this.columnToJsonKeyMappings,
    this.convertDotsInJsonKeysToUnderscores,
  });

  final TfArg<bool>? caseInsensitive;

  final TfArg<Map<String, String>>? columnToJsonKeyMappings;

  final TfArg<bool>? convertDotsInJsonKeysToUnderscores;

  Map<String, Object?> encode() => {
    'case_insensitive': ?caseInsensitive?.toTfJson(),
    'column_to_json_key_mappings': ?columnToJsonKeyMappings?.toTfJson(),
    'convert_dots_in_json_keys_to_underscores':
        ?convertDotsInJsonKeysToUnderscores?.toTfJson(),
  };
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfiguration({
    required this.serializer,
  });

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer
  serializer;

  Map<String, Object?> encode() => {'serializer': serializer.encode()};
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration.serializer` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializer({
    this.serDe,
  });

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe?
  serDe;

  Map<String, Object?> encode() => {...?serDe?.encode()};
}

/// At most one of `orc_ser_de`, `parquet_ser_de` on the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration.serializer` block of `aws_kinesis_firehose_delivery_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.orcSerDe(...)`.
sealed class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe();

  /// Sets `orc_ser_de`.
  const factory KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe.orcSerDe(
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe
    orcSerDe,
  ) = KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDeOrcSerDe;

  /// Sets `parquet_ser_de`.
  const factory KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe.parquetSerDe(
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe
    parquetSerDe,
  ) = KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDeParquetSerDe;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe.orcSerDe] choice: sets `orc_ser_de`.
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDeOrcSerDe
    extends
        KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDeOrcSerDe(
    this.orcSerDe,
  );

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe
  orcSerDe;

  @override
  String get blockKey => 'orc_ser_de';

  @override
  Map<String, Object?> encode() => {'orc_ser_de': orcSerDe.encode()};
}

/// The [KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe.parquetSerDe] choice: sets `parquet_ser_de`.
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDeParquetSerDe
    extends
        KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerSerDeParquetSerDe(
    this.parquetSerDe,
  );

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe
  parquetSerDe;

  @override
  String get blockKey => 'parquet_ser_de';

  @override
  Map<String, Object?> encode() => {'parquet_ser_de': parquetSerDe.encode()};
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe({
    this.blockSizeBytes,
    this.bloomFilterColumns,
    this.bloomFilterFalsePositiveProbability,
    this.compression,
    this.dictionaryKeyThreshold,
    this.enablePadding,
    this.formatVersion,
    this.paddingTolerance,
    this.rowIndexStride,
    this.stripeSizeBytes,
  });

  final TfArg<num>? blockSizeBytes;

  final TfArg<List<Object?>>? bloomFilterColumns;

  final TfArg<num>? bloomFilterFalsePositiveProbability;

  final TfArg<
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDeCompression
  >?
  compression;

  final TfArg<num>? dictionaryKeyThreshold;

  final TfArg<bool>? enablePadding;

  final TfArg<
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDeFormatVersion
  >?
  formatVersion;

  final TfArg<num>? paddingTolerance;

  final TfArg<num>? rowIndexStride;

  final TfArg<num>? stripeSizeBytes;

  Map<String, Object?> encode() => {
    'block_size_bytes': ?blockSizeBytes?.toTfJson(),
    'bloom_filter_columns': ?bloomFilterColumns?.toTfJson(),
    'bloom_filter_false_positive_probability':
        ?bloomFilterFalsePositiveProbability?.toTfJson(),
    'compression': ?compression?.toTfJson(),
    'dictionary_key_threshold': ?dictionaryKeyThreshold?.toTfJson(),
    'enable_padding': ?enablePadding?.toTfJson(),
    'format_version': ?formatVersion?.toTfJson(),
    'padding_tolerance': ?paddingTolerance?.toTfJson(),
    'row_index_stride': ?rowIndexStride?.toTfJson(),
    'stripe_size_bytes': ?stripeSizeBytes?.toTfJson(),
  };
}

/// `compression` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDeCompression
    implements TerraformEnum {
  none('NONE'),
  zlib('ZLIB'),
  snappy('SNAPPY');

  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDeCompression(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `format_version` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDeFormatVersion
    implements TerraformEnum {
  v011('V0_11'),
  v012('V0_12');

  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDeFormatVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe({
    this.blockSizeBytes,
    this.compression,
    this.enableDictionaryCompression,
    this.maxPaddingBytes,
    this.pageSizeBytes,
    this.writerVersion,
  });

  final TfArg<num>? blockSizeBytes;

  final TfArg<
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDeCompression
  >?
  compression;

  final TfArg<bool>? enableDictionaryCompression;

  final TfArg<num>? maxPaddingBytes;

  final TfArg<num>? pageSizeBytes;

  final TfArg<
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDeWriterVersion
  >?
  writerVersion;

  Map<String, Object?> encode() => {
    'block_size_bytes': ?blockSizeBytes?.toTfJson(),
    'compression': ?compression?.toTfJson(),
    'enable_dictionary_compression': ?enableDictionaryCompression?.toTfJson(),
    'max_padding_bytes': ?maxPaddingBytes?.toTfJson(),
    'page_size_bytes': ?pageSizeBytes?.toTfJson(),
    'writer_version': ?writerVersion?.toTfJson(),
  };
}

/// `compression` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDeCompression
    implements TerraformEnum {
  uncompressed('UNCOMPRESSED'),
  gzip('GZIP'),
  snappy('SNAPPY');

  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDeCompression(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `writer_version` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDeWriterVersion
    implements TerraformEnum {
  v1('V1'),
  v2('V2');

  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDeWriterVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.schema_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationSchemaConfiguration({
    this.catalogId,
    required this.databaseName,
    this.region,
    required this.roleArn,
    required this.tableName,
    this.versionId,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> databaseName;

  final TfArg<String>? region;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> tableName;

  final TfArg<String>? versionId;

  Map<String, Object?> encode() => {
    'catalog_id': ?catalogId?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'region': ?region?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'table_name': tableName.toTfJson(),
    'version_id': ?versionId?.toTfJson(),
  };
}

/// Typed helper for the `extended_s3_configuration.dynamic_partitioning_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration({
    this.enabled,
    this.retryDuration,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? retryDuration;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
  };
}

/// Typed helper for the `extended_s3_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `extended_s3_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `extended_s3_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `extended_s3_configuration.s3_backup_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `extended_s3_configuration.s3_backup_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `http_endpoint_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfiguration {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfiguration({
    this.accessKey,
    this.bufferingInterval,
    this.bufferingSize,
    this.name,
    this.retryDuration,
    this.roleArn,
    this.s3BackupMode,
    required this.url,
    this.cloudwatchLoggingOptions,
    this.processingConfiguration,
    this.requestConfiguration,
    required this.s3Configuration,
    this.secretsManagerConfiguration,
  });

  final TfArg<String>? accessKey;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? name;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<
    KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3BackupMode
  >?
  s3BackupMode;

  final TfArg<String> url;

  final KinesisFirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration?
  requestConfiguration;

  final KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration?
  secretsManagerConfiguration;

  Map<String, Object?> encode() => {
    'access_key': ?accessKey?.toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'name': ?name?.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'url': url.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    'request_configuration': ?requestConfiguration?.encode(),
    's3_configuration': s3Configuration.encode(),
    'secrets_manager_configuration': ?secretsManagerConfiguration?.encode(),
  };
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3BackupMode
    implements TerraformEnum {
  faileddataonly('FailedDataOnly'),
  alldata('AllData');

  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `http_endpoint_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `http_endpoint_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `http_endpoint_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `http_endpoint_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `http_endpoint_configuration.request_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration({
    this.contentEncoding,
    this.commonAttributes,
  });

  final TfArg<String>? contentEncoding;

  final List<
    KinesisFirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributes
  >?
  commonAttributes;

  Map<String, Object?> encode() => {
    'content_encoding': ?contentEncoding?.toTfJson(),
    if (commonAttributes != null)
      'common_attributes': [for (final e in commonAttributes!) e.encode()],
  };
}

/// Typed helper for the `http_endpoint_configuration.request_configuration.common_attributes` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributes {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributes({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `http_endpoint_configuration.s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `http_endpoint_configuration.s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `http_endpoint_configuration.secrets_manager_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration {
  const KinesisFirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration({
    this.enabled,
    this.roleArn,
    this.secretArn,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'secret_arn': ?secretArn?.toTfJson(),
  };
}

/// Typed helper for the `iceberg_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamIcebergConfiguration {
  const KinesisFirehoseDeliveryStreamIcebergConfiguration({
    this.appendOnly,
    this.bufferingInterval,
    this.bufferingSize,
    required this.catalogArn,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    this.cloudwatchLoggingOptions,
    this.destinationTableConfiguration,
    this.processingConfiguration,
    required this.s3Configuration,
  });

  final TfArg<bool>? appendOnly;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String> catalogArn;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<KinesisFirehoseDeliveryStreamIcebergConfigurationS3BackupMode>?
  s3BackupMode;

  final KinesisFirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final List<
    KinesisFirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration
  >?
  destinationTableConfiguration;

  final KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamIcebergConfigurationS3Configuration
  s3Configuration;

  Map<String, Object?> encode() => {
    'append_only': ?appendOnly?.toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'catalog_arn': catalogArn.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    if (destinationTableConfiguration != null)
      'destination_table_configuration': [
        for (final e in destinationTableConfiguration!) e.encode(),
      ],
    'processing_configuration': ?processingConfiguration?.encode(),
    's3_configuration': s3Configuration.encode(),
  };
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamIcebergConfigurationS3BackupMode
    implements TerraformEnum {
  faileddataonly('FailedDataOnly'),
  alldata('AllData');

  const KinesisFirehoseDeliveryStreamIcebergConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `iceberg_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `iceberg_configuration.destination_table_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration {
  const KinesisFirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration({
    required this.databaseName,
    this.s3ErrorOutputPrefix,
    required this.tableName,
    this.uniqueKeys,
  });

  final TfArg<String> databaseName;

  final TfArg<String>? s3ErrorOutputPrefix;

  final TfArg<String> tableName;

  final TfArg<List<Object?>>? uniqueKeys;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    's3_error_output_prefix': ?s3ErrorOutputPrefix?.toTfJson(),
    'table_name': tableName.toTfJson(),
    'unique_keys': ?uniqueKeys?.toTfJson(),
  };
}

/// Typed helper for the `iceberg_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `iceberg_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `iceberg_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `iceberg_configuration.s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamIcebergConfigurationS3Configuration {
  const KinesisFirehoseDeliveryStreamIcebergConfigurationS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamIcebergConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `iceberg_configuration.s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamIcebergConfigurationS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamIcebergConfigurationS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `kinesis_source_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamKinesisSourceConfiguration {
  const KinesisFirehoseDeliveryStreamKinesisSourceConfiguration({
    required this.kinesisStreamArn,
    required this.roleArn,
  });

  final TfArg<String> kinesisStreamArn;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'kinesis_stream_arn': kinesisStreamArn.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `msk_source_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamMskSourceConfiguration {
  const KinesisFirehoseDeliveryStreamMskSourceConfiguration({
    required this.mskClusterArn,
    this.readFromTimestamp,
    required this.topicName,
    required this.authenticationConfiguration,
  });

  final TfArg<String> mskClusterArn;

  final TfArg<String>? readFromTimestamp;

  final TfArg<String> topicName;

  final KinesisFirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration
  authenticationConfiguration;

  Map<String, Object?> encode() => {
    'msk_cluster_arn': mskClusterArn.toTfJson(),
    'read_from_timestamp': ?readFromTimestamp?.toTfJson(),
    'topic_name': topicName.toTfJson(),
    'authentication_configuration': authenticationConfiguration.encode(),
  };
}

/// Typed helper for the `msk_source_configuration.authentication_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration {
  const KinesisFirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfiguration({
    required this.connectivity,
    required this.roleArn,
  });

  final TfArg<
    KinesisFirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfigurationConnectivity
  >
  connectivity;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'connectivity': connectivity.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// `connectivity` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfigurationConnectivity
    implements TerraformEnum {
  public('PUBLIC'),
  private('PRIVATE');

  const KinesisFirehoseDeliveryStreamMskSourceConfigurationAuthenticationConfigurationConnectivity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `opensearch_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfiguration {
  const KinesisFirehoseDeliveryStreamOpensearchConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.domain,
    required this.indexName,
    this.indexRotationPeriod,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    this.typeName,
    this.cloudwatchLoggingOptions,
    this.documentIdOptions,
    this.processingConfiguration,
    required this.s3Configuration,
    this.vpcConfig,
  });

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain? domain;

  final TfArg<String> indexName;

  final TfArg<
    KinesisFirehoseDeliveryStreamOpensearchConfigurationIndexRotationPeriod
  >?
  indexRotationPeriod;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<KinesisFirehoseDeliveryStreamOpensearchConfigurationS3BackupMode>?
  s3BackupMode;

  final TfArg<String>? typeName;

  final KinesisFirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions?
  documentIdOptions;

  final KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamOpensearchConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamOpensearchConfigurationVpcConfig?
  vpcConfig;

  Map<String, Object?> encode() => {
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    ...?domain?.encode(),
    'index_name': indexName.toTfJson(),
    'index_rotation_period': ?indexRotationPeriod?.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'type_name': ?typeName?.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    'document_id_options': ?documentIdOptions?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    's3_configuration': s3Configuration.encode(),
    'vpc_config': ?vpcConfig?.encode(),
  };
}

/// At most one of `cluster_endpoint`, `domain_arn` on the `opensearch_configuration` block of `aws_kinesis_firehose_delivery_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clusterEndpoint(...)`.
sealed class KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain();

  /// Sets `cluster_endpoint`.
  const factory KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain.clusterEndpoint(
    TfArg<String> clusterEndpoint,
  ) = KinesisFirehoseDeliveryStreamOpensearchConfigurationDomainClusterEndpoint;

  /// Sets `domain_arn`.
  const factory KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain.domainArn(
    TfArg<String> domainArn,
  ) = KinesisFirehoseDeliveryStreamOpensearchConfigurationDomainArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain.clusterEndpoint] choice: sets `cluster_endpoint`.
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationDomainClusterEndpoint
    extends KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationDomainClusterEndpoint(
    this.clusterEndpoint,
  );

  final TfArg<String> clusterEndpoint;

  @override
  String get blockKey => 'cluster_endpoint';

  @override
  Map<String, Object?> encode() => {
    'cluster_endpoint': clusterEndpoint.toTfJson(),
  };
}

/// The [KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain.domainArn] choice: sets `domain_arn`.
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationDomainArn
    extends KinesisFirehoseDeliveryStreamOpensearchConfigurationDomain {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationDomainArn(
    this.domainArn,
  );

  final TfArg<String> domainArn;

  @override
  String get blockKey => 'domain_arn';

  @override
  Map<String, Object?> encode() => {'domain_arn': domainArn.toTfJson()};
}

/// `index_rotation_period` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamOpensearchConfigurationIndexRotationPeriod
    implements TerraformEnum {
  norotation('NoRotation'),
  onehour('OneHour'),
  oneday('OneDay'),
  oneweek('OneWeek'),
  onemonth('OneMonth');

  const KinesisFirehoseDeliveryStreamOpensearchConfigurationIndexRotationPeriod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamOpensearchConfigurationS3BackupMode
    implements TerraformEnum {
  faileddocumentsonly('FailedDocumentsOnly'),
  alldocuments('AllDocuments');

  const KinesisFirehoseDeliveryStreamOpensearchConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `opensearch_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `opensearch_configuration.document_id_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions({
    required this.defaultDocumentIdFormat,
  });

  final TfArg<
    KinesisFirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptionsDefaultDocumentIdFormat
  >
  defaultDocumentIdFormat;

  Map<String, Object?> encode() => {
    'default_document_id_format': defaultDocumentIdFormat.toTfJson(),
  };
}

/// `default_document_id_format` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptionsDefaultDocumentIdFormat
    implements TerraformEnum {
  firehoseDefault('FIREHOSE_DEFAULT'),
  noDocumentId('NO_DOCUMENT_ID');

  const KinesisFirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptionsDefaultDocumentIdFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `opensearch_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `opensearch_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `opensearch_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `opensearch_configuration.s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationS3Configuration {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `opensearch_configuration.s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `opensearch_configuration.vpc_config` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationVpcConfig {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationVpcConfig({
    required this.roleArn,
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final RefTo<AwsIamRole> roleArn;

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `opensearchserverless_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchserverlessConfiguration {
  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    required this.collectionEndpoint,
    required this.indexName,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    this.cloudwatchLoggingOptions,
    this.processingConfiguration,
    required this.s3Configuration,
    this.vpcConfig,
  });

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String> collectionEndpoint;

  final TfArg<String> indexName;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<
    KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3BackupMode
  >?
  s3BackupMode;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig?
  vpcConfig;

  Map<String, Object?> encode() => {
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'collection_endpoint': collectionEndpoint.toTfJson(),
    'index_name': indexName.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    's3_configuration': s3Configuration.encode(),
    'vpc_config': ?vpcConfig?.encode(),
  };
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3BackupMode
    implements TerraformEnum {
  faileddocumentsonly('FailedDocumentsOnly'),
  alldocuments('AllDocuments');

  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `opensearchserverless_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `opensearchserverless_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `opensearchserverless_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `opensearchserverless_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `opensearchserverless_configuration.s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration {
  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `opensearchserverless_configuration.s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `opensearchserverless_configuration.vpc_config` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig {
  const KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig({
    required this.roleArn,
    required this.securityGroupIds,
    required this.subnetIds,
  });

  final RefTo<AwsIamRole> roleArn;

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `redshift_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfiguration {
  const KinesisFirehoseDeliveryStreamRedshiftConfiguration({
    required this.clusterJdbcurl,
    this.copyOptions,
    this.dataTableColumns,
    required this.dataTableName,
    this.password,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    this.username,
    this.cloudwatchLoggingOptions,
    this.processingConfiguration,
    this.s3BackupConfiguration,
    required this.s3Configuration,
    this.secretsManagerConfiguration,
  });

  final TfArg<String> clusterJdbcurl;

  final TfArg<String>? copyOptions;

  final TfArg<String>? dataTableColumns;

  final TfArg<String> dataTableName;

  final TfArg<String>? password;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupMode>?
  s3BackupMode;

  final TfArg<String>? username;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration?
  s3BackupConfiguration;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration?
  secretsManagerConfiguration;

  Map<String, Object?> encode() => {
    'cluster_jdbcurl': clusterJdbcurl.toTfJson(),
    'copy_options': ?copyOptions?.toTfJson(),
    'data_table_columns': ?dataTableColumns?.toTfJson(),
    'data_table_name': dataTableName.toTfJson(),
    'password': ?password?.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'username': ?username?.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    's3_backup_configuration': ?s3BackupConfiguration?.encode(),
    's3_configuration': s3Configuration.encode(),
    'secrets_manager_configuration': ?secretsManagerConfiguration?.encode(),
  };
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupMode
    implements TerraformEnum {
  disabled('Disabled'),
  enabled('Enabled');

  const KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `redshift_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `redshift_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `redshift_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `redshift_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `redshift_configuration.s3_backup_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `redshift_configuration.s3_backup_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `redshift_configuration.s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationS3Configuration {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `redshift_configuration.s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `redshift_configuration.secrets_manager_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration {
  const KinesisFirehoseDeliveryStreamRedshiftConfigurationSecretsManagerConfiguration({
    this.enabled,
    this.roleArn,
    this.secretArn,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'secret_arn': ?secretArn?.toTfJson(),
  };
}

/// Typed helper for the `server_side_encryption` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamServerSideEncryption {
  const KinesisFirehoseDeliveryStreamServerSideEncryption({
    this.enabled,
    this.keyArn,
    this.keyType,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsKmsKey>? keyArn;

  final TfArg<KinesisFirehoseDeliveryStreamServerSideEncryptionKeyType>?
  keyType;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'key_arn': ?keyArn?.encodeAs('arn').toTfJson(),
    'key_type': ?keyType?.toTfJson(),
  };
}

/// `key_type` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamServerSideEncryptionKeyType
    implements TerraformEnum {
  awsOwnedCmk('AWS_OWNED_CMK'),
  customerManagedCmk('CUSTOMER_MANAGED_CMK');

  const KinesisFirehoseDeliveryStreamServerSideEncryptionKeyType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `snowflake_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfiguration {
  const KinesisFirehoseDeliveryStreamSnowflakeConfiguration({
    required this.accountUrl,
    this.bufferingInterval,
    this.bufferingSize,
    this.contentColumnName,
    this.dataLoadingOption,
    required this.database,
    this.keyPassphrase,
    this.metadataColumnName,
    this.privateKey,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    required this.schema,
    required this.table,
    this.user,
    this.cloudwatchLoggingOptions,
    this.processingConfiguration,
    required this.s3Configuration,
    this.secretsManagerConfiguration,
    this.snowflakeRoleConfiguration,
    this.snowflakeVpcConfiguration,
  });

  final TfArg<String> accountUrl;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? contentColumnName;

  final TfArg<
    KinesisFirehoseDeliveryStreamSnowflakeConfigurationDataLoadingOption
  >?
  dataLoadingOption;

  final TfArg<String> database;

  final TfArg<String>? keyPassphrase;

  final TfArg<String>? metadataColumnName;

  final TfArg<String>? privateKey;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3BackupMode>?
  s3BackupMode;

  final TfArg<String> schema;

  final TfArg<String> table;

  final TfArg<String>? user;

  final KinesisFirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration?
  secretsManagerConfiguration;

  final KinesisFirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration?
  snowflakeRoleConfiguration;

  final KinesisFirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration?
  snowflakeVpcConfiguration;

  Map<String, Object?> encode() => {
    'account_url': accountUrl.toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'content_column_name': ?contentColumnName?.toTfJson(),
    'data_loading_option': ?dataLoadingOption?.toTfJson(),
    'database': database.toTfJson(),
    'key_passphrase': ?keyPassphrase?.toTfJson(),
    'metadata_column_name': ?metadataColumnName?.toTfJson(),
    'private_key': ?privateKey?.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'schema': schema.toTfJson(),
    'table': table.toTfJson(),
    'user': ?user?.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    's3_configuration': s3Configuration.encode(),
    'secrets_manager_configuration': ?secretsManagerConfiguration?.encode(),
    'snowflake_role_configuration': ?snowflakeRoleConfiguration?.encode(),
    'snowflake_vpc_configuration': ?snowflakeVpcConfiguration?.encode(),
  };
}

/// `data_loading_option` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamSnowflakeConfigurationDataLoadingOption
    implements TerraformEnum {
  jsonMapping('JSON_MAPPING'),
  variantContentMapping('VARIANT_CONTENT_MAPPING'),
  variantContentAndMetadataMapping('VARIANT_CONTENT_AND_METADATA_MAPPING');

  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationDataLoadingOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3BackupMode
    implements TerraformEnum {
  faileddataonly('FailedDataOnly'),
  alldata('AllData');

  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `snowflake_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `snowflake_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `snowflake_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `snowflake_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `snowflake_configuration.s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3Configuration {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `snowflake_configuration.s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `snowflake_configuration.secrets_manager_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationSecretsManagerConfiguration({
    this.enabled,
    this.roleArn,
    this.secretArn,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'secret_arn': ?secretArn?.toTfJson(),
  };
}

/// Typed helper for the `snowflake_configuration.snowflake_role_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationSnowflakeRoleConfiguration({
    this.enabled,
    this.snowflakeRole,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? snowflakeRole;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'snowflake_role': ?snowflakeRole?.toTfJson(),
  };
}

/// Typed helper for the `snowflake_configuration.snowflake_vpc_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration {
  const KinesisFirehoseDeliveryStreamSnowflakeConfigurationSnowflakeVpcConfiguration({
    required this.privateLinkVpceId,
  });

  final TfArg<String> privateLinkVpceId;

  Map<String, Object?> encode() => {
    'private_link_vpce_id': privateLinkVpceId.toTfJson(),
  };
}

/// Typed helper for the `splunk_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSplunkConfiguration {
  const KinesisFirehoseDeliveryStreamSplunkConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.hecAcknowledgmentTimeout,
    required this.hecEndpoint,
    this.hecEndpointType,
    this.hecToken,
    this.retryDuration,
    this.s3BackupMode,
    this.cloudwatchLoggingOptions,
    this.processingConfiguration,
    required this.s3Configuration,
    this.secretsManagerConfiguration,
  });

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<num>? hecAcknowledgmentTimeout;

  final TfArg<String> hecEndpoint;

  final TfArg<KinesisFirehoseDeliveryStreamSplunkConfigurationHecEndpointType>?
  hecEndpointType;

  final TfArg<String>? hecToken;

  final TfArg<num>? retryDuration;

  final TfArg<KinesisFirehoseDeliveryStreamSplunkConfigurationS3BackupMode>?
  s3BackupMode;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration?
  secretsManagerConfiguration;

  Map<String, Object?> encode() => {
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'hec_acknowledgment_timeout': ?hecAcknowledgmentTimeout?.toTfJson(),
    'hec_endpoint': hecEndpoint.toTfJson(),
    'hec_endpoint_type': ?hecEndpointType?.toTfJson(),
    'hec_token': ?hecToken?.toTfJson(),
    'retry_duration': ?retryDuration?.toTfJson(),
    's3_backup_mode': ?s3BackupMode?.toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
    'processing_configuration': ?processingConfiguration?.encode(),
    's3_configuration': s3Configuration.encode(),
    'secrets_manager_configuration': ?secretsManagerConfiguration?.encode(),
  };
}

/// `hec_endpoint_type` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamSplunkConfigurationHecEndpointType
    implements TerraformEnum {
  raw('Raw'),
  event('Event');

  const KinesisFirehoseDeliveryStreamSplunkConfigurationHecEndpointType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `s3_backup_mode` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamSplunkConfigurationS3BackupMode
    implements TerraformEnum {
  failedeventsonly('FailedEventsOnly'),
  allevents('AllEvents');

  const KinesisFirehoseDeliveryStreamSplunkConfigurationS3BackupMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `splunk_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `splunk_configuration.processing_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<
    KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessors
  >?
  processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `splunk_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessors {
  const KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<
    KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessorsParameters
  >?
  parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `splunk_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessorsParameters {
  const KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfigurationProcessorsParameters({
    required this.parameterName,
    required this.parameterValue,
  });

  final TfArg<String> parameterName;

  final TfArg<String> parameterValue;

  Map<String, Object?> encode() => {
    'parameter_name': parameterName.toTfJson(),
    'parameter_value': parameterValue.toTfJson(),
  };
}

/// Typed helper for the `splunk_configuration.s3_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSplunkConfigurationS3Configuration {
  const KinesisFirehoseDeliveryStreamSplunkConfigurationS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
    this.cloudwatchLoggingOptions,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'buffering_interval': ?bufferingInterval?.toTfJson(),
    'buffering_size': ?bufferingSize?.toTfJson(),
    'compression_format': ?compressionFormat?.toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'cloudwatch_logging_options': ?cloudwatchLoggingOptions?.encode(),
  };
}

/// Typed helper for the `splunk_configuration.s3_configuration.cloudwatch_logging_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSplunkConfigurationS3ConfigurationCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamSplunkConfigurationS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name': ?logStreamName?.toTfJson(),
  };
}

/// Typed helper for the `splunk_configuration.secrets_manager_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration {
  const KinesisFirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration({
    this.enabled,
    this.roleArn,
    this.secretArn,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsIamRole>? roleArn;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    'secret_arn': ?secretArn?.toTfJson(),
  };
}

/// Factory wrapper for `aws_kinesis_firehose_delivery_stream`.
final class AwsKinesisFirehoseDeliveryStream extends Resource {
  static const String tfType = 'aws_kinesis_firehose_delivery_stream';

  AwsKinesisFirehoseDeliveryStream({
    required super.localName,
    TfArg<String>? arn,
    required TfArg<KinesisFirehoseDeliveryStreamDestination> destination,
    TfArg<String>? destinationId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? versionId,
    KinesisFirehoseDeliveryStreamElasticsearchConfiguration?
    elasticsearchConfiguration,
    KinesisFirehoseDeliveryStreamExtendedS3Configuration?
    extendedS3Configuration,
    KinesisFirehoseDeliveryStreamHttpEndpointConfiguration?
    httpEndpointConfiguration,
    KinesisFirehoseDeliveryStreamIcebergConfiguration? icebergConfiguration,
    KinesisFirehoseDeliveryStreamSource? source,
    KinesisFirehoseDeliveryStreamOpensearchConfiguration?
    opensearchConfiguration,
    KinesisFirehoseDeliveryStreamOpensearchserverlessConfiguration?
    opensearchserverlessConfiguration,
    KinesisFirehoseDeliveryStreamRedshiftConfiguration? redshiftConfiguration,
    KinesisFirehoseDeliveryStreamSnowflakeConfiguration? snowflakeConfiguration,
    KinesisFirehoseDeliveryStreamSplunkConfiguration? splunkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': ?arn,
           'destination': destination,
           'destination_id': ?destinationId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'version_id': ?versionId,
           if (elasticsearchConfiguration != null)
             'elasticsearch_configuration': TfArg.literal(
               elasticsearchConfiguration.encode(),
             ),
           if (extendedS3Configuration != null)
             'extended_s3_configuration': TfArg.literal(
               extendedS3Configuration.encode(),
             ),
           if (httpEndpointConfiguration != null)
             'http_endpoint_configuration': TfArg.literal(
               httpEndpointConfiguration.encode(),
             ),
           if (icebergConfiguration != null)
             'iceberg_configuration': TfArg.literal(
               icebergConfiguration.encode(),
             ),
           ...?source?.argMap,
           if (opensearchConfiguration != null)
             'opensearch_configuration': TfArg.literal(
               opensearchConfiguration.encode(),
             ),
           if (opensearchserverlessConfiguration != null)
             'opensearchserverless_configuration': TfArg.literal(
               opensearchserverlessConfiguration.encode(),
             ),
           if (redshiftConfiguration != null)
             'redshift_configuration': TfArg.literal(
               redshiftConfiguration.encode(),
             ),
           if (snowflakeConfiguration != null)
             'snowflake_configuration': TfArg.literal(
               snowflakeConfiguration.encode(),
             ),
           if (splunkConfiguration != null)
             'splunk_configuration': TfArg.literal(
               splunkConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisFirehoseDeliveryStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKinesisFirehoseDeliveryStream>`.
  RefTo<AwsKinesisFirehoseDeliveryStream> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
