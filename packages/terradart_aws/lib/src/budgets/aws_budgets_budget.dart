// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_budgets_budget`.
const Set<String> _awsBudgetsBudgetSensitive = <String>{};

/// Budgets Budget enum for `budget_type`.
extension type const BudgetsBudgetType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetType.variable(String name) : this._(TfArg.variable(name));
  BudgetsBudgetType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetType.arg(TfArg<String> arg) : this._(arg);

  static const usage = BudgetsBudgetType._(TfArgLiteral('USAGE'));
  static const cost = BudgetsBudgetType._(TfArgLiteral('COST'));
  static const riUtilization = BudgetsBudgetType._(
    TfArgLiteral('RI_UTILIZATION'),
  );
  static const riCoverage = BudgetsBudgetType._(TfArgLiteral('RI_COVERAGE'));
  static const savingsPlansUtilization = BudgetsBudgetType._(
    TfArgLiteral('SAVINGS_PLANS_UTILIZATION'),
  );
  static const savingsPlansCoverage = BudgetsBudgetType._(
    TfArgLiteral('SAVINGS_PLANS_COVERAGE'),
  );

  static const List<BudgetsBudgetType> values = [
    usage,
    cost,
    riUtilization,
    riCoverage,
    savingsPlansUtilization,
    savingsPlansCoverage,
  ];
}

/// Budgets Budget enum for `metrics`.
extension type const BudgetsBudgetMetrics._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetMetrics.variable(String name) : this._(TfArg.variable(name));
  BudgetsBudgetMetrics.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetMetrics.arg(TfArg<String> arg) : this._(arg);

  static const blendedcost = BudgetsBudgetMetrics._(
    TfArgLiteral('BlendedCost'),
  );
  static const unblendedcost = BudgetsBudgetMetrics._(
    TfArgLiteral('UnblendedCost'),
  );
  static const amortizedcost = BudgetsBudgetMetrics._(
    TfArgLiteral('AmortizedCost'),
  );
  static const netunblendedcost = BudgetsBudgetMetrics._(
    TfArgLiteral('NetUnblendedCost'),
  );
  static const netamortizedcost = BudgetsBudgetMetrics._(
    TfArgLiteral('NetAmortizedCost'),
  );
  static const usagequantity = BudgetsBudgetMetrics._(
    TfArgLiteral('UsageQuantity'),
  );
  static const normalizedusageamount = BudgetsBudgetMetrics._(
    TfArgLiteral('NormalizedUsageAmount'),
  );
  static const hours = BudgetsBudgetMetrics._(TfArgLiteral('Hours'));

  static const List<BudgetsBudgetMetrics> values = [
    blendedcost,
    unblendedcost,
    amortizedcost,
    netunblendedcost,
    netamortizedcost,
    usagequantity,
    normalizedusageamount,
    hours,
  ];
}

/// Budgets Budget Time enum for `time_unit`.
extension type const BudgetsBudgetTimeUnit._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetTimeUnit.variable(String name) : this._(TfArg.variable(name));
  BudgetsBudgetTimeUnit.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetTimeUnit.arg(TfArg<String> arg) : this._(arg);

  static const daily = BudgetsBudgetTimeUnit._(TfArgLiteral('DAILY'));
  static const monthly = BudgetsBudgetTimeUnit._(TfArgLiteral('MONTHLY'));
  static const quarterly = BudgetsBudgetTimeUnit._(TfArgLiteral('QUARTERLY'));
  static const annually = BudgetsBudgetTimeUnit._(TfArgLiteral('ANNUALLY'));
  static const custom = BudgetsBudgetTimeUnit._(TfArgLiteral('CUSTOM'));

  static const List<BudgetsBudgetTimeUnit> values = [
    daily,
    monthly,
    quarterly,
    annually,
    custom,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BudgetsBudgetScope.costFilter] choice: sets `cost_filter`.
final class BudgetsBudgetScopeCostFilter extends BudgetsBudgetScope {
  const BudgetsBudgetScopeCostFilter(this.costFilter);

  final List<BudgetsBudgetCostFilter> costFilter;

  @internal
  @override
  String get blockKey => 'cost_filter';

  @internal
  @override
  Map<String, Object?> encode() => {
    'cost_filter': [for (final e in costFilter) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cost_filter': TfArg.literal([for (final e in costFilter) e.encode()]),
  };
}

/// The [BudgetsBudgetScope.filterExpression] choice: sets `filter_expression`.
final class BudgetsBudgetScopeFilterExpression extends BudgetsBudgetScope {
  const BudgetsBudgetScopeFilterExpression(this.filterExpression);

