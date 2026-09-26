// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_instance_storage_config`.
const Set<String> _awsConnectInstanceStorageConfigSensitive = <String>{};

/// Typed helper for the `storage_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigStorageConfig {
  const ConnectInstanceStorageConfigStorageConfig({
    required this.storageType,
    this.kinesisFirehoseConfig,
    this.kinesisStreamConfig,
    this.kinesisVideoStreamConfig,
    this.s3Config,
  });

  final TfArg<String> storageType;

  final ConnectInstanceStorageConfigStorageConfigKinesisFirehoseConfig?
  kinesisFirehoseConfig;

  final ConnectInstanceStorageConfigStorageConfigKinesisStreamConfig?
  kinesisStreamConfig;

  final ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfig?
  kinesisVideoStreamConfig;

  final ConnectInstanceStorageConfigStorageConfigS3Config? s3Config;

  Map<String, Object?> encode() => {
    'storage_type': storageType.toTfJson(),
    if (kinesisFirehoseConfig != null)
      'kinesis_firehose_config': kinesisFirehoseConfig!.encode(),
    if (kinesisStreamConfig != null)
      'kinesis_stream_config': kinesisStreamConfig!.encode(),
    if (kinesisVideoStreamConfig != null)
      'kinesis_video_stream_config': kinesisVideoStreamConfig!.encode(),
    if (s3Config != null) 's3_config': s3Config!.encode(),
  };
}

/// Typed helper for the `storage_config.kinesis_firehose_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigStorageConfigKinesisFirehoseConfig {
  const ConnectInstanceStorageConfigStorageConfigKinesisFirehoseConfig({
    required this.firehoseArn,
  });

  final TfArg<String> firehoseArn;

  Map<String, Object?> encode() => {'firehose_arn': firehoseArn.toTfJson()};
}

/// Typed helper for the `storage_config.kinesis_stream_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigStorageConfigKinesisStreamConfig {
  const ConnectInstanceStorageConfigStorageConfigKinesisStreamConfig({
    required this.streamArn,
  });

  final TfArg<String> streamArn;

  Map<String, Object?> encode() => {'stream_arn': streamArn.toTfJson()};
}

/// Typed helper for the `storage_config.kinesis_video_stream_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfig {
  const ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfig({
    required this.prefix,
    required this.retentionPeriodHours,
    required this.encryptionConfig,
  });

  final TfArg<String> prefix;

  final TfArg<num> retentionPeriodHours;

  final ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig
  encryptionConfig;

  Map<String, Object?> encode() => {
    'prefix': prefix.toTfJson(),
    'retention_period_hours': retentionPeriodHours.toTfJson(),
    'encryption_config': encryptionConfig.encode(),
  };
}

/// Typed helper for the `storage_config.kinesis_video_stream_config.encryption_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig {
  const ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  final TfArg<String> encryptionType;

  final TfArg<String> keyId;

  Map<String, Object?> encode() => {
    'encryption_type': encryptionType.toTfJson(),
    'key_id': keyId.toTfJson(),
  };
}

/// Typed helper for the `storage_config.s3_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigStorageConfigS3Config {
  const ConnectInstanceStorageConfigStorageConfigS3Config({
    required this.bucketName,
    required this.bucketPrefix,
    this.encryptionConfig,
  });

  final TfArg<String> bucketName;

  final TfArg<String> bucketPrefix;

  final ConnectInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig?
  encryptionConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    'bucket_prefix': bucketPrefix.toTfJson(),
    if (encryptionConfig != null)
      'encryption_config': encryptionConfig!.encode(),
  };
}

/// Typed helper for the `storage_config.s3_config.encryption_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig {
  const ConnectInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  final TfArg<String> encryptionType;

  final TfArg<String> keyId;

  Map<String, Object?> encode() => {
    'encryption_type': encryptionType.toTfJson(),
    'key_id': keyId.toTfJson(),
  };
}

/// Factory wrapper for `aws_connect_instance_storage_config`.
final class AwsConnectInstanceStorageConfig extends Resource {
  static const String tfType = 'aws_connect_instance_storage_config';

  AwsConnectInstanceStorageConfig({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required TfArg<String> resourceType,
    required ConnectInstanceStorageConfigStorageConfig storageConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (region != null) 'region': region,
           'resource_type': resourceType,
           'storage_config': TfArg.literal(storageConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectInstanceStorageConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');
}
