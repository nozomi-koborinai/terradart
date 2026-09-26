// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_table`.
const Set<String> _awsDynamodbTableSensitive = <String>{};

/// Typed helper for the `server_side_encryption` block of
/// `aws_dynamodb_table` (derived from provider schema).
@immutable
final class DataDynamodbTableServerSideEncryption {
  const DataDynamodbTableServerSideEncryption();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_dynamodb_table`.
final class DataAwsDynamodbTable extends Data {
  static const String tfType = 'aws_dynamodb_table';

  DataAwsDynamodbTable({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    DataDynamodbTableServerSideEncryption? serverSideEncryption,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (serverSideEncryption != null)
             'server_side_encryption': TfArg.literal(
               serverSideEncryption.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attribute` attribute.
  TfRef<List<Map<String, Object?>>> get attribute =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attribute');

  /// Reference to `billing_mode` attribute.
  TfRef<String> get billingMode =>
      TfRef.attribute<String>(this, 'billing_mode');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `global_secondary_index` attribute.
  TfRef<List<Map<String, Object?>>> get globalSecondaryIndex =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'global_secondary_index',
      );

  /// Reference to `hash_key` attribute.
  TfRef<String> get hashKey => TfRef.attribute<String>(this, 'hash_key');

  /// Reference to `local_secondary_index` attribute.
  TfRef<List<Map<String, Object?>>> get localSecondaryIndex =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'local_secondary_index',
      );

  /// Reference to `on_demand_throughput` attribute.
  TfRef<List<Map<String, Object?>>> get onDemandThroughput =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'on_demand_throughput');

  /// Reference to `point_in_time_recovery` attribute.
  TfRef<List<Map<String, Object?>>> get pointInTimeRecovery =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'point_in_time_recovery',
      );

  /// Reference to `range_key` attribute.
  TfRef<String> get rangeKey => TfRef.attribute<String>(this, 'range_key');

  /// Reference to `read_capacity` attribute.
  TfRef<num> get readCapacity => TfRef.attribute<num>(this, 'read_capacity');

  /// Reference to `replica` attribute.
  TfRef<List<Map<String, Object?>>> get replica =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'replica');

  /// Reference to `stream_arn` attribute.
  TfRef<String> get streamArn => TfRef.attribute<String>(this, 'stream_arn');

  /// Reference to `stream_enabled` attribute.
  TfRef<bool> get streamEnabled =>
      TfRef.attribute<bool>(this, 'stream_enabled');

  /// Reference to `stream_label` attribute.
  TfRef<String> get streamLabel =>
      TfRef.attribute<String>(this, 'stream_label');

  /// Reference to `stream_view_type` attribute.
  TfRef<String> get streamViewType =>
      TfRef.attribute<String>(this, 'stream_view_type');

  /// Reference to `table_class` attribute.
  TfRef<String> get tableClass => TfRef.attribute<String>(this, 'table_class');

  /// Reference to `ttl` attribute.
  TfRef<List<Map<String, Object?>>> get ttl =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ttl');

  /// Reference to `warm_throughput` attribute.
  TfRef<List<Map<String, Object?>>> get warmThroughput =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'warm_throughput');

  /// Reference to `write_capacity` attribute.
  TfRef<num> get writeCapacity => TfRef.attribute<num>(this, 'write_capacity');
}