  final BudgetsBudgetFilterExpression filterExpression;

  @internal
  @override
  String get blockKey => 'filter_expression';

  @internal
  @override
  Map<String, Object?> encode() => {
    'filter_expression': filterExpression.encode(),
  };

  @internal
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
    List<BudgetsBudgetMetrics> metrics,
  ) = BudgetsBudgetMeasureMetrics;

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

/// The [BudgetsBudgetMeasure.costTypes] choice: sets `cost_types`.
final class BudgetsBudgetMeasureCostTypes extends BudgetsBudgetMeasure {
  const BudgetsBudgetMeasureCostTypes(this.costTypes);

  final BudgetsBudgetCostTypes costTypes;

  @internal
  @override
  String get blockKey => 'cost_types';

  @internal
  @override
  Map<String, Object?> encode() => {'cost_types': costTypes.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cost_types': TfArg.literal(costTypes.encode()),
  };
}

/// The [BudgetsBudgetMeasure.metrics] choice: sets `metrics`.
final class BudgetsBudgetMeasureMetrics extends BudgetsBudgetMeasure {
  const BudgetsBudgetMeasureMetrics(this.metrics);

  final List<BudgetsBudgetMetrics> metrics;

  @internal
  @override
  String get blockKey => 'metrics';

  @internal
  @override
  Map<String, Object?> encode() => {
    'metrics': [for (final e in metrics) e.toTfJson()],
  };

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BudgetsBudgetName.name] choice: sets `name`.
final class BudgetsBudgetNameChoice extends BudgetsBudgetName {
  const BudgetsBudgetNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [BudgetsBudgetName.namePrefix] choice: sets `name_prefix`.
final class BudgetsBudgetNamePrefix extends BudgetsBudgetName {
  const BudgetsBudgetNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
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

  final BudgetsBudgetAutoAdjustType autoAdjustType;

  final BudgetsBudgetHistoricalOptions? historicalOptions;

  @internal
  Map<String, Object?> encode() => {
    'auto_adjust_type': autoAdjustType.toTfJson(),
    'historical_options': ?historicalOptions?.encode(),
  };
}

/// `auto_adjust_type` — derived from the provider schema description.
extension type const BudgetsBudgetAutoAdjustType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetAutoAdjustType.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetAutoAdjustType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetAutoAdjustType.arg(TfArg<String> arg) : this._(arg);

  static const historical = BudgetsBudgetAutoAdjustType._(
    TfArgLiteral('HISTORICAL'),
  );
  static const forecast = BudgetsBudgetAutoAdjustType._(
    TfArgLiteral('FORECAST'),
  );

  static const List<BudgetsBudgetAutoAdjustType> values = [
    historical,
    forecast,
  ];
}

/// Typed helper for the `auto_adjust_data.historical_options` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetHistoricalOptions {
  const BudgetsBudgetHistoricalOptions({required this.budgetAdjustmentPeriod});

  final TfArg<num> budgetAdjustmentPeriod;

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final List<BudgetsBudgetMatchOptions>? matchOptions;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `match_options` — derived from the provider schema description.
extension type const BudgetsBudgetMatchOptions._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetMatchOptions.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetMatchOptions.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetMatchOptions.arg(TfArg<String> arg) : this._(arg);

  static const equals = BudgetsBudgetMatchOptions._(TfArgLiteral('EQUALS'));
  static const absent = BudgetsBudgetMatchOptions._(TfArgLiteral('ABSENT'));
  static const startsWith = BudgetsBudgetMatchOptions._(
    TfArgLiteral('STARTS_WITH'),
  );
  static const endsWith = BudgetsBudgetMatchOptions._(
    TfArgLiteral('ENDS_WITH'),
  );
  static const contains = BudgetsBudgetMatchOptions._(TfArgLiteral('CONTAINS'));
  static const greaterThanOrEqual = BudgetsBudgetMatchOptions._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL'),
  );
  static const caseSensitive = BudgetsBudgetMatchOptions._(
    TfArgLiteral('CASE_SENSITIVE'),
  );
  static const caseInsensitive = BudgetsBudgetMatchOptions._(
    TfArgLiteral('CASE_INSENSITIVE'),
  );

  static const List<BudgetsBudgetMatchOptions> values = [
    equals,
    absent,
    startsWith,
    endsWith,
    contains,
    greaterThanOrEqual,
    caseSensitive,
    caseInsensitive,
  ];
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

  final BudgetsBudgetKey key;

  final List<BudgetsBudgetMatchOptions>? matchOptions;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
