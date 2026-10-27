// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account_batch_configuration`.
const Set<String>
_azurermLogicAppIntegrationAccountBatchConfigurationSensitive = <String>{};

/// Typed helper for the `release_criteria` block of
/// `azurerm_logic_app_integration_account_batch_configuration` (derived from provider schema).
@immutable
final class LogicAppIntegrationAccountBatchConfigurationReleaseCriteria {
  const LogicAppIntegrationAccountBatchConfigurationReleaseCriteria({
    this.batchSize,
    this.messageCount,
    this.recurrence,
  });

  final TfArg<num>? batchSize;

  final TfArg<num>? messageCount;

  final LogicAppIntegrationAccountBatchConfigurationRecurrence? recurrence;

  @internal
  Map<String, Object?> encode() => {
    'batch_size': ?batchSize?.toTfJson(),
    'message_count': ?messageCount?.toTfJson(),
    'recurrence': ?recurrence?.encode(),
  };
}

/// Typed helper for the `release_criteria.recurrence` block of
/// `azurerm_logic_app_integration_account_batch_configuration` (derived from provider schema).
@immutable
final class LogicAppIntegrationAccountBatchConfigurationRecurrence {
  const LogicAppIntegrationAccountBatchConfigurationRecurrence({
    this.endTime,
    required this.frequency,
    required this.interval,
    this.startTime,
    this.timeZone,
    this.schedule,
  });

  final TfArg<String>? endTime;

  final LogicAppIntegrationAccountBatchConfigurationFrequency frequency;

  final TfArg<num> interval;

  final TfArg<String>? startTime;

  final TfArg<String>? timeZone;

  final LogicAppIntegrationAccountBatchConfigurationSchedule? schedule;

  @internal
  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'frequency': frequency.toTfJson(),
    'interval': interval.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
    'schedule': ?schedule?.encode(),
  };
}

/// `frequency` — derived from the provider schema description.
extension type const LogicAppIntegrationAccountBatchConfigurationFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  LogicAppIntegrationAccountBatchConfigurationFrequency.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppIntegrationAccountBatchConfigurationFrequency.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const LogicAppIntegrationAccountBatchConfigurationFrequency.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const day = LogicAppIntegrationAccountBatchConfigurationFrequency._(
    TfArgLiteral('Day'),
  );
  static const hour = LogicAppIntegrationAccountBatchConfigurationFrequency._(
    TfArgLiteral('Hour'),
  );
  static const minute = LogicAppIntegrationAccountBatchConfigurationFrequency._(
    TfArgLiteral('Minute'),
  );
  static const month = LogicAppIntegrationAccountBatchConfigurationFrequency._(
    TfArgLiteral('Month'),
  );
  static const notspecified =
      LogicAppIntegrationAccountBatchConfigurationFrequency._(
        TfArgLiteral('NotSpecified'),
      );
  static const second = LogicAppIntegrationAccountBatchConfigurationFrequency._(
    TfArgLiteral('Second'),
  );
  static const week = LogicAppIntegrationAccountBatchConfigurationFrequency._(
    TfArgLiteral('Week'),
  );
  static const year = LogicAppIntegrationAccountBatchConfigurationFrequency._(
    TfArgLiteral('Year'),
  );

  static const List<LogicAppIntegrationAccountBatchConfigurationFrequency>
  values = [day, hour, minute, month, notspecified, second, week, year];
}

/// Typed helper for the `release_criteria.recurrence.schedule` block of
/// `azurerm_logic_app_integration_account_batch_configuration` (derived from provider schema).
@immutable
final class LogicAppIntegrationAccountBatchConfigurationSchedule {
  const LogicAppIntegrationAccountBatchConfigurationSchedule({
    this.hours,
    this.minutes,
    this.monthDays,
    this.weekDays,
    this.monthly,
  });

  final TfArg<List<num>>? hours;

  final TfArg<List<num>>? minutes;

  final TfArg<List<num>>? monthDays;

  final List<LogicAppIntegrationAccountBatchConfigurationWeekDays>? weekDays;

  final List<LogicAppIntegrationAccountBatchConfigurationMonthly>? monthly;

  @internal
  Map<String, Object?> encode() => {
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'month_days': ?monthDays?.toTfJson(),
    if (weekDays != null)
      'week_days': [for (final e in weekDays!) e.toTfJson()],
    if (monthly != null) 'monthly': [for (final e in monthly!) e.encode()],
  };
}

