// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
sealed class Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination {
  const Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `cloudwatch_logs_destination` (one of the [Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination] choices).
final class Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOption
    extends
        Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination {
  const Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOption({
    required this.cloudwatchLogsDestination,
  });

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

/// Sets `kinesis_firehose_destination` (one of the [Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination] choices).
final class Pinpointsmsvoicev2EventDestinationKinesisFirehoseDestinationOption
    extends
        Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination {
  const Pinpointsmsvoicev2EventDestinationKinesisFirehoseDestinationOption({
    required this.kinesisFirehoseDestination,
  });

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

/// Sets `sns_destination` (one of the [Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination] choices).
final class Pinpointsmsvoicev2EventDestinationSnsDestinationOption
    extends
        Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination {
  const Pinpointsmsvoicev2EventDestinationSnsDestinationOption({
    required this.snsDestination,
  });

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

  final TfArg<String> iamRoleArn;

  final TfArg<String> logGroupArn;

  Map<String, Object?> encode() => {
    'iam_role_arn': iamRoleArn.toTfJson(),
    'log_group_arn': logGroupArn.toTfJson(),
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

  final TfArg<String> iamRoleArn;

  Map<String, Object?> encode() => {
    'delivery_stream_arn': deliveryStreamArn.toTfJson(),
    'iam_role_arn': iamRoleArn.toTfJson(),
  };
}

/// Typed helper for the `sns_destination` block of
/// `aws_pinpointsmsvoicev2_event_destination` (derived from provider schema).
@immutable
final class Pinpointsmsvoicev2EventDestinationSnsDestination {
  const Pinpointsmsvoicev2EventDestinationSnsDestination({
    required this.topicArn,
  });

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {'topic_arn': topicArn.toTfJson()};
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_event_destination`.
final class AwsPinpointsmsvoicev2EventDestination extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_event_destination';

  AwsPinpointsmsvoicev2EventDestination({
    required super.localName,
    required TfArg<String> configurationSetName,
    TfArg<bool>? enabled,
    required TfArg<String> eventDestinationName,
    required List<TfArg<Pinpointsmsvoicev2EventDestinationMatchingEventTypes>>
    matchingEventTypes,
    TfArg<String>? region,
    required Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination
    cloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           if (enabled != null) 'enabled': enabled,
           'event_destination_name': eventDestinationName,
           'matching_event_types': TfArg.literal([
             for (final e in matchingEventTypes) e.toTfJson(),
           ]),
           if (region != null) 'region': region,
           ...cloudwatchLogsDestinationOrKinesisFirehoseDestinationOrSnsDestination
               .argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointsmsvoicev2EventDestinationSensitive;

  /// Reference to `configuration_set_arn` attribute.
  TfRef<String> get configurationSetArn =>
      TfRef.attribute<String>(this, 'configuration_set_arn');
}
