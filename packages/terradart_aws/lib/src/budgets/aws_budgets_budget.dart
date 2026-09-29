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
sealed class BudgetsBudgetCostFilterOrFilterExpression {
  const BudgetsBudgetCostFilterOrFilterExpression();

  /// Sets `cost_filter`.
  const factory BudgetsBudgetCostFilterOrFilterExpression.costFilter(
    List<BudgetsBudgetCostFilter> costFilter,
  ) = BudgetsBudgetCostFilterOrFilterExpressionCostFilter;

  /// Sets `filter_expression`.
  const factory BudgetsBudgetCostFilterOrFilterExpression.filterExpression(
    BudgetsBudgetFilterExpression filterExpression,
  ) = BudgetsBudgetCostFilterOrFilterExpressionFilterExpression;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BudgetsBudgetCostFilterOrFilterExpression.costFilter] choice: sets `cost_filter`.
final class BudgetsBudgetCostFilterOrFilterExpressionCostFilter
    extends BudgetsBudgetCostFilterOrFilterExpression {
  const BudgetsBudgetCostFilterOrFilterExpressionCostFilter(this.costFilter);

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

/// The [BudgetsBudgetCostFilterOrFilterExpression.filterExpression] choice: sets `filter_expression`.
final class BudgetsBudgetCostFilterOrFilterExpressionFilterExpression
    extends BudgetsBudgetCostFilterOrFilterExpression {
  const BudgetsBudgetCostFilterOrFilterExpressionFilterExpression(
    this.filterExpression,
  );

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
sealed class BudgetsBudgetCostTypesOrMetrics {
  const BudgetsBudgetCostTypesOrMetrics();

  /// Sets `cost_types`.
  const factory BudgetsBudgetCostTypesOrMetrics.costTypes(
    BudgetsBudgetCostTypes costTypes,
  ) = BudgetsBudgetCostTypesOrMetricsCostTypes;

  /// Sets `metrics`.
  const factory BudgetsBudgetCostTypesOrMetrics.metrics(
    List<TfArg<BudgetsBudgetMetrics>> metrics,
  ) = BudgetsBudgetCostTypesOrMetricsMetrics;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BudgetsBudgetCostTypesOrMetrics.costTypes] choice: sets `cost_types`.
final class BudgetsBudgetCostTypesOrMetricsCostTypes
    extends BudgetsBudgetCostTypesOrMetrics {
  const BudgetsBudgetCostTypesOrMetricsCostTypes(this.costTypes);

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

/// The [BudgetsBudgetCostTypesOrMetrics.metrics] choice: sets `metrics`.
final class BudgetsBudgetCostTypesOrMetricsMetrics
    extends BudgetsBudgetCostTypesOrMetrics {
  const BudgetsBudgetCostTypesOrMetricsMetrics(this.metrics);

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
      BudgetsBudgetNameName;

  /// Sets `name_prefix`.
  const factory BudgetsBudgetName.namePrefix(TfArg<String> namePrefix) =
      BudgetsBudgetNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BudgetsBudgetName.name] choice: sets `name`.
final class BudgetsBudgetNameName extends BudgetsBudgetName {
  const BudgetsBudgetNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [BudgetsBudgetName.namePrefix] choice: sets `name_prefix`.
final class BudgetsBudgetNameNamePrefix extends BudgetsBudgetName {
  const BudgetsBudgetNameNamePrefix(this.namePrefix);

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

  final TfArg<BudgetsBudgetAutoAdjustDataAutoAdjustType> autoAdjustType;

  final BudgetsBudgetAutoAdjustDataHistoricalOptions? historicalOptions;

  Map<String, Object?> encode() => {
    'auto_adjust_type': autoAdjustType.toTfJson(),
    if (historicalOptions != null)
      'historical_options': historicalOptions!.encode(),
  };
}

/// `auto_adjust_type` — derived from the provider schema description.
enum BudgetsBudgetAutoAdjustDataAutoAdjustType implements TerraformEnum {
  historical('HISTORICAL'),
  forecast('FORECAST');

  const BudgetsBudgetAutoAdjustDataAutoAdjustType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `auto_adjust_data.historical_options` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetAutoAdjustDataHistoricalOptions {
  const BudgetsBudgetAutoAdjustDataHistoricalOptions({
    required this.budgetAdjustmentPeriod,
  });

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

  final TfArg<List<Object?>> values;

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
    if (includeCredit != null) 'include_credit': includeCredit!.toTfJson(),
    if (includeDiscount != null)
      'include_discount': includeDiscount!.toTfJson(),
    if (includeOtherSubscription != null)
      'include_other_subscription': includeOtherSubscription!.toTfJson(),
    if (includeRecurring != null)
      'include_recurring': includeRecurring!.toTfJson(),
    if (includeRefund != null) 'include_refund': includeRefund!.toTfJson(),
    if (includeSubscription != null)
      'include_subscription': includeSubscription!.toTfJson(),
    if (includeSupport != null) 'include_support': includeSupport!.toTfJson(),
    if (includeTax != null) 'include_tax': includeTax!.toTfJson(),
    if (includeUpfront != null) 'include_upfront': includeUpfront!.toTfJson(),
    if (useAmortized != null) 'use_amortized': useAmortized!.toTfJson(),
    if (useBlended != null) 'use_blended': useBlended!.toTfJson(),
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

  final List<BudgetsBudgetFilterExpressionAnd>? and;

  final BudgetsBudgetFilterExpressionCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionDimensions? dimensions;

  final BudgetsBudgetFilterExpressionNot? not;

  final List<BudgetsBudgetFilterExpressionOr>? or;

  final BudgetsBudgetFilterExpressionTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.and` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAnd {
  const BudgetsBudgetFilterExpressionAnd({
    this.and,
    this.costCategories,
    this.dimensions,
    this.not,
    this.or,
    this.tags,
  });

  final List<BudgetsBudgetFilterExpressionAndAnd>? and;

  final BudgetsBudgetFilterExpressionAndCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionAndDimensions? dimensions;

  final BudgetsBudgetFilterExpressionAndNot? not;

  final List<BudgetsBudgetFilterExpressionAndOr>? or;

  final BudgetsBudgetFilterExpressionAndTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.and.and` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndAnd {
  const BudgetsBudgetFilterExpressionAndAnd({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionAndAndCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionAndAndDimensions? dimensions;

  final BudgetsBudgetFilterExpressionAndAndTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.and.and.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndAndCostCategories {
  const BudgetsBudgetFilterExpressionAndAndCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.and.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndAndDimensions {
  const BudgetsBudgetFilterExpressionAndAndDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.and.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndAndTags {
  const BudgetsBudgetFilterExpressionAndAndTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndCostCategories {
  const BudgetsBudgetFilterExpressionAndCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndDimensions {
  const BudgetsBudgetFilterExpressionAndDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.not` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndNot {
  const BudgetsBudgetFilterExpressionAndNot({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionAndNotCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionAndNotDimensions? dimensions;

  final BudgetsBudgetFilterExpressionAndNotTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.and.not.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndNotCostCategories {
  const BudgetsBudgetFilterExpressionAndNotCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.not.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndNotDimensions {
  const BudgetsBudgetFilterExpressionAndNotDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.not.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndNotTags {
  const BudgetsBudgetFilterExpressionAndNotTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.or` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndOr {
  const BudgetsBudgetFilterExpressionAndOr({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionAndOrCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionAndOrDimensions? dimensions;

  final BudgetsBudgetFilterExpressionAndOrTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.and.or.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndOrCostCategories {
  const BudgetsBudgetFilterExpressionAndOrCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.or.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndOrDimensions {
  const BudgetsBudgetFilterExpressionAndOrDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.or.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndOrTags {
  const BudgetsBudgetFilterExpressionAndOrTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.and.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionAndTags {
  const BudgetsBudgetFilterExpressionAndTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionCostCategories {
  const BudgetsBudgetFilterExpressionCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final List<TfArg<BudgetsBudgetFilterExpressionCostCategoriesMatchOptions>>?
  matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// `match_options` — derived from the provider schema description.
enum BudgetsBudgetFilterExpressionCostCategoriesMatchOptions
    implements TerraformEnum {
  equals('EQUALS'),
  absent('ABSENT'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL'),
  caseSensitive('CASE_SENSITIVE'),
  caseInsensitive('CASE_INSENSITIVE');

  const BudgetsBudgetFilterExpressionCostCategoriesMatchOptions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `filter_expression.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionDimensions {
  const BudgetsBudgetFilterExpressionDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<BudgetsBudgetFilterExpressionDimensionsKey> key;

  final List<TfArg<BudgetsBudgetFilterExpressionDimensionsMatchOptions>>?
  matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': values.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum BudgetsBudgetFilterExpressionDimensionsKey implements TerraformEnum {
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

  const BudgetsBudgetFilterExpressionDimensionsKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// `match_options` — derived from the provider schema description.
enum BudgetsBudgetFilterExpressionDimensionsMatchOptions
    implements TerraformEnum {
  equals('EQUALS'),
  absent('ABSENT'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL'),
  caseSensitive('CASE_SENSITIVE'),
  caseInsensitive('CASE_INSENSITIVE');

  const BudgetsBudgetFilterExpressionDimensionsMatchOptions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `filter_expression.not` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNot {
  const BudgetsBudgetFilterExpressionNot({
    this.and,
    this.costCategories,
    this.dimensions,
    this.not,
    this.or,
    this.tags,
  });

  final List<BudgetsBudgetFilterExpressionNotAnd>? and;

  final BudgetsBudgetFilterExpressionNotCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionNotDimensions? dimensions;

  final BudgetsBudgetFilterExpressionNotNot? not;

  final List<BudgetsBudgetFilterExpressionNotOr>? or;

  final BudgetsBudgetFilterExpressionNotTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.not.and` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotAnd {
  const BudgetsBudgetFilterExpressionNotAnd({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionNotAndCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionNotAndDimensions? dimensions;

  final BudgetsBudgetFilterExpressionNotAndTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.not.and.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotAndCostCategories {
  const BudgetsBudgetFilterExpressionNotAndCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.and.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotAndDimensions {
  const BudgetsBudgetFilterExpressionNotAndDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.and.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotAndTags {
  const BudgetsBudgetFilterExpressionNotAndTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotCostCategories {
  const BudgetsBudgetFilterExpressionNotCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotDimensions {
  const BudgetsBudgetFilterExpressionNotDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.not` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotNot {
  const BudgetsBudgetFilterExpressionNotNot({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionNotNotCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionNotNotDimensions? dimensions;

  final BudgetsBudgetFilterExpressionNotNotTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.not.not.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotNotCostCategories {
  const BudgetsBudgetFilterExpressionNotNotCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.not.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotNotDimensions {
  const BudgetsBudgetFilterExpressionNotNotDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.not.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotNotTags {
  const BudgetsBudgetFilterExpressionNotNotTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.or` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotOr {
  const BudgetsBudgetFilterExpressionNotOr({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionNotOrCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionNotOrDimensions? dimensions;

  final BudgetsBudgetFilterExpressionNotOrTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.not.or.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotOrCostCategories {
  const BudgetsBudgetFilterExpressionNotOrCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.or.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotOrDimensions {
  const BudgetsBudgetFilterExpressionNotOrDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.or.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotOrTags {
  const BudgetsBudgetFilterExpressionNotOrTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.not.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionNotTags {
  const BudgetsBudgetFilterExpressionNotTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOr {
  const BudgetsBudgetFilterExpressionOr({
    this.and,
    this.costCategories,
    this.dimensions,
    this.not,
    this.or,
    this.tags,
  });

  final List<BudgetsBudgetFilterExpressionOrAnd>? and;

  final BudgetsBudgetFilterExpressionOrCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionOrDimensions? dimensions;

  final BudgetsBudgetFilterExpressionOrNot? not;

  final List<BudgetsBudgetFilterExpressionOrOr>? or;

  final BudgetsBudgetFilterExpressionOrTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.or.and` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrAnd {
  const BudgetsBudgetFilterExpressionOrAnd({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionOrAndCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionOrAndDimensions? dimensions;

  final BudgetsBudgetFilterExpressionOrAndTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.or.and.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrAndCostCategories {
  const BudgetsBudgetFilterExpressionOrAndCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.and.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrAndDimensions {
  const BudgetsBudgetFilterExpressionOrAndDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.and.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrAndTags {
  const BudgetsBudgetFilterExpressionOrAndTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrCostCategories {
  const BudgetsBudgetFilterExpressionOrCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrDimensions {
  const BudgetsBudgetFilterExpressionOrDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.not` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrNot {
  const BudgetsBudgetFilterExpressionOrNot({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionOrNotCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionOrNotDimensions? dimensions;

  final BudgetsBudgetFilterExpressionOrNotTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.or.not.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrNotCostCategories {
  const BudgetsBudgetFilterExpressionOrNotCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.not.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrNotDimensions {
  const BudgetsBudgetFilterExpressionOrNotDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.not.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrNotTags {
  const BudgetsBudgetFilterExpressionOrNotTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.or` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrOr {
  const BudgetsBudgetFilterExpressionOrOr({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  final BudgetsBudgetFilterExpressionOrOrCostCategories? costCategories;

  final BudgetsBudgetFilterExpressionOrOrDimensions? dimensions;

  final BudgetsBudgetFilterExpressionOrOrTags? tags;

  Map<String, Object?> encode() => {
    if (costCategories != null) 'cost_categories': costCategories!.encode(),
    if (dimensions != null) 'dimensions': dimensions!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `filter_expression.or.or.cost_categories` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrOrCostCategories {
  const BudgetsBudgetFilterExpressionOrOrCostCategories({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.or.dimensions` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrOrDimensions {
  const BudgetsBudgetFilterExpressionOrOrDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.or.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrOrTags {
  const BudgetsBudgetFilterExpressionOrOrTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `filter_expression.or.tags` block of
/// `aws_budgets_budget` (derived from provider schema).
@immutable
final class BudgetsBudgetFilterExpressionOrTags {
  const BudgetsBudgetFilterExpressionOrTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
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

  final List<TfArg<BudgetsBudgetFilterExpressionTagsMatchOptions>>?
  matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// `match_options` — derived from the provider schema description.
enum BudgetsBudgetFilterExpressionTagsMatchOptions implements TerraformEnum {
  equals('EQUALS'),
  absent('ABSENT'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL'),
  caseSensitive('CASE_SENSITIVE'),
  caseInsensitive('CASE_INSENSITIVE');

  const BudgetsBudgetFilterExpressionTagsMatchOptions(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<BudgetsBudgetNotificationComparisonOperator> comparisonOperator;

  final TfArg<BudgetsBudgetNotificationNotificationType> notificationType;

  final TfArg<List<Object?>>? subscriberEmailAddresses;

  final TfArg<List<Object?>>? subscriberSnsTopicArns;

  final TfArg<num> threshold;

  final TfArg<BudgetsBudgetNotificationThresholdType> thresholdType;

  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'notification_type': notificationType.toTfJson(),
    if (subscriberEmailAddresses != null)
      'subscriber_email_addresses': subscriberEmailAddresses!.toTfJson(),
    if (subscriberSnsTopicArns != null)
      'subscriber_sns_topic_arns': subscriberSnsTopicArns!.toTfJson(),
    'threshold': threshold.toTfJson(),
    'threshold_type': thresholdType.toTfJson(),
  };
}

/// `comparison_operator` — derived from the provider schema description.
enum BudgetsBudgetNotificationComparisonOperator implements TerraformEnum {
  greaterThan('GREATER_THAN'),
  lessThan('LESS_THAN'),
  equalTo('EQUAL_TO');

  const BudgetsBudgetNotificationComparisonOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `notification_type` — derived from the provider schema description.
enum BudgetsBudgetNotificationNotificationType implements TerraformEnum {
  actual('ACTUAL'),
  forecasted('FORECASTED');

  const BudgetsBudgetNotificationNotificationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `threshold_type` — derived from the provider schema description.
enum BudgetsBudgetNotificationThresholdType implements TerraformEnum {
  percentage('PERCENTAGE'),
  absoluteValue('ABSOLUTE_VALUE');

  const BudgetsBudgetNotificationThresholdType(this.terraformValue);
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
    BudgetsBudgetCostTypesOrMetrics? costTypesOrMetrics,
    BudgetsBudgetName? name,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timePeriodEnd,
    TfArg<String>? timePeriodStart,
    required TfArg<BudgetsBudgetTimeUnit> timeUnit,
    BudgetsBudgetAutoAdjustData? autoAdjustData,
    BudgetsBudgetCostFilterOrFilterExpression? costFilterOrFilterExpression,
    List<BudgetsBudgetNotification>? notification,
    List<BudgetsBudgetPlannedLimit>? plannedLimit,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (billingViewArn != null) 'billing_view_arn': billingViewArn,
           'budget_type': budgetType,
           if (limitAmount != null) 'limit_amount': limitAmount,
           if (limitUnit != null) 'limit_unit': limitUnit,
           ...?costTypesOrMetrics?.argMap,
           ...?name?.argMap,
           if (tags != null) 'tags': tags,
           if (timePeriodEnd != null) 'time_period_end': timePeriodEnd,
           if (timePeriodStart != null) 'time_period_start': timePeriodStart,
           'time_unit': timeUnit,
           if (autoAdjustData != null)
             'auto_adjust_data': TfArg.literal(autoAdjustData.encode()),
           ...?costFilterOrFilterExpression?.argMap,
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
}
