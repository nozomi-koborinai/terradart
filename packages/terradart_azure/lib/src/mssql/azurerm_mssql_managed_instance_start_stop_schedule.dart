// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_managed_instance_start_stop_schedule`.
const Set<String> _azurermMssqlManagedInstanceStartStopScheduleSensitive =
    <String>{};

/// Typed helper for the `schedule` block of
/// `azurerm_mssql_managed_instance_start_stop_schedule` (derived from provider schema).
@immutable
final class MssqlManagedInstanceStartStopSchedule {
  const MssqlManagedInstanceStartStopSchedule({
    required this.startDay,
    required this.startTime,
    required this.stopDay,
    required this.stopTime,
  });

  final MssqlManagedInstanceStartStopScheduleStartDay startDay;

  final TfArg<String> startTime;

  final MssqlManagedInstanceStartStopScheduleStopDay stopDay;

  final TfArg<String> stopTime;

  @internal
  Map<String, Object?> encode() => {
    'start_day': startDay.toTfJson(),
    'start_time': startTime.toTfJson(),
    'stop_day': stopDay.toTfJson(),
    'stop_time': stopTime.toTfJson(),
  };
}

/// `start_day` — derived from the provider schema description.
extension type const MssqlManagedInstanceStartStopScheduleStartDay._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlManagedInstanceStartStopScheduleStartDay.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceStartStopScheduleStartDay.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceStartStopScheduleStartDay.arg(TfArg<String> arg)
    : this._(arg);

  static const friday = MssqlManagedInstanceStartStopScheduleStartDay._(
    TfArgLiteral('Friday'),
  );
  static const monday = MssqlManagedInstanceStartStopScheduleStartDay._(
    TfArgLiteral('Monday'),
  );
  static const saturday = MssqlManagedInstanceStartStopScheduleStartDay._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = MssqlManagedInstanceStartStopScheduleStartDay._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = MssqlManagedInstanceStartStopScheduleStartDay._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = MssqlManagedInstanceStartStopScheduleStartDay._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = MssqlManagedInstanceStartStopScheduleStartDay._(
    TfArgLiteral('Wednesday'),
  );

  static const List<MssqlManagedInstanceStartStopScheduleStartDay> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// `stop_day` — derived from the provider schema description.
extension type const MssqlManagedInstanceStartStopScheduleStopDay._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlManagedInstanceStartStopScheduleStopDay.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceStartStopScheduleStopDay.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlManagedInstanceStartStopScheduleStopDay.arg(TfArg<String> arg)
    : this._(arg);

  static const friday = MssqlManagedInstanceStartStopScheduleStopDay._(
    TfArgLiteral('Friday'),
  );
  static const monday = MssqlManagedInstanceStartStopScheduleStopDay._(
    TfArgLiteral('Monday'),
  );
  static const saturday = MssqlManagedInstanceStartStopScheduleStopDay._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = MssqlManagedInstanceStartStopScheduleStopDay._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = MssqlManagedInstanceStartStopScheduleStopDay._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = MssqlManagedInstanceStartStopScheduleStopDay._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = MssqlManagedInstanceStartStopScheduleStopDay._(
    TfArgLiteral('Wednesday'),
  );

  static const List<MssqlManagedInstanceStartStopScheduleStopDay> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// Factory wrapper for `azurerm_mssql_managed_instance_start_stop_schedule`.
final class AzurermMssqlManagedInstanceStartStopSchedule extends Resource {
  static const String tfType =
      'azurerm_mssql_managed_instance_start_stop_schedule';

  AzurermMssqlManagedInstanceStartStopSchedule(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> managedInstanceId,
    TfArg<String>? timezoneId,
    required List<MssqlManagedInstanceStartStopSchedule> schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'managed_instance_id': managedInstanceId,
           'timezone_id': ?timezoneId,
           'schedule': TfArg.literal([for (final e in schedule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlManagedInstanceStartStopScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlManagedInstanceStartStopSchedule>`.
  RefTo<AzurermMssqlManagedInstanceStartStopSchedule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `next_execution_time` attribute.
  TfRef<String> get nextExecutionTime =>
      TfRef.attribute<String>(this, 'next_execution_time');

  /// Reference to `next_run_action` attribute.
  TfRef<String> get nextRunAction =>
      TfRef.attribute<String>(this, 'next_run_action');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `managed_instance_id` attribute.
  TfRef<String> get managedInstanceId =>
      TfRef.attribute<String>(this, 'managed_instance_id');

  /// Reference to `timezone_id` attribute.
  TfRef<String> get timezoneId => TfRef.attribute<String>(this, 'timezone_id');
}
