// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_event_destination`.
const Set<String> _awsSesEventDestinationSensitive = <String>{};

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

  final TfArg<String> valueSource;

  Map<String, Object?> encode() => {
    'default_value': defaultValue.toTfJson(),
    'dimension_name': dimensionName.toTfJson(),
    'value_source': valueSource.toTfJson(),
  };
}

/// Typed helper for the `kinesis_destination` block of
/// `aws_ses_event_destination` (derived from provider schema).
@immutable
final class SesEventDestinationKinesisDestination {
  const SesEventDestinationKinesisDestination({
    required this.roleArn,
    required this.streamArn,
  });

  final TfArg<String> roleArn;

  final TfArg<String> streamArn;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    'stream_arn': streamArn.toTfJson(),
  };
}

/// Typed helper for the `sns_destination` block of
/// `aws_ses_event_destination` (derived from provider schema).
@immutable
final class SesEventDestinationSnsDestination {
  const SesEventDestinationSnsDestination({required this.topicArn});

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {'topic_arn': topicArn.toTfJson()};
}

/// Factory wrapper for `aws_ses_event_destination`.
final class AwsSesEventDestination extends Resource {
  static const String tfType = 'aws_ses_event_destination';

  AwsSesEventDestination({
    required super.localName,
    required TfArg<String> configurationSetName,
    TfArg<bool>? enabled,
    required TfArg<List<String>> matchingTypes,
    required TfArg<String> name,
    TfArg<String>? region,
    List<SesEventDestinationCloudwatchDestination>? cloudwatchDestination,
    SesEventDestinationKinesisDestination? kinesisDestination,
    SesEventDestinationSnsDestination? snsDestination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           if (enabled != null) 'enabled': enabled,
           'matching_types': matchingTypes,
           'name': name,
           if (region != null) 'region': region,
           if (cloudwatchDestination != null)
             'cloudwatch_destination': TfArg.literal([
               for (final e in cloudwatchDestination) e.encode(),
             ]),
           if (kinesisDestination != null)
             'kinesis_destination': TfArg.literal(kinesisDestination.encode()),
           if (snsDestination != null)
             'sns_destination': TfArg.literal(snsDestination.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesEventDestinationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
