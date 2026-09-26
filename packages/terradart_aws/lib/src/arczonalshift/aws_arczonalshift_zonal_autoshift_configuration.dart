// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arczonalshift_zonal_autoshift_configuration`.
const Set<String> _awsArczonalshiftZonalAutoshiftConfigurationSensitive =
    <String>{};

/// Typed helper for the `blocking_alarms` block of
/// `aws_arczonalshift_zonal_autoshift_configuration` (derived from provider schema).
@immutable
final class ArczonalshiftZonalAutoshiftConfigurationBlockingAlarms {
  const ArczonalshiftZonalAutoshiftConfigurationBlockingAlarms({
    required this.alarmIdentifier,
    required this.type,
  });

  final TfArg<String> alarmIdentifier;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'alarm_identifier': alarmIdentifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `outcome_alarms` block of
/// `aws_arczonalshift_zonal_autoshift_configuration` (derived from provider schema).
@immutable
final class ArczonalshiftZonalAutoshiftConfigurationOutcomeAlarms {
  const ArczonalshiftZonalAutoshiftConfigurationOutcomeAlarms({
    required this.alarmIdentifier,
    required this.type,
  });

  final TfArg<String> alarmIdentifier;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'alarm_identifier': alarmIdentifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_arczonalshift_zonal_autoshift_configuration`.
final class AwsArczonalshiftZonalAutoshiftConfiguration extends Resource {
  static const String tfType =
      'aws_arczonalshift_zonal_autoshift_configuration';

  AwsArczonalshiftZonalAutoshiftConfiguration({
    required super.localName,
    TfArg<List<String>>? allowedWindows,
    TfArg<List<String>>? blockedDates,
    TfArg<List<String>>? blockedWindows,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required TfArg<String> zonalAutoshiftStatus,
    List<ArczonalshiftZonalAutoshiftConfigurationBlockingAlarms>?
    blockingAlarms,
    List<ArczonalshiftZonalAutoshiftConfigurationOutcomeAlarms>? outcomeAlarms,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowedWindows != null) 'allowed_windows': allowedWindows,
           if (blockedDates != null) 'blocked_dates': blockedDates,
           if (blockedWindows != null) 'blocked_windows': blockedWindows,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
           'zonal_autoshift_status': zonalAutoshiftStatus,
           if (blockingAlarms != null)
             'blocking_alarms': TfArg.literal([
               for (final e in blockingAlarms) e.encode(),
             ]),
           if (outcomeAlarms != null)
             'outcome_alarms': TfArg.literal([
               for (final e in outcomeAlarms) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsArczonalshiftZonalAutoshiftConfigurationSensitive;
}
