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
final class GluePartitionIndexPartitionIndex {
  const GluePartitionIndexPartitionIndex({this.indexName, this.keys});

  final TfArg<String>? indexName;

  final TfArg<List<Object?>>? keys;

  Map<String, Object?> encode() => {
    if (indexName != null) 'index_name': indexName!.toTfJson(),
    if (keys != null) 'keys': keys!.toTfJson(),
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
    required GluePartitionIndexPartitionIndex partitionIndex,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           'database_name': databaseName,
           if (region != null) 'region': region,
           'table_name': tableName,
           'partition_index': TfArg.literal(partitionIndex.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGluePartitionIndexSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