/// `week_days` — derived from the provider schema description.
extension type const LogicAppIntegrationAccountBatchConfigurationWeekDays._(
  TfArg<String> _
) implements TfArg<String> {
  LogicAppIntegrationAccountBatchConfigurationWeekDays.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppIntegrationAccountBatchConfigurationWeekDays.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const LogicAppIntegrationAccountBatchConfigurationWeekDays.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const friday = LogicAppIntegrationAccountBatchConfigurationWeekDays._(
    TfArgLiteral('Friday'),
  );
  static const monday = LogicAppIntegrationAccountBatchConfigurationWeekDays._(
    TfArgLiteral('Monday'),
  );
  static const saturday =
      LogicAppIntegrationAccountBatchConfigurationWeekDays._(
        TfArgLiteral('Saturday'),
      );
  static const sunday = LogicAppIntegrationAccountBatchConfigurationWeekDays._(
    TfArgLiteral('Sunday'),
  );
  static const thursday =
      LogicAppIntegrationAccountBatchConfigurationWeekDays._(
        TfArgLiteral('Thursday'),
      );
  static const tuesday = LogicAppIntegrationAccountBatchConfigurationWeekDays._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday =
      LogicAppIntegrationAccountBatchConfigurationWeekDays._(
        TfArgLiteral('Wednesday'),
      );

  static const List<LogicAppIntegrationAccountBatchConfigurationWeekDays>
  values = [friday, monday, saturday, sunday, thursday, tuesday, wednesday];
}

/// Typed helper for the `release_criteria.recurrence.schedule.monthly` block of
/// `azurerm_logic_app_integration_account_batch_configuration` (derived from provider schema).
@immutable
final class LogicAppIntegrationAccountBatchConfigurationMonthly {
  const LogicAppIntegrationAccountBatchConfigurationMonthly({
    required this.week,
    required this.weekday,
  });

  final TfArg<num> week;

  final LogicAppIntegrationAccountBatchConfigurationWeekday weekday;

  @internal
  Map<String, Object?> encode() => {
    'week': week.toTfJson(),
    'weekday': weekday.toTfJson(),
  };
}

/// `weekday` — derived from the provider schema description.
extension type const LogicAppIntegrationAccountBatchConfigurationWeekday._(
  TfArg<String> _
) implements TfArg<String> {
  LogicAppIntegrationAccountBatchConfigurationWeekday.variable(String name)
    : this._(TfArg.variable(name));
  LogicAppIntegrationAccountBatchConfigurationWeekday.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const LogicAppIntegrationAccountBatchConfigurationWeekday.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const friday = LogicAppIntegrationAccountBatchConfigurationWeekday._(
    TfArgLiteral('Friday'),
  );
  static const monday = LogicAppIntegrationAccountBatchConfigurationWeekday._(
    TfArgLiteral('Monday'),
  );
  static const saturday = LogicAppIntegrationAccountBatchConfigurationWeekday._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = LogicAppIntegrationAccountBatchConfigurationWeekday._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = LogicAppIntegrationAccountBatchConfigurationWeekday._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = LogicAppIntegrationAccountBatchConfigurationWeekday._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday =
      LogicAppIntegrationAccountBatchConfigurationWeekday._(
        TfArgLiteral('Wednesday'),
      );

  static const List<LogicAppIntegrationAccountBatchConfigurationWeekday>
  values = [friday, monday, saturday, sunday, thursday, tuesday, wednesday];
}

/// Factory wrapper for `azurerm_logic_app_integration_account_batch_configuration`.
final class AzurermLogicAppIntegrationAccountBatchConfiguration
    extends Resource {
  static const String tfType =
      'azurerm_logic_app_integration_account_batch_configuration';

  AzurermLogicAppIntegrationAccountBatchConfiguration(
    super.localName, {
    required TfArg<String> batchGroupName,
    required TfArg<String> integrationAccountName,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required LogicAppIntegrationAccountBatchConfigurationReleaseCriteria
    releaseCriteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'batch_group_name': batchGroupName,
           'integration_account_name': integrationAccountName,
           'metadata': ?metadata,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'release_criteria': TfArg.literal(releaseCriteria.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountBatchConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccountBatchConfiguration>`.
  RefTo<AzurermLogicAppIntegrationAccountBatchConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `batch_group_name` attribute.
  TfRef<String> get batchGroupName =>
      TfRef.attribute<String>(this, 'batch_group_name');

  /// Reference to `integration_account_name` attribute.
  TfRef<String> get integrationAccountName =>
      TfRef.attribute<String>(this, 'integration_account_name');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
