// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_kinesis_stream`.
const Set<String> _awsKinesisStreamSensitive = <String>{};

/// Kinesis Stream Encryption enum for `encryption_type`.
extension type const KinesisStreamEncryptionType._(TfArg<String> _)
    implements TfArg<String> {
  KinesisStreamEncryptionType.variable(String name)
    : this._(TfArg.variable(name));
  KinesisStreamEncryptionType.expression(String template)
    : this._(TfArg.expression(template));
  const KinesisStreamEncryptionType.arg(TfArg<String> arg) : this._(arg);

  static const none = KinesisStreamEncryptionType._(TfArgLiteral('NONE'));
  static const kms = KinesisStreamEncryptionType._(TfArgLiteral('KMS'));

  static const List<KinesisStreamEncryptionType> values = [none, kms];
}

/// Kinesis Stream Shard Level enum for `shard_level_metrics`.
extension type const KinesisStreamShardLevelMetrics._(TfArg<String> _)
    implements TfArg<String> {
  KinesisStreamShardLevelMetrics.variable(String name)
    : this._(TfArg.variable(name));
  KinesisStreamShardLevelMetrics.expression(String template)
    : this._(TfArg.expression(template));
  const KinesisStreamShardLevelMetrics.arg(TfArg<String> arg) : this._(arg);

  static const incomingbytes = KinesisStreamShardLevelMetrics._(
    TfArgLiteral('IncomingBytes'),
  );
  static const incomingrecords = KinesisStreamShardLevelMetrics._(
    TfArgLiteral('IncomingRecords'),
  );
  static const outgoingbytes = KinesisStreamShardLevelMetrics._(
    TfArgLiteral('OutgoingBytes'),
  );
  static const outgoingrecords = KinesisStreamShardLevelMetrics._(
    TfArgLiteral('OutgoingRecords'),
  );
  static const writeprovisionedthroughputexceeded =
      KinesisStreamShardLevelMetrics._(
        TfArgLiteral('WriteProvisionedThroughputExceeded'),
      );
  static const readprovisionedthroughputexceeded =
      KinesisStreamShardLevelMetrics._(
        TfArgLiteral('ReadProvisionedThroughputExceeded'),
      );
  static const iteratoragemilliseconds = KinesisStreamShardLevelMetrics._(
    TfArgLiteral('IteratorAgeMilliseconds'),
  );
  static const all = KinesisStreamShardLevelMetrics._(TfArgLiteral('ALL'));

  static const List<KinesisStreamShardLevelMetrics> values = [
    incomingbytes,
    incomingrecords,
    outgoingbytes,
    outgoingrecords,
    writeprovisionedthroughputexceeded,
    readprovisionedthroughputexceeded,
    iteratoragemilliseconds,
    all,
  ];
}

/// At most one of `shard_count`, `warm_throughput_mib_ps` on `aws_kinesis_stream`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.shardCount(...)`.
sealed class KinesisStreamCapacity {
  const KinesisStreamCapacity();

  /// Sets `shard_count`.
  const factory KinesisStreamCapacity.shardCount(TfArg<num> shardCount) =
      KinesisStreamCapacityShardCount;

  /// Sets `warm_throughput_mib_ps`.
  const factory KinesisStreamCapacity.warmThroughputMibPs(
    TfArg<num> warmThroughputMibPs,
  ) = KinesisStreamCapacityWarmThroughputMibPs;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [KinesisStreamCapacity.shardCount] choice: sets `shard_count`.
final class KinesisStreamCapacityShardCount extends KinesisStreamCapacity {
  const KinesisStreamCapacityShardCount(this.shardCount);

  final TfArg<num> shardCount;

  @override
  String get blockKey => 'shard_count';

  @override
  Map<String, Object?> encode() => {'shard_count': shardCount.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'shard_count': shardCount};
}

/// The [KinesisStreamCapacity.warmThroughputMibPs] choice: sets `warm_throughput_mib_ps`.
final class KinesisStreamCapacityWarmThroughputMibPs
    extends KinesisStreamCapacity {
  const KinesisStreamCapacityWarmThroughputMibPs(this.warmThroughputMibPs);

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
final class KinesisStreamModeDetails {
  const KinesisStreamModeDetails({required this.streamMode});

  final KinesisStreamMode streamMode;

  Map<String, Object?> encode() => {'stream_mode': streamMode.toTfJson()};
}

/// `stream_mode` — derived from the provider schema description.
extension type const KinesisStreamMode._(TfArg<String> _)
    implements TfArg<String> {
  KinesisStreamMode.variable(String name) : this._(TfArg.variable(name));
  KinesisStreamMode.expression(String template)
    : this._(TfArg.expression(template));
  const KinesisStreamMode.arg(TfArg<String> arg) : this._(arg);

  static const provisioned = KinesisStreamMode._(TfArgLiteral('PROVISIONED'));
  static const onDemand = KinesisStreamMode._(TfArgLiteral('ON_DEMAND'));

  static const List<KinesisStreamMode> values = [provisioned, onDemand];
}

/// Factory wrapper for `aws_kinesis_stream`.
final class AwsKinesisStream extends Resource {
  static const String tfType = 'aws_kinesis_stream';

  AwsKinesisStream(
    super.localName, {
    TfArg<String>? arn,
    KinesisStreamEncryptionType? encryptionType,
    TfArg<bool>? enforceConsumerDeletion,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<num>? maxRecordSizeInKib,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<num>? retentionPeriod,
    KinesisStreamCapacity? capacity,
    List<KinesisStreamShardLevelMetrics>? shardLevelMetrics,
    TfArg<Map<String, String>>? tags,
    KinesisStreamModeDetails? streamModeDetails,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': ?arn,
           'encryption_type': ?encryptionType,
           'enforce_consumer_deletion': ?enforceConsumerDeletion,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'max_record_size_in_kib': ?maxRecordSizeInKib,
           'name': name,
           'region': ?region,
           'retention_period': ?retentionPeriod,
           ...?capacity?.argMap,
           if (shardLevelMetrics != null)
             'shard_level_metrics': TfArg.literal([
               for (final e in shardLevelMetrics) e.toTfJson(),
             ]),
           'tags': ?tags,
           if (streamModeDetails != null)
             'stream_mode_details': TfArg.literal(streamModeDetails.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKinesisStream>`.
  RefTo<AwsKinesisStream> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `enforce_consumer_deletion` attribute.
  TfRef<bool> get enforceConsumerDeletion =>
      TfRef.attribute<bool>(this, 'enforce_consumer_deletion');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `max_record_size_in_kib` attribute.
  TfRef<num> get maxRecordSizeInKib =>
      TfRef.attribute<num>(this, 'max_record_size_in_kib');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention_period` attribute.
  TfRef<num> get retentionPeriod =>
      TfRef.attribute<num>(this, 'retention_period');

  /// Reference to `shard_count` attribute.
  TfRef<num> get shardCount => TfRef.attribute<num>(this, 'shard_count');

  /// Reference to `shard_level_metrics` attribute.
  TfRef<List<String>> get shardLevelMetrics =>
      TfRef.attribute<List<String>>(this, 'shard_level_metrics');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `warm_throughput_mib_ps` attribute.
  TfRef<num> get warmThroughputMibPs =>
      TfRef.attribute<num>(this, 'warm_throughput_mib_ps');
}
