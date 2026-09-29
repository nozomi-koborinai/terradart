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
    required this.cloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination,
  });

  final TfArg<bool>? enabled;

  final List<
    TfArg<
      Sesv2ConfigurationSetEventDestinationEventDestinationMatchingEventTypes
    >
  >
  matchingEventTypes;

  final Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination
  cloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'matching_event_types': [for (final e in matchingEventTypes) e.toTfJson()],
    ...cloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination
        .encode(),
  };
}

/// Exactly one of `cloud_watch_destination`, `event_bridge_destination`, `kinesis_firehose_destination`, `pinpoint_destination`, `sns_destination` on the `event_destination` block of `aws_sesv2_configuration_set_event_destination`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudWatchDestination(...)`.
sealed class Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination();

  /// Sets `cloud_watch_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.cloudWatchDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestination
    cloudWatchDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationCloudWatchDestination;

  /// Sets `event_bridge_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.eventBridgeDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationEventBridgeDestination
    eventBridgeDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationEventBridgeDestination;

  /// Sets `kinesis_firehose_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.kinesisFirehoseDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination
    kinesisFirehoseDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationKinesisFirehoseDestination;

  /// Sets `pinpoint_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.pinpointDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationPinpointDestination
    pinpointDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationPinpointDestination;

  /// Sets `sns_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.snsDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationSnsDestination
    snsDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationSnsDestination;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.cloudWatchDestination] choice: sets `cloud_watch_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationCloudWatchDestination
    extends
        Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationCloudWatchDestination(
    this.cloudWatchDestination,
  );

  final Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestination
  cloudWatchDestination;

  @override
  String get blockKey => 'cloud_watch_destination';

  @override
  Map<String, Object?> encode() => {
    'cloud_watch_destination': cloudWatchDestination.encode(),
  };
}

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.eventBridgeDestination] choice: sets `event_bridge_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationEventBridgeDestination
    extends
        Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationEventBridgeDestination(
    this.eventBridgeDestination,
  );

  final Sesv2ConfigurationSetEventDestinationEventDestinationEventBridgeDestination
  eventBridgeDestination;

  @override
  String get blockKey => 'event_bridge_destination';

  @override
  Map<String, Object?> encode() => {
    'event_bridge_destination': eventBridgeDestination.encode(),
  };
}

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.kinesisFirehoseDestination] choice: sets `kinesis_firehose_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationKinesisFirehoseDestination
    extends
        Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationKinesisFirehoseDestination(
    this.kinesisFirehoseDestination,
  );

  final Sesv2ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination
  kinesisFirehoseDestination;

  @override
  String get blockKey => 'kinesis_firehose_destination';

  @override
  Map<String, Object?> encode() => {
    'kinesis_firehose_destination': kinesisFirehoseDestination.encode(),
  };
}

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.pinpointDestination] choice: sets `pinpoint_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationPinpointDestination
    extends
        Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationPinpointDestination(
    this.pinpointDestination,
  );

  final Sesv2ConfigurationSetEventDestinationEventDestinationPinpointDestination
  pinpointDestination;

  @override
  String get blockKey => 'pinpoint_destination';

  @override
  Map<String, Object?> encode() => {
    'pinpoint_destination': pinpointDestination.encode(),
  };
}

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination.snsDestination] choice: sets `sns_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationSnsDestination
    extends
        Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationOrEventBridgeDestinationOrKinesisFirehoseDestinationOrPinpointDestinationOrSnsDestinationSnsDestination(
    this.snsDestination,
  );

  final Sesv2ConfigurationSetEventDestinationEventDestinationSnsDestination
  snsDestination;

  @override
  String get blockKey => 'sns_destination';

  @override
  Map<String, Object?> encode() => {'sns_destination': snsDestination.encode()};
}

/// `matching_event_types` — derived from the provider schema description.
enum Sesv2ConfigurationSetEventDestinationEventDestinationMatchingEventTypes
    implements TerraformEnum {
  send('SEND'),
  reject('REJECT'),
  bounce('BOUNCE'),
  complaint('COMPLAINT'),
  delivery('DELIVERY'),
  open('OPEN'),
  click('CLICK'),
  renderingFailure('RENDERING_FAILURE'),
  deliveryDelay('DELIVERY_DELAY'),
  subscription('SUBSCRIPTION');

  const Sesv2ConfigurationSetEventDestinationEventDestinationMatchingEventTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfigurationDimensionValueSource
  >
  dimensionValueSource;

  Map<String, Object?> encode() => {
    'default_dimension_value': defaultDimensionValue.toTfJson(),
    'dimension_name': dimensionName.toTfJson(),
    'dimension_value_source': dimensionValueSource.toTfJson(),
  };
}

/// `dimension_value_source` — derived from the provider schema description.
enum Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfigurationDimensionValueSource
    implements TerraformEnum {
  messageTag('MESSAGE_TAG'),
  emailHeader('EMAIL_HEADER'),
  linkTag('LINK_TAG');

  const Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfigurationDimensionValueSource(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
