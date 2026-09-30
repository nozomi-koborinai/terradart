// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

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

  final TfArg<List<String>>? monitoringNotificationChannels;

  final RefTo<GooglePubsubTopic>? pubsubTopic;

  final TfArg<String>? schemaVersion;

  Map<String, Object?> encode() => {
    'disable_default_iam_recipients': ?disableDefaultIamRecipients?.toTfJson(),
    'enable_project_level_recipients': ?enableProjectLevelRecipients
        ?.toTfJson(),
    'monitoring_notification_channels': ?monitoringNotificationChannels
        ?.toTfJson(),
    'pubsub_topic': ?pubsubTopic?.encodeAs('id').toTfJson(),
    'schema_version': ?schemaVersion?.toTfJson(),
  };
}

/// Exactly one of `specified_amount`, `last_period_amount` on the `amount` block of `google_billing_budget`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.specifiedAmount(...)`.
sealed class BillingBudgetAmount {
  const BillingBudgetAmount();

  /// Sets `specified_amount`.
  const factory BillingBudgetAmount.specifiedAmount(
    BillingBudgetAmountSpecifiedAmount specifiedAmount,
  ) = BillingBudgetAmountSpecifiedAmountChoice;

  /// Sets `last_period_amount`.
  const factory BillingBudgetAmount.lastPeriodAmount(
    TfArg<bool> lastPeriodAmount,
  ) = BillingBudgetAmountLastPeriodAmount;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BillingBudgetAmount.specifiedAmount] choice: sets `specified_amount`.
final class BillingBudgetAmountSpecifiedAmountChoice
    extends BillingBudgetAmount {
  const BillingBudgetAmountSpecifiedAmountChoice(this.specifiedAmount);

  final BillingBudgetAmountSpecifiedAmount specifiedAmount;

  @override
  String get blockKey => 'specified_amount';

  @override
  Map<String, Object?> encode() => {
    'specified_amount': specifiedAmount.encode(),
  };
}

/// The [BillingBudgetAmount.lastPeriodAmount] choice: sets `last_period_amount`.
final class BillingBudgetAmountLastPeriodAmount extends BillingBudgetAmount {
  const BillingBudgetAmountLastPeriodAmount(this.lastPeriodAmount);

  final TfArg<bool> lastPeriodAmount;

  @override
  String get blockKey => 'last_period_amount';

  @override
  Map<String, Object?> encode() => {
    'last_period_amount': lastPeriodAmount.toTfJson(),
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
    'currency_code': ?currencyCode?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'units': ?units?.toTfJson(),
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

  final TfArg<List<String>>? creditTypes;

  final TfArg<BillingBudgetBudgetFilterCreditTypesTreatment>?
  creditTypesTreatment;

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<String>>? projects;

  final TfArg<List<String>>? resourceAncestors;

  final TfArg<List<String>>? services;

  final TfArg<List<String>>? subaccounts;

  final BillingBudgetBudgetFilterCustomPeriod? customPeriod;

  Map<String, Object?> encode() => {
    'calendar_period': ?calendarPeriod?.toTfJson(),
    'credit_types': ?creditTypes?.toTfJson(),
    'credit_types_treatment': ?creditTypesTreatment?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'projects': ?projects?.toTfJson(),
    'resource_ancestors': ?resourceAncestors?.toTfJson(),
    'services': ?services?.toTfJson(),
    'subaccounts': ?subaccounts?.toTfJson(),
    'custom_period': ?customPeriod?.encode(),
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
    'end_date': ?endDate?.encode(),
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
    'spend_basis': ?spendBasis?.toTfJson(),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account': billingAccount,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'ownership_scope': ?ownershipScope,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBillingBudget>`.
  RefTo<GoogleBillingBudget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
