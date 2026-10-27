// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_logic_app_trigger_recurrence`.
const Set<String> _azurermLogicAppTriggerRecurrenceSensitive = <String>{};

/// Logic App Trigger Recurrence enum for `frequency`.
extension type const LogicAppTriggerRecurrenceFrequency._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppTriggerRecurrenceFrequency.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppTriggerRecurrenceFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppTriggerRecurrenceFrequency.arg(TfArg<String> arg) : this._(arg);

  static const month = LogicAppTriggerRecurrenceFrequency._(
    TfArgLiteral('Month'),
  );
  static const week = LogicAppTriggerRecurrenceFrequency._(
    TfArgLiteral('Week'),
  );
  static const day = LogicAppTriggerRecurrenceFrequency._(TfArgLiteral('Day'));
  static const hour = LogicAppTriggerRecurrenceFrequency._(
    TfArgLiteral('Hour'),
  );
  static const minute = LogicAppTriggerRecurrenceFrequency._(
    TfArgLiteral('Minute'),
  );
  static const second = LogicAppTriggerRecurrenceFrequency._(
    TfArgLiteral('Second'),
  );

  static const List<LogicAppTriggerRecurrenceFrequency> values = [
    month,
    week,
    day,
    hour,
    minute,
    second,
  ];
}

/// Typed helper for the `schedule` block of
/// `azurerm_logic_app_trigger_recurrence` (derived from provider schema).
@immutable
final class LogicAppTriggerRecurrenceSchedule {
  const LogicAppTriggerRecurrenceSchedule({
    this.atTheseHours,
    this.atTheseMinutes,
    this.onTheseDays,
  });

  final TfArg<List<num>>? atTheseHours;

  final TfArg<List<num>>? atTheseMinutes;

  final List<LogicAppTriggerRecurrenceOnTheseDays>? onTheseDays;

  @internal
  Map<String, Object?> encode() => {
    'at_these_hours': ?atTheseHours?.toTfJson(),
    'at_these_minutes': ?atTheseMinutes?.toTfJson(),
    if (onTheseDays != null)
      'on_these_days': [for (final e in onTheseDays!) e.toTfJson()],
  };
}

/// `on_these_days` — derived from the provider schema description.
extension type const LogicAppTriggerRecurrenceOnTheseDays._(TfArg<String> _)
    implements TfArg<String> {
  LogicAppTriggerRecurrenceOnTheseDays.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppTriggerRecurrenceOnTheseDays.expression(String template)
    : this._(TfArg.expression(template));
  const LogicAppTriggerRecurrenceOnTheseDays.arg(TfArg<String> arg)
    : this._(arg);

  static const monday = LogicAppTriggerRecurrenceOnTheseDays._(
    TfArgLiteral('Monday'),
  );
  static const tuesday = LogicAppTriggerRecurrenceOnTheseDays._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = LogicAppTriggerRecurrenceOnTheseDays._(
    TfArgLiteral('Wednesday'),
  );
  static const thursday = LogicAppTriggerRecurrenceOnTheseDays._(
    TfArgLiteral('Thursday'),
  );
  static const friday = LogicAppTriggerRecurrenceOnTheseDays._(
    TfArgLiteral('Friday'),
  );
  static const saturday = LogicAppTriggerRecurrenceOnTheseDays._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = LogicAppTriggerRecurrenceOnTheseDays._(
    TfArgLiteral('Sunday'),
  );

  static const List<LogicAppTriggerRecurrenceOnTheseDays> values = [
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
}

/// Factory wrapper for `azurerm_logic_app_trigger_recurrence`.
final class AzurermLogicAppTriggerRecurrence extends Resource {
  static const String tfType = 'azurerm_logic_app_trigger_recurrence';

  AzurermLogicAppTriggerRecurrence(
    super.localName, {
    required LogicAppTriggerRecurrenceFrequency frequency,
    required TfArg<num> interval,
    required TfArg<String> logicAppId,
    required TfArg<String> name,
    TfArg<String>? startTime,
    TfArg<String>? timeZone,
    LogicAppTriggerRecurrenceSchedule? schedule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'frequency': frequency,
           'interval': interval,
           'logic_app_id': logicAppId,
           'name': name,
           'start_time': ?startTime,
           'time_zone': ?timeZone,
           if (schedule != null) 'schedule': TfArg.literal(schedule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogicAppTriggerRecurrenceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppTriggerRecurrence>`.
  RefTo<AzurermLogicAppTriggerRecurrence> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `interval` attribute.
  TfRef<num> get interval => TfRef.attribute<num>(this, 'interval');

  /// Reference to `logic_app_id` attribute.
  TfRef<String> get logicAppId => TfRef.attribute<String>(this, 'logic_app_id');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
