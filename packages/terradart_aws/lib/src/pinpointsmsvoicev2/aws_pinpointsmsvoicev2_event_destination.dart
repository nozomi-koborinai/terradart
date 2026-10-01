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
extension type const Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
  TfArg<String> _
) implements TfArg<String> {
  Pinpointsmsvoicev2EventDestinationMatchingEventTypes.variable(String name)
    : this._(TfArg.variable(name));
  Pinpointsmsvoicev2EventDestinationMatchingEventTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const Pinpointsmsvoicev2EventDestinationMatchingEventTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const all = Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
    TfArgLiteral('ALL'),
  );
  static const textAll = Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
    TfArgLiteral('TEXT_ALL'),
  );
  static const textSent =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_SENT'),
      );
  static const textPending =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_PENDING'),
      );
  static const textQueued =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_QUEUED'),
      );
  static const textSuccessful =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_SUCCESSFUL'),
      );
  static const textDelivered =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_DELIVERED'),
      );
  static const textInvalid =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_INVALID'),
      );
  static const textInvalidMessage =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_INVALID_MESSAGE'),
      );
  static const textUnreachable =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_UNREACHABLE'),
      );
  static const textCarrierUnreachable =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_CARRIER_UNREACHABLE'),
      );
  static const textBlocked =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_BLOCKED'),
      );
  static const textCarrierBlocked =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_CARRIER_BLOCKED'),
      );
  static const textSpam =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_SPAM'),
      );
  static const textUnknown =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_UNKNOWN'),
      );
  static const textTtlExpired =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_TTL_EXPIRED'),
      );
  static const textProtectBlocked =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('TEXT_PROTECT_BLOCKED'),
      );
  static const voiceAll =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_ALL'),
      );
  static const voiceInitiated =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_INITIATED'),
      );
  static const voiceRinging =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_RINGING'),
      );
  static const voiceAnswered =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_ANSWERED'),
      );
  static const voiceCompleted =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_COMPLETED'),
      );
  static const voiceBusy =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_BUSY'),
      );
  static const voiceNoAnswer =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_NO_ANSWER'),
      );
  static const voiceFailed =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_FAILED'),
      );
  static const voiceTtlExpired =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('VOICE_TTL_EXPIRED'),
      );
  static const mediaAll =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_ALL'),
      );
  static const mediaPending =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_PENDING'),
      );
  static const mediaQueued =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_QUEUED'),
      );
  static const mediaSuccessful =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_SUCCESSFUL'),
      );
  static const mediaDelivered =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_DELIVERED'),
      );
  static const mediaInvalid =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_INVALID'),
      );
  static const mediaInvalidMessage =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_INVALID_MESSAGE'),
      );
  static const mediaUnreachable =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_UNREACHABLE'),
      );
  static const mediaCarrierUnreachable =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_CARRIER_UNREACHABLE'),
      );
  static const mediaBlocked =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_BLOCKED'),
      );
  static const mediaCarrierBlocked =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_CARRIER_BLOCKED'),
      );
  static const mediaSpam =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_SPAM'),
      );
  static const mediaUnknown =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_UNKNOWN'),
      );
  static const mediaTtlExpired =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_TTL_EXPIRED'),
      );
  static const mediaFileInaccessible =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_FILE_INACCESSIBLE'),
      );
  static const mediaFileTypeUnsupported =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_FILE_TYPE_UNSUPPORTED'),
      );
  static const mediaFileSizeExceeded =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('MEDIA_FILE_SIZE_EXCEEDED'),
      );
  static const rcsAll = Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
    TfArgLiteral('RCS_ALL'),
  );
  static const rcsQueued =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('RCS_QUEUED'),
      );
  static const rcsSent = Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
    TfArgLiteral('RCS_SENT'),
  );
  static const rcsDelivered =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('RCS_DELIVERED'),
      );
  static const rcsRead = Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
    TfArgLiteral('RCS_READ'),
  );
  static const rcsFailed =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('RCS_FAILED'),
      );
  static const rcsTtlExpired =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('RCS_TTL_EXPIRED'),
      );
  static const rcsProtectBlocked =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('RCS_PROTECT_BLOCKED'),
      );
  static const rcsFallenBackToSms =
      Pinpointsmsvoicev2EventDestinationMatchingEventTypes._(
        TfArgLiteral('RCS_FALLEN_BACK_TO_SMS'),
      );

  static const List<Pinpointsmsvoicev2EventDestinationMatchingEventTypes>
  values = [
    all,
    textAll,
    textSent,
    textPending,
    textQueued,
    textSuccessful,
    textDelivered,
    textInvalid,
    textInvalidMessage,
    textUnreachable,
    textCarrierUnreachable,
    textBlocked,
    textCarrierBlocked,
    textSpam,
    textUnknown,
    textTtlExpired,
    textProtectBlocked,
    voiceAll,
    voiceInitiated,
    voiceRinging,
    voiceAnswered,
    voiceCompleted,
    voiceBusy,
    voiceNoAnswer,
    voiceFailed,
    voiceTtlExpired,
    mediaAll,
    mediaPending,
    mediaQueued,
    mediaSuccessful,
    mediaDelivered,
    mediaInvalid,
    mediaInvalidMessage,
    mediaUnreachable,
    mediaCarrierUnreachable,
    mediaBlocked,
    mediaCarrierBlocked,
    mediaSpam,
    mediaUnknown,
    mediaTtlExpired,
    mediaFileInaccessible,
    mediaFileTypeUnsupported,
    mediaFileSizeExceeded,
    rcsAll,
    rcsQueued,
    rcsSent,
    rcsDelivered,
    rcsRead,
    rcsFailed,
    rcsTtlExpired,
    rcsProtectBlocked,
    rcsFallenBackToSms,
  ];
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
    required List<Pinpointsmsvoicev2EventDestinationMatchingEventTypes>
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
