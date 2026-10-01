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
extension type const DynamodbTableBillingMode._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableBillingMode.variable(String name) : this._(TfArg.variable(name));
  DynamodbTableBillingMode.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableBillingMode.arg(TfArg<String> arg) : this._(arg);

  static const provisioned = DynamodbTableBillingMode._(
    TfArgLiteral('PROVISIONED'),
  );
  static const payPerRequest = DynamodbTableBillingMode._(
    TfArgLiteral('PAY_PER_REQUEST'),
  );

  static const List<DynamodbTableBillingMode> values = [
    provisioned,
    payPerRequest,
  ];
}

/// Dynamodb Table Stream View enum for `stream_view_type`.
extension type const DynamodbTableStreamViewType._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableStreamViewType.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbTableStreamViewType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableStreamViewType.arg(TfArg<String> arg) : this._(arg);

  static const newImage = DynamodbTableStreamViewType._(
    TfArgLiteral('NEW_IMAGE'),
  );
  static const oldImage = DynamodbTableStreamViewType._(
    TfArgLiteral('OLD_IMAGE'),
  );
  static const newAndOldImages = DynamodbTableStreamViewType._(
    TfArgLiteral('NEW_AND_OLD_IMAGES'),
  );
  static const keysOnly = DynamodbTableStreamViewType._(
    TfArgLiteral('KEYS_ONLY'),
  );
  static const empty = DynamodbTableStreamViewType._(TfArgLiteral(''));

  static const List<DynamodbTableStreamViewType> values = [
    newImage,
    oldImage,
    newAndOldImages,
    keysOnly,
    empty,
  ];
}

/// Dynamodb Table enum for `table_class`.
extension type const DynamodbTableClass._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableClass.variable(String name) : this._(TfArg.variable(name));
  DynamodbTableClass.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableClass.arg(TfArg<String> arg) : this._(arg);

  static const standard = DynamodbTableClass._(TfArgLiteral('STANDARD'));
  static const standardInfrequentAccess = DynamodbTableClass._(
    TfArgLiteral('STANDARD_INFREQUENT_ACCESS'),
  );

  static const List<DynamodbTableClass> values = [
    standard,
    standardInfrequentAccess,
  ];
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

  final DynamodbTableType type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const DynamodbTableType._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableType.variable(String name) : this._(TfArg.variable(name));
  DynamodbTableType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableType.arg(TfArg<String> arg) : this._(arg);

  static const s = DynamodbTableType._(TfArgLiteral('S'));
  static const n = DynamodbTableType._(TfArgLiteral('N'));
  static const b = DynamodbTableType._(TfArgLiteral('B'));

  static const List<DynamodbTableType> values = [s, n, b];
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

  final TfArg<List<String>>? nonKeyAttributes;

  final DynamodbTableProjectionType projectionType;

  final TfArg<String>? rangeKey;

  final TfArg<num>? readCapacity;

  final TfArg<num>? writeCapacity;

  final List<DynamodbTableKeySchema>? keySchema;

  final DynamodbTableOnDemandThroughput? onDemandThroughput;

  final DynamodbTableWarmThroughput? warmThroughput;

  Map<String, Object?> encode() => {
    'hash_key': ?hashKey?.toTfJson(),
    'name': name.toTfJson(),
    'non_key_attributes': ?nonKeyAttributes?.toTfJson(),
    'projection_type': projectionType.toTfJson(),
    'range_key': ?rangeKey?.toTfJson(),
    'read_capacity': ?readCapacity?.toTfJson(),
    'write_capacity': ?writeCapacity?.toTfJson(),
    if (keySchema != null)
      'key_schema': [for (final e in keySchema!) e.encode()],
    'on_demand_throughput': ?onDemandThroughput?.encode(),
    'warm_throughput': ?warmThroughput?.encode(),
  };
}

/// `projection_type` — derived from the provider schema description.
extension type const DynamodbTableProjectionType._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableProjectionType.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbTableProjectionType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableProjectionType.arg(TfArg<String> arg) : this._(arg);

  static const all = DynamodbTableProjectionType._(TfArgLiteral('ALL'));
  static const keysOnly = DynamodbTableProjectionType._(
    TfArgLiteral('KEYS_ONLY'),
  );
  static const include = DynamodbTableProjectionType._(TfArgLiteral('INCLUDE'));

  static const List<DynamodbTableProjectionType> values = [
    all,
    keysOnly,
    include,
  ];
}

/// Typed helper for the `global_secondary_index.key_schema` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableKeySchema {
  const DynamodbTableKeySchema({
    required this.attributeName,
    required this.keyType,
  });

  final TfArg<String> attributeName;

  final DynamodbTableKeyType keyType;

  Map<String, Object?> encode() => {
    'attribute_name': attributeName.toTfJson(),
    'key_type': keyType.toTfJson(),
  };
}

