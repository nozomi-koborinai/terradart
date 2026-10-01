// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_ses_event_destination`.
const Set<String> _awsSesEventDestinationSensitive = <String>{};

/// Ses Event Destination Matching enum for `matching_types`.
enum SesEventDestinationMatchingTypes implements TerraformEnum {
  send('send'),
  reject('reject'),
  bounce('bounce'),
  complaint('complaint'),
  delivery('delivery'),
  open('open'),
  click('click'),
  renderingfailure('renderingFailure');

  const SesEventDestinationMatchingTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `cloudwatch_destination`, `kinesis_destination`, `sns_destination` on `aws_ses_event_destination`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cloudwatchDestination(...)`.
sealed class SesEventDestinationTarget {
  const SesEventDestinationTarget();

  /// Sets `cloudwatch_destination`.
  const factory SesEventDestinationTarget.cloudwatchDestination(
    List<SesEventDestinationCloudwatchDestination> cloudwatchDestination,
  ) = SesEventDestinationTargetCloudwatchDestination;

  /// Sets `kinesis_destination`.
  const factory SesEventDestinationTarget.kinesisDestination(
    SesEventDestinationKinesisDestination kinesisDestination,
  ) = SesEventDestinationTargetKinesisDestination;

  /// Sets `sns_destination`.
  const factory SesEventDestinationTarget.snsDestination(
    SesEventDestinationSnsDestination snsDestination,
  ) = SesEventDestinationTargetSnsDestination;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SesEventDestinationTarget.cloudwatchDestination] choice: sets `cloudwatch_destination`.
final class SesEventDestinationTargetCloudwatchDestination
    extends SesEventDestinationTarget {
  const SesEventDestinationTargetCloudwatchDestination(
    this.cloudwatchDestination,
  );

  final List<SesEventDestinationCloudwatchDestination> cloudwatchDestination;

  @override
  String get blockKey => 'cloudwatch_destination';

  @override
  Map<String, Object?> encode() => {
    'cloudwatch_destination': [
      for (final e in cloudwatchDestination) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cloudwatch_destination': TfArg.literal([
      for (final e in cloudwatchDestination) e.encode(),
    ]),
  };
}

/// The [SesEventDestinationTarget.kinesisDestination] choice: sets `kinesis_destination`.
final class SesEventDestinationTargetKinesisDestination
    extends SesEventDestinationTarget {
  const SesEventDestinationTargetKinesisDestination(this.kinesisDestination);

  final SesEventDestinationKinesisDestination kinesisDestination;

  @override
  String get blockKey => 'kinesis_destination';

  @override
  Map<String, Object?> encode() => {
    'kinesis_destination': kinesisDestination.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'kinesis_destination': TfArg.literal(kinesisDestination.encode()),
  };
}

/// The [SesEventDestinationTarget.snsDestination] choice: sets `sns_destination`.
final class SesEventDestinationTargetSnsDestination
    extends SesEventDestinationTarget {
  const SesEventDestinationTargetSnsDestination(this.snsDestination);

  final SesEventDestinationSnsDestination snsDestination;

  @override
  String get blockKey => 'sns_destination';

  @override
  Map<String, Object?> encode() => {'sns_destination': snsDestination.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'sns_destination': TfArg.literal(snsDestination.encode()),
  };
}

/// Typed helper for the `cloudwatch_destination` block of
/// `aws_ses_event_destination` (derived from provider schema).
@immutable
final class SesEventDestinationCloudwatchDestination {
  const SesEventDestinationCloudwatchDestination({
    required this.defaultValue,
    required this.dimensionName,
    required this.valueSource,
  });

  final TfArg<String> defaultValue;

  final TfArg<String> dimensionName;

  final TfArg<SesEventDestinationValueSource> valueSource;

  Map<String, Object?> encode() => {
    'default_value': defaultValue.toTfJson(),
    'dimension_name': dimensionName.toTfJson(),
    'value_source': valueSource.toTfJson(),
  };
}

/// `value_source` — derived from the provider schema description.
enum SesEventDestinationValueSource implements TerraformEnum {
  messagetag('messageTag'),
  emailheader('emailHeader'),
  linktag('linkTag');

  const SesEventDestinationValueSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `kinesis_destination` block of
/// `aws_ses_event_destination` (derived from provider schema).
@immutable
final class SesEventDestinationKinesisDestination {
  const SesEventDestinationKinesisDestination({
    required this.roleArn,
    required this.streamArn,
  });

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> streamArn;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'stream_arn': streamArn.toTfJson(),
  };
}

/// Typed helper for the `sns_destination` block of
/// `aws_ses_event_destination` (derived from provider schema).
@immutable
final class SesEventDestinationSnsDestination {
  const SesEventDestinationSnsDestination({required this.topicArn});

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_ses_event_destination`.
final class AwsSesEventDestination extends Resource {
  static const String tfType = 'aws_ses_event_destination';

  AwsSesEventDestination({
    required super.localName,
    required TfArg<String> configurationSetName,
    TfArg<bool>? enabled,
    required List<TfArg<SesEventDestinationMatchingTypes>> matchingTypes,
    required TfArg<String> name,
    TfArg<String>? region,
    SesEventDestinationTarget? target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           'enabled': ?enabled,
           'matching_types': TfArg.literal([
             for (final e in matchingTypes) e.toTfJson(),
           ]),
           'name': name,
           'region': ?region,
           ...?target?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesEventDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesEventDestination>`.
  RefTo<AwsSesEventDestination> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration_set_name` attribute.
  TfRef<String> get configurationSetNameRef =>
      TfRef.attribute<String>(this, 'configuration_set_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `matching_types` attribute.
  TfRef<List<String>> get matchingTypesRef =>
      TfRef.attribute<List<String>>(this, 'matching_types');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
