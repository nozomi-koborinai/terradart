// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_msk_channel`.
const Set<String> _awsMskChannelSensitive = <String>{};

/// Exactly one of `iceberg_destination`, `s3_destination` on `aws_msk_channel`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.icebergDestination(...)`.
sealed class MskChannelDestination {
  const MskChannelDestination();

  /// Sets `iceberg_destination`.
  const factory MskChannelDestination.icebergDestination(
    List<MskChannelIcebergDestination> icebergDestination,
  ) = MskChannelIcebergDestinationChoice;

  /// Sets `s3_destination`.
  const factory MskChannelDestination.s3Destination(
    List<MskChannelS3Destination> s3Destination,
  ) = MskChannelS3DestinationChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MskChannelDestination.icebergDestination] choice: sets `iceberg_destination`.
final class MskChannelIcebergDestinationChoice extends MskChannelDestination {
  const MskChannelIcebergDestinationChoice(this.icebergDestination);

  final List<MskChannelIcebergDestination> icebergDestination;

  @override
  String get blockKey => 'iceberg_destination';

  @override
  Map<String, Object?> encode() => {
    'iceberg_destination': [for (final e in icebergDestination) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'iceberg_destination': TfArg.literal([
      for (final e in icebergDestination) e.encode(),
    ]),
  };
}

/// The [MskChannelDestination.s3Destination] choice: sets `s3_destination`.
final class MskChannelS3DestinationChoice extends MskChannelDestination {
  const MskChannelS3DestinationChoice(this.s3Destination);

  final List<MskChannelS3Destination> s3Destination;

  @override
  String get blockKey => 's3_destination';

