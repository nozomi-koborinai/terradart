// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_budgets_budget`.
const Set<String> _awsBudgetsBudgetSensitive = <String>{};

/// Budgets Budget Budget enum for `budget_type`.
enum BudgetsBudgetBudgetType implements TerraformEnum {
  usage('USAGE'),
  cost('COST'),
  riUtilization('RI_UTILIZATION'),
  riCoverage('RI_COVERAGE'),
  savingsPlansUtilization('SAVINGS_PLANS_UTILIZATION'),
  savingsPlansCoverage('SAVINGS_PLANS_COVERAGE');

  const BudgetsBudgetBudgetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Budgets Budget enum for `metrics`.
enum BudgetsBudgetMetrics implements TerraformEnum {
  blendedcost('BlendedCost'),
  unblendedcost('UnblendedCost'),
  amortizedcost('AmortizedCost'),
  netunblendedcost('NetUnblendedCost'),
  netamortizedcost('NetAmortizedCost'),
  usagequantity('UsageQuantity'),
  normalizedusageamount('NormalizedUsageAmount'),
  hours('Hours');

  const BudgetsBudgetMetrics(this.terraformValue);
  @override
  final String terraformValue;
}

/// Budgets Budget Time enum for `time_unit`.
enum BudgetsBudgetTimeUnit implements TerraformEnum {
  daily('DAILY'),
  monthly('MONTHLY'),
  quarterly('QUARTERLY'),
  annually('ANNUALLY'),
  custom('CUSTOM');

  const BudgetsBudgetTimeUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `cost_filter`, `filter_expression` on `aws_budgets_budget`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.costFilter(...)`.
sealed class BudgetsBudgetScope {
  const BudgetsBudgetScope();

  /// Sets `cost_filter`.
  const factory BudgetsBudgetScope.costFilter(
    List<BudgetsBudgetCostFilter> costFilter,
  ) = BudgetsBudgetScopeCostFilter;

  /// Sets `filter_expression`.
  const factory BudgetsBudgetScope.filterExpression(
    BudgetsBudgetFilterExpression filterExpression,
  ) = BudgetsBudgetScopeFilterExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BudgetsBudgetScope.costFilter] choice: sets `cost_filter`.
final class BudgetsBudgetScopeCostFilter extends BudgetsBudgetScope {
  const BudgetsBudgetScopeCostFilter(this.costFilter);

  final List<BudgetsBudgetCostFilter> costFilter;

  @override
  String get blockKey => 'cost_filter';

  @override
  Map<String, Object?> encode() => {
    'cost_filter': [for (final e in costFilter) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cost_filter': TfArg.literal([for (final e in costFilter) e.encode()]),
  };
}

/// The [BudgetsBudgetScope.filterExpression] choice: sets `filter_expression`.
final class BudgetsBudgetScopeFilterExpression extends BudgetsBudgetScope {
  const BudgetsBudgetScopeFilterExpression(this.filterExpression);

  final BudgetsBudgetFilterExpression filterExpression;

  @override
  String get blockKey => 'filter_expression';

  @override
  Map<String, Object?> encode() => {
    'filter_expression': filterExpression.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'filter_expression': TfArg.literal(filterExpression.encode()),
  };
}

/// At most one of `cost_types`, `metrics` on `aws_budgets_budget`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.costTypes(...)`.
sealed class BudgetsBudgetMeasure {
  const BudgetsBudgetMeasure();

  /// Sets `cost_types`.
  const factory BudgetsBudgetMeasure.costTypes(
    BudgetsBudgetCostTypes costTypes,
  ) = BudgetsBudgetMeasureCostTypes;

  /// Sets `metrics`.
  const factory BudgetsBudgetMeasure.metrics(
    List<TfArg<BudgetsBudgetMetrics>> metrics,
  ) = BudgetsBudgetMeasureMetrics;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BudgetsBudgetMeasure.costTypes] choice: sets `cost_types`.
final class BudgetsBudgetMeasureCostTypes extends BudgetsBudgetMeasure {
  const BudgetsBudgetMeasureCostTypes(this.costTypes);

