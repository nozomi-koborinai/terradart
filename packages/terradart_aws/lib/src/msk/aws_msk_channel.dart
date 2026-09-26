// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_channel`.
const Set<String> _awsMskChannelSensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelEncryptionConfiguration {
  const MskChannelEncryptionConfiguration({required this.kmsKeyArn});

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `iceberg_destination` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelIcebergDestination {
  const MskChannelIcebergDestination({
    required this.appendOnly,
    this.compressionType,
    this.dataFreshnessInSeconds,
    required this.serviceExecutionRoleArn,
    this.catalog,
    this.deadLetterQueueS3,
    this.destinationTable,
    this.schemaEvolution,
    this.tableCreation,
  });

  final TfArg<bool> appendOnly;

  final TfArg<String>? compressionType;

  final TfArg<num>? dataFreshnessInSeconds;

  final TfArg<String> serviceExecutionRoleArn;

  final List<MskChannelIcebergDestinationCatalog>? catalog;

  final List<MskChannelIcebergDestinationDeadLetterQueueS3>? deadLetterQueueS3;

  final List<MskChannelIcebergDestinationDestinationTable>? destinationTable;

  final List<MskChannelIcebergDestinationSchemaEvolution>? schemaEvolution;

  final List<MskChannelIcebergDestinationTableCreation>? tableCreation;

  Map<String, Object?> encode() => {
    'append_only': appendOnly.toTfJson(),
    if (compressionType != null)
      'compression_type': compressionType!.toTfJson(),
    if (dataFreshnessInSeconds != null)
      'data_freshness_in_seconds': dataFreshnessInSeconds!.toTfJson(),
    'service_execution_role_arn': serviceExecutionRoleArn.toTfJson(),
    if (catalog != null) 'catalog': [for (final e in catalog!) e.encode()],
    if (deadLetterQueueS3 != null)
      'dead_letter_queue_s3': [for (final e in deadLetterQueueS3!) e.encode()],
    if (destinationTable != null)
      'destination_table': [for (final e in destinationTable!) e.encode()],
    if (schemaEvolution != null)
      'schema_evolution': [for (final e in schemaEvolution!) e.encode()],
    if (tableCreation != null)
      'table_creation': [for (final e in tableCreation!) e.encode()],
  };
}

/// Typed helper for the `iceberg_destination.catalog` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelIcebergDestinationCatalog {
  const MskChannelIcebergDestinationCatalog({
    this.catalogArn,
    this.warehouseLocation,
  });

  final TfArg<String>? catalogArn;

  final TfArg<String>? warehouseLocation;

  Map<String, Object?> encode() => {
    if (catalogArn != null) 'catalog_arn': catalogArn!.toTfJson(),
    if (warehouseLocation != null)
      'warehouse_location': warehouseLocation!.toTfJson(),
  };
}

/// Typed helper for the `iceberg_destination.dead_letter_queue_s3` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelIcebergDestinationDeadLetterQueueS3 {
  const MskChannelIcebergDestinationDeadLetterQueueS3({
    required this.bucketArn,
    this.errorOutputPrefix,
    this.expectedBucketOwner,
  });

  final TfArg<String> bucketArn;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? expectedBucketOwner;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (expectedBucketOwner != null)
      'expected_bucket_owner': expectedBucketOwner!.toTfJson(),
  };
}

/// Typed helper for the `iceberg_destination.destination_table` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelIcebergDestinationDestinationTable {
  const MskChannelIcebergDestinationDestinationTable({
    this.destinationDatabaseName,
    this.destinationTableName,
    this.partitionSpec,
  });

  final TfArg<String>? destinationDatabaseName;

  final TfArg<String>? destinationTableName;

  final List<MskChannelIcebergDestinationDestinationTablePartitionSpec>?
  partitionSpec;

  Map<String, Object?> encode() => {
    if (destinationDatabaseName != null)
      'destination_database_name': destinationDatabaseName!.toTfJson(),
    if (destinationTableName != null)
      'destination_table_name': destinationTableName!.toTfJson(),
    if (partitionSpec != null)
      'partition_spec': [for (final e in partitionSpec!) e.encode()],
  };
}

