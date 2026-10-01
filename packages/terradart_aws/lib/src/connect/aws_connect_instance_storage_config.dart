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

  final TfArg<ConnectInstanceStorageConfigStorageType> storageType;

  final ConnectInstanceStorageConfigKinesisFirehoseConfig?
  kinesisFirehoseConfig;

  final ConnectInstanceStorageConfigKinesisStreamConfig? kinesisStreamConfig;

  final ConnectInstanceStorageConfigKinesisVideoStreamConfig?
  kinesisVideoStreamConfig;

  final ConnectInstanceStorageConfigS3Config? s3Config;

  Map<String, Object?> encode() => {
    'storage_type': storageType.toTfJson(),
    'kinesis_firehose_config': ?kinesisFirehoseConfig?.encode(),
    'kinesis_stream_config': ?kinesisStreamConfig?.encode(),
    'kinesis_video_stream_config': ?kinesisVideoStreamConfig?.encode(),
    's3_config': ?s3Config?.encode(),
  };
}

/// `storage_type` — derived from the provider schema description.
enum ConnectInstanceStorageConfigStorageType implements TerraformEnum {
  s3('S3'),
  kinesisVideoStream('KINESIS_VIDEO_STREAM'),
  kinesisStream('KINESIS_STREAM'),
  kinesisFirehose('KINESIS_FIREHOSE');

  const ConnectInstanceStorageConfigStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `storage_config.kinesis_firehose_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigKinesisFirehoseConfig {
  const ConnectInstanceStorageConfigKinesisFirehoseConfig({
    required this.firehoseArn,
  });

  final TfArg<String> firehoseArn;

  Map<String, Object?> encode() => {'firehose_arn': firehoseArn.toTfJson()};
}

/// Typed helper for the `storage_config.kinesis_stream_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigKinesisStreamConfig {
  const ConnectInstanceStorageConfigKinesisStreamConfig({
    required this.streamArn,
  });

  final TfArg<String> streamArn;

  Map<String, Object?> encode() => {'stream_arn': streamArn.toTfJson()};
}

/// Typed helper for the `storage_config.kinesis_video_stream_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigKinesisVideoStreamConfig {
  const ConnectInstanceStorageConfigKinesisVideoStreamConfig({
    required this.prefix,
    required this.retentionPeriodHours,
    required this.encryptionConfig,
  });

  final TfArg<String> prefix;

  final TfArg<num> retentionPeriodHours;

  final ConnectInstanceStorageConfigEncryptionConfig encryptionConfig;

  Map<String, Object?> encode() => {
    'prefix': prefix.toTfJson(),
    'retention_period_hours': retentionPeriodHours.toTfJson(),
    'encryption_config': encryptionConfig.encode(),
  };
}

/// Typed helper for the `storage_config.kinesis_video_stream_config.encryption_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ConnectInstanceStorageConfigEncryptionConfig {
  const ConnectInstanceStorageConfigEncryptionConfig({
    required this.encryptionType,
    required this.keyId,
  });

  final TfArg<ConnectInstanceStorageConfigEncryptionType> encryptionType;

  final RefTo<AwsKmsKey> keyId;

  Map<String, Object?> encode() => {
    'encryption_type': encryptionType.toTfJson(),
    'key_id': keyId.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
enum ConnectInstanceStorageConfigEncryptionType implements TerraformEnum {
  kms('KMS');

  const ConnectInstanceStorageConfigEncryptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `storage_config.s3_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfigS3Config {
  const ConnectInstanceStorageConfigS3Config({
    required this.bucketName,
    required this.bucketPrefix,
    this.encryptionConfig,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String> bucketPrefix;

  final ConnectInstanceStorageConfigEncryptionConfig? encryptionConfig;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'bucket_prefix': bucketPrefix.toTfJson(),
    'encryption_config': ?encryptionConfig?.encode(),
  };
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
           'region': ?region,
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

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceTypeRef =>
      TfRef.attribute<String>(this, 'resource_type');
}