  final BudgetsBudgetCostTypes costTypes;

  @override
  String get blockKey => 'cost_types';

  @override
  Map<String, Object?> encode() => {'cost_types': costTypes.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cost_types': TfArg.literal(costTypes.encode()),
  };
}

/// The [BudgetsBudgetMeasure.metrics] choice: sets `metrics`.
final class BudgetsBudgetMeasureMetrics extends BudgetsBudgetMeasure {
  const BudgetsBudgetMeasureMetrics(this.metrics);

  final List<TfArg<BudgetsBudgetMetrics>> metrics;

  @override
  String get blockKey => 'metrics';

  @override
  Map<String, Object?> encode() => {
    'metrics': [for (final e in metrics) e.toTfJson()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'metrics': TfArg.literal([for (final e in metrics) e.toTfJson()]),
  };
}

/// At most one of `name`, `name_prefix` on `aws_budgets_budget`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class BudgetsBudgetName {
  const BudgetsBudgetName();

  /// Sets `name`.
  const factory BudgetsBudgetName.name(TfArg<String> name) =
      BudgetsBudgetNameChoice;

  /// Sets `name_prefix`.
  const factory BudgetsBudgetName.namePrefix(TfArg<String> namePrefix) =
      BudgetsBudgetNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BudgetsBudgetName.name] choice: sets `name`.
final class BudgetsBudgetNameChoice extends BudgetsBudgetName {
  const BudgetsBudgetNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [BudgetsBudgetName.namePrefix] choice: sets `name_prefix`.
final class BudgetsBudgetNamePrefix extends BudgetsBudgetName {
  const BudgetsBudgetNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `auto_adjust_data` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetAutoAdjustData {
  const BudgetsBudgetAutoAdjustData({
    required this.autoAdjustType,
    this.historicalOptions,
  });

  final TfArg<BudgetsBudgetAutoAdjustType> autoAdjustType;

  final BudgetsBudgetHistoricalOptions? historicalOptions;

  Map<String, Object?> encode() => {
    'auto_adjust_type': autoAdjustType.toTfJson(),
    'historical_options': ?historicalOptions?.encode(),
  };
}

/// `auto_adjust_type` — derived from the provider schema description.
enum BudgetsBudgetAutoAdjustType implements TerraformEnum {
  historical('HISTORICAL'),
  forecast('FORECAST');

  const BudgetsBudgetAutoAdjustType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `auto_adjust_data.historical_options` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetHistoricalOptions {
  const BudgetsBudgetHistoricalOptions({required this.budgetAdjustmentPeriod});

  final TfArg<num> budgetAdjustmentPeriod;

  Map<String, Object?> encode() => {
    'budget_adjustment_period': budgetAdjustmentPeriod.toTfJson(),
  };
}

/// Typed helper for the `cost_filter` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetCostFilter {
  const BudgetsBudgetCostFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `cost_types` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetCostTypes {
  const BudgetsBudgetCostTypes({
    this.includeCredit,
    this.includeDiscount,
    this.includeOtherSubscription,
    this.includeRecurring,
    this.includeRefund,
    this.includeSubscription,
    this.includeSupport,
    this.includeTax,
    this.includeUpfront,
    this.useAmortized,
    this.useBlended,
  });

  final TfArg<bool>? includeCredit;

  final TfArg<bool>? includeDiscount;

  final TfArg<bool>? includeOtherSubscription;

  final TfArg<bool>? includeRecurring;

  final TfArg<bool>? includeRefund;

  final TfArg<bool>? includeSubscription;

  final TfArg<bool>? includeSupport;

  final TfArg<bool>? includeTax;

  final TfArg<bool>? includeUpfront;

  final TfArg<bool>? useAmortized;

  final TfArg<bool>? useBlended;

  Map<String, Object?> encode() => {
    'include_credit': ?includeCredit?.toTfJson(),
    'include_discount': ?includeDiscount?.toTfJson(),
    'include_other_subscription': ?includeOtherSubscription?.toTfJson(),
    'include_recurring': ?includeRecurring?.toTfJson(),
    'include_refund': ?includeRefund?.toTfJson(),
    'include_subscription': ?includeSubscription?.toTfJson(),
    'include_support': ?includeSupport?.toTfJson(),
    'include_tax': ?includeTax?.toTfJson(),
    'include_upfront': ?includeUpfront?.toTfJson(),
    'use_amortized': ?useAmortized?.toTfJson(),
    'use_blended': ?useBlended?.toTfJson(),
  };
}

/// Typed helper for the `filter_expression` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpression {
  const BudgetsBudgetFilterExpression({
    this.and,
    this.costCategories,
    this.dimensions,
    this.not,
    this.or,
    this.tags,
  });

