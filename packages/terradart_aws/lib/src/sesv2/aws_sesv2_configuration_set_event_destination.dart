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
final class Sesv2ConfigurationSetEventDestination {
  const Sesv2ConfigurationSetEventDestination({
    this.enabled,
    required this.matchingEventTypes,
    required this.target,
  });

  final TfArg<bool>? enabled;

  final List<TfArg<Sesv2ConfigurationSetEventDestinationMatchingEventTypes>>
  matchingEventTypes;

  final Sesv2ConfigurationSetEventDestinationTarget target;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'matching_event_types': [for (final e in matchingEventTypes) e.toTfJson()],
    ...target.encode(),
  };
}

/// Exactly one of `cloud_watch_destination`, `event_bridge_destination`, `kinesis_firehose_destination`, `pinpoint_destination`, `sns_destination` on the `event_destination` block of `aws_sesv2_configuration_set_event_destination`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.cloudWatchDestination(...)`.
sealed class Sesv2ConfigurationSetEventDestinationTarget {
  const Sesv2ConfigurationSetEventDestinationTarget();

  /// Sets `cloud_watch_destination`.
  const factory Sesv2ConfigurationSetEventDestinationTarget.cloudWatchDestination(
    Sesv2ConfigurationSetEventDestinationCloudWatchDestination
    cloudWatchDestination,
  ) = Sesv2ConfigurationSetEventDestinationTargetCloudWatchDestination;

  /// Sets `event_bridge_destination`.
  const factory Sesv2ConfigurationSetEventDestinationTarget.eventBridgeDestination(
    Sesv2ConfigurationSetEventDestinationEventBridgeDestination
    eventBridgeDestination,
  ) = Sesv2ConfigurationSetEventDestinationTargetEventBridgeDestination;

  /// Sets `kinesis_firehose_destination`.
  const factory Sesv2ConfigurationSetEventDestinationTarget.kinesisFirehoseDestination(
    Sesv2ConfigurationSetEventDestinationKinesisFirehoseDestination
    kinesisFirehoseDestination,
  ) = Sesv2ConfigurationSetEventDestinationTargetKinesisFirehoseDestination;

  /// Sets `pinpoint_destination`.
  const factory Sesv2ConfigurationSetEventDestinationTarget.pinpointDestination(
    Sesv2ConfigurationSetEventDestinationPinpointDestination
    pinpointDestination,
  ) = Sesv2ConfigurationSetEventDestinationTargetPinpointDestination;

  /// Sets `sns_destination`.
  const factory Sesv2ConfigurationSetEventDestinationTarget.snsDestination(
    Sesv2ConfigurationSetEventDestinationSnsDestination snsDestination,
  ) = Sesv2ConfigurationSetEventDestinationTargetSnsDestination;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Sesv2ConfigurationSetEventDestinationTarget.cloudWatchDestination] choice: sets `cloud_watch_destination`.
final class Sesv2ConfigurationSetEventDestinationTargetCloudWatchDestination
    extends Sesv2ConfigurationSetEventDestinationTarget {
  const Sesv2ConfigurationSetEventDestinationTargetCloudWatchDestination(
    this.cloudWatchDestination,
  );

  final Sesv2ConfigurationSetEventDestinationCloudWatchDestination
  cloudWatchDestination;

  @override
  String get blockKey => 'cloud_watch_destination';

  @override
  Map<String, Object?> encode() => {
    'cloud_watch_destination': cloudWatchDestination.encode(),
  };
}

/// The [Sesv2ConfigurationSetEventDestinationTarget.eventBridgeDestination] choice: sets `event_bridge_destination`.
final class Sesv2ConfigurationSetEventDestinationTargetEventBridgeDestination
    extends Sesv2ConfigurationSetEventDestinationTarget {
  const Sesv2ConfigurationSetEventDestinationTargetEventBridgeDestination(
    this.eventBridgeDestination,
  );

  final Sesv2ConfigurationSetEventDestinationEventBridgeDestination
  eventBridgeDestination;

  @override
  String get blockKey => 'event_bridge_destination';

  @override
  Map<String, Object?> encode() => {
    'event_bridge_destination': eventBridgeDestination.encode(),
  };
}

/// The [Sesv2ConfigurationSetEventDestinationTarget.kinesisFirehoseDestination] choice: sets `kinesis_firehose_destination`.
final class Sesv2ConfigurationSetEventDestinationTargetKinesisFirehoseDestination
    extends Sesv2ConfigurationSetEventDestinationTarget {
  const Sesv2ConfigurationSetEventDestinationTargetKinesisFirehoseDestination(
    this.kinesisFirehoseDestination,
  );

  final Sesv2ConfigurationSetEventDestinationKinesisFirehoseDestination
  kinesisFirehoseDestination;

  @override
  String get blockKey => 'kinesis_firehose_destination';

  @override
  Map<String, Object?> encode() => {
    'kinesis_firehose_destination': kinesisFirehoseDestination.encode(),
  };
}