/// Typed helper for the `iceberg_destination.destination_table.partition_spec` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelIcebergDestinationDestinationTablePartitionSpec {
  const MskChannelIcebergDestinationDestinationTablePartitionSpec({
    required this.partitionStrategy,
    this.source,
  });

  final TfArg<String> partitionStrategy;

  final List<MskChannelIcebergDestinationDestinationTablePartitionSpecSource>?
  source;

  Map<String, Object?> encode() => {
    'partition_strategy': partitionStrategy.toTfJson(),
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `iceberg_destination.destination_table.partition_spec.source` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelIcebergDestinationDestinationTablePartitionSpecSource {
  const MskChannelIcebergDestinationDestinationTablePartitionSpecSource({
    this.sourceName,
  });

  final TfArg<String>? sourceName;

  Map<String, Object?> encode() => {
    if (sourceName != null) 'source_name': sourceName!.toTfJson(),
  };
}

/// Typed helper for the `iceberg_destination.schema_evolution` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelIcebergDestinationSchemaEvolution {
  const MskChannelIcebergDestinationSchemaEvolution({
    this.enableSchemaEvolution,
  });

  final TfArg<bool>? enableSchemaEvolution;

  Map<String, Object?> encode() => {
    if (enableSchemaEvolution != null)
      'enable_schema_evolution': enableSchemaEvolution!.toTfJson(),
  };
}

/// Typed helper for the `iceberg_destination.table_creation` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelIcebergDestinationTableCreation {
  const MskChannelIcebergDestinationTableCreation({this.enableTableCreation});

  final TfArg<bool>? enableTableCreation;

  Map<String, Object?> encode() => {
    if (enableTableCreation != null)
      'enable_table_creation': enableTableCreation!.toTfJson(),
  };
}

/// Typed helper for the `logging_info` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelLoggingInfo {
  const MskChannelLoggingInfo({this.cloudwatchLogs, this.firehose, this.s3});

  final List<MskChannelLoggingInfoCloudwatchLogs>? cloudwatchLogs;

  final List<MskChannelLoggingInfoFirehose>? firehose;

  final List<MskChannelLoggingInfoS3>? s3;

  Map<String, Object?> encode() => {
    if (cloudwatchLogs != null)
      'cloudwatch_logs': [for (final e in cloudwatchLogs!) e.encode()],
    if (firehose != null) 'firehose': [for (final e in firehose!) e.encode()],
    if (s3 != null) 's3': [for (final e in s3!) e.encode()],
  };
}

/// Typed helper for the `logging_info.cloudwatch_logs` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelLoggingInfoCloudwatchLogs {
  const MskChannelLoggingInfoCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? logGroup;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (logGroup != null) 'log_group': logGroup!.toTfJson(),
  };
}

/// Typed helper for the `logging_info.firehose` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelLoggingInfoFirehose {
  const MskChannelLoggingInfoFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  final TfArg<String>? deliveryStream;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    if (deliveryStream != null) 'delivery_stream': deliveryStream!.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `logging_info.s3` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelLoggingInfoS3 {
  const MskChannelLoggingInfoS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  final TfArg<String>? bucket;

  final TfArg<bool> enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (bucket != null) 'bucket': bucket!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `s3_destination` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelS3Destination {
  const MskChannelS3Destination({
    this.dataFreshnessInSeconds,
    required this.serviceExecutionRoleArn,
    this.deadLetterQueueS3,
    this.storage,
  });

  final TfArg<num>? dataFreshnessInSeconds;

  final TfArg<String> serviceExecutionRoleArn;

  final List<MskChannelS3DestinationDeadLetterQueueS3>? deadLetterQueueS3;

  final List<MskChannelS3DestinationStorage>? storage;

  Map<String, Object?> encode() => {
    if (dataFreshnessInSeconds != null)
      'data_freshness_in_seconds': dataFreshnessInSeconds!.toTfJson(),
    'service_execution_role_arn': serviceExecutionRoleArn.toTfJson(),
    if (deadLetterQueueS3 != null)
      'dead_letter_queue_s3': [for (final e in deadLetterQueueS3!) e.encode()],
    if (storage != null) 'storage': [for (final e in storage!) e.encode()],
  };
}

/// Typed helper for the `s3_destination.dead_letter_queue_s3` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelS3DestinationDeadLetterQueueS3 {
  const MskChannelS3DestinationDeadLetterQueueS3({
    required this.bucketArn,
    this.errorOutputPrefix,
    this.expectedBucketOwner,
  });

  final TfArg<String> bucketArn;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? expectedBucketOwner;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    if (errorOutputPrefix != null)
      'error_output_prefix': errorOutputPrefix!.toTfJson(),
    if (expectedBucketOwner != null)
      'expected_bucket_owner': expectedBucketOwner!.toTfJson(),
  };
}

