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
final class QuicksightRefreshSchedule {
  const QuicksightRefreshSchedule({
    required this.refreshType,
    this.startAfterDateTime,
    this.scheduleFrequency,
  });

  final QuicksightRefreshScheduleRefreshType refreshType;

  final TfArg<String>? startAfterDateTime;

  final List<QuicksightRefreshScheduleFrequency>? scheduleFrequency;

  @internal
  Map<String, Object?> encode() => {
    'refresh_type': refreshType.toTfJson(),
    'start_after_date_time': ?startAfterDateTime?.toTfJson(),
    if (scheduleFrequency != null)
      'schedule_frequency': [for (final e in scheduleFrequency!) e.encode()],
  };
}

/// `refresh_type` — derived from the provider schema description.
extension type const QuicksightRefreshScheduleRefreshType._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightRefreshScheduleRefreshType.variable(String name)
    : this._(TfArg.variable(name));
  QuicksightRefreshScheduleRefreshType.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightRefreshScheduleRefreshType.arg(TfArg<String> arg)
    : this._(arg);

  static const incrementalRefresh = QuicksightRefreshScheduleRefreshType._(
    TfArgLiteral('INCREMENTAL_REFRESH'),
  );
  static const fullRefresh = QuicksightRefreshScheduleRefreshType._(
    TfArgLiteral('FULL_REFRESH'),
  );

  static const List<QuicksightRefreshScheduleRefreshType> values = [
    incrementalRefresh,
    fullRefresh,
  ];
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

  final QuicksightRefreshScheduleInterval interval;

  final TfArg<String>? timeOfTheDay;

  final TfArg<String>? timezone;

  final List<QuicksightRefreshScheduleRefreshOnDay>? refreshOnDay;

  @internal
  Map<String, Object?> encode() => {
    'interval': interval.toTfJson(),
    'time_of_the_day': ?timeOfTheDay?.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
    if (refreshOnDay != null)
      'refresh_on_day': [for (final e in refreshOnDay!) e.encode()],
  };
}

/// `interval` — derived from the provider schema description.
extension type const QuicksightRefreshScheduleInterval._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightRefreshScheduleInterval.variable(String name)
    : this._(TfArg.variable(name));
  QuicksightRefreshScheduleInterval.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightRefreshScheduleInterval.arg(TfArg<String> arg) : this._(arg);

  static const minute15 = QuicksightRefreshScheduleInterval._(
    TfArgLiteral('MINUTE15'),
  );
  static const minute30 = QuicksightRefreshScheduleInterval._(
    TfArgLiteral('MINUTE30'),
  );
  static const hourly = QuicksightRefreshScheduleInterval._(
    TfArgLiteral('HOURLY'),
  );
  static const daily = QuicksightRefreshScheduleInterval._(
    TfArgLiteral('DAILY'),
  );
  static const weekly = QuicksightRefreshScheduleInterval._(
    TfArgLiteral('WEEKLY'),
  );
  static const monthly = QuicksightRefreshScheduleInterval._(
    TfArgLiteral('MONTHLY'),
  );

  static const List<QuicksightRefreshScheduleInterval> values = [
    minute15,
    minute30,
    hourly,
    daily,
    weekly,
    monthly,
  ];
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
    QuicksightRefreshScheduleDayOfWeek dayOfWeek,
  ) = QuicksightRefreshScheduleRefreshOnDayOfWeek;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [QuicksightRefreshScheduleRefreshOnDay.dayOfMonth] choice: sets `day_of_month`.
final class QuicksightRefreshScheduleRefreshOnDayOfMonth
    extends QuicksightRefreshScheduleRefreshOnDay {
  const QuicksightRefreshScheduleRefreshOnDayOfMonth(this.dayOfMonth);

  final TfArg<String> dayOfMonth;

  @internal
  @override
  String get blockKey => 'day_of_month';

  @internal
  @override
  Map<String, Object?> encode() => {'day_of_month': dayOfMonth.toTfJson()};
}

/// The [QuicksightRefreshScheduleRefreshOnDay.dayOfWeek] choice: sets `day_of_week`.
final class QuicksightRefreshScheduleRefreshOnDayOfWeek
    extends QuicksightRefreshScheduleRefreshOnDay {
  const QuicksightRefreshScheduleRefreshOnDayOfWeek(this.dayOfWeek);

  final QuicksightRefreshScheduleDayOfWeek dayOfWeek;

  @internal
  @override
  String get blockKey => 'day_of_week';

  @internal
  @override
  Map<String, Object?> encode() => {'day_of_week': dayOfWeek.toTfJson()};
}

/// `day_of_week` — derived from the provider schema description.
extension type const QuicksightRefreshScheduleDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightRefreshScheduleDayOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  QuicksightRefreshScheduleDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightRefreshScheduleDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const sunday = QuicksightRefreshScheduleDayOfWeek._(
    TfArgLiteral('SUNDAY'),
  );
  static const monday = QuicksightRefreshScheduleDayOfWeek._(
    TfArgLiteral('MONDAY'),
  );
  static const tuesday = QuicksightRefreshScheduleDayOfWeek._(
    TfArgLiteral('TUESDAY'),
  );
  static const wednesday = QuicksightRefreshScheduleDayOfWeek._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = QuicksightRefreshScheduleDayOfWeek._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = QuicksightRefreshScheduleDayOfWeek._(
    TfArgLiteral('FRIDAY'),
  );
  static const saturday = QuicksightRefreshScheduleDayOfWeek._(
    TfArgLiteral('SATURDAY'),
  );

  static const List<QuicksightRefreshScheduleDayOfWeek> values = [
    sunday,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
  ];
}

/// Factory wrapper for `aws_quicksight_refresh_schedule`.
final class AwsQuicksightRefreshSchedule extends Resource {
  static const String tfType = 'aws_quicksight_refresh_schedule';

  AwsQuicksightRefreshSchedule(
    super.localName, {
    TfArg<String>? awsAccountId,
    required TfArg<String> dataSetId,
    TfArg<String>? region,
    required TfArg<String> scheduleId,
    List<QuicksightRefreshSchedule>? schedule,
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
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `data_set_id` attribute.
  TfRef<String> get dataSetId => TfRef.attribute<String>(this, 'data_set_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `schedule_id` attribute.
  TfRef<String> get scheduleId => TfRef.attribute<String>(this, 'schedule_id');
}
