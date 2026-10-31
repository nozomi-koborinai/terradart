// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_schedule`.
const Set<String> _azurermAutomationScheduleSensitive = <String>{};

/// Automation Schedule enum for `frequency`.
extension type const AutomationScheduleFrequency._(TfArg<String> _)
    implements TfArg<String> {
  AutomationScheduleFrequency.variable(String name)
    : this._(TfArg.variable(name));
  AutomationScheduleFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const AutomationScheduleFrequency.arg(TfArg<String> arg) : this._(arg);

  static const day = AutomationScheduleFrequency._(TfArgLiteral('Day'));
  static const hour = AutomationScheduleFrequency._(TfArgLiteral('Hour'));
  static const minute = AutomationScheduleFrequency._(TfArgLiteral('Minute'));
  static const month = AutomationScheduleFrequency._(TfArgLiteral('Month'));
  static const onetime = AutomationScheduleFrequency._(TfArgLiteral('OneTime'));
  static const week = AutomationScheduleFrequency._(TfArgLiteral('Week'));

  static const List<AutomationScheduleFrequency> values = [
    day,
    hour,
    minute,
    month,
    onetime,
    week,
  ];
}

/// Automation Schedule Week enum for `week_days`.
extension type const AutomationScheduleWeekDays._(TfArg<String> _)
    implements TfArg<String> {
  AutomationScheduleWeekDays.variable(String name)
    : this._(TfArg.variable(name));
  AutomationScheduleWeekDays.expression(String template)
    : this._(TfArg.expression(template));
  const AutomationScheduleWeekDays.arg(TfArg<String> arg) : this._(arg);

  static const friday = AutomationScheduleWeekDays._(TfArgLiteral('Friday'));
  static const monday = AutomationScheduleWeekDays._(TfArgLiteral('Monday'));
  static const saturday = AutomationScheduleWeekDays._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = AutomationScheduleWeekDays._(TfArgLiteral('Sunday'));
  static const thursday = AutomationScheduleWeekDays._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = AutomationScheduleWeekDays._(TfArgLiteral('Tuesday'));
  static const wednesday = AutomationScheduleWeekDays._(
    TfArgLiteral('Wednesday'),
  );

  static const List<AutomationScheduleWeekDays> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// At most one of `month_days`, `monthly_occurrence`, `week_days` on `azurerm_automation_schedule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.monthDays(...)`.
sealed class AutomationScheduleDays {
  const AutomationScheduleDays();

  /// Sets `month_days`.
  const factory AutomationScheduleDays.monthDays(TfArg<List<num>> monthDays) =
      AutomationScheduleMonthDays;

  /// Sets `monthly_occurrence`.
  const factory AutomationScheduleDays.monthlyOccurrence(
    AutomationScheduleMonthlyOccurrence monthlyOccurrence,
  ) = AutomationScheduleDaysMonthlyOccurrence;

  /// Sets `week_days`.
  const factory AutomationScheduleDays.weekDays(
    EnumList<AutomationScheduleWeekDays> weekDays,
  ) = AutomationScheduleWeekDaysChoice;

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

/// The [AutomationScheduleDays.monthDays] choice: sets `month_days`.
final class AutomationScheduleMonthDays extends AutomationScheduleDays {
  const AutomationScheduleMonthDays(this.monthDays);

  final TfArg<List<num>> monthDays;

  @internal
  @override
  String get blockKey => 'month_days';

  @internal
  @override
  Map<String, Object?> encode() => {'month_days': monthDays.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'month_days': monthDays};
}

/// The [AutomationScheduleDays.monthlyOccurrence] choice: sets `monthly_occurrence`.
final class AutomationScheduleDaysMonthlyOccurrence
    extends AutomationScheduleDays {
  const AutomationScheduleDaysMonthlyOccurrence(this.monthlyOccurrence);

  final AutomationScheduleMonthlyOccurrence monthlyOccurrence;

  @internal
  @override
  String get blockKey => 'monthly_occurrence';

  @internal
  @override
  Map<String, Object?> encode() => {
    'monthly_occurrence': monthlyOccurrence.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'monthly_occurrence': TfArg.literal(monthlyOccurrence.encode()),
  };
}

/// The [AutomationScheduleDays.weekDays] choice: sets `week_days`.
final class AutomationScheduleWeekDaysChoice extends AutomationScheduleDays {
  const AutomationScheduleWeekDaysChoice(this.weekDays);

  final EnumList<AutomationScheduleWeekDays> weekDays;

  @internal
  @override
  String get blockKey => 'week_days';

  @internal
  @override
  Map<String, Object?> encode() => {'week_days': weekDays.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'week_days': weekDays};
}

/// Typed helper for the `monthly_occurrence` block of
/// `azurerm_automation_schedule` (derived from provider schema).
@immutable
final class AutomationScheduleMonthlyOccurrence {
  const AutomationScheduleMonthlyOccurrence({
    required this.day,
    required this.occurrence,
  });

  final AutomationScheduleDay day;

  final TfArg<num> occurrence;

  @internal
  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'occurrence': occurrence.toTfJson(),
  };
}

/// `day` — derived from the provider schema description.
extension type const AutomationScheduleDay._(TfArg<String> _)
    implements TfArg<String> {
  AutomationScheduleDay.variable(String name) : this._(TfArg.variable(name));
  AutomationScheduleDay.expression(String template)
    : this._(TfArg.expression(template));
  const AutomationScheduleDay.arg(TfArg<String> arg) : this._(arg);

  static const friday = AutomationScheduleDay._(TfArgLiteral('Friday'));
  static const monday = AutomationScheduleDay._(TfArgLiteral('Monday'));
  static const saturday = AutomationScheduleDay._(TfArgLiteral('Saturday'));
  static const sunday = AutomationScheduleDay._(TfArgLiteral('Sunday'));
  static const thursday = AutomationScheduleDay._(TfArgLiteral('Thursday'));
  static const tuesday = AutomationScheduleDay._(TfArgLiteral('Tuesday'));
  static const wednesday = AutomationScheduleDay._(TfArgLiteral('Wednesday'));

  static const List<AutomationScheduleDay> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// Factory wrapper for `azurerm_automation_schedule`.
final class AzurermAutomationSchedule extends Resource {
  static const String tfType = 'azurerm_automation_schedule';

  AzurermAutomationSchedule(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<String>? description,
    TfArg<String>? expiryTime,
    required AutomationScheduleFrequency frequency,
    TfArg<num>? interval,
    AutomationScheduleDays? days,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? startTime,
    TfArg<String>? timezone,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automation_account_name': automationAccountName,
           'description': ?description,
           'expiry_time': ?expiryTime,
           'frequency': frequency,
           'interval': ?interval,
           ...?days?.argMap,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'start_time': ?startTime,
           'timezone': ?timezone,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationSchedule>`.
  RefTo<AzurermAutomationSchedule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automation_account_name` attribute.
  TfRef<String> get automationAccountName =>
      TfRef.attribute<String>(this, 'automation_account_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expiry_time` attribute.
  TfRef<String> get expiryTime => TfRef.attribute<String>(this, 'expiry_time');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `interval` attribute.
  TfRef<num> get interval => TfRef.attribute<num>(this, 'interval');

  /// Reference to `month_days` attribute.
  TfRef<List<num>> get monthDays =>
      TfRef.attribute<List<num>>(this, 'month_days');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');

  /// Reference to `week_days` attribute.
  TfRef<List<String>> get weekDays =>
      TfRef.attribute<List<String>>(this, 'week_days');
}
