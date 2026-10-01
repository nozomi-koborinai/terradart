// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_billing_budget`.
const Set<String> _googleBillingBudgetSensitive = <String>{};

/// Billing Budget Ownership enum for `ownership_scope`.
extension type const BillingBudgetOwnershipScope._(TfArg<String> _)
    implements TfArg<String> {
  BillingBudgetOwnershipScope.variable(String name)
    : this._(TfArg.variable(name));
  BillingBudgetOwnershipScope.expression(String template)
    : this._(TfArg.expression(template));
  const BillingBudgetOwnershipScope.arg(TfArg<String> arg) : this._(arg);

  static const ownershipScopeUnspecified = BillingBudgetOwnershipScope._(
    TfArgLiteral('OWNERSHIP_SCOPE_UNSPECIFIED'),
  );
  static const allUsers = BillingBudgetOwnershipScope._(
    TfArgLiteral('ALL_USERS'),
  );
  static const billingAccount = BillingBudgetOwnershipScope._(
    TfArgLiteral('BILLING_ACCOUNT'),
  );

  static const List<BillingBudgetOwnershipScope> values = [
    ownershipScopeUnspecified,
    allUsers,
    billingAccount,
  ];
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
    BillingBudgetSpecifiedAmount specifiedAmount,
  ) = BillingBudgetSpecifiedAmountChoice;

  /// Sets `last_period_amount`.
  const factory BillingBudgetAmount.lastPeriodAmount(
    TfArg<bool> lastPeriodAmount,
  ) = BillingBudgetLastPeriodAmount;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BillingBudgetAmount.specifiedAmount] choice: sets `specified_amount`.
final class BillingBudgetSpecifiedAmountChoice extends BillingBudgetAmount {
  const BillingBudgetSpecifiedAmountChoice(this.specifiedAmount);

  final BillingBudgetSpecifiedAmount specifiedAmount;

  @override
  String get blockKey => 'specified_amount';

  @override
  Map<String, Object?> encode() => {
    'specified_amount': specifiedAmount.encode(),
  };
}

/// The [BillingBudgetAmount.lastPeriodAmount] choice: sets `last_period_amount`.
final class BillingBudgetLastPeriodAmount extends BillingBudgetAmount {
  const BillingBudgetLastPeriodAmount(this.lastPeriodAmount);

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
final class BillingBudgetSpecifiedAmount {
  const BillingBudgetSpecifiedAmount({
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
final class BillingBudgetFilter {
  const BillingBudgetFilter({
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

  final BillingBudgetCalendarPeriod? calendarPeriod;

  final TfArg<List<String>>? creditTypes;

  final BillingBudgetCreditTypesTreatment? creditTypesTreatment;

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<String>>? projects;

  final TfArg<List<String>>? resourceAncestors;

  final TfArg<List<String>>? services;

  final TfArg<List<String>>? subaccounts;

  final BillingBudgetCustomPeriod? customPeriod;

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
extension type const BillingBudgetCalendarPeriod._(TfArg<String> _)
    implements TfArg<String> {
  BillingBudgetCalendarPeriod.variable(String name)
    : this._(TfArg.variable(name));
  BillingBudgetCalendarPeriod.expression(String template)
    : this._(TfArg.expression(template));
  const BillingBudgetCalendarPeriod.arg(TfArg<String> arg) : this._(arg);

  static const month = BillingBudgetCalendarPeriod._(TfArgLiteral('MONTH'));
  static const quarter = BillingBudgetCalendarPeriod._(TfArgLiteral('QUARTER'));
  static const year = BillingBudgetCalendarPeriod._(TfArgLiteral('YEAR'));
  static const calendarPeriodUnspecified = BillingBudgetCalendarPeriod._(
    TfArgLiteral('CALENDAR_PERIOD_UNSPECIFIED'),
  );

  static const List<BillingBudgetCalendarPeriod> values = [
    month,
    quarter,
    year,
    calendarPeriodUnspecified,
  ];
}

/// `credit_types_treatment` — derived from the provider schema description.
extension type const BillingBudgetCreditTypesTreatment._(TfArg<String> _)
    implements TfArg<String> {
  BillingBudgetCreditTypesTreatment.variable(String name)
    : this._(TfArg.variable(name));
  BillingBudgetCreditTypesTreatment.expression(String template)
    : this._(TfArg.expression(template));
  const BillingBudgetCreditTypesTreatment.arg(TfArg<String> arg) : this._(arg);

  static const includeAllCredits = BillingBudgetCreditTypesTreatment._(
    TfArgLiteral('INCLUDE_ALL_CREDITS'),
  );
  static const excludeAllCredits = BillingBudgetCreditTypesTreatment._(
    TfArgLiteral('EXCLUDE_ALL_CREDITS'),
  );
  static const includeSpecifiedCredits = BillingBudgetCreditTypesTreatment._(
    TfArgLiteral('INCLUDE_SPECIFIED_CREDITS'),
  );

  static const List<BillingBudgetCreditTypesTreatment> values = [
    includeAllCredits,
    excludeAllCredits,
    includeSpecifiedCredits,
  ];
}

/// Typed helper for the `budget_filter.custom_period` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetCustomPeriod {
  const BillingBudgetCustomPeriod({this.endDate, required this.startDate});

  final BillingBudgetEndDate? endDate;

  final BillingBudgetStartDate startDate;

  Map<String, Object?> encode() => {
    'end_date': ?endDate?.encode(),
    'start_date': startDate.encode(),
  };
}

/// Typed helper for the `budget_filter.custom_period.end_date` block of
/// `google_billing_budget` (derived from provider schema).
@immutable
final class BillingBudgetEndDate {
  const BillingBudgetEndDate({
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
final class BillingBudgetStartDate {
  const BillingBudgetStartDate({
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

  final BillingBudgetSpendBasis? spendBasis;

  final TfArg<num> thresholdPercent;

  Map<String, Object?> encode() => {
    'spend_basis': ?spendBasis?.toTfJson(),
    'threshold_percent': thresholdPercent.toTfJson(),
  };
}

/// `spend_basis` — derived from the provider schema description.
extension type const BillingBudgetSpendBasis._(TfArg<String> _)
    implements TfArg<String> {
  BillingBudgetSpendBasis.variable(String name) : this._(TfArg.variable(name));
  BillingBudgetSpendBasis.expression(String template)
    : this._(TfArg.expression(template));
  const BillingBudgetSpendBasis.arg(TfArg<String> arg) : this._(arg);

  static const currentSpend = BillingBudgetSpendBasis._(
    TfArgLiteral('CURRENT_SPEND'),
  );
  static const forecastedSpend = BillingBudgetSpendBasis._(
    TfArgLiteral('FORECASTED_SPEND'),
  );

  static const List<BillingBudgetSpendBasis> values = [
    currentSpend,
    forecastedSpend,
  ];
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

  GoogleBillingBudget(
    super.localName, {
    required TfArg<String> billingAccount,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    BillingBudgetOwnershipScope? ownershipScope,
    BillingBudgetAllUpdatesRule? allUpdatesRule,
    required BillingBudgetAmount amount,
    BillingBudgetFilter? budgetFilter,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `billing_account` attribute.
  TfRef<String> get billingAccount =>
      TfRef.attribute<String>(this, 'billing_account');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `ownership_scope` attribute.
  TfRef<String> get ownershipScope =>
      TfRef.attribute<String>(this, 'ownership_scope');
}
