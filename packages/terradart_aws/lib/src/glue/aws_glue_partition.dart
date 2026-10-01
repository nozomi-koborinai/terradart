// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_partition`.
const Set<String> _awsGluePartitionSensitive = <String>{};

/// Typed helper for the `storage_descriptor` block of
/// `aws_glue_partition` (derived from provider schema).
@immutable
final class GluePartitionStorageDescriptor {
  const GluePartitionStorageDescriptor({
    this.additionalLocations,
    this.bucketColumns,
    this.compressed,
    this.inputFormat,
    this.location,
    this.numberOfBuckets,
    this.outputFormat,
    this.parameters,
    this.storedAsSubDirectories,
    this.columns,
    this.serDeInfo,
    this.skewedInfo,
    this.sortColumns,
  });

  final TfArg<List<String>>? additionalLocations;

  final TfArg<List<String>>? bucketColumns;

  final TfArg<bool>? compressed;

  final TfArg<String>? inputFormat;

  final TfArg<String>? location;

  final TfArg<num>? numberOfBuckets;

  final TfArg<String>? outputFormat;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<bool>? storedAsSubDirectories;

  final List<GluePartitionColumns>? columns;

  final GluePartitionSerDeInfo? serDeInfo;

  final GluePartitionSkewedInfo? skewedInfo;

  final List<GluePartitionSortColumns>? sortColumns;

  Map<String, Object?> encode() => {
    'additional_locations': ?additionalLocations?.toTfJson(),
    'bucket_columns': ?bucketColumns?.toTfJson(),
    'compressed': ?compressed?.toTfJson(),
    'input_format': ?inputFormat?.toTfJson(),
    'location': ?location?.toTfJson(),
    'number_of_buckets': ?numberOfBuckets?.toTfJson(),
    'output_format': ?outputFormat?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'stored_as_sub_directories': ?storedAsSubDirectories?.toTfJson(),
    if (columns != null) 'columns': [for (final e in columns!) e.encode()],
    'ser_de_info': ?serDeInfo?.encode(),
    'skewed_info': ?skewedInfo?.encode(),
    if (sortColumns != null)
      'sort_columns': [for (final e in sortColumns!) e.encode()],
  };
}

/// Typed helper for the `storage_descriptor.columns` block of
/// `aws_glue_partition` (derived from provider schema).
@immutable
final class GluePartitionColumns {
  const GluePartitionColumns({this.comment, required this.name, this.type});

  final TfArg<String>? comment;

  final TfArg<String> name;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.ser_de_info` block of
/// `aws_glue_partition` (derived from provider schema).
@immutable
final class GluePartitionSerDeInfo {
  const GluePartitionSerDeInfo({
    this.name,
    this.parameters,
    this.serializationLibrary,
  });

  final TfArg<String>? name;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<String>? serializationLibrary;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'serialization_library': ?serializationLibrary?.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.skewed_info` block of
/// `aws_glue_partition` (derived from provider schema).
@immutable
final class GluePartitionSkewedInfo {
  const GluePartitionSkewedInfo({
    this.skewedColumnNames,
    this.skewedColumnValueLocationMaps,
    this.skewedColumnValues,
  });

  final TfArg<List<String>>? skewedColumnNames;

  final TfArg<Map<String, String>>? skewedColumnValueLocationMaps;

  final TfArg<List<String>>? skewedColumnValues;

  Map<String, Object?> encode() => {
    'skewed_column_names': ?skewedColumnNames?.toTfJson(),
    'skewed_column_value_location_maps': ?skewedColumnValueLocationMaps
        ?.toTfJson(),
    'skewed_column_values': ?skewedColumnValues?.toTfJson(),
  };
}

/// Typed helper for the `storage_descriptor.sort_columns` block of
/// `aws_glue_partition` (derived from provider schema).
@immutable
final class GluePartitionSortColumns {
  const GluePartitionSortColumns({
    required this.column,
    required this.sortOrder,
  });

  final TfArg<String> column;

  final TfArg<num> sortOrder;

  Map<String, Object?> encode() => {
    'column': column.toTfJson(),
    'sort_order': sortOrder.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_partition`.
final class AwsGluePartition extends Resource {
  static const String tfType = 'aws_glue_partition';

  AwsGluePartition(
    super.localName, {
    TfArg<String>? catalogId,
    required TfArg<String> databaseName,
    TfArg<Map<String, String>>? parameters,
    required TfArg<List<String>> partitionValues,
    TfArg<String>? region,
    required TfArg<String> tableName,
    GluePartitionStorageDescriptor? storageDescriptor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           'database_name': databaseName,
           'parameters': ?parameters,
           'partition_values': partitionValues,
           'region': ?region,
           'table_name': tableName,
           if (storageDescriptor != null)
             'storage_descriptor': TfArg.literal(storageDescriptor.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGluePartitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGluePartition>`.
  RefTo<AwsGluePartition> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_accessed_time` attribute.
  TfRef<String> get lastAccessedTime =>
      TfRef.attribute<String>(this, 'last_accessed_time');

  /// Reference to `last_analyzed_time` attribute.
  TfRef<String> get lastAnalyzedTime =>
      TfRef.attribute<String>(this, 'last_analyzed_time');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `partition_values` attribute.
  TfRef<List<String>> get partitionValues =>
      TfRef.attribute<List<String>>(this, 'partition_values');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
