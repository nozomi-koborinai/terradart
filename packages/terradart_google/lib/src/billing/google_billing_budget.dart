// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_billing_budget`.
const Set<String> _googleBillingBudgetSensitive = <String>{};

/// Billing Budget Ownership enum for `ownership_scope`.
enum BillingBudgetOwnershipScope implements TerraformEnum {
  ownershipScopeUnspecified('OWNERSHIP_SCOPE_UNSPECIFIED'),
  allUsers('ALL_USERS'),
  billingAccount('BILLING_ACCOUNT');

  const BillingBudgetOwnershipScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `all_updates_rule` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetAllUpdatesRule {
  const BillingBudgetAllUpdatesRule({
    this.disableDefaultIamRecipients,
    this.enableProjectLevelRecipients,
    this.monitoringNotificationChannels,
    this.pubsubTopic,
    this.schemaVersion,
  });

  final TfArg<bool>? disableDefaultIamRecipients;

  final TfArg<bool>? enableProjectLevelRecipients;

  final TfArg<List<Object?>>? monitoringNotificationChannels;

  final TfArg<String>? pubsubTopic;

  final TfArg<String>? schemaVersion;

  Map<String, Object?> encode() => {
    if (disableDefaultIamRecipients != null)
      'disable_default_iam_recipients': disableDefaultIamRecipients!.toTfJson(),
    if (enableProjectLevelRecipients != null)
      'enable_project_level_recipients': enableProjectLevelRecipients!
          .toTfJson(),
    if (monitoringNotificationChannels != null)
      'monitoring_notification_channels': monitoringNotificationChannels!
          .toTfJson(),
    if (pubsubTopic != null) 'pubsub_topic': pubsubTopic!.toTfJson(),
    if (schemaVersion != null) 'schema_version': schemaVersion!.toTfJson(),
  };
}

/// Typed helper for the `amount` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetAmount {
  const BillingBudgetAmount({this.lastPeriodAmount, this.specifiedAmount});

  final TfArg<bool>? lastPeriodAmount;

  final BillingBudgetAmountSpecifiedAmount? specifiedAmount;

  Map<String, Object?> encode() => {
    if (lastPeriodAmount != null)
      'last_period_amount': lastPeriodAmount!.toTfJson(),
    if (specifiedAmount != null) 'specified_amount': specifiedAmount!.encode(),
  };
}

/// Typed helper for the `amount.specified_amount` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetAmountSpecifiedAmount {
  const BillingBudgetAmountSpecifiedAmount({
    this.currencyCode,
    this.nanos,
    this.units,
  });

  final TfArg<String>? currencyCode;

  final TfArg<num>? nanos;

  final TfArg<String>? units;

  Map<String, Object?> encode() => {
    if (currencyCode != null) 'currency_code': currencyCode!.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    if (units != null) 'units': units!.toTfJson(),
  };
}

/// Typed helper for the `budget_filter` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetBudgetFilter {
  const BillingBudgetBudgetFilter({
    this.calendarPeriod,
    this.creditTypes,
    this.creditTypesTreatment,
    this.labels,
    this.projects,
    this.resourceAncestors,
    this.services,
    this.subaccounts,
    this.customPeriod,
  });

  final TfArg<BillingBudgetBudgetFilterCalendarPeriod>? calendarPeriod;

  final TfArg<List<Object?>>? creditTypes;

  final TfArg<BillingBudgetBudgetFilterCreditTypesTreatment>?
  creditTypesTreatment;

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<Object?>>? projects;

  final TfArg<List<Object?>>? resourceAncestors;

  final TfArg<List<Object?>>? services;

  final TfArg<List<Object?>>? subaccounts;

  final BillingBudgetBudgetFilterCustomPeriod? customPeriod;

  Map<String, Object?> encode() => {
    if (calendarPeriod != null) 'calendar_period': calendarPeriod!.toTfJson(),
    if (creditTypes != null) 'credit_types': creditTypes!.toTfJson(),
    if (creditTypesTreatment != null)
      'credit_types_treatment': creditTypesTreatment!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (projects != null) 'projects': projects!.toTfJson(),
    if (resourceAncestors != null)
      'resource_ancestors': resourceAncestors!.toTfJson(),
    if (services != null) 'services': services!.toTfJson(),
    if (subaccounts != null) 'subaccounts': subaccounts!.toTfJson(),
    if (customPeriod != null) 'custom_period': customPeriod!.encode(),
  };
}

