// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesis_stream`.
const Set<String> _awsKinesisStreamSensitive = <String>{};

/// Typed helper for the `stream_mode_details` block of
/// `aws_kinesis_stream` (derived from provider schema).
@immutable
final class KinesisStreamStreamModeDetails {
  const KinesisStreamStreamModeDetails({required this.streamMode});

  final TfArg<String> streamMode;

  Map<String, Object?> encode() => {'stream_mode': streamMode.toTfJson()};
}

/// Factory wrapper for `aws_kinesis_stream`.
final class AwsKinesisStream extends Resource {
  static const String tfType = 'aws_kinesis_stream';

  AwsKinesisStream({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? encryptionType,
    TfArg<bool>? enforceConsumerDeletion,
    TfArg<String>? kmsKeyId,
    TfArg<num>? maxRecordSizeInKib,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<num>? retentionPeriod,
    TfArg<num>? shardCount,
    TfArg<List<String>>? shardLevelMetrics,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? warmThroughputMibPs,
    KinesisStreamStreamModeDetails? streamModeDetails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (encryptionType != null) 'encryption_type': encryptionType,
           if (enforceConsumerDeletion != null)
             'enforce_consumer_deletion': enforceConsumerDeletion,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (maxRecordSizeInKib != null)
             'max_record_size_in_kib': maxRecordSizeInKib,
           'name': name,
           if (region != null) 'region': region,
           if (retentionPeriod != null) 'retention_period': retentionPeriod,
           if (shardCount != null) 'shard_count': shardCount,
           if (shardLevelMetrics != null)
             'shard_level_metrics': shardLevelMetrics,
           if (tags != null) 'tags': tags,
           if (warmThroughputMibPs != null)
             'warm_throughput_mib_ps': warmThroughputMibPs,
           if (streamModeDetails != null)
             'stream_mode_details': TfArg.literal(streamModeDetails.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisStreamSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