extension type const BudgetsBudgetKey._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetKey.variable(String name) : this._(TfArg.variable(name));
  BudgetsBudgetKey.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetKey.arg(TfArg<String> arg) : this._(arg);

  static const az = BudgetsBudgetKey._(TfArgLiteral('AZ'));
  static const instanceType = BudgetsBudgetKey._(TfArgLiteral('INSTANCE_TYPE'));
  static const linkedAccount = BudgetsBudgetKey._(
    TfArgLiteral('LINKED_ACCOUNT'),
  );
  static const linkedAccountName = BudgetsBudgetKey._(
    TfArgLiteral('LINKED_ACCOUNT_NAME'),
  );
  static const operation = BudgetsBudgetKey._(TfArgLiteral('OPERATION'));
  static const purchaseType = BudgetsBudgetKey._(TfArgLiteral('PURCHASE_TYPE'));
  static const region = BudgetsBudgetKey._(TfArgLiteral('REGION'));
  static const service = BudgetsBudgetKey._(TfArgLiteral('SERVICE'));
  static const serviceCode = BudgetsBudgetKey._(TfArgLiteral('SERVICE_CODE'));
  static const usageType = BudgetsBudgetKey._(TfArgLiteral('USAGE_TYPE'));
  static const usageTypeGroup = BudgetsBudgetKey._(
    TfArgLiteral('USAGE_TYPE_GROUP'),
  );
  static const recordType = BudgetsBudgetKey._(TfArgLiteral('RECORD_TYPE'));
  static const operatingSystem = BudgetsBudgetKey._(
    TfArgLiteral('OPERATING_SYSTEM'),
  );
  static const tenancy = BudgetsBudgetKey._(TfArgLiteral('TENANCY'));
  static const scope = BudgetsBudgetKey._(TfArgLiteral('SCOPE'));
  static const platform = BudgetsBudgetKey._(TfArgLiteral('PLATFORM'));
  static const subscriptionId = BudgetsBudgetKey._(
    TfArgLiteral('SUBSCRIPTION_ID'),
  );
  static const legalEntityName = BudgetsBudgetKey._(
    TfArgLiteral('LEGAL_ENTITY_NAME'),
  );
  static const invoicingEntity = BudgetsBudgetKey._(
    TfArgLiteral('INVOICING_ENTITY'),
  );
  static const deploymentOption = BudgetsBudgetKey._(
    TfArgLiteral('DEPLOYMENT_OPTION'),
  );
  static const databaseEngine = BudgetsBudgetKey._(
    TfArgLiteral('DATABASE_ENGINE'),
  );
  static const cacheEngine = BudgetsBudgetKey._(TfArgLiteral('CACHE_ENGINE'));
  static const instanceTypeFamily = BudgetsBudgetKey._(
    TfArgLiteral('INSTANCE_TYPE_FAMILY'),
  );
  static const billingEntity = BudgetsBudgetKey._(
    TfArgLiteral('BILLING_ENTITY'),
  );
  static const reservationId = BudgetsBudgetKey._(
    TfArgLiteral('RESERVATION_ID'),
  );
  static const resourceId = BudgetsBudgetKey._(TfArgLiteral('RESOURCE_ID'));
  static const rightsizingType = BudgetsBudgetKey._(
    TfArgLiteral('RIGHTSIZING_TYPE'),
  );
  static const savingsPlansType = BudgetsBudgetKey._(
    TfArgLiteral('SAVINGS_PLANS_TYPE'),
  );
  static const savingsPlanArn = BudgetsBudgetKey._(
    TfArgLiteral('SAVINGS_PLAN_ARN'),
  );
  static const paymentOption = BudgetsBudgetKey._(
    TfArgLiteral('PAYMENT_OPTION'),
  );
  static const reservationModified = BudgetsBudgetKey._(
    TfArgLiteral('RESERVATION_MODIFIED'),
  );
  static const tagKey = BudgetsBudgetKey._(TfArgLiteral('TAG_KEY'));
  static const costCategoryName = BudgetsBudgetKey._(
    TfArgLiteral('COST_CATEGORY_NAME'),
  );

  static const List<BudgetsBudgetKey> values = [
    az,
    instanceType,
    linkedAccount,
    linkedAccountName,
    operation,
    purchaseType,
    region,
    service,
    serviceCode,
    usageType,
    usageTypeGroup,
    recordType,
    operatingSystem,
    tenancy,
    scope,
    platform,
    subscriptionId,
    legalEntityName,
    invoicingEntity,
    deploymentOption,
    databaseEngine,
    cacheEngine,
    instanceTypeFamily,
    billingEntity,
    reservationId,
    resourceId,
    rightsizingType,
    savingsPlansType,
    savingsPlanArn,
    paymentOption,
    reservationModified,
    tagKey,
    costCategoryName,
  ];
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

  @internal
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

  @internal
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

  final List<BudgetsBudgetMatchOptions>? matchOptions;

  final TfArg<List<String>>? values;

  @internal
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

  final BudgetsBudgetComparisonOperator comparisonOperator;

  final BudgetsBudgetNotificationType notificationType;

  final TfArg<List<String>>? subscriberEmailAddresses;

  final TfArg<List<String>>? subscriberSnsTopicArns;

  final TfArg<num> threshold;

  final BudgetsBudgetThresholdType thresholdType;

  @internal
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
extension type const BudgetsBudgetComparisonOperator._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetComparisonOperator.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetComparisonOperator.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetComparisonOperator.arg(TfArg<String> arg) : this._(arg);

  static const greaterThan = BudgetsBudgetComparisonOperator._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const lessThan = BudgetsBudgetComparisonOperator._(
    TfArgLiteral('LESS_THAN'),
  );
  static const equalTo = BudgetsBudgetComparisonOperator._(
    TfArgLiteral('EQUAL_TO'),
  );

  static const List<BudgetsBudgetComparisonOperator> values = [
    greaterThan,
    lessThan,
    equalTo,
  ];
}

