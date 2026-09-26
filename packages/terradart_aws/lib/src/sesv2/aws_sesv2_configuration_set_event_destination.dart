// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_configuration_set_event_destination`.
const Set<String> _awsSesv2ConfigurationSetEventDestinationSensitive =
    <String>{};

/// Typed helper for the `event_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationEventDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestination({
    this.enabled,
    required this.matchingEventTypes,
    this.cloudWatchDestination,
    this.eventBridgeDestination,
    this.kinesisFirehoseDestination,
    this.pinpointDestination,
    this.snsDestination,
  });

  final TfArg<bool>? enabled;

  final TfArg<List<Object?>> matchingEventTypes;

  final Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestination?
  cloudWatchDestination;

  final Sesv2ConfigurationSetEventDestinationEventDestinationEventBridgeDestination?
  eventBridgeDestination;

  final Sesv2ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination?
  kinesisFirehoseDestination;

  final Sesv2ConfigurationSetEventDestinationEventDestinationPinpointDestination?
  pinpointDestination;

  final Sesv2ConfigurationSetEventDestinationEventDestinationSnsDestination?
  snsDestination;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'matching_event_types': matchingEventTypes.toTfJson(),
    if (cloudWatchDestination != null)
      'cloud_watch_destination': cloudWatchDestination!.encode(),
    if (eventBridgeDestination != null)
      'event_bridge_destination': eventBridgeDestination!.encode(),
    if (kinesisFirehoseDestination != null)
      'kinesis_firehose_destination': kinesisFirehoseDestination!.encode(),
    if (pinpointDestination != null)
      'pinpoint_destination': pinpointDestination!.encode(),
    if (snsDestination != null) 'sns_destination': snsDestination!.encode(),
  };
}

/// Typed helper for the `event_destination.cloud_watch_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestination({
    required this.dimensionConfiguration,
  });

  final List<
    Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration
  >
  dimensionConfiguration;

  Map<String, Object?> encode() => {
    'dimension_configuration': [
      for (final e in dimensionConfiguration) e.encode(),
    ],
  };
}

/// Typed helper for the `event_destination.cloud_watch_destination.dimension_configuration` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration {
  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration({
    required this.defaultDimensionValue,
    required this.dimensionName,
    required this.dimensionValueSource,
  });

  final TfArg<String> defaultDimensionValue;

  final TfArg<String> dimensionName;

  final TfArg<String> dimensionValueSource;

  Map<String, Object?> encode() => {
    'default_dimension_value': defaultDimensionValue.toTfJson(),
    'dimension_name': dimensionName.toTfJson(),
    'dimension_value_source': dimensionValueSource.toTfJson(),
  };
}

/// Typed helper for the `event_destination.event_bridge_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationEventDestinationEventBridgeDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationEventBridgeDestination({
    required this.eventBusArn,
  });

  final TfArg<String> eventBusArn;

  Map<String, Object?> encode() => {'event_bus_arn': eventBusArn.toTfJson()};
}

/// Typed helper for the `event_destination.kinesis_firehose_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination({
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

/// Typed helper for the `event_destination.pinpoint_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationEventDestinationPinpointDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationPinpointDestination({
    required this.applicationArn,
  });

  final TfArg<String> applicationArn;

  Map<String, Object?> encode() => {
    'application_arn': applicationArn.toTfJson(),
  };
}

/// Typed helper for the `event_destination.sns_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationEventDestinationSnsDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationSnsDestination({
    required this.topicArn,
  });

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {'topic_arn': topicArn.toTfJson()};
}

/// Factory wrapper for `aws_sesv2_configuration_set_event_destination`.
final class AwsSesv2ConfigurationSetEventDestination extends Resource {
  static const String tfType = 'aws_sesv2_configuration_set_event_destination';

  AwsSesv2ConfigurationSetEventDestination({
    required super.localName,
    required TfArg<String> configurationSetName,
    required TfArg<String> eventDestinationName,
    TfArg<String>? region,
    required Sesv2ConfigurationSetEventDestinationEventDestination
    eventDestination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           'event_destination_name': eventDestinationName,
           if (region != null) 'region': region,
           'event_destination': TfArg.literal(eventDestination.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2ConfigurationSetEventDestinationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