/// `calendar_period` — derived from the provider schema description.
enum BillingBudgetBudgetFilterCalendarPeriod implements TerraformEnum {
  month('MONTH'),
  quarter('QUARTER'),
  year('YEAR'),
  calendarPeriodUnspecified('CALENDAR_PERIOD_UNSPECIFIED');

  const BillingBudgetBudgetFilterCalendarPeriod(this.terraformValue);
  @override
  final String terraformValue;
}

/// `credit_types_treatment` — derived from the provider schema description.
enum BillingBudgetBudgetFilterCreditTypesTreatment implements TerraformEnum {
  includeAllCredits('INCLUDE_ALL_CREDITS'),
  excludeAllCredits('EXCLUDE_ALL_CREDITS'),
  includeSpecifiedCredits('INCLUDE_SPECIFIED_CREDITS');

  const BillingBudgetBudgetFilterCreditTypesTreatment(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `budget_filter.custom_period` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetBudgetFilterCustomPeriod {
  const BillingBudgetBudgetFilterCustomPeriod({
    this.endDate,
    required this.startDate,
  });

  final BillingBudgetBudgetFilterCustomPeriodEndDate? endDate;

  final BillingBudgetBudgetFilterCustomPeriodStartDate startDate;

  Map<String, Object?> encode() => {
    if (endDate != null) 'end_date': endDate!.encode(),
    'start_date': startDate.encode(),
  };
}

/// Typed helper for the `budget_filter.custom_period.end_date` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetBudgetFilterCustomPeriodEndDate {
  const BillingBudgetBudgetFilterCustomPeriodEndDate({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `budget_filter.custom_period.start_date` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetBudgetFilterCustomPeriodStartDate {
  const BillingBudgetBudgetFilterCustomPeriodStartDate({
    required this.day,
    required this.month,
    required this.year,
  });

  final TfArg<num> day;

  final TfArg<num> month;

  final TfArg<num> year;

  Map<String, Object?> encode() => {
    'day': day.toTfJson(),
    'month': month.toTfJson(),
    'year': year.toTfJson(),
  };
}

/// Typed helper for the `threshold_rules` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetThresholdRules {
  const BillingBudgetThresholdRules({
    this.spendBasis,
    required this.thresholdPercent,
  });

  final TfArg<BillingBudgetThresholdRulesSpendBasis>? spendBasis;

  final TfArg<num> thresholdPercent;

  Map<String, Object?> encode() => {
    if (spendBasis != null) 'spend_basis': spendBasis!.toTfJson(),
    'threshold_percent': thresholdPercent.toTfJson(),
  };
}

/// `spend_basis` — derived from the provider schema description.
enum BillingBudgetThresholdRulesSpendBasis implements TerraformEnum {
  currentSpend('CURRENT_SPEND'),
  forecastedSpend('FORECASTED_SPEND');

  const BillingBudgetThresholdRulesSpendBasis(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_billing_budget`.
///
/// Budget configuration for a billing account.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleBillingBudget extends Resource {
  static const String tfType = 'google_billing_budget';

  GoogleBillingBudget({
    required super.localName,
    required TfArg<String> billingAccount,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<BillingBudgetOwnershipScope>? ownershipScope,
    BillingBudgetAllUpdatesRule? allUpdatesRule,
    required BillingBudgetAmount amount,
    BillingBudgetBudgetFilter? budgetFilter,
    List<BillingBudgetThresholdRules>? thresholdRules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account': billingAccount,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (ownershipScope != null) 'ownership_scope': ownershipScope,
           if (allUpdatesRule != null)
             'all_updates_rule': TfArg.literal(allUpdatesRule.encode()),
           'amount': TfArg.literal(amount.encode()),
           if (budgetFilter != null)
             'budget_filter': TfArg.literal(budgetFilter.encode()),
           if (thresholdRules != null)
             'threshold_rules': TfArg.literal([
               for (final e in thresholdRules) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBillingBudgetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
