// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cost_management_scheduled_action`.
const Set<String> _azurermCostManagementScheduledActionSensitive = <String>{};

/// Cost Management Scheduled Action Days Of enum for `days_of_week`.
extension type const CostManagementScheduledActionDaysOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  CostManagementScheduledActionDaysOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  CostManagementScheduledActionDaysOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const CostManagementScheduledActionDaysOfWeek.arg(TfArg<String> arg)
    : this._(arg);

  static const friday = CostManagementScheduledActionDaysOfWeek._(
    TfArgLiteral('Friday'),
  );
  static const monday = CostManagementScheduledActionDaysOfWeek._(
    TfArgLiteral('Monday'),
  );
  static const saturday = CostManagementScheduledActionDaysOfWeek._(
    TfArgLiteral('Saturday'),
  );
  static const sunday = CostManagementScheduledActionDaysOfWeek._(
    TfArgLiteral('Sunday'),
  );
  static const thursday = CostManagementScheduledActionDaysOfWeek._(
    TfArgLiteral('Thursday'),
  );
  static const tuesday = CostManagementScheduledActionDaysOfWeek._(
    TfArgLiteral('Tuesday'),
  );
  static const wednesday = CostManagementScheduledActionDaysOfWeek._(
    TfArgLiteral('Wednesday'),
  );

  static const List<CostManagementScheduledActionDaysOfWeek> values = [
    friday,
    monday,
    saturday,
    sunday,
    thursday,
    tuesday,
    wednesday,
  ];
}

/// Cost Management Scheduled Action enum for `frequency`.
extension type const CostManagementScheduledActionFrequency._(TfArg<String> _)
    implements TfArg<String> {
  CostManagementScheduledActionFrequency.variable(String name)
    : this._(TfArg.variable(name));
  CostManagementScheduledActionFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const CostManagementScheduledActionFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const daily = CostManagementScheduledActionFrequency._(
    TfArgLiteral('Daily'),
  );
  static const monthly = CostManagementScheduledActionFrequency._(
    TfArgLiteral('Monthly'),
  );
  static const weekly = CostManagementScheduledActionFrequency._(
    TfArgLiteral('Weekly'),
  );

  static const List<CostManagementScheduledActionFrequency> values = [
    daily,
    monthly,
    weekly,
  ];
}

/// Cost Management Scheduled Action Weeks Of enum for `weeks_of_month`.
extension type const CostManagementScheduledActionWeeksOfMonth._(
  TfArg<String> _
) implements TfArg<String> {
  CostManagementScheduledActionWeeksOfMonth.variable(String name)
    : this._(TfArg.variable(name));
  CostManagementScheduledActionWeeksOfMonth.expression(String template)
    : this._(TfArg.expression(template));
  const CostManagementScheduledActionWeeksOfMonth.arg(TfArg<String> arg)
    : this._(arg);

  static const first = CostManagementScheduledActionWeeksOfMonth._(
    TfArgLiteral('First'),
  );
  static const fourth = CostManagementScheduledActionWeeksOfMonth._(
    TfArgLiteral('Fourth'),
  );
  static const last = CostManagementScheduledActionWeeksOfMonth._(
    TfArgLiteral('Last'),
  );
  static const second = CostManagementScheduledActionWeeksOfMonth._(
    TfArgLiteral('Second'),
  );
  static const third = CostManagementScheduledActionWeeksOfMonth._(
    TfArgLiteral('Third'),
  );

  static const List<CostManagementScheduledActionWeeksOfMonth> values = [
    first,
    fourth,
    last,
    second,
    third,
  ];
}

/// Factory wrapper for `azurerm_cost_management_scheduled_action`.
final class AzurermCostManagementScheduledAction extends Resource {
  static const String tfType = 'azurerm_cost_management_scheduled_action';

  AzurermCostManagementScheduledAction(
    super.localName, {
    TfArg<num>? dayOfMonth,
    List<CostManagementScheduledActionDaysOfWeek>? daysOfWeek,
    required TfArg<String> displayName,
    required TfArg<String> emailAddressSender,
    required TfArg<List<String>> emailAddresses,
    required TfArg<String> emailSubject,
    required TfArg<String> endDate,
    required CostManagementScheduledActionFrequency frequency,
    TfArg<num>? hourOfDay,
    TfArg<String>? message,
    required TfArg<String> name,
    required TfArg<String> startDate,
    required TfArg<String> viewId,
    List<CostManagementScheduledActionWeeksOfMonth>? weeksOfMonth,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'day_of_month': ?dayOfMonth,
           if (daysOfWeek != null)
             'days_of_week': TfArg.literal([
               for (final e in daysOfWeek) e.toTfJson(),
             ]),
           'display_name': displayName,
           'email_address_sender': emailAddressSender,
           'email_addresses': emailAddresses,
           'email_subject': emailSubject,
           'end_date': endDate,
           'frequency': frequency,
           'hour_of_day': ?hourOfDay,
           'message': ?message,
           'name': name,
           'start_date': startDate,
           'view_id': viewId,
           if (weeksOfMonth != null)
             'weeks_of_month': TfArg.literal([
               for (final e in weeksOfMonth) e.toTfJson(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCostManagementScheduledActionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCostManagementScheduledAction>`.
  RefTo<AzurermCostManagementScheduledAction> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `day_of_month` attribute.
  TfRef<num> get dayOfMonth => TfRef.attribute<num>(this, 'day_of_month');

  /// Reference to `days_of_week` attribute.
  TfRef<List<String>> get daysOfWeek =>
      TfRef.attribute<List<String>>(this, 'days_of_week');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `email_address_sender` attribute.
  TfRef<String> get emailAddressSender =>
      TfRef.attribute<String>(this, 'email_address_sender');

  /// Reference to `email_addresses` attribute.
  TfRef<List<String>> get emailAddresses =>
      TfRef.attribute<List<String>>(this, 'email_addresses');

  /// Reference to `email_subject` attribute.
  TfRef<String> get emailSubject =>
      TfRef.attribute<String>(this, 'email_subject');

  /// Reference to `end_date` attribute.
  TfRef<String> get endDate => TfRef.attribute<String>(this, 'end_date');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `hour_of_day` attribute.
  TfRef<num> get hourOfDay => TfRef.attribute<num>(this, 'hour_of_day');

  /// Reference to `message` attribute.
  TfRef<String> get message => TfRef.attribute<String>(this, 'message');

  /// Reference to `start_date` attribute.
  TfRef<String> get startDate => TfRef.attribute<String>(this, 'start_date');

  /// Reference to `view_id` attribute.
  TfRef<String> get viewId => TfRef.attribute<String>(this, 'view_id');

  /// Reference to `weeks_of_month` attribute.
  TfRef<List<String>> get weeksOfMonth =>
      TfRef.attribute<List<String>>(this, 'weeks_of_month');
}
