// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_kinesis_stream`.
const Set<String> _awsKinesisStreamSensitive = <String>{};

/// Kinesis Stream Encryption enum for `encryption_type`.
enum KinesisStreamEncryptionType implements TerraformEnum {
  none('NONE'),
  kms('KMS');

  const KinesisStreamEncryptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Kinesis Stream Shard Level enum for `shard_level_metrics`.
enum KinesisStreamShardLevelMetrics implements TerraformEnum {
  incomingbytes('IncomingBytes'),
  incomingrecords('IncomingRecords'),
  outgoingbytes('OutgoingBytes'),
  outgoingrecords('OutgoingRecords'),
  writeprovisionedthroughputexceeded('WriteProvisionedThroughputExceeded'),
  readprovisionedthroughputexceeded('ReadProvisionedThroughputExceeded'),
  iteratoragemilliseconds('IteratorAgeMilliseconds'),
  all('ALL');

  const KinesisStreamShardLevelMetrics(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `shard_count`, `warm_throughput_mib_ps` on `aws_kinesis_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class KinesisStreamShardCountOrWarmThroughputMibPs {
  const KinesisStreamShardCountOrWarmThroughputMibPs();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `shard_count` (one of the [KinesisStreamShardCountOrWarmThroughputMibPs] choices).
final class KinesisStreamShardCountOption
    extends KinesisStreamShardCountOrWarmThroughputMibPs {
  const KinesisStreamShardCountOption({required this.shardCount});

  final TfArg<num> shardCount;

  @override
  String get blockKey => 'shard_count';

  @override
  Map<String, Object?> encode() => {'shard_count': shardCount.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'shard_count': shardCount};
}

/// Sets `warm_throughput_mib_ps` (one of the [KinesisStreamShardCountOrWarmThroughputMibPs] choices).
final class KinesisStreamWarmThroughputMibPsOption
    extends KinesisStreamShardCountOrWarmThroughputMibPs {
  const KinesisStreamWarmThroughputMibPsOption({
    required this.warmThroughputMibPs,
  });

  final TfArg<num> warmThroughputMibPs;

  @override
  String get blockKey => 'warm_throughput_mib_ps';

  @override
  Map<String, Object?> encode() => {
    'warm_throughput_mib_ps': warmThroughputMibPs.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'warm_throughput_mib_ps': warmThroughputMibPs,
  };
}

/// Typed helper for the `stream_mode_details` block of
/// `aws_kinesis_stream` (derived from provider schema).
@immutable
final class KinesisStreamStreamModeDetails {
  const KinesisStreamStreamModeDetails({required this.streamMode});

  final TfArg<KinesisStreamStreamModeDetailsStreamMode> streamMode;

  Map<String, Object?> encode() => {'stream_mode': streamMode.toTfJson()};
}

/// `stream_mode` — derived from the provider schema description.
enum KinesisStreamStreamModeDetailsStreamMode implements TerraformEnum {
  provisioned('PROVISIONED'),
  onDemand('ON_DEMAND');

  const KinesisStreamStreamModeDetailsStreamMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_kinesis_stream`.
final class AwsKinesisStream extends Resource {
  static const String tfType = 'aws_kinesis_stream';

  AwsKinesisStream({
    required super.localName,
    TfArg<String>? arn,
    TfArg<KinesisStreamEncryptionType>? encryptionType,
    TfArg<bool>? enforceConsumerDeletion,
    TfArg<String>? kmsKeyId,
    TfArg<num>? maxRecordSizeInKib,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<num>? retentionPeriod,
    KinesisStreamShardCountOrWarmThroughputMibPs?
    shardCountOrWarmThroughputMibPs,
    List<TfArg<KinesisStreamShardLevelMetrics>>? shardLevelMetrics,
    TfArg<Map<String, String>>? tags,
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
           ...?shardCountOrWarmThroughputMibPs?.argMap,
           if (shardLevelMetrics != null)
             'shard_level_metrics': TfArg.literal([
               for (final e in shardLevelMetrics) e.toTfJson(),
             ]),
           if (tags != null) 'tags': tags,
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
