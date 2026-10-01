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

  final TfArg<KinesisFirehoseDeliveryStreamIndexRotationPeriod>?
  indexRotationPeriod;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<
    KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3BackupMode
  >?
  s3BackupMode;

  final TfArg<String>? typeName;

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamS3Configuration s3Configuration;

  final KinesisFirehoseDeliveryStreamVpcConfig? vpcConfig;

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
enum KinesisFirehoseDeliveryStreamIndexRotationPeriod implements TerraformEnum {
  norotation('NoRotation'),
  onehour('OneHour'),
  oneday('OneDay'),
  oneweek('OneWeek'),
  onemonth('OneMonth');

  const KinesisFirehoseDeliveryStreamIndexRotationPeriod(this.terraformValue);
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
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions {
  const KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions({
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
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisFirehoseDeliveryStreamProcessingConfiguration {
  const KinesisFirehoseDeliveryStreamProcessingConfiguration({
    this.enabled,
    this.processors,
  });

  final TfArg<bool>? enabled;

  final List<KinesisFirehoseDeliveryStreamProcessors>? processors;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (processors != null)
      'processors': [for (final e in processors!) e.encode()],
  };
}

/// Typed helper for the `elasticsearch_configuration.processing_configuration.processors` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisFirehoseDeliveryStreamProcessors {
  const KinesisFirehoseDeliveryStreamProcessors({
    required this.type,
    this.parameters,
  });

  final TfArg<String> type;

  final List<KinesisFirehoseDeliveryStreamParameters>? parameters;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `elasticsearch_configuration.processing_configuration.processors.parameters` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisFirehoseDeliveryStreamParameters {
  const KinesisFirehoseDeliveryStreamParameters({
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
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisFirehoseDeliveryStreamS3Configuration {
  const KinesisFirehoseDeliveryStreamS3Configuration({
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

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
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

/// Typed helper for the `elasticsearch_configuration.vpc_config` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisFirehoseDeliveryStreamVpcConfig {
  const KinesisFirehoseDeliveryStreamVpcConfig({
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

  final TfArg<KinesisFirehoseDeliveryStreamCompressionFormat>?
  compressionFormat;

  final TfArg<String>? customTimeZone;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? fileExtension;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupMode>?
  s3BackupMode;

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration?
  dataFormatConversionConfiguration;

  final KinesisFirehoseDeliveryStreamDynamicPartitioningConfiguration?
  dynamicPartitioningConfiguration;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamS3BackupConfiguration?
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
enum KinesisFirehoseDeliveryStreamCompressionFormat implements TerraformEnum {
  uncompressed('UNCOMPRESSED'),
  gzip('GZIP'),
  zip('ZIP'),
  snappy('Snappy'),
  hadoopSnappy('HADOOP_SNAPPY');

  const KinesisFirehoseDeliveryStreamCompressionFormat(this.terraformValue);
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

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration {
  const KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration({
    this.enabled,
    required this.inputFormatConfiguration,
    required this.outputFormatConfiguration,
    required this.schemaConfiguration,
  });

  final TfArg<bool>? enabled;

  final KinesisFirehoseDeliveryStreamInputFormatConfiguration
  inputFormatConfiguration;

  final KinesisFirehoseDeliveryStreamOutputFormatConfiguration
  outputFormatConfiguration;

  final KinesisFirehoseDeliveryStreamSchemaConfiguration schemaConfiguration;

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
final class KinesisFirehoseDeliveryStreamInputFormatConfiguration {
  const KinesisFirehoseDeliveryStreamInputFormatConfiguration({
    required this.deserializer,
  });

  final KinesisFirehoseDeliveryStreamDeserializer deserializer;

  Map<String, Object?> encode() => {'deserializer': deserializer.encode()};
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.input_format_configuration.deserializer` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamDeserializer {
  const KinesisFirehoseDeliveryStreamDeserializer({this.jsonSerDe});

  final KinesisFirehoseDeliveryStreamDeserializerJsonSerDe? jsonSerDe;

  Map<String, Object?> encode() => {...?jsonSerDe?.encode()};
}

/// At most one of `hive_json_ser_de`, `open_x_json_ser_de` on the `extended_s3_configuration.data_format_conversion_configuration.input_format_configuration.deserializer` block of `aws_kinesis_firehose_delivery_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hiveJsonSerDe(...)`.
sealed class KinesisFirehoseDeliveryStreamDeserializerJsonSerDe {
  const KinesisFirehoseDeliveryStreamDeserializerJsonSerDe();

  /// Sets `hive_json_ser_de`.
  const factory KinesisFirehoseDeliveryStreamDeserializerJsonSerDe.hiveJsonSerDe(
    KinesisFirehoseDeliveryStreamHiveJsonSerDe hiveJsonSerDe,
  ) = KinesisFirehoseDeliveryStreamDeserializerHiveJsonSerDe;

  /// Sets `open_x_json_ser_de`.
  const factory KinesisFirehoseDeliveryStreamDeserializerJsonSerDe.openXJsonSerDe(
    KinesisFirehoseDeliveryStreamOpenXJsonSerDe openXJsonSerDe,
  ) = KinesisFirehoseDeliveryStreamDeserializerOpenXJsonSerDe;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [KinesisFirehoseDeliveryStreamDeserializerJsonSerDe.hiveJsonSerDe] choice: sets `hive_json_ser_de`.
final class KinesisFirehoseDeliveryStreamDeserializerHiveJsonSerDe
    extends KinesisFirehoseDeliveryStreamDeserializerJsonSerDe {
  const KinesisFirehoseDeliveryStreamDeserializerHiveJsonSerDe(
    this.hiveJsonSerDe,
  );

  final KinesisFirehoseDeliveryStreamHiveJsonSerDe hiveJsonSerDe;

  @override
  String get blockKey => 'hive_json_ser_de';

  @override
  Map<String, Object?> encode() => {'hive_json_ser_de': hiveJsonSerDe.encode()};
}

/// The [KinesisFirehoseDeliveryStreamDeserializerJsonSerDe.openXJsonSerDe] choice: sets `open_x_json_ser_de`.
final class KinesisFirehoseDeliveryStreamDeserializerOpenXJsonSerDe
    extends KinesisFirehoseDeliveryStreamDeserializerJsonSerDe {
  const KinesisFirehoseDeliveryStreamDeserializerOpenXJsonSerDe(
    this.openXJsonSerDe,
  );

  final KinesisFirehoseDeliveryStreamOpenXJsonSerDe openXJsonSerDe;

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
final class KinesisFirehoseDeliveryStreamHiveJsonSerDe {
  const KinesisFirehoseDeliveryStreamHiveJsonSerDe({this.timestampFormats});

  final TfArg<List<String>>? timestampFormats;

  Map<String, Object?> encode() => {
    'timestamp_formats': ?timestampFormats?.toTfJson(),
  };
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpenXJsonSerDe {
  const KinesisFirehoseDeliveryStreamOpenXJsonSerDe({
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
final class KinesisFirehoseDeliveryStreamOutputFormatConfiguration {
  const KinesisFirehoseDeliveryStreamOutputFormatConfiguration({
    required this.serializer,
  });

  final KinesisFirehoseDeliveryStreamSerializer serializer;

  Map<String, Object?> encode() => {'serializer': serializer.encode()};
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration.serializer` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSerializer {
  const KinesisFirehoseDeliveryStreamSerializer({this.serDe});

  final KinesisFirehoseDeliveryStreamSerializerSerDe? serDe;

  Map<String, Object?> encode() => {...?serDe?.encode()};
}

/// At most one of `orc_ser_de`, `parquet_ser_de` on the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration.serializer` block of `aws_kinesis_firehose_delivery_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.orcSerDe(...)`.
sealed class KinesisFirehoseDeliveryStreamSerializerSerDe {
  const KinesisFirehoseDeliveryStreamSerializerSerDe();

  /// Sets `orc_ser_de`.
  const factory KinesisFirehoseDeliveryStreamSerializerSerDe.orcSerDe(
    KinesisFirehoseDeliveryStreamOrcSerDe orcSerDe,
  ) = KinesisFirehoseDeliveryStreamSerializerOrcSerDe;

  /// Sets `parquet_ser_de`.
  const factory KinesisFirehoseDeliveryStreamSerializerSerDe.parquetSerDe(
    KinesisFirehoseDeliveryStreamParquetSerDe parquetSerDe,
  ) = KinesisFirehoseDeliveryStreamSerializerParquetSerDe;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [KinesisFirehoseDeliveryStreamSerializerSerDe.orcSerDe] choice: sets `orc_ser_de`.
final class KinesisFirehoseDeliveryStreamSerializerOrcSerDe
    extends KinesisFirehoseDeliveryStreamSerializerSerDe {
  const KinesisFirehoseDeliveryStreamSerializerOrcSerDe(this.orcSerDe);

  final KinesisFirehoseDeliveryStreamOrcSerDe orcSerDe;

  @override
  String get blockKey => 'orc_ser_de';

  @override
  Map<String, Object?> encode() => {'orc_ser_de': orcSerDe.encode()};
}

/// The [KinesisFirehoseDeliveryStreamSerializerSerDe.parquetSerDe] choice: sets `parquet_ser_de`.
final class KinesisFirehoseDeliveryStreamSerializerParquetSerDe
    extends KinesisFirehoseDeliveryStreamSerializerSerDe {
  const KinesisFirehoseDeliveryStreamSerializerParquetSerDe(this.parquetSerDe);

  final KinesisFirehoseDeliveryStreamParquetSerDe parquetSerDe;

  @override
  String get blockKey => 'parquet_ser_de';

  @override
  Map<String, Object?> encode() => {'parquet_ser_de': parquetSerDe.encode()};
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOrcSerDe {
  const KinesisFirehoseDeliveryStreamOrcSerDe({
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

  final TfArg<List<String>>? bloomFilterColumns;

  final TfArg<num>? bloomFilterFalsePositiveProbability;

  final TfArg<KinesisFirehoseDeliveryStreamOrcSerDeCompression>? compression;

  final TfArg<num>? dictionaryKeyThreshold;

  final TfArg<bool>? enablePadding;

  final TfArg<KinesisFirehoseDeliveryStreamFormatVersion>? formatVersion;

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
enum KinesisFirehoseDeliveryStreamOrcSerDeCompression implements TerraformEnum {
  none('NONE'),
  zlib('ZLIB'),
  snappy('SNAPPY');

  const KinesisFirehoseDeliveryStreamOrcSerDeCompression(this.terraformValue);
  @override
  final String terraformValue;
}

/// `format_version` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamFormatVersion implements TerraformEnum {
  v011('V0_11'),
  v012('V0_12');

  const KinesisFirehoseDeliveryStreamFormatVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamParquetSerDe {
  const KinesisFirehoseDeliveryStreamParquetSerDe({
    this.blockSizeBytes,
    this.compression,
    this.enableDictionaryCompression,
    this.maxPaddingBytes,
    this.pageSizeBytes,
    this.writerVersion,
  });

  final TfArg<num>? blockSizeBytes;

  final TfArg<KinesisFirehoseDeliveryStreamParquetSerDeCompression>?
  compression;

  final TfArg<bool>? enableDictionaryCompression;

  final TfArg<num>? maxPaddingBytes;

  final TfArg<num>? pageSizeBytes;

  final TfArg<KinesisFirehoseDeliveryStreamWriterVersion>? writerVersion;

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
enum KinesisFirehoseDeliveryStreamParquetSerDeCompression
    implements TerraformEnum {
  uncompressed('UNCOMPRESSED'),
  gzip('GZIP'),
  snappy('SNAPPY');

  const KinesisFirehoseDeliveryStreamParquetSerDeCompression(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `writer_version` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamWriterVersion implements TerraformEnum {
  v1('V1'),
  v2('V2');

  const KinesisFirehoseDeliveryStreamWriterVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `extended_s3_configuration.data_format_conversion_configuration.schema_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSchemaConfiguration {
  const KinesisFirehoseDeliveryStreamSchemaConfiguration({
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
final class KinesisFirehoseDeliveryStreamDynamicPartitioningConfiguration {
  const KinesisFirehoseDeliveryStreamDynamicPartitioningConfiguration({
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

/// Typed helper for the `extended_s3_configuration.s3_backup_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisFirehoseDeliveryStreamS3BackupConfiguration {
  const KinesisFirehoseDeliveryStreamS3BackupConfiguration({
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

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
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

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamRequestConfiguration? requestConfiguration;

  final KinesisFirehoseDeliveryStreamS3Configuration s3Configuration;

  final KinesisFirehoseDeliveryStreamSecretsManagerConfiguration?
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

/// Typed helper for the `http_endpoint_configuration.request_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamRequestConfiguration {
  const KinesisFirehoseDeliveryStreamRequestConfiguration({
    this.contentEncoding,
    this.commonAttributes,
  });

  final TfArg<String>? contentEncoding;

  final List<KinesisFirehoseDeliveryStreamCommonAttributes>? commonAttributes;

  Map<String, Object?> encode() => {
    'content_encoding': ?contentEncoding?.toTfJson(),
    if (commonAttributes != null)
      'common_attributes': [for (final e in commonAttributes!) e.encode()],
  };
}

/// Typed helper for the `http_endpoint_configuration.request_configuration.common_attributes` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamCommonAttributes {
  const KinesisFirehoseDeliveryStreamCommonAttributes({
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

/// Typed helper for the `http_endpoint_configuration.secrets_manager_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class KinesisFirehoseDeliveryStreamSecretsManagerConfiguration {
  const KinesisFirehoseDeliveryStreamSecretsManagerConfiguration({
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

  final TfArg<
    KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3BackupMode
  >?
  s3BackupMode;

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final List<KinesisFirehoseDeliveryStreamDestinationTableConfiguration>?
  destinationTableConfiguration;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamS3Configuration s3Configuration;

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

/// Typed helper for the `iceberg_configuration.destination_table_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamDestinationTableConfiguration {
  const KinesisFirehoseDeliveryStreamDestinationTableConfiguration({
    required this.databaseName,
    this.s3ErrorOutputPrefix,
    required this.tableName,
    this.uniqueKeys,
  });

  final TfArg<String> databaseName;

  final TfArg<String>? s3ErrorOutputPrefix;

  final TfArg<String> tableName;

  final TfArg<List<String>>? uniqueKeys;

  Map<String, Object?> encode() => {
    'database_name': databaseName.toTfJson(),
    's3_error_output_prefix': ?s3ErrorOutputPrefix?.toTfJson(),
    'table_name': tableName.toTfJson(),
    'unique_keys': ?uniqueKeys?.toTfJson(),
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

  final KinesisFirehoseDeliveryStreamAuthenticationConfiguration
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
final class KinesisFirehoseDeliveryStreamAuthenticationConfiguration {
  const KinesisFirehoseDeliveryStreamAuthenticationConfiguration({
    required this.connectivity,
    required this.roleArn,
  });

  final TfArg<KinesisFirehoseDeliveryStreamConnectivity> connectivity;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'connectivity': connectivity.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// `connectivity` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamConnectivity implements TerraformEnum {
  public('PUBLIC'),
  private('PRIVATE');

  const KinesisFirehoseDeliveryStreamConnectivity(this.terraformValue);
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

  final TfArg<KinesisFirehoseDeliveryStreamIndexRotationPeriod>?
  indexRotationPeriod;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<
    KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3BackupMode
  >?
  s3BackupMode;

  final TfArg<String>? typeName;

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamDocumentIdOptions? documentIdOptions;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamS3Configuration s3Configuration;

  final KinesisFirehoseDeliveryStreamVpcConfig? vpcConfig;

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

/// Typed helper for the `opensearch_configuration.document_id_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamDocumentIdOptions {
  const KinesisFirehoseDeliveryStreamDocumentIdOptions({
    required this.defaultDocumentIdFormat,
  });

  final TfArg<KinesisFirehoseDeliveryStreamDefaultDocumentIdFormat>
  defaultDocumentIdFormat;

  Map<String, Object?> encode() => {
    'default_document_id_format': defaultDocumentIdFormat.toTfJson(),
  };
}

/// `default_document_id_format` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamDefaultDocumentIdFormat
    implements TerraformEnum {
  firehoseDefault('FIREHOSE_DEFAULT'),
  noDocumentId('NO_DOCUMENT_ID');

  const KinesisFirehoseDeliveryStreamDefaultDocumentIdFormat(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3BackupMode
  >?
  s3BackupMode;

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamS3Configuration s3Configuration;

  final KinesisFirehoseDeliveryStreamVpcConfig? vpcConfig;

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

  final TfArg<KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupMode>?
  s3BackupMode;

  final TfArg<String>? username;

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamS3BackupConfiguration?
  s3BackupConfiguration;

  final KinesisFirehoseDeliveryStreamS3Configuration s3Configuration;

  final KinesisFirehoseDeliveryStreamSecretsManagerConfiguration?
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

  final TfArg<KinesisFirehoseDeliveryStreamKeyType>? keyType;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'key_arn': ?keyArn?.encodeAs('arn').toTfJson(),
    'key_type': ?keyType?.toTfJson(),
  };
}

/// `key_type` — derived from the provider schema description.
enum KinesisFirehoseDeliveryStreamKeyType implements TerraformEnum {
  awsOwnedCmk('AWS_OWNED_CMK'),
  customerManagedCmk('CUSTOMER_MANAGED_CMK');

  const KinesisFirehoseDeliveryStreamKeyType(this.terraformValue);
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

  final TfArg<KinesisFirehoseDeliveryStreamDataLoadingOption>?
  dataLoadingOption;

  final TfArg<String> database;

  final TfArg<String>? keyPassphrase;

  final TfArg<String>? metadataColumnName;

  final TfArg<String>? privateKey;

  final TfArg<num>? retryDuration;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<
    KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3BackupMode
  >?
  s3BackupMode;

  final TfArg<String> schema;

  final TfArg<String> table;

  final TfArg<String>? user;

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamS3Configuration s3Configuration;

  final KinesisFirehoseDeliveryStreamSecretsManagerConfiguration?
  secretsManagerConfiguration;

  final KinesisFirehoseDeliveryStreamSnowflakeRoleConfiguration?
  snowflakeRoleConfiguration;

  final KinesisFirehoseDeliveryStreamSnowflakeVpcConfiguration?
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
enum KinesisFirehoseDeliveryStreamDataLoadingOption implements TerraformEnum {
  jsonMapping('JSON_MAPPING'),
  variantContentMapping('VARIANT_CONTENT_MAPPING'),
  variantContentAndMetadataMapping('VARIANT_CONTENT_AND_METADATA_MAPPING');

  const KinesisFirehoseDeliveryStreamDataLoadingOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `snowflake_configuration.snowflake_role_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamSnowflakeRoleConfiguration {
  const KinesisFirehoseDeliveryStreamSnowflakeRoleConfiguration({
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
final class KinesisFirehoseDeliveryStreamSnowflakeVpcConfiguration {
  const KinesisFirehoseDeliveryStreamSnowflakeVpcConfiguration({
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

  final TfArg<KinesisFirehoseDeliveryStreamHecEndpointType>? hecEndpointType;

  final TfArg<String>? hecToken;

  final TfArg<num>? retryDuration;

  final TfArg<KinesisFirehoseDeliveryStreamSplunkConfigurationS3BackupMode>?
  s3BackupMode;

  final KinesisFirehoseDeliveryStreamCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamS3Configuration s3Configuration;

  final KinesisFirehoseDeliveryStreamSecretsManagerConfiguration?
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
enum KinesisFirehoseDeliveryStreamHecEndpointType implements TerraformEnum {
  raw('Raw'),
  event('Event');

  const KinesisFirehoseDeliveryStreamHecEndpointType(this.terraformValue);
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `destination_id` attribute.
  TfRef<String> get destinationId =>
      TfRef.attribute<String>(this, 'destination_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');
}
