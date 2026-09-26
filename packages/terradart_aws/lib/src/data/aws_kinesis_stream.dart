// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesis_stream`.
const Set<String> _awsKinesisStreamSensitive = <String>{};

/// Factory wrapper for `aws_kinesis_stream`.
final class DataAwsKinesisStream extends Data {
  static const String tfType = 'aws_kinesis_stream';

  DataAwsKinesisStream({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisStreamSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `closed_shards` attribute.
  TfRef<List<String>> get closedShards =>
      TfRef.attribute<List<String>>(this, 'closed_shards');

  /// Reference to `creation_timestamp` attribute.
  TfRef<num> get creationTimestamp =>
      TfRef.attribute<num>(this, 'creation_timestamp');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `max_record_size_in_kib` attribute.
  TfRef<num> get maxRecordSizeInKib =>
      TfRef.attribute<num>(this, 'max_record_size_in_kib');

  /// Reference to `open_shards` attribute.
  TfRef<List<String>> get openShards =>
      TfRef.attribute<List<String>>(this, 'open_shards');

  /// Reference to `retention_period` attribute.
  TfRef<num> get retentionPeriod =>
      TfRef.attribute<num>(this, 'retention_period');

  /// Reference to `shard_level_metrics` attribute.
  TfRef<List<String>> get shardLevelMetrics =>
      TfRef.attribute<List<String>>(this, 'shard_level_metrics');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `stream_mode_details` attribute.
  TfRef<List<Map<String, Object?>>> get streamModeDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stream_mode_details');

  /// Reference to `warm_throughput` attribute.
  TfRef<List<Map<String, Object?>>> get warmThroughput =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'warm_throughput');
}