/// Typed helper for the `s3_destination.storage` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelS3DestinationStorage {
  const MskChannelS3DestinationStorage({
    required this.bucketArn,
    required this.compressionType,
    this.expectedBucketOwner,
    this.outputKeyTemplate,
    this.outputPrefix,
    required this.storageClass,
  });

  final TfArg<String> bucketArn;

  final TfArg<String> compressionType;

  final TfArg<String>? expectedBucketOwner;

  final TfArg<String>? outputKeyTemplate;

  final TfArg<String>? outputPrefix;

  final TfArg<String> storageClass;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    'compression_type': compressionType.toTfJson(),
    if (expectedBucketOwner != null)
      'expected_bucket_owner': expectedBucketOwner!.toTfJson(),
    if (outputKeyTemplate != null)
      'output_key_template': outputKeyTemplate!.toTfJson(),
    if (outputPrefix != null) 'output_prefix': outputPrefix!.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// Typed helper for the `topic_configuration` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelTopicConfiguration {
  const MskChannelTopicConfiguration({
    required this.topicArn,
    this.recordConverter,
    this.recordSchema,
  });

  final TfArg<String> topicArn;

  final List<MskChannelTopicConfigurationRecordConverter>? recordConverter;

  final List<MskChannelTopicConfigurationRecordSchema>? recordSchema;

  Map<String, Object?> encode() => {
    'topic_arn': topicArn.toTfJson(),
    if (recordConverter != null)
      'record_converter': [for (final e in recordConverter!) e.encode()],
    if (recordSchema != null)
      'record_schema': [for (final e in recordSchema!) e.encode()],
  };
}

/// Typed helper for the `topic_configuration.record_converter` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelTopicConfigurationRecordConverter {
  const MskChannelTopicConfigurationRecordConverter({
    required this.valueConverter,
  });

  final TfArg<String> valueConverter;

  Map<String, Object?> encode() => {
    'value_converter': valueConverter.toTfJson(),
  };
}

/// Typed helper for the `topic_configuration.record_schema` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelTopicConfigurationRecordSchema {
  const MskChannelTopicConfigurationRecordSchema({required this.gsrArn});

  final TfArg<String> gsrArn;

  Map<String, Object?> encode() => {'gsr_arn': gsrArn.toTfJson()};
}

/// Factory wrapper for `aws_msk_channel`.
final class AwsMskChannel extends Resource {
  static const String tfType = 'aws_msk_channel';

  AwsMskChannel({
    required super.localName,
    required TfArg<String> channelName,
    required TfArg<String> clusterArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<MskChannelEncryptionConfiguration>? encryptionConfiguration,
    List<MskChannelIcebergDestination>? icebergDestination,
    List<MskChannelLoggingInfo>? loggingInfo,
    List<MskChannelS3Destination>? s3Destination,
    List<MskChannelTopicConfiguration>? topicConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'channel_name': channelName,
           'cluster_arn': clusterArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
           if (icebergDestination != null)
             'iceberg_destination': TfArg.literal([
               for (final e in icebergDestination) e.encode(),
             ]),
           if (loggingInfo != null)
             'logging_info': TfArg.literal([
               for (final e in loggingInfo) e.encode(),
             ]),
           if (s3Destination != null)
             's3_destination': TfArg.literal([
               for (final e in s3Destination) e.encode(),
             ]),
           if (topicConfiguration != null)
             'topic_configuration': TfArg.literal([
               for (final e in topicConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskChannelSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination_type` attribute.
  TfRef<String> get destinationType =>
      TfRef.attribute<String>(this, 'destination_type');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
