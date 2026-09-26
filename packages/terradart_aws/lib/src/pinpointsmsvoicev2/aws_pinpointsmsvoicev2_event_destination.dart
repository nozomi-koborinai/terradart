// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_event_destination`.
const Set<String> _awsPinpointsmsvoicev2EventDestinationSensitive = <String>{};

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
    required TfArg<List<String>> matchingEventTypes,
    TfArg<String>? region,
    List<Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestination>?
    cloudwatchLogsDestination,
    List<Pinpointsmsvoicev2EventDestinationKinesisFirehoseDestination>?
    kinesisFirehoseDestination,
    List<Pinpointsmsvoicev2EventDestinationSnsDestination>? snsDestination,
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
           'matching_event_types': matchingEventTypes,
           if (region != null) 'region': region,
           if (cloudwatchLogsDestination != null)
             'cloudwatch_logs_destination': TfArg.literal([
               for (final e in cloudwatchLogsDestination) e.encode(),
             ]),
           if (kinesisFirehoseDestination != null)
             'kinesis_firehose_destination': TfArg.literal([
               for (final e in kinesisFirehoseDestination) e.encode(),
             ]),
           if (snsDestination != null)
             'sns_destination': TfArg.literal([
               for (final e in snsDestination) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPinpointsmsvoicev2EventDestinationSensitive;

  /// Reference to `configuration_set_arn` attribute.
  TfRef<String> get configurationSetArn =>
      TfRef.attribute<String>(this, 'configuration_set_arn');
}
