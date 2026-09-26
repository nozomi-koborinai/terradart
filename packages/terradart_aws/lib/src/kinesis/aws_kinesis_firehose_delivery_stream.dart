// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesis_firehose_delivery_stream`.
const Set<String> _awsKinesisFirehoseDeliveryStreamSensitive = <String>{
  'http_endpoint_configuration.access_key',
  'redshift_configuration.password',
  'snowflake_configuration.key_passphrase',
  'snowflake_configuration.private_key',
};

/// Typed helper for the `elasticsearch_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamElasticsearchConfiguration {
  const KinesisFirehoseDeliveryStreamElasticsearchConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.clusterEndpoint,
    this.domainArn,
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

  final TfArg<String>? clusterEndpoint;

  final TfArg<String>? domainArn;

  final TfArg<String> indexName;

  final TfArg<String>? indexRotationPeriod;

  final TfArg<num>? retryDuration;

  final TfArg<String> roleArn;

  final TfArg<String>? s3BackupMode;

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
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (clusterEndpoint != null)
      'cluster_endpoint': clusterEndpoint!.toTfJson(),
    if (domainArn != null) 'domain_arn': domainArn!.toTfJson(),
    'index_name': indexName.toTfJson(),
    if (indexRotationPeriod != null)
      'index_rotation_period': indexRotationPeriod!.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    if (typeName != null) 'type_name': typeName!.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    's3_configuration': s3Configuration.encode(),
    if (vpcConfig != null) 'vpc_config': vpcConfig!.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String> roleArn;

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? customTimeZone;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? fileExtension;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final TfArg<String>? s3BackupMode;

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
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (customTimeZone != null) 'custom_time_zone': customTimeZone!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (fileExtension != null) 'file_extension': fileExtension!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (dataFormatConversionConfiguration != null)
      'data_format_conversion_configuration': dataFormatConversionConfiguration!
          .encode(),
    if (dynamicPartitioningConfiguration != null)
      'dynamic_partitioning_configuration': dynamicPartitioningConfiguration!
          .encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    if (s3BackupConfiguration != null)
      's3_backup_configuration': s3BackupConfiguration!.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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
    this.hiveJsonSerDe,
    this.openXJsonSerDe,
  });

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerHiveJsonSerDe?
  hiveJsonSerDe;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationInputFormatConfigurationDeserializerOpenXJsonSerDe?
  openXJsonSerDe;

  Map<String, Object?> encode() => {
    if (hiveJsonSerDe != null) 'hive_json_ser_de': hiveJsonSerDe!.encode(),
    if (openXJsonSerDe != null) 'open_x_json_ser_de': openXJsonSerDe!.encode(),
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
    if (timestampFormats != null)
      'timestamp_formats': timestampFormats!.toTfJson(),
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
    if (caseInsensitive != null)
      'case_insensitive': caseInsensitive!.toTfJson(),
    if (columnToJsonKeyMappings != null)
      'column_to_json_key_mappings': columnToJsonKeyMappings!.toTfJson(),
    if (convertDotsInJsonKeysToUnderscores != null)
      'convert_dots_in_json_keys_to_underscores':
          convertDotsInJsonKeysToUnderscores!.toTfJson(),
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
    this.orcSerDe,
    this.parquetSerDe,
  });

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerOrcSerDe?
  orcSerDe;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfigurationOutputFormatConfigurationSerializerParquetSerDe?
  parquetSerDe;

  Map<String, Object?> encode() => {
    if (orcSerDe != null) 'orc_ser_de': orcSerDe!.encode(),
    if (parquetSerDe != null) 'parquet_ser_de': parquetSerDe!.encode(),
  };
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

  final TfArg<String>? compression;

  final TfArg<num>? dictionaryKeyThreshold;

  final TfArg<bool>? enablePadding;

  final TfArg<String>? formatVersion;

  final TfArg<num>? paddingTolerance;

  final TfArg<num>? rowIndexStride;

  final TfArg<num>? stripeSizeBytes;

  Map<String, Object?> encode() => {
    if (blockSizeBytes != null) 'block_size_bytes': blockSizeBytes!.toTfJson(),
    if (bloomFilterColumns != null)
      'bloom_filter_columns': bloomFilterColumns!.toTfJson(),
    if (bloomFilterFalsePositiveProbability != null)
      'bloom_filter_false_positive_probability':
          bloomFilterFalsePositiveProbability!.toTfJson(),
    if (compression != null) 'compression': compression!.toTfJson(),
    if (dictionaryKeyThreshold != null)
      'dictionary_key_threshold': dictionaryKeyThreshold!.toTfJson(),
    if (enablePadding != null) 'enable_padding': enablePadding!.toTfJson(),
    if (formatVersion != null) 'format_version': formatVersion!.toTfJson(),
    if (paddingTolerance != null)
      'padding_tolerance': paddingTolerance!.toTfJson(),
    if (rowIndexStride != null) 'row_index_stride': rowIndexStride!.toTfJson(),
    if (stripeSizeBytes != null)
      'stripe_size_bytes': stripeSizeBytes!.toTfJson(),
  };
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

  final TfArg<String>? compression;

  final TfArg<bool>? enableDictionaryCompression;

  final TfArg<num>? maxPaddingBytes;

  final TfArg<num>? pageSizeBytes;

  final TfArg<String>? writerVersion;

  Map<String, Object?> encode() => {
    if (blockSizeBytes != null) 'block_size_bytes': blockSizeBytes!.toTfJson(),
    if (compression != null) 'compression': compression!.toTfJson(),
    if (enableDictionaryCompression != null)
      'enable_dictionary_compression': enableDictionaryCompression!.toTfJson(),
    if (maxPaddingBytes != null)
      'max_padding_bytes': maxPaddingBytes!.toTfJson(),
    if (pageSizeBytes != null) 'page_size_bytes': pageSizeBytes!.toTfJson(),
    if (writerVersion != null) 'writer_version': writerVersion!.toTfJson(),
  };
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

  final TfArg<String> roleArn;

  final TfArg<String> tableName;

  final TfArg<String>? versionId;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'table_name': tableName.toTfJson(),
    if (versionId != null) 'version_id': versionId!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String>? roleArn;

  final TfArg<String>? s3BackupMode;

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
    if (accessKey != null) 'access_key': accessKey!.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    'url': url.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    if (requestConfiguration != null)
      'request_configuration': requestConfiguration!.encode(),
    's3_configuration': s3Configuration.encode(),
    if (secretsManagerConfiguration != null)
      'secrets_manager_configuration': secretsManagerConfiguration!.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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
    if (contentEncoding != null)
      'content_encoding': contentEncoding!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String>? roleArn;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
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

  final TfArg<String> roleArn;

  final TfArg<String>? s3BackupMode;

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
    if (appendOnly != null) 'append_only': appendOnly!.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    'catalog_arn': catalogArn.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (destinationTableConfiguration != null)
      'destination_table_configuration': [
        for (final e in destinationTableConfiguration!) e.encode(),
      ],
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    's3_configuration': s3Configuration.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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
    if (s3ErrorOutputPrefix != null)
      's3_error_output_prefix': s3ErrorOutputPrefix!.toTfJson(),
    'table_name': tableName.toTfJson(),
    if (uniqueKeys != null) 'unique_keys': uniqueKeys!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamIcebergConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'kinesis_stream_arn': kinesisStreamArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
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
    if (readFromTimestamp != null)
      'read_from_timestamp': readFromTimestamp!.toTfJson(),
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

  final TfArg<String> connectivity;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    'connectivity': connectivity.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `opensearch_configuration` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfiguration {
  const KinesisFirehoseDeliveryStreamOpensearchConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.clusterEndpoint,
    this.domainArn,
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

  final TfArg<String>? clusterEndpoint;

  final TfArg<String>? domainArn;

  final TfArg<String> indexName;

  final TfArg<String>? indexRotationPeriod;

  final TfArg<num>? retryDuration;

  final TfArg<String> roleArn;

  final TfArg<String>? s3BackupMode;

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
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (clusterEndpoint != null)
      'cluster_endpoint': clusterEndpoint!.toTfJson(),
    if (domainArn != null) 'domain_arn': domainArn!.toTfJson(),
    'index_name': indexName.toTfJson(),
    if (indexRotationPeriod != null)
      'index_rotation_period': indexRotationPeriod!.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    if (typeName != null) 'type_name': typeName!.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (documentIdOptions != null)
      'document_id_options': documentIdOptions!.encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    's3_configuration': s3Configuration.encode(),
    if (vpcConfig != null) 'vpc_config': vpcConfig!.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
  };
}

