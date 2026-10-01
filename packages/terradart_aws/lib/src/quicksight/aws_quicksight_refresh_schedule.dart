// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_refresh_schedule`.
const Set<String> _awsQuicksightRefreshScheduleSensitive = <String>{};

/// Typed helper for the `schedule` block of
/// `aws_quicksight_refresh_schedule` (derived from provider schema).
@immutable
final class QuicksightRefreshScheduleSchedule {
  const QuicksightRefreshScheduleSchedule({
    required this.refreshType,
    this.startAfterDateTime,
    this.scheduleFrequency,
  });

  final TfArg<QuicksightRefreshScheduleRefreshType> refreshType;

  final TfArg<String>? startAfterDateTime;

  final List<QuicksightRefreshScheduleFrequency>? scheduleFrequency;

  Map<String, Object?> encode() => {
    'refresh_type': refreshType.toTfJson(),
    'start_after_date_time': ?startAfterDateTime?.toTfJson(),
    if (scheduleFrequency != null)
      'schedule_frequency': [for (final e in scheduleFrequency!) e.encode()],
  };
}

/// `refresh_type` — derived from the provider schema description.
enum QuicksightRefreshScheduleRefreshType implements TerraformEnum {
  incrementalRefresh('INCREMENTAL_REFRESH'),
  fullRefresh('FULL_REFRESH');

  const QuicksightRefreshScheduleRefreshType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `schedule.schedule_frequency` block of
/// `aws_quicksight_refresh_schedule` (derived from provider schema).
@immutable
final class QuicksightRefreshScheduleFrequency {
  const QuicksightRefreshScheduleFrequency({
    required this.interval,
    this.timeOfTheDay,
    this.timezone,
    this.refreshOnDay,
  });

  final TfArg<QuicksightRefreshScheduleInterval> interval;

  final TfArg<String>? timeOfTheDay;

  final TfArg<String>? timezone;

  final List<QuicksightRefreshScheduleRefreshOnDay>? refreshOnDay;

  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'time_of_the_day': ?timeOfTheDay?.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
    if (refreshOnDay != null)
      'refresh_on_day': [for (final e in refreshOnDay!) e.encode()],
  };
}

/// `interval` — derived from the provider schema description.
enum QuicksightRefreshScheduleInterval implements TerraformEnum {
  minute15('MINUTE15'),
  minute30('MINUTE30'),
  hourly('HOURLY'),
  daily('DAILY'),
  weekly('WEEKLY'),
  monthly('MONTHLY');

  const QuicksightRefreshScheduleInterval(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `day_of_month`, `day_of_week` on the `schedule.schedule_frequency.refresh_on_day` block of `aws_quicksight_refresh_schedule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dayOfMonth(...)`.
sealed class QuicksightRefreshScheduleRefreshOnDay {
  const QuicksightRefreshScheduleRefreshOnDay();

  /// Sets `day_of_month`.
  const factory QuicksightRefreshScheduleRefreshOnDay.dayOfMonth(
    TfArg<String> dayOfMonth,
  ) = QuicksightRefreshScheduleRefreshOnDayOfMonth;

  /// Sets `day_of_week`.
  const factory QuicksightRefreshScheduleRefreshOnDay.dayOfWeek(
    TfArg<QuicksightRefreshScheduleDayOfWeek> dayOfWeek,
  ) = QuicksightRefreshScheduleRefreshOnDayOfWeek;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [QuicksightRefreshScheduleRefreshOnDay.dayOfMonth] choice: sets `day_of_month`.
final class QuicksightRefreshScheduleRefreshOnDayOfMonth
    extends QuicksightRefreshScheduleRefreshOnDay {
  const QuicksightRefreshScheduleRefreshOnDayOfMonth(this.dayOfMonth);

  final TfArg<String> dayOfMonth;

  @override
  String get blockKey => 'day_of_month';

  @override
  Map<String, Object?> encode() => {'day_of_month': dayOfMonth.toTfJson()};
}

/// The [QuicksightRefreshScheduleRefreshOnDay.dayOfWeek] choice: sets `day_of_week`.
final class QuicksightRefreshScheduleRefreshOnDayOfWeek
    extends QuicksightRefreshScheduleRefreshOnDay {
  const QuicksightRefreshScheduleRefreshOnDayOfWeek(this.dayOfWeek);

  final TfArg<QuicksightRefreshScheduleDayOfWeek> dayOfWeek;

  @override
  String get blockKey => 'day_of_week';

  @override
  Map<String, Object?> encode() => {'day_of_week': dayOfWeek.toTfJson()};
}

/// `day_of_week` — derived from the provider schema description.
enum QuicksightRefreshScheduleDayOfWeek implements TerraformEnum {
  sunday('SUNDAY'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY');

  const QuicksightRefreshScheduleDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_quicksight_refresh_schedule`.
final class AwsQuicksightRefreshSchedule extends Resource {
  static const String tfType = 'aws_quicksight_refresh_schedule';

  AwsQuicksightRefreshSchedule({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dataSetId,
    TfArg<String>? region,
    required TfArg<String> scheduleId,
    List<QuicksightRefreshScheduleSchedule>? schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'data_set_id': dataSetId,
           'region': ?region,
           'schedule_id': scheduleId,
           if (schedule != null)
             'schedule': TfArg.literal([for (final e in schedule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightRefreshScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightRefreshSchedule>`.
  RefTo<AwsQuicksightRefreshSchedule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountIdRef =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `data_set_id` attribute.
  TfRef<String> get dataSetIdRef =>
      TfRef.attribute<String>(this, 'data_set_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `schedule_id` attribute.
  TfRef<String> get scheduleIdRef =>
      TfRef.attribute<String>(this, 'schedule_id');
}