/// `key_type` — derived from the provider schema description.
extension type const DynamodbTableKeyType._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableKeyType.variable(String name) : this._(TfArg.variable(name));
  DynamodbTableKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableKeyType.arg(TfArg<String> arg) : this._(arg);

  static const hash = DynamodbTableKeyType._(TfArgLiteral('HASH'));
  static const range = DynamodbTableKeyType._(TfArgLiteral('RANGE'));

  static const List<DynamodbTableKeyType> values = [hash, range];
}

/// Typed helper for the `on_demand_throughput` block of
/// `aws_dynamodb_table` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DynamodbTableOnDemandThroughput {
  const DynamodbTableOnDemandThroughput({
    this.maxReadRequestUnits,
    this.maxWriteRequestUnits,
  });

  final TfArg<num>? maxReadRequestUnits;

  final TfArg<num>? maxWriteRequestUnits;

  Map<String, Object?> encode() => {
    'max_read_request_units': ?maxReadRequestUnits?.toTfJson(),
    'max_write_request_units': ?maxWriteRequestUnits?.toTfJson(),
  };
}

/// Typed helper for the `warm_throughput` block of
/// `aws_dynamodb_table` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DynamodbTableWarmThroughput {
  const DynamodbTableWarmThroughput({
    this.readUnitsPerSecond,
    this.writeUnitsPerSecond,
  });

  final TfArg<num>? readUnitsPerSecond;

  final TfArg<num>? writeUnitsPerSecond;

  Map<String, Object?> encode() => {
    'read_units_per_second': ?readUnitsPerSecond?.toTfJson(),
    'write_units_per_second': ?writeUnitsPerSecond?.toTfJson(),
  };
}

/// Typed helper for the `global_table_witness` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableGlobalTableWitness {
  const DynamodbTableGlobalTableWitness({this.regionName});

  final TfArg<String>? regionName;

  Map<String, Object?> encode() => {'region_name': ?regionName?.toTfJson()};
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

  final DynamodbTableInputCompressionType? inputCompressionType;

  final DynamodbTableInputFormat inputFormat;

  final DynamodbTableInputFormatOptions? inputFormatOptions;

  final DynamodbTableS3BucketSource s3BucketSource;

  Map<String, Object?> encode() => {
    'input_compression_type': ?inputCompressionType?.toTfJson(),
    'input_format': inputFormat.toTfJson(),
    'input_format_options': ?inputFormatOptions?.encode(),
    's3_bucket_source': s3BucketSource.encode(),
  };
}

/// `input_compression_type` — derived from the provider schema description.
extension type const DynamodbTableInputCompressionType._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableInputCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbTableInputCompressionType.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableInputCompressionType.arg(TfArg<String> arg) : this._(arg);

  static const gzip = DynamodbTableInputCompressionType._(TfArgLiteral('GZIP'));
  static const zstd = DynamodbTableInputCompressionType._(TfArgLiteral('ZSTD'));
  static const none = DynamodbTableInputCompressionType._(TfArgLiteral('NONE'));

  static const List<DynamodbTableInputCompressionType> values = [
    gzip,
    zstd,
    none,
  ];
}

/// `input_format` — derived from the provider schema description.
extension type const DynamodbTableInputFormat._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableInputFormat.variable(String name) : this._(TfArg.variable(name));
  DynamodbTableInputFormat.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableInputFormat.arg(TfArg<String> arg) : this._(arg);

  static const dynamodbJson = DynamodbTableInputFormat._(
    TfArgLiteral('DYNAMODB_JSON'),
  );
  static const ion = DynamodbTableInputFormat._(TfArgLiteral('ION'));
  static const csv = DynamodbTableInputFormat._(TfArgLiteral('CSV'));

  static const List<DynamodbTableInputFormat> values = [dynamodbJson, ion, csv];
}

/// Typed helper for the `import_table.input_format_options` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableInputFormatOptions {
  const DynamodbTableInputFormatOptions({this.csv});

  final DynamodbTableCsv? csv;

  Map<String, Object?> encode() => {'csv': ?csv?.encode()};
}

/// Typed helper for the `import_table.input_format_options.csv` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableCsv {
  const DynamodbTableCsv({this.delimiter, this.headerList});

  final TfArg<String>? delimiter;

  final TfArg<List<String>>? headerList;

  Map<String, Object?> encode() => {
    'delimiter': ?delimiter?.toTfJson(),
    'header_list': ?headerList?.toTfJson(),
  };
}

