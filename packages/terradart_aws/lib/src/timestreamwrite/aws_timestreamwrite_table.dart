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

  final TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation?
  magneticStoreRejectedDataLocation;

  Map<String, Object?> encode() => {
    if (enableMagneticStoreWrites != null)
      'enable_magnetic_store_writes': enableMagneticStoreWrites!.toTfJson(),
    if (magneticStoreRejectedDataLocation != null)
      'magnetic_store_rejected_data_location':
          magneticStoreRejectedDataLocation!.encode(),
  };
}

/// Typed helper for the `magnetic_store_write_properties.magnetic_store_rejected_data_location` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation {
  const TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocation({
    this.s3Configuration,
  });

  final TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration?
  s3Configuration;

  Map<String, Object?> encode() => {
    if (s3Configuration != null) 's3_configuration': s3Configuration!.encode(),
  };
}

/// Typed helper for the `magnetic_store_write_properties.magnetic_store_rejected_data_location.s3_configuration` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration {
  const TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3Configuration({
    this.bucketName,
    this.encryptionOption,
    this.kmsKeyId,
    this.objectKeyPrefix,
  });

  final RefTo<AwsS3Bucket>? bucketName;

  final TfArg<
    TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3ConfigurationEncryptionOption
  >?
  encryptionOption;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String>? objectKeyPrefix;

  Map<String, Object?> encode() => {
    if (bucketName != null)
      'bucket_name': bucketName!.encodeAs('id').toTfJson(),
    if (encryptionOption != null)
      'encryption_option': encryptionOption!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.encodeAs('arn').toTfJson(),
    if (objectKeyPrefix != null)
      'object_key_prefix': objectKeyPrefix!.toTfJson(),
  };
}

/// `encryption_option` — derived from the provider schema description.
enum TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3ConfigurationEncryptionOption
    implements TerraformEnum {
  sseS3('SSE_S3'),
  sseKms('SSE_KMS');

  const TimestreamwriteTableMagneticStoreWritePropertiesMagneticStoreRejectedDataLocationS3ConfigurationEncryptionOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TimestreamwriteTableSchemaCompositePartitionKey? compositePartitionKey;

  Map<String, Object?> encode() => {
    if (compositePartitionKey != null)
      'composite_partition_key': compositePartitionKey!.encode(),
  };
}

/// Typed helper for the `schema.composite_partition_key` block of
/// `aws_timestreamwrite_table` (derived from provider schema).
@immutable
final class TimestreamwriteTableSchemaCompositePartitionKey {
  const TimestreamwriteTableSchemaCompositePartitionKey({
    this.enforcementInRecord,
    this.name,
    required this.type,
  });

  final TfArg<
    TimestreamwriteTableSchemaCompositePartitionKeyEnforcementInRecord
  >?
  enforcementInRecord;

  final TfArg<String>? name;

  final TfArg<TimestreamwriteTableSchemaCompositePartitionKeyType> type;

  Map<String, Object?> encode() => {
    if (enforcementInRecord != null)
      'enforcement_in_record': enforcementInRecord!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `enforcement_in_record` — derived from the provider schema description.
enum TimestreamwriteTableSchemaCompositePartitionKeyEnforcementInRecord
    implements TerraformEnum {
  required('REQUIRED'),
  optional('OPTIONAL');

  const TimestreamwriteTableSchemaCompositePartitionKeyEnforcementInRecord(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum TimestreamwriteTableSchemaCompositePartitionKeyType
    implements TerraformEnum {
  dimension('DIMENSION'),
  measure('MEASURE');

  const TimestreamwriteTableSchemaCompositePartitionKeyType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_timestreamwrite_table`.
final class AwsTimestreamwriteTable extends Resource {
  static const String tfType = 'aws_timestreamwrite_table';

  AwsTimestreamwriteTable({
    required super.localName,
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
           if (region != null) 'region': region,
           'table_name': tableName,
           if (tags != null) 'tags': tags,
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
}
