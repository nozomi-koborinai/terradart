// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_connect_instance_storage_config`.
const Set<String> _awsConnectInstanceStorageConfigSensitive = <String>{};

/// Connect Instance Storage Config Resource enum for `resource_type`.
enum ConnectInstanceStorageConfigResourceType implements TerraformEnum {
  chatTranscripts('CHAT_TRANSCRIPTS'),
  callRecordings('CALL_RECORDINGS'),
  scheduledReports('SCHEDULED_REPORTS'),
  mediaStreams('MEDIA_STREAMS'),
  contactTraceRecords('CONTACT_TRACE_RECORDS'),
  agentEvents('AGENT_EVENTS'),
  realTimeContactAnalysisSegments('REAL_TIME_CONTACT_ANALYSIS_SEGMENTS'),
  attachments('ATTACHMENTS'),
  contactEvaluations('CONTACT_EVALUATIONS'),
  screenRecordings('SCREEN_RECORDINGS'),
  realTimeContactAnalysisChatSegments(
    'REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS',
  ),
  realTimeContactAnalysisVoiceSegments(
    'REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS',
  ),
  emailMessages('EMAIL_MESSAGES');

  const ConnectInstanceStorageConfigResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<ConnectInstanceStorageConfigStorageConfigStorageType> storageType;

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

/// `storage_type` — derived from the provider schema description.
enum ConnectInstanceStorageConfigStorageConfigStorageType
    implements TerraformEnum {
  s3('S3'),
  kinesisVideoStream('KINESIS_VIDEO_STREAM'),
  kinesisStream('KINESIS_STREAM'),
  kinesisFirehose('KINESIS_FIREHOSE');

  const ConnectInstanceStorageConfigStorageConfigStorageType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigEncryptionType
  >
  encryptionType;

  final RefTo<AwsKmsKey> keyId;

  Map<String, Object?> encode() => {
    'encryption_type': encryptionType.toTfJson(),
    'key_id': keyId.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
enum ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigEncryptionType
    implements TerraformEnum {
  kms('KMS');

  const ConnectInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigEncryptionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String> bucketPrefix;

  final ConnectInstanceStorageConfigStorageConfigS3ConfigEncryptionConfig?
  encryptionConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
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

  final TfArg<
    ConnectInstanceStorageConfigStorageConfigS3ConfigEncryptionConfigEncryptionType
  >
  encryptionType;

  final RefTo<AwsKmsKey> keyId;

  Map<String, Object?> encode() => {
    'encryption_type': encryptionType.toTfJson(),
    'key_id': keyId.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
enum ConnectInstanceStorageConfigStorageConfigS3ConfigEncryptionConfigEncryptionType
    implements TerraformEnum {
  kms('KMS');

  const ConnectInstanceStorageConfigStorageConfigS3ConfigEncryptionConfigEncryptionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_connect_instance_storage_config`.
final class AwsConnectInstanceStorageConfig extends Resource {
  static const String tfType = 'aws_connect_instance_storage_config';

  AwsConnectInstanceStorageConfig({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required TfArg<ConnectInstanceStorageConfigResourceType> resourceType,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectInstanceStorageConfig>`.
  RefTo<AwsConnectInstanceStorageConfig> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');
}