/// The [Sesv2ConfigurationSetEventDestinationTarget.pinpointDestination] choice: sets `pinpoint_destination`.
final class Sesv2ConfigurationSetEventDestinationTargetPinpointDestination
    extends Sesv2ConfigurationSetEventDestinationTarget {
  const Sesv2ConfigurationSetEventDestinationTargetPinpointDestination(
    this.pinpointDestination,
  );

  final Sesv2ConfigurationSetEventDestinationPinpointDestination
  pinpointDestination;

  @override
  String get blockKey => 'pinpoint_destination';

  @override
  Map<String, Object?> encode() => {
    'pinpoint_destination': pinpointDestination.encode(),
  };
}

/// The [Sesv2ConfigurationSetEventDestinationTarget.snsDestination] choice: sets `sns_destination`.
final class Sesv2ConfigurationSetEventDestinationTargetSnsDestination
    extends Sesv2ConfigurationSetEventDestinationTarget {
  const Sesv2ConfigurationSetEventDestinationTargetSnsDestination(
    this.snsDestination,
  );

  final Sesv2ConfigurationSetEventDestinationSnsDestination snsDestination;

  @override
  String get blockKey => 'sns_destination';

  @override
  Map<String, Object?> encode() => {'sns_destination': snsDestination.encode()};
}

/// `matching_event_types` — derived from the provider schema description.
enum Sesv2ConfigurationSetEventDestinationMatchingEventTypes
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

  const Sesv2ConfigurationSetEventDestinationMatchingEventTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `event_destination.cloud_watch_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationCloudWatchDestination {
  const Sesv2ConfigurationSetEventDestinationCloudWatchDestination({
    required this.dimensionConfiguration,
  });

  final List<Sesv2ConfigurationSetEventDestinationDimensionConfiguration>
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
final class Sesv2ConfigurationSetEventDestinationDimensionConfiguration {
  const Sesv2ConfigurationSetEventDestinationDimensionConfiguration({
    required this.defaultDimensionValue,
    required this.dimensionName,
    required this.dimensionValueSource,
  });

  final TfArg<String> defaultDimensionValue;

  final TfArg<String> dimensionName;

  final TfArg<Sesv2ConfigurationSetEventDestinationDimensionValueSource>
  dimensionValueSource;

  Map<String, Object?> encode() => {
    'default_dimension_value': defaultDimensionValue.toTfJson(),
    'dimension_name': dimensionName.toTfJson(),
    'dimension_value_source': dimensionValueSource.toTfJson(),
  };
}

/// `dimension_value_source` — derived from the provider schema description.
enum Sesv2ConfigurationSetEventDestinationDimensionValueSource
    implements TerraformEnum {
  messageTag('MESSAGE_TAG'),
  emailHeader('EMAIL_HEADER'),
  linkTag('LINK_TAG');

  const Sesv2ConfigurationSetEventDestinationDimensionValueSource(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `event_destination.event_bridge_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationEventBridgeDestination {
  const Sesv2ConfigurationSetEventDestinationEventBridgeDestination({
    required this.eventBusArn,
  });

  final TfArg<String> eventBusArn;

  Map<String, Object?> encode() => {'event_bus_arn': eventBusArn.toTfJson()};
}

/// Typed helper for the `event_destination.kinesis_firehose_destination` block of
/// `aws_sesv2_configuration_set_event_destination` (derived from provider schema).
@immutable
final class Sesv2ConfigurationSetEventDestinationKinesisFirehoseDestination {
  const Sesv2ConfigurationSetEventDestinationKinesisFirehoseDestination({
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
final class Sesv2ConfigurationSetEventDestinationPinpointDestination {
  const Sesv2ConfigurationSetEventDestinationPinpointDestination({
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
final class Sesv2ConfigurationSetEventDestinationSnsDestination {
  const Sesv2ConfigurationSetEventDestinationSnsDestination({
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

  AwsSesv2ConfigurationSetEventDestination(
    super.localName, {
    required TfArg<String> configurationSetName,
    required TfArg<String> eventDestinationName,
    TfArg<String>? region,
    required Sesv2ConfigurationSetEventDestination eventDestination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           'event_destination_name': eventDestinationName,
           'region': ?region,
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

  /// Reference to `configuration_set_name` attribute.
  TfRef<String> get configurationSetName =>
      TfRef.attribute<String>(this, 'configuration_set_name');

  /// Reference to `event_destination_name` attribute.
  TfRef<String> get eventDestinationName =>
      TfRef.attribute<String>(this, 'event_destination_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