  final List<BudgetsBudgetAnd>? and;

  final BudgetsBudgetCostCategories? costCategories;

  final BudgetsBudgetDimensions? dimensions;

  final BudgetsBudgetNot? not;

  final List<BudgetsBudgetOr>? or;

  final BudgetsBudgetFilterExpressionTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_categories': ?costCategories?.encode(),
    'dimensions': ?dimensions?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter_expression.and` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetAnd {
  const BudgetsBudgetAnd({
    this.and,
    this.costCategories,
    this.dimensions,
    this.not,
    this.or,
    this.tags,
  });

  final List<BudgetsBudgetAndAnd>? and;

  final BudgetsBudgetAndCostCategories? costCategories;

  final BudgetsBudgetAndDimensions? dimensions;

  final BudgetsBudgetAndNot? not;

  final List<BudgetsBudgetAndOr>? or;

  final BudgetsBudgetAndTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_categories': ?costCategories?.encode(),
    'dimensions': ?dimensions?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter_expression.and.and` block of
/// `aws_budgets_budget` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BudgetsBudgetAndAnd {
  const BudgetsBudgetAndAnd({this.costCategories, this.dimensions, this.tags});

  final BudgetsBudgetAndCostCategories? costCategories;

  final BudgetsBudgetAndDimensions? dimensions;

