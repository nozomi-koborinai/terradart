// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_partition_index`.
const Set<String> _awsGluePartitionIndexSensitive = <String>{};

/// Typed helper for the `partition_index` block of
/// `aws_glue_partition_index` (derived from provider schema).
@immutable
final class GluePartitionIndex {
  const GluePartitionIndex({this.indexName, this.keys});

  final TfArg<String>? indexName;

  final TfArg<List<String>>? keys;

  Map<String, Object?> encode() => {
    'index_name': ?indexName?.toTfJson(),
    'keys': ?keys?.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_partition_index`.
final class AwsGluePartitionIndex extends Resource {
  static const String tfType = 'aws_glue_partition_index';

  AwsGluePartitionIndex({
    required super.localName,
    TfArg<String>? catalogId,
    required TfArg<String> databaseName,
    TfArg<String>? region,
    required TfArg<String> tableName,
    required GluePartitionIndex partitionIndex,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           'database_name': databaseName,
           'region': ?region,
           'table_name': tableName,
           'partition_index': TfArg.literal(partitionIndex.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGluePartitionIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGluePartitionIndex>`.
  RefTo<AwsGluePartitionIndex> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogId => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
