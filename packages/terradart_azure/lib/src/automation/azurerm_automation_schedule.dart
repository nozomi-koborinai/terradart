// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_schedule`.
const Set<String> _azurermAutomationScheduleSensitive = <String>{};

/// Typed helper for the `monthly_occurrence` block of
/// `azurerm_automation_schedule` (derived from provider schema).
@immutable
final class AutomationScheduleMonthlyOccurrence {
  const AutomationScheduleMonthlyOccurrence({
    required this.day,
    required this.occurrence,
  });

  final TfArg<String> day;

  final TfArg<num> occurrence;

  @internal
  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'occurrence': occurrence.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_automation_schedule`.
final class AzurermAutomationSchedule extends Resource {
  static const String tfType = 'azurerm_automation_schedule';

  AzurermAutomationSchedule(
    super.localName, {
    required TfArg<String> automationAccountName,
    TfArg<String>? description,
    TfArg<String>? expiryTime,
    required TfArg<String> frequency,
    TfArg<num>? interval,
    TfArg<List<num>>? monthDays,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? startTime,
    TfArg<String>? timezone,
    TfArg<List<String>>? weekDays,
    AutomationScheduleMonthlyOccurrence? monthlyOccurrence,
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
           'month_days': ?monthDays,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'start_time': ?startTime,
           'timezone': ?timezone,
           'week_days': ?weekDays,
           if (monthlyOccurrence != null)
             'monthly_occurrence': TfArg.literal(monthlyOccurrence.encode()),
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