/// `notification_type` — derived from the provider schema description.
extension type const BudgetsBudgetNotificationType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetNotificationType.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetNotificationType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetNotificationType.arg(TfArg<String> arg) : this._(arg);

  static const actual = BudgetsBudgetNotificationType._(TfArgLiteral('ACTUAL'));
  static const forecasted = BudgetsBudgetNotificationType._(
    TfArgLiteral('FORECASTED'),
  );

  static const List<BudgetsBudgetNotificationType> values = [
    actual,
    forecasted,
  ];
}

/// `threshold_type` — derived from the provider schema description.
extension type const BudgetsBudgetThresholdType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetThresholdType.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetThresholdType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetThresholdType.arg(TfArg<String> arg) : this._(arg);

  static const percentage = BudgetsBudgetThresholdType._(
    TfArgLiteral('PERCENTAGE'),
  );
  static const absoluteValue = BudgetsBudgetThresholdType._(
    TfArgLiteral('ABSOLUTE_VALUE'),
  );

  static const List<BudgetsBudgetThresholdType> values = [
    percentage,
    absoluteValue,
  ];
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

  @internal
  Map<String, Object?> encode() => {
    'amount': amount.toTfJson(),
    'start_time': startTime.toTfJson(),
    'unit': unit.toTfJson(),
  };
}

/// Factory wrapper for `aws_budgets_budget`.
final class AwsBudgetsBudget extends Resource {
  static const String tfType = 'aws_budgets_budget';

  AwsBudgetsBudget(
    super.localName, {
    TfArg<String>? accountId,
    TfArg<String>? billingViewArn,
    required BudgetsBudgetType budgetType,
    TfArg<String>? limitAmount,
    TfArg<String>? limitUnit,
    BudgetsBudgetMeasure? measure,
    BudgetsBudgetName? name,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timePeriodEnd,
    TfArg<String>? timePeriodStart,
    required BudgetsBudgetTimeUnit timeUnit,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `billing_view_arn` attribute.
  TfRef<String> get billingViewArn =>
      TfRef.attribute<String>(this, 'billing_view_arn');

  /// Reference to `budget_type` attribute.
  TfRef<String> get budgetType => TfRef.attribute<String>(this, 'budget_type');

  /// Reference to `limit_amount` attribute.
  TfRef<String> get limitAmount =>
      TfRef.attribute<String>(this, 'limit_amount');

  /// Reference to `limit_unit` attribute.
  TfRef<String> get limitUnit => TfRef.attribute<String>(this, 'limit_unit');

  /// Reference to `metrics` attribute.
  TfRef<List<String>> get metrics =>
      TfRef.attribute<List<String>>(this, 'metrics');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_period_end` attribute.
  TfRef<String> get timePeriodEnd =>
      TfRef.attribute<String>(this, 'time_period_end');

  /// Reference to `time_period_start` attribute.
  TfRef<String> get timePeriodStart =>
      TfRef.attribute<String>(this, 'time_period_start');

  /// Reference to `time_unit` attribute.
  TfRef<String> get timeUnit => TfRef.attribute<String>(this, 'time_unit');
}
