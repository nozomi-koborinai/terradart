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
extension type const ConnectInstanceStorageConfigResourceType._(TfArg<String> _)
    implements TfArg<String> {
  ConnectInstanceStorageConfigResourceType.variable(String name)
    : this._(TfArg.variable(name));
  ConnectInstanceStorageConfigResourceType.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectInstanceStorageConfigResourceType.arg(TfArg<String> arg)
    : this._(arg);

  static const chatTranscripts = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('CHAT_TRANSCRIPTS'),
  );
  static const callRecordings = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('CALL_RECORDINGS'),
  );
  static const scheduledReports = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('SCHEDULED_REPORTS'),
  );
  static const mediaStreams = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('MEDIA_STREAMS'),
  );
  static const contactTraceRecords = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('CONTACT_TRACE_RECORDS'),
  );
  static const agentEvents = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('AGENT_EVENTS'),
  );
  static const realTimeContactAnalysisSegments =
      ConnectInstanceStorageConfigResourceType._(
        TfArgLiteral('REAL_TIME_CONTACT_ANALYSIS_SEGMENTS'),
      );
  static const attachments = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('ATTACHMENTS'),
  );
  static const contactEvaluations = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('CONTACT_EVALUATIONS'),
  );
  static const screenRecordings = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('SCREEN_RECORDINGS'),
  );
  static const realTimeContactAnalysisChatSegments =
      ConnectInstanceStorageConfigResourceType._(
        TfArgLiteral('REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS'),
      );
  static const realTimeContactAnalysisVoiceSegments =
      ConnectInstanceStorageConfigResourceType._(
        TfArgLiteral('REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS'),
      );
  static const emailMessages = ConnectInstanceStorageConfigResourceType._(
    TfArgLiteral('EMAIL_MESSAGES'),
  );

  static const List<ConnectInstanceStorageConfigResourceType> values = [
    chatTranscripts,
    callRecordings,
    scheduledReports,
    mediaStreams,
    contactTraceRecords,
    agentEvents,
    realTimeContactAnalysisSegments,
    attachments,
    contactEvaluations,
    screenRecordings,
    realTimeContactAnalysisChatSegments,
    realTimeContactAnalysisVoiceSegments,
    emailMessages,
  ];
}

/// Typed helper for the `storage_config` block of
/// `aws_connect_instance_storage_config` (derived from provider schema).
@immutable
final class ConnectInstanceStorageConfig {
  const ConnectInstanceStorageConfig({
    required this.storageType,
    this.kinesisFirehoseConfig,
    this.kinesisStreamConfig,
    this.kinesisVideoStreamConfig,
    this.s3Config,
  });

  final ConnectInstanceStorageConfigStorageType storageType;

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
extension type const ConnectInstanceStorageConfigStorageType._(TfArg<String> _)
    implements TfArg<String> {
  ConnectInstanceStorageConfigStorageType.variable(String name)
    : this._(TfArg.variable(name));
  ConnectInstanceStorageConfigStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectInstanceStorageConfigStorageType.arg(TfArg<String> arg)
    : this._(arg);

  static const s3 = ConnectInstanceStorageConfigStorageType._(
    TfArgLiteral('S3'),
  );
  static const kinesisVideoStream = ConnectInstanceStorageConfigStorageType._(
    TfArgLiteral('KINESIS_VIDEO_STREAM'),
  );
  static const kinesisStream = ConnectInstanceStorageConfigStorageType._(
    TfArgLiteral('KINESIS_STREAM'),
  );
  static const kinesisFirehose = ConnectInstanceStorageConfigStorageType._(
    TfArgLiteral('KINESIS_FIREHOSE'),
  );

  static const List<ConnectInstanceStorageConfigStorageType> values = [
    s3,
    kinesisVideoStream,
    kinesisStream,
    kinesisFirehose,
  ];
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

  final ConnectInstanceStorageConfigEncryptionType encryptionType;

  final RefTo<AwsKmsKey> keyId;

  Map<String, Object?> encode() => {
    'encryption_type': encryptionType.toTfJson(),
    'key_id': keyId.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_type` — derived from the provider schema description.
extension type const ConnectInstanceStorageConfigEncryptionType._(
  TfArg<String> _
) implements TfArg<String> {
  ConnectInstanceStorageConfigEncryptionType.variable(String name)
    : this._(TfArg.variable(name));
  ConnectInstanceStorageConfigEncryptionType.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectInstanceStorageConfigEncryptionType.arg(TfArg<String> arg)
    : this._(arg);

  static const kms = ConnectInstanceStorageConfigEncryptionType._(
    TfArgLiteral('KMS'),
  );

  static const List<ConnectInstanceStorageConfigEncryptionType> values = [kms];
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

  AwsConnectInstanceStorageConfig(
    super.localName, {
    required TfArg<String> instanceId,
    TfArg<String>? region,
    required ConnectInstanceStorageConfigResourceType resourceType,
    required ConnectInstanceStorageConfig storageConfig,
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
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');
}