  @override
  Map<String, Object?> encode() => {
    's3_destination': [for (final e in s3Destination) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    's3_destination': TfArg.literal([
      for (final e in s3Destination) e.encode(),
    ]),
  };
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelEncryptionConfiguration {
  const MskChannelEncryptionConfiguration({required this.kmsKeyArn});

  final RefTo<AwsKmsKey> kmsKeyArn;

  Map<String, Object?> encode() => {
    'kms_key_arn': kmsKeyArn.encodeAs('arn').toTfJson(),
  };
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

  final TfArg<MskChannelCompressionType>? compressionType;

  final TfArg<num>? dataFreshnessInSeconds;

  final TfArg<String> serviceExecutionRoleArn;

  final List<MskChannelCatalog>? catalog;

  final List<MskChannelDeadLetterQueueS3>? deadLetterQueueS3;

  final List<MskChannelDestinationTable>? destinationTable;

  final List<MskChannelSchemaEvolution>? schemaEvolution;

  final List<MskChannelTableCreation>? tableCreation;

  Map<String, Object?> encode() => {
    'append_only': appendOnly.toTfJson(),
    'compression_type': ?compressionType?.toTfJson(),
    'data_freshness_in_seconds': ?dataFreshnessInSeconds?.toTfJson(),
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

/// `compression_type` — derived from the provider schema description.
enum MskChannelCompressionType implements TerraformEnum {
  zstd('ZSTD'),
  snappy('SNAPPY');

  const MskChannelCompressionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `iceberg_destination.catalog` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelCatalog {
  const MskChannelCatalog({this.catalogArn, this.warehouseLocation});

  final TfArg<String>? catalogArn;

  final TfArg<String>? warehouseLocation;

  Map<String, Object?> encode() => {
    'catalog_arn': ?catalogArn?.toTfJson(),
    'warehouse_location': ?warehouseLocation?.toTfJson(),
  };
}

/// Typed helper for the `iceberg_destination.dead_letter_queue_s3` block of
/// `aws_msk_channel` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MskChannelDeadLetterQueueS3 {
  const MskChannelDeadLetterQueueS3({
    required this.bucketArn,
    this.errorOutputPrefix,
    this.expectedBucketOwner,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<String>? errorOutputPrefix;

  final TfArg<String>? expectedBucketOwner;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'error_output_prefix': ?errorOutputPrefix?.toTfJson(),
    'expected_bucket_owner': ?expectedBucketOwner?.toTfJson(),
  };
}

/// Typed helper for the `iceberg_destination.destination_table` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelDestinationTable {
  const MskChannelDestinationTable({
    this.destinationDatabaseName,
    this.destinationTableName,
    this.partitionSpec,
  });

  final TfArg<String>? destinationDatabaseName;

  final TfArg<String>? destinationTableName;

  final List<MskChannelPartitionSpec>? partitionSpec;

  Map<String, Object?> encode() => {
    'destination_database_name': ?destinationDatabaseName?.toTfJson(),
    'destination_table_name': ?destinationTableName?.toTfJson(),
    if (partitionSpec != null)
      'partition_spec': [for (final e in partitionSpec!) e.encode()],
  };
}

/// Typed helper for the `iceberg_destination.destination_table.partition_spec` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelPartitionSpec {
  const MskChannelPartitionSpec({required this.partitionStrategy, this.source});

  final TfArg<MskChannelPartitionStrategy> partitionStrategy;

  final List<MskChannelSource>? source;

  Map<String, Object?> encode() => {
    'partition_strategy': partitionStrategy.toTfJson(),
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// `partition_strategy` — derived from the provider schema description.
enum MskChannelPartitionStrategy implements TerraformEnum {
  timeHour('TIME_HOUR');

  const MskChannelPartitionStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `iceberg_destination.destination_table.partition_spec.source` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelSource {
  const MskChannelSource({this.sourceName});

  final TfArg<String>? sourceName;

  Map<String, Object?> encode() => {'source_name': ?sourceName?.toTfJson()};
}

/// Typed helper for the `iceberg_destination.schema_evolution` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelSchemaEvolution {
  const MskChannelSchemaEvolution({this.enableSchemaEvolution});

  final TfArg<bool>? enableSchemaEvolution;

  Map<String, Object?> encode() => {
    'enable_schema_evolution': ?enableSchemaEvolution?.toTfJson(),
  };
}

/// Typed helper for the `iceberg_destination.table_creation` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelTableCreation {
  const MskChannelTableCreation({this.enableTableCreation});

  final TfArg<bool>? enableTableCreation;

  Map<String, Object?> encode() => {
    'enable_table_creation': ?enableTableCreation?.toTfJson(),
  };
}

/// Typed helper for the `logging_info` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelLoggingInfo {
  const MskChannelLoggingInfo({this.cloudwatchLogs, this.firehose, this.s3});

  final List<MskChannelCloudwatchLogs>? cloudwatchLogs;

  final List<MskChannelFirehose>? firehose;

  final List<MskChannelS3>? s3;

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
final class MskChannelCloudwatchLogs {
  const MskChannelCloudwatchLogs({required this.enabled, this.logGroup});

  final TfArg<bool> enabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroup;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'log_group': ?logGroup?.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `logging_info.firehose` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelFirehose {
  const MskChannelFirehose({this.deliveryStream, required this.enabled});

  final TfArg<String>? deliveryStream;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    'delivery_stream': ?deliveryStream?.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `logging_info.s3` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelS3 {
  const MskChannelS3({this.bucket, required this.enabled, this.prefix});

  final RefTo<AwsS3Bucket>? bucket;

  final TfArg<bool> enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': ?bucket?.encodeAs('id').toTfJson(),
    'enabled': enabled.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
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

  final List<MskChannelDeadLetterQueueS3>? deadLetterQueueS3;

  final List<MskChannelStorage>? storage;

  Map<String, Object?> encode() => {
    'data_freshness_in_seconds': ?dataFreshnessInSeconds?.toTfJson(),
    'service_execution_role_arn': serviceExecutionRoleArn.toTfJson(),
    if (deadLetterQueueS3 != null)
      'dead_letter_queue_s3': [for (final e in deadLetterQueueS3!) e.encode()],
    if (storage != null) 'storage': [for (final e in storage!) e.encode()],
  };
}

/// Typed helper for the `s3_destination.storage` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelStorage {
  const MskChannelStorage({
    required this.bucketArn,
    required this.compressionType,
    this.expectedBucketOwner,
    this.outputKeyTemplate,
    this.outputPrefix,
    required this.storageClass,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<MskChannelStorageCompressionType> compressionType;

  final TfArg<String>? expectedBucketOwner;

  final TfArg<String>? outputKeyTemplate;

  final TfArg<String>? outputPrefix;

  final TfArg<MskChannelStorageClass> storageClass;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'compression_type': compressionType.toTfJson(),
    'expected_bucket_owner': ?expectedBucketOwner?.toTfJson(),
    'output_key_template': ?outputKeyTemplate?.toTfJson(),
    'output_prefix': ?outputPrefix?.toTfJson(),
    'storage_class': storageClass.toTfJson(),
  };
}

/// `compression_type` — derived from the provider schema description.
enum MskChannelStorageCompressionType implements TerraformEnum {
  none('NONE'),
  gzip('GZIP'),
  zstd('ZSTD');

  const MskChannelStorageCompressionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `storage_class` — derived from the provider schema description.
enum MskChannelStorageClass implements TerraformEnum {
  standard('STANDARD'),
  intelligentTiering('INTELLIGENT_TIERING'),
  glacierIr('GLACIER_IR');

  const MskChannelStorageClass(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<MskChannelRecordConverter>? recordConverter;

  final List<MskChannelRecordSchema>? recordSchema;

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
final class MskChannelRecordConverter {
  const MskChannelRecordConverter({required this.valueConverter});

  final TfArg<MskChannelValueConverter> valueConverter;

  Map<String, Object?> encode() => {
    'value_converter': valueConverter.toTfJson(),
  };
}

/// `value_converter` — derived from the provider schema description.
enum MskChannelValueConverter implements TerraformEnum {
  byteArray('BYTE_ARRAY'),
  json('JSON'),
  jsonSchemaGsr('JSON_SCHEMA_GSR'),
  string('STRING');

  const MskChannelValueConverter(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `topic_configuration.record_schema` block of
/// `aws_msk_channel` (derived from provider schema).
@immutable
final class MskChannelRecordSchema {
  const MskChannelRecordSchema({required this.gsrArn});

  final TfArg<String> gsrArn;

  Map<String, Object?> encode() => {'gsr_arn': gsrArn.toTfJson()};
}

/// Factory wrapper for `aws_msk_channel`.
final class AwsMskChannel extends Resource {
  static const String tfType = 'aws_msk_channel';

  AwsMskChannel(
    super.localName, {
    required TfArg<String> channelName,
    required TfArg<String> clusterArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<MskChannelEncryptionConfiguration>? encryptionConfiguration,
    required MskChannelDestination destination,
    List<MskChannelLoggingInfo>? loggingInfo,
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
           'region': ?region,
           'tags': ?tags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
           ...destination.argMap,
           if (loggingInfo != null)
             'logging_info': TfArg.literal([
               for (final e in loggingInfo) e.encode(),
             ]),
           if (topicConfiguration != null)
             'topic_configuration': TfArg.literal([
               for (final e in topicConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskChannel>`.
  RefTo<AwsMskChannel> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination_type` attribute.
  TfRef<String> get destinationType =>
      TfRef.attribute<String>(this, 'destination_type');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `channel_name` attribute.
  TfRef<String> get channelName =>
      TfRef.attribute<String>(this, 'channel_name');

  /// Reference to `cluster_arn` attribute.
  TfRef<String> get clusterArn => TfRef.attribute<String>(this, 'cluster_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