  final BudgetsBudgetAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_categories': ?costCategories?.encode(),
    'dimensions': ?dimensions?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter_expression.and.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BudgetsBudgetAndCostCategories {
  const BudgetsBudgetAndCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<String>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'match_options': ?matchOptions?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BudgetsBudgetAndDimensions {
  const BudgetsBudgetAndDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>>? matchOptions;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'match_options': ?matchOptions?.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BudgetsBudgetAndTags {
  const BudgetsBudgetAndTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<String>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'match_options': ?matchOptions?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.not` block of
/// `aws_budgets_budget` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BudgetsBudgetAndNot {
  const BudgetsBudgetAndNot({this.costCategories, this.dimensions, this.tags});

  final BudgetsBudgetAndCostCategories? costCategories;

  final BudgetsBudgetAndDimensions? dimensions;

  final BudgetsBudgetAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_categories': ?costCategories?.encode(),
    'dimensions': ?dimensions?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter_expression.and.or` block of
/// `aws_budgets_budget` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BudgetsBudgetAndOr {
  const BudgetsBudgetAndOr({this.costCategories, this.dimensions, this.tags});

  final BudgetsBudgetAndCostCategories? costCategories;

  final BudgetsBudgetAndDimensions? dimensions;

  final BudgetsBudgetAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_categories': ?costCategories?.encode(),
    'dimensions': ?dimensions?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter_expression.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetCostCategories {
  const BudgetsBudgetCostCategories({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final List<TfArg<BudgetsBudgetMatchOptions>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `match_options` — derived from the provider schema description.
enum BudgetsBudgetMatchOptions implements TerraformEnum {
  equals('EQUALS'),
  absent('ABSENT'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL'),
  caseSensitive('CASE_SENSITIVE'),
  caseInsensitive('CASE_INSENSITIVE');

  const BudgetsBudgetMatchOptions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `filter_expression.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetDimensions {
  const BudgetsBudgetDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<BudgetsBudgetKey> key;

  final List<TfArg<BudgetsBudgetMatchOptions>>? matchOptions;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum BudgetsBudgetKey implements TerraformEnum {
  az('AZ'),
  instanceType('INSTANCE_TYPE'),
  linkedAccount('LINKED_ACCOUNT'),
  linkedAccountName('LINKED_ACCOUNT_NAME'),
  operation('OPERATION'),
  purchaseType('PURCHASE_TYPE'),
  region('REGION'),
  service('SERVICE'),
  serviceCode('SERVICE_CODE'),
  usageType('USAGE_TYPE'),
  usageTypeGroup('USAGE_TYPE_GROUP'),
  recordType('RECORD_TYPE'),
  operatingSystem('OPERATING_SYSTEM'),
  tenancy('TENANCY'),
  scope('SCOPE'),
  platform('PLATFORM'),
  subscriptionId('SUBSCRIPTION_ID'),
  legalEntityName('LEGAL_ENTITY_NAME'),
  invoicingEntity('INVOICING_ENTITY'),
  deploymentOption('DEPLOYMENT_OPTION'),
  databaseEngine('DATABASE_ENGINE'),
  cacheEngine('CACHE_ENGINE'),
  instanceTypeFamily('INSTANCE_TYPE_FAMILY'),
  billingEntity('BILLING_ENTITY'),
  reservationId('RESERVATION_ID'),
  resourceId('RESOURCE_ID'),
  rightsizingType('RIGHTSIZING_TYPE'),
  savingsPlansType('SAVINGS_PLANS_TYPE'),
  savingsPlanArn('SAVINGS_PLAN_ARN'),
  paymentOption('PAYMENT_OPTION'),
  reservationModified('RESERVATION_MODIFIED'),
  tagKey('TAG_KEY'),
  costCategoryName('COST_CATEGORY_NAME');

  const BudgetsBudgetKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `filter_expression.not` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetNot {
  const BudgetsBudgetNot({
    this.and,
    this.costCategories,
    this.dimensions,
    this.not,
    this.or,
    this.tags,
  });

  final List<BudgetsBudgetAndAnd>? and;

  final BudgetsBudgetAndCostCategories? costCategories;

  final BudgetsBudgetAndDimensions? dimensions;

  final BudgetsBudgetAndNot? not;

  final List<BudgetsBudgetAndOr>? or;

  final BudgetsBudgetAndTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_categories': ?costCategories?.encode(),
    'dimensions': ?dimensions?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter_expression.or` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetOr {
  const BudgetsBudgetOr({
    this.and,
    this.costCategories,
    this.dimensions,
    this.not,
    this.or,
    this.tags,
  });

  final List<BudgetsBudgetAndAnd>? and;

  final BudgetsBudgetAndCostCategories? costCategories;

  final BudgetsBudgetAndDimensions? dimensions;

  final BudgetsBudgetAndNot? not;

  final List<BudgetsBudgetAndOr>? or;

  final BudgetsBudgetAndTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_categories': ?costCategories?.encode(),
    'dimensions': ?dimensions?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `filter_expression.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionTags {
  const BudgetsBudgetFilterExpressionTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final List<TfArg<BudgetsBudgetMatchOptions>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `notification` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetNotification {
  const BudgetsBudgetNotification({
    required this.comparisonOperator,
    required this.notificationType,
    this.subscriberEmailAddresses,
    this.subscriberSnsTopicArns,
    required this.threshold,
    required this.thresholdType,
  });

  final TfArg<BudgetsBudgetComparisonOperator> comparisonOperator;

  final TfArg<BudgetsBudgetNotificationType> notificationType;

  final TfArg<List<String>>? subscriberEmailAddresses;

  final TfArg<List<String>>? subscriberSnsTopicArns;

  final TfArg<num> threshold;

  final TfArg<BudgetsBudgetThresholdType> thresholdType;

  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'notification_type': notificationType.toTfJson(),
    'subscriber_email_addresses': ?subscriberEmailAddresses?.toTfJson(),
    'subscriber_sns_topic_arns': ?subscriberSnsTopicArns?.toTfJson(),
    'threshold': threshold.toTfJson(),
    'threshold_type': thresholdType.toTfJson(),
  };
}

/// `comparison_operator` — derived from the provider schema description.
enum BudgetsBudgetComparisonOperator implements TerraformEnum {
  greaterThan('GREATER_THAN'),
  lessThan('LESS_THAN'),
  equalTo('EQUAL_TO');

  const BudgetsBudgetComparisonOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `notification_type` — derived from the provider schema description.
enum BudgetsBudgetNotificationType implements TerraformEnum {
  actual('ACTUAL'),
  forecasted('FORECASTED');

  const BudgetsBudgetNotificationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `threshold_type` — derived from the provider schema description.
enum BudgetsBudgetThresholdType implements TerraformEnum {
  percentage('PERCENTAGE'),
  absoluteValue('ABSOLUTE_VALUE');

  const BudgetsBudgetThresholdType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `planned_limit` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetPlannedLimit {
  const BudgetsBudgetPlannedLimit({
    required this.amount,
    required this.startTime,
    required this.unit,
  });

  final TfArg<String> amount;

  final TfArg<String> startTime;

  final TfArg<String> unit;

  Map<String, Object?> encode() => {
    'amount': amount.toTfJson(),
    'start_time': startTime.toTfJson(),
    'unit': unit.toTfJson(),
  };
}

/// Factory wrapper for `aws_budgets_budget`.
final class AwsBudgetsBudget extends Resource {
  static const String tfType = 'aws_budgets_budget';

  AwsBudgetsBudget({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? billingViewArn,
    required TfArg<BudgetsBudgetBudgetType> budgetType,
    TfArg<String>? limitAmount,
    TfArg<String>? limitUnit,
    BudgetsBudgetMeasure? measure,
    BudgetsBudgetName? name,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timePeriodEnd,
    TfArg<String>? timePeriodStart,
    required TfArg<BudgetsBudgetTimeUnit> timeUnit,
    BudgetsBudgetAutoAdjustData? autoAdjustData,
    BudgetsBudgetScope? scope,
    List<BudgetsBudgetNotification>? notification,
    List<BudgetsBudgetPlannedLimit>? plannedLimit,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'billing_view_arn': ?billingViewArn,
           'budget_type': budgetType,
           'limit_amount': ?limitAmount,
           'limit_unit': ?limitUnit,
           ...?measure?.argMap,
           ...?name?.argMap,
           'tags': ?tags,
           'time_period_end': ?timePeriodEnd,
           'time_period_start': ?timePeriodStart,
           'time_unit': timeUnit,
           if (autoAdjustData != null)
             'auto_adjust_data': TfArg.literal(autoAdjustData.encode()),
           ...?scope?.argMap,
           if (notification != null)
             'notification': TfArg.literal([
               for (final e in notification) e.encode(),
             ]),
           if (plannedLimit != null)
             'planned_limit': TfArg.literal([
               for (final e in plannedLimit) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBudgetsBudgetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBudgetsBudget>`.
  RefTo<AwsBudgetsBudget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `billing_view_arn` attribute.
  TfRef<String> get billingViewArnRef =>
      TfRef.attribute<String>(this, 'billing_view_arn');

  /// Reference to `budget_type` attribute.
  TfRef<String> get budgetTypeRef =>
      TfRef.attribute<String>(this, 'budget_type');

  /// Reference to `limit_amount` attribute.
  TfRef<String> get limitAmountRef =>
      TfRef.attribute<String>(this, 'limit_amount');

  /// Reference to `limit_unit` attribute.
  TfRef<String> get limitUnitRef => TfRef.attribute<String>(this, 'limit_unit');

  /// Reference to `metrics` attribute.
  TfRef<List<String>> get metricsRef =>
      TfRef.attribute<List<String>>(this, 'metrics');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_period_end` attribute.
  TfRef<String> get timePeriodEndRef =>
      TfRef.attribute<String>(this, 'time_period_end');

  /// Reference to `time_period_start` attribute.
  TfRef<String> get timePeriodStartRef =>
      TfRef.attribute<String>(this, 'time_period_start');

  /// Reference to `time_unit` attribute.
  TfRef<String> get timeUnitRef => TfRef.attribute<String>(this, 'time_unit');
}
