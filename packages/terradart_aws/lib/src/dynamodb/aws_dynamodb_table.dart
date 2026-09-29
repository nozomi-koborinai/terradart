// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_dynamodb_table`.
const Set<String> _awsDynamodbTableSensitive = <String>{};

/// Dynamodb Table Billing enum for `billing_mode`.
enum DynamodbTableBillingMode implements TerraformEnum {
  provisioned('PROVISIONED'),
  payPerRequest('PAY_PER_REQUEST');

  const DynamodbTableBillingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dynamodb Table Stream View enum for `stream_view_type`.
enum DynamodbTableStreamViewType implements TerraformEnum {
  newImage('NEW_IMAGE'),
  oldImage('OLD_IMAGE'),
  newAndOldImages('NEW_AND_OLD_IMAGES'),
  keysOnly('KEYS_ONLY'),
  empty('');

  const DynamodbTableStreamViewType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dynamodb Table Table enum for `table_class`.
enum DynamodbTableTableClass implements TerraformEnum {
  standard('STANDARD'),
  standardInfrequentAccess('STANDARD_INFREQUENT_ACCESS');

  const DynamodbTableTableClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `import_table`, `restore_backup_arn`, `restore_source_name`, `restore_source_table_arn` on `aws_dynamodb_table`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.importTable(...)`.
sealed class DynamodbTableSource {
  const DynamodbTableSource();

  /// Sets `import_table`.
  const factory DynamodbTableSource.importTable(
    DynamodbTableImportTable importTable,
  ) = DynamodbTableSourceImportTable;

  /// Sets `restore_backup_arn`.
  const factory DynamodbTableSource.restoreBackupArn(
    TfArg<String> restoreBackupArn,
  ) = DynamodbTableSourceRestoreBackupArn;

  /// Sets `restore_source_name`.
  const factory DynamodbTableSource.restoreSourceName(
    TfArg<String> restoreSourceName,
  ) = DynamodbTableSourceRestoreSourceName;

  /// Sets `restore_source_table_arn`.
  const factory DynamodbTableSource.restoreSourceTableArn(
    TfArg<String> restoreSourceTableArn,
  ) = DynamodbTableSourceRestoreSourceTableArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DynamodbTableSource.importTable] choice: sets `import_table`.
final class DynamodbTableSourceImportTable extends DynamodbTableSource {
  const DynamodbTableSourceImportTable(this.importTable);

  final DynamodbTableImportTable importTable;

  @override
  String get blockKey => 'import_table';

  @override
  Map<String, Object?> encode() => {'import_table': importTable.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'import_table': TfArg.literal(importTable.encode()),
  };
}

/// The [DynamodbTableSource.restoreBackupArn] choice: sets `restore_backup_arn`.
final class DynamodbTableSourceRestoreBackupArn extends DynamodbTableSource {
  const DynamodbTableSourceRestoreBackupArn(this.restoreBackupArn);

  final TfArg<String> restoreBackupArn;

  @override
  String get blockKey => 'restore_backup_arn';

  @override
  Map<String, Object?> encode() => {
    'restore_backup_arn': restoreBackupArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore_backup_arn': restoreBackupArn,
  };
}

/// The [DynamodbTableSource.restoreSourceName] choice: sets `restore_source_name`.
final class DynamodbTableSourceRestoreSourceName extends DynamodbTableSource {
  const DynamodbTableSourceRestoreSourceName(this.restoreSourceName);

  final TfArg<String> restoreSourceName;

  @override
  String get blockKey => 'restore_source_name';

  @override
  Map<String, Object?> encode() => {
    'restore_source_name': restoreSourceName.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore_source_name': restoreSourceName,
  };
}

/// The [DynamodbTableSource.restoreSourceTableArn] choice: sets `restore_source_table_arn`.
final class DynamodbTableSourceRestoreSourceTableArn
    extends DynamodbTableSource {
  const DynamodbTableSourceRestoreSourceTableArn(this.restoreSourceTableArn);

  final TfArg<String> restoreSourceTableArn;

  @override
  String get blockKey => 'restore_source_table_arn';

  @override
  Map<String, Object?> encode() => {
    'restore_source_table_arn': restoreSourceTableArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'restore_source_table_arn': restoreSourceTableArn,
  };
}

/// Typed helper for the `attribute` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableAttribute {
  const DynamodbTableAttribute({required this.name, required this.type});

  final TfArg<String> name;

  final TfArg<DynamodbTableAttributeType> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DynamodbTableAttributeType implements TerraformEnum {
  s('S'),
  n('N'),
  b('B');

  const DynamodbTableAttributeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `global_secondary_index` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableGlobalSecondaryIndex {
  const DynamodbTableGlobalSecondaryIndex({
    this.hashKey,
    required this.name,
    this.nonKeyAttributes,
    required this.projectionType,
    this.rangeKey,
    this.readCapacity,
    this.writeCapacity,
    this.keySchema,
    this.onDemandThroughput,
    this.warmThroughput,
  });

  final TfArg<String>? hashKey;

  final TfArg<String> name;

  final TfArg<List<Object?>>? nonKeyAttributes;

  final TfArg<DynamodbTableGlobalSecondaryIndexProjectionType> projectionType;

  final TfArg<String>? rangeKey;

  final TfArg<num>? readCapacity;

  final TfArg<num>? writeCapacity;

  final List<DynamodbTableGlobalSecondaryIndexKeySchema>? keySchema;

  final DynamodbTableGlobalSecondaryIndexOnDemandThroughput? onDemandThroughput;

  final DynamodbTableGlobalSecondaryIndexWarmThroughput? warmThroughput;

  Map<String, Object?> encode() => {
    if (hashKey != null) 'hash_key': hashKey!.toTfJson(),
    'name': name.toTfJson(),
    if (nonKeyAttributes != null)
      'non_key_attributes': nonKeyAttributes!.toTfJson(),
    'projection_type': projectionType.toTfJson(),
    if (rangeKey != null) 'range_key': rangeKey!.toTfJson(),
    if (readCapacity != null) 'read_capacity': readCapacity!.toTfJson(),
    if (writeCapacity != null) 'write_capacity': writeCapacity!.toTfJson(),
    if (keySchema != null)
      'key_schema': [for (final e in keySchema!) e.encode()],
    if (onDemandThroughput != null)
      'on_demand_throughput': onDemandThroughput!.encode(),
    if (warmThroughput != null) 'warm_throughput': warmThroughput!.encode(),
  };
}

/// `projection_type` — derived from the provider schema description.
enum DynamodbTableGlobalSecondaryIndexProjectionType implements TerraformEnum {
  all('ALL'),
  keysOnly('KEYS_ONLY'),
  include('INCLUDE');

  const DynamodbTableGlobalSecondaryIndexProjectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `global_secondary_index.key_schema` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableGlobalSecondaryIndexKeySchema {
  const DynamodbTableGlobalSecondaryIndexKeySchema({
    required this.attributeName,
    required this.keyType,
  });

  final TfArg<String> attributeName;

  final TfArg<DynamodbTableGlobalSecondaryIndexKeySchemaKeyType> keyType;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'key_type': keyType.toTfJson(),
  };
}

/// `key_type` — derived from the provider schema description.
enum DynamodbTableGlobalSecondaryIndexKeySchemaKeyType
    implements TerraformEnum {
  hash('HASH'),
  range('RANGE');

  const DynamodbTableGlobalSecondaryIndexKeySchemaKeyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `global_secondary_index.on_demand_throughput` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableGlobalSecondaryIndexOnDemandThroughput {
  const DynamodbTableGlobalSecondaryIndexOnDemandThroughput({
    this.maxReadRequestUnits,
    this.maxWriteRequestUnits,
  });

  final TfArg<num>? maxReadRequestUnits;

  final TfArg<num>? maxWriteRequestUnits;

  Map<String, Object?> encode() => {
    if (maxReadRequestUnits != null)
      'max_read_request_units': maxReadRequestUnits!.toTfJson(),
    if (maxWriteRequestUnits != null)
      'max_write_request_units': maxWriteRequestUnits!.toTfJson(),
  };
}

/// Typed helper for the `global_secondary_index.warm_throughput` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableGlobalSecondaryIndexWarmThroughput {
  const DynamodbTableGlobalSecondaryIndexWarmThroughput({
    this.readUnitsPerSecond,
    this.writeUnitsPerSecond,
  });

  final TfArg<num>? readUnitsPerSecond;

  final TfArg<num>? writeUnitsPerSecond;

  Map<String, Object?> encode() => {
    if (readUnitsPerSecond != null)
      'read_units_per_second': readUnitsPerSecond!.toTfJson(),
    if (writeUnitsPerSecond != null)
      'write_units_per_second': writeUnitsPerSecond!.toTfJson(),
  };
}

/// Typed helper for the `global_table_witness` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableGlobalTableWitness {
  const DynamodbTableGlobalTableWitness({this.regionName});

  final TfArg<String>? regionName;

  Map<String, Object?> encode() => {
    if (regionName != null) 'region_name': regionName!.toTfJson(),
  };
}

/// Typed helper for the `import_table` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableImportTable {
  const DynamodbTableImportTable({
    this.inputCompressionType,
    required this.inputFormat,
    this.inputFormatOptions,
    required this.s3BucketSource,
  });

  final TfArg<DynamodbTableImportTableInputCompressionType>?
  inputCompressionType;

  final TfArg<DynamodbTableImportTableInputFormat> inputFormat;

  final DynamodbTableImportTableInputFormatOptions? inputFormatOptions;

  final DynamodbTableImportTableS3BucketSource s3BucketSource;

  Map<String, Object?> encode() => {
    if (inputCompressionType != null)
      'input_compression_type': inputCompressionType!.toTfJson(),
    'input_format': inputFormat.toTfJson(),
    if (inputFormatOptions != null)
      'input_format_options': inputFormatOptions!.encode(),
    's3_bucket_source': s3BucketSource.encode(),
  };
}

/// `input_compression_type` — derived from the provider schema description.
enum DynamodbTableImportTableInputCompressionType implements TerraformEnum {
  gzip('GZIP'),
  zstd('ZSTD'),
  none('NONE');

  const DynamodbTableImportTableInputCompressionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `input_format` — derived from the provider schema description.
enum DynamodbTableImportTableInputFormat implements TerraformEnum {
  dynamodbJson('DYNAMODB_JSON'),
  ion('ION'),
  csv('CSV');

  const DynamodbTableImportTableInputFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `import_table.input_format_options` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableImportTableInputFormatOptions {
  const DynamodbTableImportTableInputFormatOptions({this.csv});

  final DynamodbTableImportTableInputFormatOptionsCsv? csv;

  Map<String, Object?> encode() => {if (csv != null) 'csv': csv!.encode()};
}

/// Typed helper for the `import_table.input_format_options.csv` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableImportTableInputFormatOptionsCsv {
  const DynamodbTableImportTableInputFormatOptionsCsv({
    this.delimiter,
    this.headerList,
  });

  final TfArg<String>? delimiter;

  final TfArg<List<Object?>>? headerList;

  Map<String, Object?> encode() => {
    if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
    if (headerList != null) 'header_list': headerList!.toTfJson(),
  };
}

/// Typed helper for the `import_table.s3_bucket_source` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableImportTableS3BucketSource {
  const DynamodbTableImportTableS3BucketSource({
    required this.bucket,
    this.bucketOwner,
    this.keyPrefix,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? bucketOwner;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    if (bucketOwner != null) 'bucket_owner': bucketOwner!.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
  };
}

/// Typed helper for the `local_secondary_index` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableLocalSecondaryIndex {
  const DynamodbTableLocalSecondaryIndex({
    required this.name,
    this.nonKeyAttributes,
    required this.projectionType,
    required this.rangeKey,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>>? nonKeyAttributes;

  final TfArg<DynamodbTableLocalSecondaryIndexProjectionType> projectionType;

  final TfArg<String> rangeKey;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (nonKeyAttributes != null)
      'non_key_attributes': nonKeyAttributes!.toTfJson(),
    'projection_type': projectionType.toTfJson(),
    'range_key': rangeKey.toTfJson(),
  };
}

/// `projection_type` — derived from the provider schema description.
enum DynamodbTableLocalSecondaryIndexProjectionType implements TerraformEnum {
  all('ALL'),
  keysOnly('KEYS_ONLY'),
  include('INCLUDE');

  const DynamodbTableLocalSecondaryIndexProjectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `on_demand_throughput` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableOnDemandThroughput {
  const DynamodbTableOnDemandThroughput({
    this.maxReadRequestUnits,
    this.maxWriteRequestUnits,
  });

  final TfArg<num>? maxReadRequestUnits;

  final TfArg<num>? maxWriteRequestUnits;

  Map<String, Object?> encode() => {
    if (maxReadRequestUnits != null)
      'max_read_request_units': maxReadRequestUnits!.toTfJson(),
    if (maxWriteRequestUnits != null)
      'max_write_request_units': maxWriteRequestUnits!.toTfJson(),
  };
}

/// Typed helper for the `point_in_time_recovery` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTablePointInTimeRecovery {
  const DynamodbTablePointInTimeRecovery({
    required this.enabled,
    this.recoveryPeriodInDays,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? recoveryPeriodInDays;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (recoveryPeriodInDays != null)
      'recovery_period_in_days': recoveryPeriodInDays!.toTfJson(),
  };
}

/// Typed helper for the `replica` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableReplica {
  const DynamodbTableReplica({
    this.consistencyMode,
    this.deletionProtectionEnabled,
    this.kmsKeyArn,
    this.pointInTimeRecovery,
    this.propagateTags,
    required this.regionName,
  });

  final TfArg<DynamodbTableReplicaConsistencyMode>? consistencyMode;

  final TfArg<bool>? deletionProtectionEnabled;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<bool>? pointInTimeRecovery;

  final TfArg<bool>? propagateTags;

  final TfArg<String> regionName;

  Map<String, Object?> encode() => {
    if (consistencyMode != null)
      'consistency_mode': consistencyMode!.toTfJson(),
    if (deletionProtectionEnabled != null)
      'deletion_protection_enabled': deletionProtectionEnabled!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.encodeAs('arn').toTfJson(),
    if (pointInTimeRecovery != null)
      'point_in_time_recovery': pointInTimeRecovery!.toTfJson(),
    if (propagateTags != null) 'propagate_tags': propagateTags!.toTfJson(),
    'region_name': regionName.toTfJson(),
  };
}

/// `consistency_mode` — derived from the provider schema description.
enum DynamodbTableReplicaConsistencyMode implements TerraformEnum {
  eventual('EVENTUAL'),
  strong('STRONG');

  const DynamodbTableReplicaConsistencyMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `server_side_encryption` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableServerSideEncryption {
  const DynamodbTableServerSideEncryption({
    required this.enabled,
    this.kmsKeyArn,
  });

  final TfArg<bool> enabled;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `ttl` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableTtl {
  const DynamodbTableTtl({this.attributeName, this.enabled});

  final TfArg<String>? attributeName;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (attributeName != null) 'attribute_name': attributeName!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `warm_throughput` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableWarmThroughput {
  const DynamodbTableWarmThroughput({
    this.readUnitsPerSecond,
    this.writeUnitsPerSecond,
  });

  final TfArg<num>? readUnitsPerSecond;

  final TfArg<num>? writeUnitsPerSecond;

  Map<String, Object?> encode() => {
    if (readUnitsPerSecond != null)
      'read_units_per_second': readUnitsPerSecond!.toTfJson(),
    if (writeUnitsPerSecond != null)
      'write_units_per_second': writeUnitsPerSecond!.toTfJson(),
  };
}

/// Factory wrapper for `aws_dynamodb_table`.
final class AwsDynamodbTable extends Resource {
  static const String tfType = 'aws_dynamodb_table';

  AwsDynamodbTable({
    required super.localName,
    TfArg<DynamodbTableBillingMode>? billingMode,
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<String>? hashKey,
    required TfArg<String> name,
    TfArg<String>? rangeKey,
    TfArg<num>? readCapacity,
    TfArg<String>? region,
    DynamodbTableSource? source,
    TfArg<String>? restoreDateTime,
    TfArg<bool>? restoreToLatestTime,
    TfArg<bool>? streamEnabled,
    TfArg<DynamodbTableStreamViewType>? streamViewType,
    TfArg<DynamodbTableTableClass>? tableClass,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? writeCapacity,
    List<DynamodbTableAttribute>? attribute,
    List<DynamodbTableGlobalSecondaryIndex>? globalSecondaryIndex,
    DynamodbTableGlobalTableWitness? globalTableWitness,
    List<DynamodbTableLocalSecondaryIndex>? localSecondaryIndex,
    DynamodbTableOnDemandThroughput? onDemandThroughput,
    DynamodbTablePointInTimeRecovery? pointInTimeRecovery,
    List<DynamodbTableReplica>? replica,
    DynamodbTableServerSideEncryption? serverSideEncryption,
    DynamodbTableTtl? ttl,
    DynamodbTableWarmThroughput? warmThroughput,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (billingMode != null) 'billing_mode': billingMode,
           if (deletionProtectionEnabled != null)
             'deletion_protection_enabled': deletionProtectionEnabled,
           if (hashKey != null) 'hash_key': hashKey,
           'name': name,
           if (rangeKey != null) 'range_key': rangeKey,
           if (readCapacity != null) 'read_capacity': readCapacity,
           if (region != null) 'region': region,
           ...?source?.argMap,
           if (restoreDateTime != null) 'restore_date_time': restoreDateTime,
           if (restoreToLatestTime != null)
             'restore_to_latest_time': restoreToLatestTime,
           if (streamEnabled != null) 'stream_enabled': streamEnabled,
           if (streamViewType != null) 'stream_view_type': streamViewType,
           if (tableClass != null) 'table_class': tableClass,
           if (tags != null) 'tags': tags,
           if (writeCapacity != null) 'write_capacity': writeCapacity,
           if (attribute != null)
             'attribute': TfArg.literal([
               for (final e in attribute) e.encode(),
             ]),
           if (globalSecondaryIndex != null)
             'global_secondary_index': TfArg.literal([
               for (final e in globalSecondaryIndex) e.encode(),
             ]),
           if (globalTableWitness != null)
             'global_table_witness': TfArg.literal(globalTableWitness.encode()),
           if (localSecondaryIndex != null)
             'local_secondary_index': TfArg.literal([
               for (final e in localSecondaryIndex) e.encode(),
             ]),
           if (onDemandThroughput != null)
             'on_demand_throughput': TfArg.literal(onDemandThroughput.encode()),
           if (pointInTimeRecovery != null)
             'point_in_time_recovery': TfArg.literal(
               pointInTimeRecovery.encode(),
             ),
           if (replica != null)
             'replica': TfArg.literal([for (final e in replica) e.encode()]),
           if (serverSideEncryption != null)
             'server_side_encryption': TfArg.literal(
               serverSideEncryption.encode(),
             ),
           if (ttl != null) 'ttl': TfArg.literal(ttl.encode()),
           if (warmThroughput != null)
             'warm_throughput': TfArg.literal(warmThroughput.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDynamodbTable>`.
  RefTo<AwsDynamodbTable> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `stream_arn` attribute.
  TfRef<String> get streamArn => TfRef.attribute<String>(this, 'stream_arn');

  /// Reference to `stream_label` attribute.
  TfRef<String> get streamLabel =>
      TfRef.attribute<String>(this, 'stream_label');
}