/// Typed helper for the `opensearch_configuration.document_id_options` block of
/// `aws_kinesis_firehose_delivery_stream` (derived from provider schema).
@immutable
final class KinesisFirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions {
  const KinesisFirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions({
    required this.defaultDocumentIdFormat,
  });

  final TfArg<String> defaultDocumentIdFormat;

  Map<String, Object?> encode() => {
    'default_document_id_format': defaultDocumentIdFormat.toTfJson(),
  };
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String> roleArn;

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
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

  final TfArg<String> roleArn;

  final TfArg<String>? s3BackupMode;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig?
  vpcConfig;

  Map<String, Object?> encode() => {
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    'collection_endpoint': collectionEndpoint.toTfJson(),
    'index_name': indexName.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    's3_configuration': s3Configuration.encode(),
    if (vpcConfig != null) 'vpc_config': vpcConfig!.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String> roleArn;

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
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

  final TfArg<String> roleArn;

  final TfArg<String>? s3BackupMode;

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
    if (copyOptions != null) 'copy_options': copyOptions!.toTfJson(),
    if (dataTableColumns != null)
      'data_table_columns': dataTableColumns!.toTfJson(),
    'data_table_name': dataTableName.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    if (s3BackupConfiguration != null)
      's3_backup_configuration': s3BackupConfiguration!.encode(),
    's3_configuration': s3Configuration.encode(),
    if (secretsManagerConfiguration != null)
      'secrets_manager_configuration': secretsManagerConfiguration!.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String>? roleArn;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
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

  final TfArg<String>? keyArn;

  final TfArg<String>? keyType;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (keyArn != null) 'key_arn': keyArn!.toTfJson(),
    if (keyType != null) 'key_type': keyType!.toTfJson(),
  };
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

