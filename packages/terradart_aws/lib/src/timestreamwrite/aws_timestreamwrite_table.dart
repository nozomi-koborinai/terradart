// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_timestreamwrite_table`.
const Set<String> _awsTimestreamwriteTableSensitive = <String>{};

/// Typed helper for the `magnetic_store_write_properties` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableMagneticStoreWriteProperties {
  const TimestreamwriteTableMagneticStoreWriteProperties({
    this.enableMagneticStoreWrites,
    this.magneticStoreRejectedDataLocation,
  });

  final TfArg<bool>? enableMagneticStoreWrites;

  final TimestreamwriteTableMagneticStoreRejectedDataLocation?
  magneticStoreRejectedDataLocation;

  Map<String, Object?> encode() => {
    'enable_magnetic_store_writes': ?enableMagneticStoreWrites?.toTfJson(),
    'magnetic_store_rejected_data_location': ?magneticStoreRejectedDataLocation
        ?.encode(),
  };
}

/// Typed helper for the `magnetic_store_write_properties.magnetic_store_rejected_data_location` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableMagneticStoreRejectedDataLocation {
  const TimestreamwriteTableMagneticStoreRejectedDataLocation({
    this.s3Configuration,
  });

  final TimestreamwriteTableS3Configuration? s3Configuration;

  Map<String, Object?> encode() => {
    's3_configuration': ?s3Configuration?.encode(),
  };
}

/// Typed helper for the `magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableS3Configuration {
  const TimestreamwriteTableS3Configuration({
    this.bucketName,
    this.encryptionOption,
    this.kmsKeyId,
    this.objectKeyPrefix,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TimestreamwriteTableEncryptionOption? encryptionOption;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? objectKeyPrefix;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('id').toTfJson(),
    'encryption_option': ?encryptionOption?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'object_key_prefix': ?objectKeyPrefix?.toTfJson(),
  };
}

/// `encryption_option` — derived from the provider schema description.
extension type const TimestreamwriteTableEncryptionOption._(TfArg<String> _)
    implements TfArg<String> {
  TimestreamwriteTableEncryptionOption.variable(String name)
    : this._(TfArg.variable(name));
  TimestreamwriteTableEncryptionOption.expression(String template)
    : this._(TfArg.expression(template));
  const TimestreamwriteTableEncryptionOption.arg(TfArg<String> arg)
    : this._(arg);

  static const sseS3 = TimestreamwriteTableEncryptionOption._(
    TfArgLiteral('SSE_S3'),
  );
  static const sseKms = TimestreamwriteTableEncryptionOption._(
    TfArgLiteral('SSE_KMS'),
  );

  static const List<TimestreamwriteTableEncryptionOption> values = [
    sseS3,
    sseKms,
  ];
}

/// Typed helper for the `retention_properties` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableRetentionProperties {
  const TimestreamwriteTableRetentionProperties({
    required this.magneticStoreRetentionPeriodInDays,
    required this.memoryStoreRetentionPeriodInHours,
  });

  final TfArg<num> magneticStoreRetentionPeriodInDays;

  final TfArg<num> memoryStoreRetentionPeriodInHours;

  Map<String, Object?> encode() => {
    'magnetic_store_retention_period_in_days':
        magneticStoreRetentionPeriodInDays.toTfJson(),
    'memory_store_retention_period_in_hours': memoryStoreRetentionPeriodInHours
        .toTfJson(),
  };
}

/// Typed helper for the `schema` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableSchema {
  const TimestreamwriteTableSchema({this.compositePartitionKey});

  final TimestreamwriteTableCompositePartitionKey? compositePartitionKey;

  Map<String, Object?> encode() => {
    'composite_partition_key': ?compositePartitionKey?.encode(),
  };
}

/// Typed helper for the `schema.composite_partition_key` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableCompositePartitionKey {
  const TimestreamwriteTableCompositePartitionKey({
    this.enforcementInRecord,
    this.name,
    required this.type,
  });

  final TimestreamwriteTableEnforcementInRecord? enforcementInRecord;

  final TfArg<String>? name;

  final TimestreamwriteTableType type;

  Map<String, Object?> encode() => {
    'enforcement_in_record': ?enforcementInRecord?.toTfJson(),
    'name': ?name?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `enforcement_in_record` — derived from the provider schema description.
extension type const TimestreamwriteTableEnforcementInRecord._(TfArg<String> _)
    implements TfArg<String> {
  TimestreamwriteTableEnforcementInRecord.variable(String name)
    : this._(TfArg.variable(name));
  TimestreamwriteTableEnforcementInRecord.expression(String template)
    : this._(TfArg.expression(template));
  const TimestreamwriteTableEnforcementInRecord.arg(TfArg<String> arg)
    : this._(arg);

  static const required = TimestreamwriteTableEnforcementInRecord._(
    TfArgLiteral('REQUIRED'),
  );
  static const optional = TimestreamwriteTableEnforcementInRecord._(
    TfArgLiteral('OPTIONAL'),
  );

  static const List<TimestreamwriteTableEnforcementInRecord> values = [
    required,
    optional,
  ];
}

/// `type` — derived from the provider schema description.
extension type const TimestreamwriteTableType._(TfArg<String> _)
    implements TfArg<String> {
  TimestreamwriteTableType.variable(String name) : this._(TfArg.variable(name));
  TimestreamwriteTableType.expression(String template)
    : this._(TfArg.expression(template));
  const TimestreamwriteTableType.arg(TfArg<String> arg) : this._(arg);

  static const dimension = TimestreamwriteTableType._(
    TfArgLiteral('DIMENSION'),
  );
  static const measure = TimestreamwriteTableType._(TfArgLiteral('MEASURE'));

  static const List<TimestreamwriteTableType> values = [dimension, measure];
}

/// Factory wrapper for `aws_timestreamwrite_table`.
final class AwsTimestreamwriteTable extends Resource {
  static const String tfType = 'aws_timestreamwrite_table';

  AwsTimestreamwriteTable(
    super.localName, {
    required TfArg<String> databaseName,
    TfArg<String>? region,
    required TfArg<String> tableName,
    TfArg<Map<String, String>>? tags,
    TimestreamwriteTableMagneticStoreWriteProperties?
    magneticStoreWriteProperties,
    TimestreamwriteTableRetentionProperties? retentionProperties,
    TimestreamwriteTableSchema? schema,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_name': databaseName,
           'region': ?region,
           'table_name': tableName,
           'tags': ?tags,
           if (magneticStoreWriteProperties != null)
             'magnetic_store_write_properties': TfArg.literal(
               magneticStoreWriteProperties.encode(),
             ),
           if (retentionProperties != null)
             'retention_properties': TfArg.literal(
               retentionProperties.encode(),
             ),
           if (schema != null) 'schema': TfArg.literal(schema.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTimestreamwriteTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTimestreamwriteTable>`.
  RefTo<AwsTimestreamwriteTable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
