// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

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
    required this.destination,
  });

  final TfArg<bool>? enabled;

  final List<
    TfArg<
      Sesv2ConfigurationSetEventDestinationEventDestinationMatchingEventTypes
    >
  >
  matchingEventTypes;

  final Sesv2ConfigurationSetEventDestinationEventDestinationDestination
  destination;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    'matching_event_types': [for (final e in matchingEventTypes) e.toTfJson()],
    ...destination.encode(),
  };
}

/// Exactly one of `cloud_watch_destination`, `event_bridge_destination`, `kinesis_firehose_destination`, `pinpoint_destination`, `sns_destination` on the `event_destination` block of `aws_sesv2_configuration_set_event_destination`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudWatchDestination(...)`.
sealed class Sesv2ConfigurationSetEventDestinationEventDestinationDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationDestination();

  /// Sets `cloud_watch_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationDestination.cloudWatchDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestination
    cloudWatchDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationDestinationCloudWatchDestination;

  /// Sets `event_bridge_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationDestination.eventBridgeDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationEventBridgeDestination
    eventBridgeDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationDestinationEventBridgeDestination;

  /// Sets `kinesis_firehose_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationDestination.kinesisFirehoseDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationKinesisFirehoseDestination
    kinesisFirehoseDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationDestinationKinesisFirehoseDestination;

  /// Sets `pinpoint_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationDestination.pinpointDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationPinpointDestination
    pinpointDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationDestinationPinpointDestination;

  /// Sets `sns_destination`.
  const factory Sesv2ConfigurationSetEventDestinationEventDestinationDestination.snsDestination(
    Sesv2ConfigurationSetEventDestinationEventDestinationSnsDestination
    snsDestination,
  ) = Sesv2ConfigurationSetEventDestinationEventDestinationDestinationSnsDestination;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationDestination.cloudWatchDestination] choice: sets `cloud_watch_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationDestinationCloudWatchDestination
    extends Sesv2ConfigurationSetEventDestinationEventDestinationDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationDestinationCloudWatchDestination(
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

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationDestination.eventBridgeDestination] choice: sets `event_bridge_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationDestinationEventBridgeDestination
    extends Sesv2ConfigurationSetEventDestinationEventDestinationDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationDestinationEventBridgeDestination(
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

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationDestination.kinesisFirehoseDestination] choice: sets `kinesis_firehose_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationDestinationKinesisFirehoseDestination
    extends Sesv2ConfigurationSetEventDestinationEventDestinationDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationDestinationKinesisFirehoseDestination(
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

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationDestination.pinpointDestination] choice: sets `pinpoint_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationDestinationPinpointDestination
    extends Sesv2ConfigurationSetEventDestinationEventDestinationDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationDestinationPinpointDestination(
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

/// The [Sesv2ConfigurationSetEventDestinationEventDestinationDestination.snsDestination] choice: sets `sns_destination`.
final class Sesv2ConfigurationSetEventDestinationEventDestinationDestinationSnsDestination
    extends Sesv2ConfigurationSetEventDestinationEventDestinationDestination {
  const Sesv2ConfigurationSetEventDestinationEventDestinationDestinationSnsDestination(
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

  final RefTo<AwsIamRole> iamRoleArn;

  Map<String, Object?> encode() => {
    'delivery_stream_arn': deliveryStreamArn.toTfJson(),
    'iam_role_arn': iamRoleArn.encodeAs('arn').toTfJson(),
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

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2ConfigurationSetEventDestination>`.
  RefTo<AwsSesv2ConfigurationSetEventDestination> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