  final TfArg<String>? dataLoadingOption;

  final TfArg<String> database;

  final TfArg<String>? keyPassphrase;

  final TfArg<String>? metadataColumnName;

  final TfArg<String>? privateKey;

  final TfArg<num>? retryDuration;

  final TfArg<String> roleArn;

  final TfArg<String>? s3BackupMode;

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
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (contentColumnName != null)
      'content_column_name': contentColumnName!.toTfJson(),
    if (dataLoadingOption != null)
      'data_loading_option': dataLoadingOption!.toTfJson(),
    'database': database.toTfJson(),
    if (keyPassphrase != null) 'key_passphrase': keyPassphrase!.toTfJson(),
    if (metadataColumnName != null)
      'metadata_column_name': metadataColumnName!.toTfJson(),
    if (privateKey != null) 'private_key': privateKey!.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    'schema': schema.toTfJson(),
    'table': table.toTfJson(),
    if (user != null) 'user': user!.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    's3_configuration': s3Configuration.encode(),
    if (secretsManagerConfiguration != null)
      'secrets_manager_configuration': secretsManagerConfiguration!.encode(),
    if (snowflakeRoleConfiguration != null)
      'snowflake_role_configuration': snowflakeRoleConfiguration!.encode(),
    if (snowflakeVpcConfiguration != null)
      'snowflake_vpc_configuration': snowflakeVpcConfiguration!.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String>? roleArn;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (snowflakeRole != null) 'snowflake_role': snowflakeRole!.toTfJson(),
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

