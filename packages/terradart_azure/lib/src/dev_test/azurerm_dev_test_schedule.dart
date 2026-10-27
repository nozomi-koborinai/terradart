// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_test_schedule`.
const Set<String> _azurermDevTestScheduleSensitive = <String>{};

/// Dev Test Schedule enum for `status`.
extension type const DevTestScheduleStatus._(TfArg<String> _)
    implements TfArg<String> {
  DevTestScheduleStatus.variable(String name) : this._(TfArg.variable(name));
  DevTestScheduleStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DevTestScheduleStatus.arg(TfArg<String> arg) : this._(arg);

  static const disabled = DevTestScheduleStatus._(TfArgLiteral('Disabled'));
  static const enabled = DevTestScheduleStatus._(TfArgLiteral('Enabled'));

  static const List<DevTestScheduleStatus> values = [disabled, enabled];
}

/// Typed helper for the `daily_recurrence` block of
/// `azurerm_dev_test_schedule` (derived from provider schema).
@immutable
final class DevTestScheduleDailyRecurrence {
  const DevTestScheduleDailyRecurrence({required this.time});

  final TfArg<String> time;

  @internal
  Map<String, Object?> encode() => {'time': time.toTfJson()};
}

/// Typed helper for the `hourly_recurrence` block of
/// `azurerm_dev_test_schedule` (derived from provider schema).
@immutable
final class DevTestScheduleHourlyRecurrence {
  const DevTestScheduleHourlyRecurrence({required this.minute});

  final TfArg<num> minute;

  @internal
  Map<String, Object?> encode() => {'minute': minute.toTfJson()};
}

/// Typed helper for the `notification_settings` block of
/// `azurerm_dev_test_schedule` (derived from provider schema).
@immutable
final class DevTestScheduleNotificationSettings {
  const DevTestScheduleNotificationSettings({
    this.status,
    this.timeInMinutes,
    this.webhookUrl,
  });

  final DevTestScheduleNotificationSettingsStatus? status;

  final TfArg<num>? timeInMinutes;

  final TfArg<String>? webhookUrl;

  @internal
  Map<String, Object?> encode() => {
    'status': ?status?.toTfJson(),
    'time_in_minutes': ?timeInMinutes?.toTfJson(),
    'webhook_url': ?webhookUrl?.toTfJson(),
  };
}

/// `status` — derived from the provider schema description.
extension type const DevTestScheduleNotificationSettingsStatus._(
  TfArg<String> _
) implements TfArg<String> {
  DevTestScheduleNotificationSettingsStatus.variable(String name)
    : this._(TfArg.variable(name));
  DevTestScheduleNotificationSettingsStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DevTestScheduleNotificationSettingsStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = DevTestScheduleNotificationSettingsStatus._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = DevTestScheduleNotificationSettingsStatus._(
    TfArgLiteral('Enabled'),
  );

  static const List<DevTestScheduleNotificationSettingsStatus> values = [
    disabled,
    enabled,
  ];
}

/// Typed helper for the `weekly_recurrence` block of
/// `azurerm_dev_test_schedule` (derived from provider schema).
@immutable
final class DevTestScheduleWeeklyRecurrence {
  const DevTestScheduleWeeklyRecurrence({required this.time, this.weekDays});

  final TfArg<String> time;

  final List<DevTestScheduleWeekDays>? weekDays;

  @internal
  Map<String, Object?> encode() => {
    'time': time.toTfJson(),
    if (weekDays != null)
      'week_days': [for (final e in weekDays!) e.toTfJson()],
  };
}

/// `week_days` — derived from the provider schema description.
extension type const DevTestScheduleWeekDays._(TfArg<String> _)
    implements TfArg<String> {
  DevTestScheduleWeekDays.variable(String name) : this._(TfArg.variable(name));
  DevTestScheduleWeekDays.expression(String template)
    : this._(TfArg.expression(template));
  const DevTestScheduleWeekDays.arg(TfArg<String> arg) : this._(arg);

  static const monday = DevTestScheduleWeekDays._(TfArgLiteral('Monday'));
  static const tuesday = DevTestScheduleWeekDays._(TfArgLiteral('Tuesday'));
  static const wednesday = DevTestScheduleWeekDays._(TfArgLiteral('Wednesday'));
  static const thursday = DevTestScheduleWeekDays._(TfArgLiteral('Thursday'));
  static const friday = DevTestScheduleWeekDays._(TfArgLiteral('Friday'));
  static const saturday = DevTestScheduleWeekDays._(TfArgLiteral('Saturday'));
  static const sunday = DevTestScheduleWeekDays._(TfArgLiteral('Sunday'));

  static const List<DevTestScheduleWeekDays> values = [
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
}

/// Factory wrapper for `azurerm_dev_test_schedule`.
final class AzurermDevTestSchedule extends Resource {
  static const String tfType = 'azurerm_dev_test_schedule';

  AzurermDevTestSchedule(
    super.localName, {
    required TfArg<String> labName,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    DevTestScheduleStatus? status,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> taskType,
    required TfArg<String> timeZoneId,
    DevTestScheduleDailyRecurrence? dailyRecurrence,
    DevTestScheduleHourlyRecurrence? hourlyRecurrence,
    required DevTestScheduleNotificationSettings notificationSettings,
    DevTestScheduleWeeklyRecurrence? weeklyRecurrence,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'lab_name': labName,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'status': ?status,
           'tags': ?tags,
           'task_type': taskType,
           'time_zone_id': timeZoneId,
           if (dailyRecurrence != null)
             'daily_recurrence': TfArg.literal(dailyRecurrence.encode()),
           if (hourlyRecurrence != null)
             'hourly_recurrence': TfArg.literal(hourlyRecurrence.encode()),
           'notification_settings': TfArg.literal(
             notificationSettings.encode(),
           ),
           if (weeklyRecurrence != null)
             'weekly_recurrence': TfArg.literal(weeklyRecurrence.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevTestScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevTestSchedule>`.
  RefTo<AzurermDevTestSchedule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `lab_name` attribute.
  TfRef<String> get labName => TfRef.attribute<String>(this, 'lab_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `task_type` attribute.
  TfRef<String> get taskType => TfRef.attribute<String>(this, 'task_type');

  /// Reference to `time_zone_id` attribute.
  TfRef<String> get timeZoneId => TfRef.attribute<String>(this, 'time_zone_id');
}
