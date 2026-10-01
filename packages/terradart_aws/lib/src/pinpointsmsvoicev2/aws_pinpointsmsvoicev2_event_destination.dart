// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_pinpointsmsvoicev2_event_destination`.
const Set<String> _awsPinpointsmsvoicev2EventDestinationSensitive = <String>{};

/// Pinpointsmsvoicev2 Event Destination Matching Event enum for `matching_event_types`.
enum Pinpointsmsvoicev2EventDestinationMatchingEventTypes
    implements TerraformEnum {
  all('ALL'),
  textAll('TEXT_ALL'),
  textSent('TEXT_SENT'),
  textPending('TEXT_PENDING'),
  textQueued('TEXT_QUEUED'),
  textSuccessful('TEXT_SUCCESSFUL'),
  textDelivered('TEXT_DELIVERED'),
  textInvalid('TEXT_INVALID'),
  textInvalidMessage('TEXT_INVALID_MESSAGE'),
  textUnreachable('TEXT_UNREACHABLE'),
  textCarrierUnreachable('TEXT_CARRIER_UNREACHABLE'),
  textBlocked('TEXT_BLOCKED'),
  textCarrierBlocked('TEXT_CARRIER_BLOCKED'),
  textSpam('TEXT_SPAM'),
  textUnknown('TEXT_UNKNOWN'),
  textTtlExpired('TEXT_TTL_EXPIRED'),
  textProtectBlocked('TEXT_PROTECT_BLOCKED'),
  voiceAll('VOICE_ALL'),
  voiceInitiated('VOICE_INITIATED'),
  voiceRinging('VOICE_RINGING'),
  voiceAnswered('VOICE_ANSWERED'),
  voiceCompleted('VOICE_COMPLETED'),
  voiceBusy('VOICE_BUSY'),
  voiceNoAnswer('VOICE_NO_ANSWER'),
  voiceFailed('VOICE_FAILED'),
  voiceTtlExpired('VOICE_TTL_EXPIRED'),
  mediaAll('MEDIA_ALL'),
  mediaPending('MEDIA_PENDING'),
  mediaQueued('MEDIA_QUEUED'),
  mediaSuccessful('MEDIA_SUCCESSFUL'),
  mediaDelivered('MEDIA_DELIVERED'),
  mediaInvalid('MEDIA_INVALID'),
  mediaInvalidMessage('MEDIA_INVALID_MESSAGE'),
  mediaUnreachable('MEDIA_UNREACHABLE'),
  mediaCarrierUnreachable('MEDIA_CARRIER_UNREACHABLE'),
  mediaBlocked('MEDIA_BLOCKED'),
  mediaCarrierBlocked('MEDIA_CARRIER_BLOCKED'),
  mediaSpam('MEDIA_SPAM'),
  mediaUnknown('MEDIA_UNKNOWN'),
  mediaTtlExpired('MEDIA_TTL_EXPIRED'),
  mediaFileInaccessible('MEDIA_FILE_INACCESSIBLE'),
  mediaFileTypeUnsupported('MEDIA_FILE_TYPE_UNSUPPORTED'),
  mediaFileSizeExceeded('MEDIA_FILE_SIZE_EXCEEDED'),
  rcsAll('RCS_ALL'),
  rcsQueued('RCS_QUEUED'),
  rcsSent('RCS_SENT'),
  rcsDelivered('RCS_DELIVERED'),
  rcsRead('RCS_READ'),
  rcsFailed('RCS_FAILED'),
  rcsTtlExpired('RCS_TTL_EXPIRED'),
  rcsProtectBlocked('RCS_PROTECT_BLOCKED'),
  rcsFallenBackToSms('RCS_FALLEN_BACK_TO_SMS');

  const Pinpointsmsvoicev2EventDestinationMatchingEventTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `cloudwatch_logs_destination`, `kinesis_firehose_destination`, `sns_destination` on `aws_pinpointsmsvoicev2_event_destination`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudwatchLogsDestination(...)`.
sealed class Pinpointsmsvoicev2EventDestinationTarget {
  const Pinpointsmsvoicev2EventDestinationTarget();

  /// Sets `cloudwatch_logs_destination`.
  const factory Pinpointsmsvoicev2EventDestinationTarget.cloudwatchLogsDestination(
    List<Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestination>
    cloudwatchLogsDestination,
  ) = Pinpointsmsvoicev2EventDestinationTargetCloudwatchLogsDestination;

  /// Sets `kinesis_firehose_destination`.
  const factory Pinpointsmsvoicev2EventDestinationTarget.kinesisFirehoseDestination(
    List<Pinpointsmsvoicev2EventDestinationKinesisFirehoseDestination>
    kinesisFirehoseDestination,
  ) = Pinpointsmsvoicev2EventDestinationTargetKinesisFirehoseDestination;

  /// Sets `sns_destination`.
  const factory Pinpointsmsvoicev2EventDestinationTarget.snsDestination(
    List<Pinpointsmsvoicev2EventDestinationSnsDestination> snsDestination,
  ) = Pinpointsmsvoicev2EventDestinationTargetSnsDestination;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Pinpointsmsvoicev2EventDestinationTarget.cloudwatchLogsDestination] choice: sets `cloudwatch_logs_destination`.
final class Pinpointsmsvoicev2EventDestinationTargetCloudwatchLogsDestination
    extends Pinpointsmsvoicev2EventDestinationTarget {
  const Pinpointsmsvoicev2EventDestinationTargetCloudwatchLogsDestination(
    this.cloudwatchLogsDestination,
  );

  final List<Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestination>
  cloudwatchLogsDestination;

  @override
  String get blockKey => 'cloudwatch_logs_destination';

  @override
  Map<String, Object?> encode() => {
    'cloudwatch_logs_destination': [
      for (final e in cloudwatchLogsDestination) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cloudwatch_logs_destination': TfArg.literal([
      for (final e in cloudwatchLogsDestination) e.encode(),
    ]),
  };
}

/// The [Pinpointsmsvoicev2EventDestinationTarget.kinesisFirehoseDestination] choice: sets `kinesis_firehose_destination`.
final class Pinpointsmsvoicev2EventDestinationTargetKinesisFirehoseDestination
    extends Pinpointsmsvoicev2EventDestinationTarget {
  const Pinpointsmsvoicev2EventDestinationTargetKinesisFirehoseDestination(
    this.kinesisFirehoseDestination,
  );

  final List<Pinpointsmsvoicev2EventDestinationKinesisFirehoseDestination>
  kinesisFirehoseDestination;

  @override
  String get blockKey => 'kinesis_firehose_destination';

  @override
  Map<String, Object?> encode() => {
    'kinesis_firehose_destination': [
      for (final e in kinesisFirehoseDestination) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'kinesis_firehose_destination': TfArg.literal([
      for (final e in kinesisFirehoseDestination) e.encode(),
    ]),
  };
}

/// The [Pinpointsmsvoicev2EventDestinationTarget.snsDestination] choice: sets `sns_destination`.
final class Pinpointsmsvoicev2EventDestinationTargetSnsDestination
    extends Pinpointsmsvoicev2EventDestinationTarget {
  const Pinpointsmsvoicev2EventDestinationTargetSnsDestination(
    this.snsDestination,
  );

  final List<Pinpointsmsvoicev2EventDestinationSnsDestination> snsDestination;

  @override
  String get blockKey => 'sns_destination';

  @override
  Map<String, Object?> encode() => {
    'sns_destination': [for (final e in snsDestination) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'sns_destination': TfArg.literal([
      for (final e in snsDestination) e.encode(),
    ]),
  };
}

/// Typed helper for the `cloudwatch_logs_destination` block of
/// `aws_pinpointsmsvoicev2_event_destination` (derived from provider schema).
@immutable
final class Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestination {
  const Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestination({
    required this.iamRoleArn,
    required this.logGroupArn,
  });

  final RefTo<AwsIamRole> iamRoleArn;

  final RefTo<AwsCloudwatchLogGroup> logGroupArn;

  Map<String, Object?> encode() => {
    'iam_role_arn': iamRoleArn.encodeAs('arn').toTfJson(),
    'log_group_arn': logGroupArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `kinesis_firehose_destination` block of
/// `aws_pinpointsmsvoicev2_event_destination` (derived from provider schema).
@immutable
final class Pinpointsmsvoicev2EventDestinationKinesisFirehoseDestination {
  const Pinpointsmsvoicev2EventDestinationKinesisFirehoseDestination({
    required this.deliveryStreamArn,
    required this.iamRoleArn,
  });

  final TfArg<String> deliveryStreamArn;

  final RefTo<AwsIamRole> iamRoleArn;

  Map<String, Object?> encode() => {
    'delivery_stream_arn': deliveryStreamArn.toTfJson(),
    'iam_role_arn': iamRoleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `sns_destination` block of
/// `aws_pinpointsmsvoicev2_event_destination` (derived from provider schema).
@immutable
final class Pinpointsmsvoicev2EventDestinationSnsDestination {
  const Pinpointsmsvoicev2EventDestinationSnsDestination({
    required this.topicArn,
  });

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_event_destination`.
final class AwsPinpointsmsvoicev2EventDestination extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_event_destination';

  AwsPinpointsmsvoicev2EventDestination(
    super.localName, {
    required TfArg<String> configurationSetName,
    TfArg<bool>? enabled,
    required TfArg<String> eventDestinationName,
    required List<TfArg<Pinpointsmsvoicev2EventDestinationMatchingEventTypes>>
    matchingEventTypes,
    TfArg<String>? region,
    required Pinpointsmsvoicev2EventDestinationTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           'enabled': ?enabled,
           'event_destination_name': eventDestinationName,
           'matching_event_types': TfArg.literal([
             for (final e in matchingEventTypes) e.toTfJson(),
           ]),
           'region': ?region,
           ...target.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointsmsvoicev2EventDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2EventDestination>`.
  RefTo<AwsPinpointsmsvoicev2EventDestination> get ref => RefTo.of(this);

  /// Reference to `configuration_set_arn` attribute.
  TfRef<String> get configurationSetArn =>
      TfRef.attribute<String>(this, 'configuration_set_arn');

  /// Reference to `configuration_set_name` attribute.
  TfRef<String> get configurationSetName =>
      TfRef.attribute<String>(this, 'configuration_set_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `event_destination_name` attribute.
  TfRef<String> get eventDestinationName =>
      TfRef.attribute<String>(this, 'event_destination_name');

  /// Reference to `matching_event_types` attribute.
  TfRef<List<String>> get matchingEventTypes =>
      TfRef.attribute<List<String>>(this, 'matching_event_types');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
