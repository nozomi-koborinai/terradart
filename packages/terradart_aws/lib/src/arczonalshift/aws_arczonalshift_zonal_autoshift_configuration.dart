// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arczonalshift_zonal_autoshift_configuration`.
const Set<String> _awsArczonalshiftZonalAutoshiftConfigurationSensitive =
    <String>{};

/// Arczonalshift Zonal Autoshift Configuration Zonal Autoshift enum for `zonal_autoshift_status`.
extension type const ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus._(
  TfArg<String> _
) implements TfArg<String> {
  ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled =
      ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus._(
        TfArgLiteral('ENABLED'),
      );
  static const disabled =
      ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus._(
        TfArgLiteral('DISABLED'),
      );

  static const List<
    ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus
  >
  values = [enabled, disabled];
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
  ) = ArczonalshiftZonalAutoshiftConfigurationAllowedWindows;

  /// Sets `blocked_windows`.
  const factory ArczonalshiftZonalAutoshiftConfigurationWindows.blockedWindows(
    TfArg<List<String>> blockedWindows,
  ) = ArczonalshiftZonalAutoshiftConfigurationBlockedWindows;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ArczonalshiftZonalAutoshiftConfigurationWindows.allowedWindows] choice: sets `allowed_windows`.
final class ArczonalshiftZonalAutoshiftConfigurationAllowedWindows
    extends ArczonalshiftZonalAutoshiftConfigurationWindows {
  const ArczonalshiftZonalAutoshiftConfigurationAllowedWindows(
    this.allowedWindows,
  );

  final TfArg<List<String>> allowedWindows;

  @internal
  @override
  String get blockKey => 'allowed_windows';

  @internal
  @override
  Map<String, Object?> encode() => {
    'allowed_windows': allowedWindows.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'allowed_windows': allowedWindows};
}

/// The [ArczonalshiftZonalAutoshiftConfigurationWindows.blockedWindows] choice: sets `blocked_windows`.
final class ArczonalshiftZonalAutoshiftConfigurationBlockedWindows
    extends ArczonalshiftZonalAutoshiftConfigurationWindows {
  const ArczonalshiftZonalAutoshiftConfigurationBlockedWindows(
    this.blockedWindows,
  );

  final TfArg<List<String>> blockedWindows;

  @internal
  @override
  String get blockKey => 'blocked_windows';

  @internal
  @override
  Map<String, Object?> encode() => {
    'blocked_windows': blockedWindows.toTfJson(),
  };

  @internal
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

  final ArczonalshiftZonalAutoshiftConfigurationType type;

  @internal
  Map<String, Object?> encode() => {
    'alarm_identifier': alarmIdentifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const ArczonalshiftZonalAutoshiftConfigurationType._(
  TfArg<String> _
) implements TfArg<String> {
  ArczonalshiftZonalAutoshiftConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  ArczonalshiftZonalAutoshiftConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const ArczonalshiftZonalAutoshiftConfigurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const cloudwatch = ArczonalshiftZonalAutoshiftConfigurationType._(
    TfArgLiteral('CLOUDWATCH'),
  );

  static const List<ArczonalshiftZonalAutoshiftConfigurationType> values = [
    cloudwatch,
  ];
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

  final ArczonalshiftZonalAutoshiftConfigurationType type;

  @internal
  Map<String, Object?> encode() => {
    'alarm_identifier': alarmIdentifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_arczonalshift_zonal_autoshift_configuration`.
final class AwsArczonalshiftZonalAutoshiftConfiguration extends Resource {
  static const String tfType =
      'aws_arczonalshift_zonal_autoshift_configuration';

  AwsArczonalshiftZonalAutoshiftConfiguration(
    super.localName, {
    ArczonalshiftZonalAutoshiftConfigurationWindows? windows,
    TfArg<List<String>>? blockedDates,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    required ArczonalshiftZonalAutoshiftConfigurationZonalAutoshiftStatus
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

  /// Reference to `allowed_windows` attribute.
  TfRef<List<String>> get allowedWindows =>
      TfRef.attribute<List<String>>(this, 'allowed_windows');

  /// Reference to `blocked_dates` attribute.
  TfRef<List<String>> get blockedDates =>
      TfRef.attribute<List<String>>(this, 'blocked_dates');

  /// Reference to `blocked_windows` attribute.
  TfRef<List<String>> get blockedWindows =>
      TfRef.attribute<List<String>>(this, 'blocked_windows');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `zonal_autoshift_status` attribute.
  TfRef<String> get zonalAutoshiftStatus =>
      TfRef.attribute<String>(this, 'zonal_autoshift_status');
}