  final TfArg<String>? hecEndpointType;

  final TfArg<String>? hecToken;

  final TfArg<num>? retryDuration;

  final TfArg<String>? s3BackupMode;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration?
  processingConfiguration;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationS3Configuration
  s3Configuration;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration?
  secretsManagerConfiguration;

  Map<String, Object?> encode() => {
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (hecAcknowledgmentTimeout != null)
      'hec_acknowledgment_timeout': hecAcknowledgmentTimeout!.toTfJson(),
    'hec_endpoint': hecEndpoint.toTfJson(),
    if (hecEndpointType != null)
      'hec_endpoint_type': hecEndpointType!.toTfJson(),
    if (hecToken != null) 'hec_token': hecToken!.toTfJson(),
    if (retryDuration != null) 'retry_duration': retryDuration!.toTfJson(),
    if (s3BackupMode != null) 's3_backup_mode': s3BackupMode!.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
    if (processingConfiguration != null)
      'processing_configuration': processingConfiguration!.encode(),
    's3_configuration': s3Configuration.encode(),
    if (secretsManagerConfiguration != null)
      'secrets_manager_configuration': secretsManagerConfiguration!.encode(),
  };
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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
    if (enabled != null) 'enabled': enabled!.toTfJson(),
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

  final TfArg<String> bucketArn;

  final TfArg<num>? bufferingInterval;

  final TfArg<num>? bufferingSize;

  final TfArg<String>? compressionFormat;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> roleArn;

  final KinesisFirehoseDeliveryStreamSplunkConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (bufferingInterval != null)
      'buffering_interval': bufferingInterval!.toTfJson(),
    if (bufferingSize != null) 'buffering_size': bufferingSize!.toTfJson(),
    if (compressionFormat != null)
      'compression_format': compressionFormat!.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    if (cloudwatchLoggingOptions != null)
      'cloudwatch_logging_options': cloudwatchLoggingOptions!.encode(),
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

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamName;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamName != null) 'log_stream_name': logStreamName!.toTfJson(),
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

  final TfArg<String>? roleArn;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_kinesis_firehose_delivery_stream`.
final class AwsKinesisFirehoseDeliveryStream extends Resource {
  static const String tfType = 'aws_kinesis_firehose_delivery_stream';

  AwsKinesisFirehoseDeliveryStream({
    required super.localName,
    TfArg<String>? arn,
    required TfArg<String> destination,
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
    KinesisFirehoseDeliveryStreamKinesisSourceConfiguration?
    kinesisSourceConfiguration,
    KinesisFirehoseDeliveryStreamMskSourceConfiguration? mskSourceConfiguration,
    KinesisFirehoseDeliveryStreamOpensearchConfiguration?
    opensearchConfiguration,
    KinesisFirehoseDeliveryStreamOpensearchserverlessConfiguration?
    opensearchserverlessConfiguration,
    KinesisFirehoseDeliveryStreamRedshiftConfiguration? redshiftConfiguration,
    KinesisFirehoseDeliveryStreamServerSideEncryption? serverSideEncryption,
    KinesisFirehoseDeliveryStreamSnowflakeConfiguration? snowflakeConfiguration,
    KinesisFirehoseDeliveryStreamSplunkConfiguration? splunkConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           'destination': destination,
           if (destinationId != null) 'destination_id': destinationId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (versionId != null) 'version_id': versionId,
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
           if (kinesisSourceConfiguration != null)
             'kinesis_source_configuration': TfArg.literal(
               kinesisSourceConfiguration.encode(),
             ),
           if (mskSourceConfiguration != null)
             'msk_source_configuration': TfArg.literal(
               mskSourceConfiguration.encode(),
             ),
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
           if (serverSideEncryption != null)
             'server_side_encryption': TfArg.literal(
               serverSideEncryption.encode(),
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