/// Typed helper for the `import_table.s3_bucket_source` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DynamodbTableS3BucketSource {
  const DynamodbTableS3BucketSource({
    required this.bucket,
    this.bucketOwner,
    this.keyPrefix,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<String>? bucketOwner;

  final TfArg<String>? keyPrefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'bucket_owner': ?bucketOwner?.toTfJson(),
    'key_prefix': ?keyPrefix?.toTfJson(),
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

  final TfArg<List<String>>? nonKeyAttributes;

  final DynamodbTableProjectionType projectionType;

  final TfArg<String> rangeKey;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'non_key_attributes': ?nonKeyAttributes?.toTfJson(),
    'projection_type': projectionType.toTfJson(),
    'range_key': rangeKey.toTfJson(),
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
    'recovery_period_in_days': ?recoveryPeriodInDays?.toTfJson(),
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

  final DynamodbTableConsistencyMode? consistencyMode;

  final TfArg<bool>? deletionProtectionEnabled;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<bool>? pointInTimeRecovery;

  final TfArg<bool>? propagateTags;

  final TfArg<String> regionName;

  Map<String, Object?> encode() => {
    'consistency_mode': ?consistencyMode?.toTfJson(),
    'deletion_protection_enabled': ?deletionProtectionEnabled?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'point_in_time_recovery': ?pointInTimeRecovery?.toTfJson(),
    'propagate_tags': ?propagateTags?.toTfJson(),
    'region_name': regionName.toTfJson(),
  };
}

/// `consistency_mode` — derived from the provider schema description.
extension type const DynamodbTableConsistencyMode._(TfArg<String> _)
    implements TfArg<String> {
  DynamodbTableConsistencyMode.variable(String name)
    : this._(TfArg.variable(name));
  DynamodbTableConsistencyMode.expression(String template)
    : this._(TfArg.expression(template));
  const DynamodbTableConsistencyMode.arg(TfArg<String> arg) : this._(arg);

  static const eventual = DynamodbTableConsistencyMode._(
    TfArgLiteral('EVENTUAL'),
  );
  static const strong = DynamodbTableConsistencyMode._(TfArgLiteral('STRONG'));

  static const List<DynamodbTableConsistencyMode> values = [eventual, strong];
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
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
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
    'attribute_name': ?attributeName?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
  };
}

/// Factory wrapper for `aws_dynamodb_table`.
final class AwsDynamodbTable extends Resource {
  static const String tfType = 'aws_dynamodb_table';

  AwsDynamodbTable(
    super.localName, {
    DynamodbTableBillingMode? billingMode,
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
    DynamodbTableStreamViewType? streamViewType,
    DynamodbTableClass? tableClass,
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
           'billing_mode': ?billingMode,
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'hash_key': ?hashKey,
           'name': name,
           'range_key': ?rangeKey,
           'read_capacity': ?readCapacity,
           'region': ?region,
           ...?source?.argMap,
           'restore_date_time': ?restoreDateTime,
           'restore_to_latest_time': ?restoreToLatestTime,
           'stream_enabled': ?streamEnabled,
           'stream_view_type': ?streamViewType,
           'table_class': ?tableClass,
           'tags': ?tags,
           'write_capacity': ?writeCapacity,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `stream_arn` attribute.
  TfRef<String> get streamArn => TfRef.attribute<String>(this, 'stream_arn');

  /// Reference to `stream_label` attribute.
  TfRef<String> get streamLabel =>
      TfRef.attribute<String>(this, 'stream_label');

  /// Reference to `billing_mode` attribute.
  TfRef<String> get billingMode =>
      TfRef.attribute<String>(this, 'billing_mode');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `hash_key` attribute.
  TfRef<String> get hashKey => TfRef.attribute<String>(this, 'hash_key');

  /// Reference to `range_key` attribute.
  TfRef<String> get rangeKey => TfRef.attribute<String>(this, 'range_key');

  /// Reference to `read_capacity` attribute.
  TfRef<num> get readCapacity => TfRef.attribute<num>(this, 'read_capacity');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `restore_backup_arn` attribute.
  TfRef<String> get restoreBackupArn =>
      TfRef.attribute<String>(this, 'restore_backup_arn');

  /// Reference to `restore_date_time` attribute.
  TfRef<String> get restoreDateTime =>
      TfRef.attribute<String>(this, 'restore_date_time');

  /// Reference to `restore_source_name` attribute.
  TfRef<String> get restoreSourceName =>
      TfRef.attribute<String>(this, 'restore_source_name');

  /// Reference to `restore_source_table_arn` attribute.
  TfRef<String> get restoreSourceTableArn =>
      TfRef.attribute<String>(this, 'restore_source_table_arn');

  /// Reference to `restore_to_latest_time` attribute.
  TfRef<bool> get restoreToLatestTime =>
      TfRef.attribute<bool>(this, 'restore_to_latest_time');

  /// Reference to `stream_enabled` attribute.
  TfRef<bool> get streamEnabled =>
      TfRef.attribute<bool>(this, 'stream_enabled');

  /// Reference to `stream_view_type` attribute.
  TfRef<String> get streamViewType =>
      TfRef.attribute<String>(this, 'stream_view_type');

  /// Reference to `table_class` attribute.
  TfRef<String> get tableClass => TfRef.attribute<String>(this, 'table_class');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `write_capacity` attribute.
  TfRef<num> get writeCapacity => TfRef.attribute<num>(this, 'write_capacity');
}
