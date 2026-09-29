// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arczonalshift_zonal_autoshift_configuration`.
const Set<String> _awsArczonalshiftZonalAutoshiftConfigurationSensitive =
    <String>{};

/// Arczonalshift Zonal Autoshift Configuration Zonal Autoshift enum for `zonal_autoshift_status`.
enum ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// At most one of `allowed_windows`, `blocked_windows` on `aws_arczonalshift_zonal_autoshift_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.allowedWindows(...)`.
sealed class ArczonalshiftZonalAutoshiftConfigurationWindows {
  const ArczonalshiftZonalAutoshiftConfigurationWindows();

  /// Sets `allowed_windows`.
  const factory ArczonalshiftZonalAutoshiftConfigurationWindows.allowedWindows(
    TfArg<List<String>> allowedWindows,
  ) = ArczonalshiftZonalAutoshiftConfigurationWindowsAllowedWindows;

  /// Sets `blocked_windows`.
  const factory ArczonalshiftZonalAutoshiftConfigurationWindows.blockedWindows(
    TfArg<List<String>> blockedWindows,
  ) = ArczonalshiftZonalAutoshiftConfigurationWindowsBlockedWindows;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ArczonalshiftZonalAutoshiftConfigurationWindows.allowedWindows] choice: sets `allowed_windows`.
final class ArczonalshiftZonalAutoshiftConfigurationWindowsAllowedWindows
    extends ArczonalshiftZonalAutoshiftConfigurationWindows {
  const ArczonalshiftZonalAutoshiftConfigurationWindowsAllowedWindows(
    this.allowedWindows,
  );

  final TfArg<List<String>> allowedWindows;

  @override
  String get blockKey => 'allowed_windows';

  @override
  Map<String, Object?> encode() => {
    'allowed_windows': allowedWindows.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'allowed_windows': allowedWindows};
}

/// The [ArczonalshiftZonalAutoshiftConfigurationWindows.blockedWindows] choice: sets `blocked_windows`.
final class ArczonalshiftZonalAutoshiftConfigurationWindowsBlockedWindows
    extends ArczonalshiftZonalAutoshiftConfigurationWindows {
  const ArczonalshiftZonalAutoshiftConfigurationWindowsBlockedWindows(
    this.blockedWindows,
  );

  final TfArg<List<String>> blockedWindows;

  @override
  String get blockKey => 'blocked_windows';

  @override
  Map<String, Object?> encode() => {
    'blocked_windows': blockedWindows.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'blocked_windows': blockedWindows};
}

/// Typed helper for the `blocking_alarms` block of
/// `aws_arczonalshift_zonal_autoshift_configuration` (derived from provider schema).
@immutable
final class ArczonalshiftZonalAutoshiftConfigurationBlockingAlarms {
  const ArczonalshiftZonalAutoshiftConfigurationBlockingAlarms({
    required this.alarmIdentifier,
    required this.type,
  });

  final TfArg<String> alarmIdentifier;

  final TfArg<ArczonalshiftZonalAutoshiftConfigurationBlockingAlarmsType> type;

  Map<String, Object?> encode() => {
    'alarm_identifier': alarmIdentifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ArczonalshiftZonalAutoshiftConfigurationBlockingAlarmsType
    implements TerraformEnum {
  cloudwatch('CLOUDWATCH');

  const ArczonalshiftZonalAutoshiftConfigurationBlockingAlarmsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<ArczonalshiftZonalAutoshiftConfigurationOutcomeAlarmsType> type;

  Map<String, Object?> encode() => {
    'alarm_identifier': alarmIdentifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum ArczonalshiftZonalAutoshiftConfigurationOutcomeAlarmsType
    implements TerraformEnum {
  cloudwatch('CLOUDWATCH');

  const ArczonalshiftZonalAutoshiftConfigurationOutcomeAlarmsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_arczonalshift_zonal_autoshift_configuration`.
final class AwsArczonalshiftZonalAutoshiftConfiguration extends Resource {
  static const String tfType =
      'aws_arczonalshift_zonal_autoshift_configuration';

  AwsArczonalshiftZonalAutoshiftConfiguration({
    required super.localName,
    ArczonalshiftZonalAutoshiftConfigurationWindows? windows,
    TfArg<List<String>>? blockedDates,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required TfArg<ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus>
    zonalAutoshiftStatus,
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
           ...?windows?.argMap,
           'blocked_dates': ?blockedDates,
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsArczonalshiftZonalAutoshiftConfiguration>`.
  RefTo<AwsArczonalshiftZonalAutoshiftConfiguration> get ref => RefTo.of(this);
}
