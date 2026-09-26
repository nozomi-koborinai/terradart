// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_cost_category`.
const Set<String> _awsCeCostCategorySensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRule {
  const CeCostCategoryRule({
    this.type,
    this.value,
    this.inheritedValue,
    this.rule,
  });

  final TfArg<String>? type;

  final TfArg<String>? value;

  final CeCostCategoryRuleInheritedValue? inheritedValue;

  final CeCostCategoryRuleRule? rule;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (inheritedValue != null) 'inherited_value': inheritedValue!.encode(),
    if (rule != null) 'rule': rule!.encode(),
  };
}

/// Typed helper for the `rule.inherited_value` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleInheritedValue {
  const CeCostCategoryRuleInheritedValue({
    this.dimensionKey,
    this.dimensionName,
  });

  final TfArg<String>? dimensionKey;

  final TfArg<String>? dimensionName;

  Map<String, Object?> encode() => {
    if (dimensionKey != null) 'dimension_key': dimensionKey!.toTfJson(),
    if (dimensionName != null) 'dimension_name': dimensionName!.toTfJson(),
  };
}

/// Typed helper for the `rule.rule` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRule {
  const CeCostCategoryRuleRule({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<CeCostCategoryRuleRuleAnd>? and;

  final CeCostCategoryRuleRuleCostCategory? costCategory;

  final CeCostCategoryRuleRuleDimension? dimension;

  final CeCostCategoryRuleRuleNot? not;

  final List<CeCostCategoryRuleRuleOr>? or;

  final CeCostCategoryRuleRuleTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.and` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAnd {
  const CeCostCategoryRuleRuleAnd({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<CeCostCategoryRuleRuleAndAnd>? and;

  final CeCostCategoryRuleRuleAndCostCategory? costCategory;

  final CeCostCategoryRuleRuleAndDimension? dimension;

  final CeCostCategoryRuleRuleAndNot? not;

  final List<CeCostCategoryRuleRuleAndOr>? or;

  final CeCostCategoryRuleRuleAndTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.and.and` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndAnd {
  const CeCostCategoryRuleRuleAndAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleAndAndCostCategory? costCategory;

  final CeCostCategoryRuleRuleAndAndDimension? dimension;

  final CeCostCategoryRuleRuleAndAndTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.and.and.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndAndCostCategory {
  const CeCostCategoryRuleRuleAndAndCostCategory({
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

/// Typed helper for the `rule.rule.and.and.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndAndDimension {
  const CeCostCategoryRuleRuleAndAndDimension({
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

/// Typed helper for the `rule.rule.and.and.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndAndTags {
  const CeCostCategoryRuleRuleAndAndTags({
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

/// Typed helper for the `rule.rule.and.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndCostCategory {
  const CeCostCategoryRuleRuleAndCostCategory({
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

/// Typed helper for the `rule.rule.and.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndDimension {
  const CeCostCategoryRuleRuleAndDimension({
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

/// Typed helper for the `rule.rule.and.not` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndNot {
  const CeCostCategoryRuleRuleAndNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleAndNotCostCategory? costCategory;

  final CeCostCategoryRuleRuleAndNotDimension? dimension;

  final CeCostCategoryRuleRuleAndNotTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.and.not.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndNotCostCategory {
  const CeCostCategoryRuleRuleAndNotCostCategory({
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

/// Typed helper for the `rule.rule.and.not.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndNotDimension {
  const CeCostCategoryRuleRuleAndNotDimension({
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

/// Typed helper for the `rule.rule.and.not.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndNotTags {
  const CeCostCategoryRuleRuleAndNotTags({
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

/// Typed helper for the `rule.rule.and.or` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndOr {
  const CeCostCategoryRuleRuleAndOr({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleAndOrCostCategory? costCategory;

  final CeCostCategoryRuleRuleAndOrDimension? dimension;

  final CeCostCategoryRuleRuleAndOrTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.and.or.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndOrCostCategory {
  const CeCostCategoryRuleRuleAndOrCostCategory({
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

/// Typed helper for the `rule.rule.and.or.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndOrDimension {
  const CeCostCategoryRuleRuleAndOrDimension({
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

/// Typed helper for the `rule.rule.and.or.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndOrTags {
  const CeCostCategoryRuleRuleAndOrTags({
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

/// Typed helper for the `rule.rule.and.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleAndTags {
  const CeCostCategoryRuleRuleAndTags({
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

/// Typed helper for the `rule.rule.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleCostCategory {
  const CeCostCategoryRuleRuleCostCategory({
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

/// Typed helper for the `rule.rule.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleDimension {
  const CeCostCategoryRuleRuleDimension({
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

/// Typed helper for the `rule.rule.not` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNot {
  const CeCostCategoryRuleRuleNot({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<CeCostCategoryRuleRuleNotAnd>? and;

  final CeCostCategoryRuleRuleNotCostCategory? costCategory;

  final CeCostCategoryRuleRuleNotDimension? dimension;

  final CeCostCategoryRuleRuleNotNot? not;

  final List<CeCostCategoryRuleRuleNotOr>? or;

  final CeCostCategoryRuleRuleNotTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.not.and` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotAnd {
  const CeCostCategoryRuleRuleNotAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleNotAndCostCategory? costCategory;

  final CeCostCategoryRuleRuleNotAndDimension? dimension;

  final CeCostCategoryRuleRuleNotAndTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.not.and.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotAndCostCategory {
  const CeCostCategoryRuleRuleNotAndCostCategory({
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

/// Typed helper for the `rule.rule.not.and.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotAndDimension {
  const CeCostCategoryRuleRuleNotAndDimension({
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

/// Typed helper for the `rule.rule.not.and.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotAndTags {
  const CeCostCategoryRuleRuleNotAndTags({
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

/// Typed helper for the `rule.rule.not.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotCostCategory {
  const CeCostCategoryRuleRuleNotCostCategory({
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

/// Typed helper for the `rule.rule.not.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotDimension {
  const CeCostCategoryRuleRuleNotDimension({
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

/// Typed helper for the `rule.rule.not.not` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotNot {
  const CeCostCategoryRuleRuleNotNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleNotNotCostCategory? costCategory;

  final CeCostCategoryRuleRuleNotNotDimension? dimension;

  final CeCostCategoryRuleRuleNotNotTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.not.not.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotNotCostCategory {
  const CeCostCategoryRuleRuleNotNotCostCategory({
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

/// Typed helper for the `rule.rule.not.not.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotNotDimension {
  const CeCostCategoryRuleRuleNotNotDimension({
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

/// Typed helper for the `rule.rule.not.not.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotNotTags {
  const CeCostCategoryRuleRuleNotNotTags({
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

/// Typed helper for the `rule.rule.not.or` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotOr {
  const CeCostCategoryRuleRuleNotOr({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleNotOrCostCategory? costCategory;

  final CeCostCategoryRuleRuleNotOrDimension? dimension;

  final CeCostCategoryRuleRuleNotOrTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.not.or.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotOrCostCategory {
  const CeCostCategoryRuleRuleNotOrCostCategory({
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

/// Typed helper for the `rule.rule.not.or.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotOrDimension {
  const CeCostCategoryRuleRuleNotOrDimension({
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

/// Typed helper for the `rule.rule.not.or.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotOrTags {
  const CeCostCategoryRuleRuleNotOrTags({
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

/// Typed helper for the `rule.rule.not.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleNotTags {
  const CeCostCategoryRuleRuleNotTags({
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

/// Typed helper for the `rule.rule.or` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOr {
  const CeCostCategoryRuleRuleOr({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<CeCostCategoryRuleRuleOrAnd>? and;

  final CeCostCategoryRuleRuleOrCostCategory? costCategory;

  final CeCostCategoryRuleRuleOrDimension? dimension;

  final CeCostCategoryRuleRuleOrNot? not;

  final List<CeCostCategoryRuleRuleOrOr>? or;

  final CeCostCategoryRuleRuleOrTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.or.and` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrAnd {
  const CeCostCategoryRuleRuleOrAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleOrAndCostCategory? costCategory;

  final CeCostCategoryRuleRuleOrAndDimension? dimension;

  final CeCostCategoryRuleRuleOrAndTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.or.and.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrAndCostCategory {
  const CeCostCategoryRuleRuleOrAndCostCategory({
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

/// Typed helper for the `rule.rule.or.and.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrAndDimension {
  const CeCostCategoryRuleRuleOrAndDimension({
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

/// Typed helper for the `rule.rule.or.and.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrAndTags {
  const CeCostCategoryRuleRuleOrAndTags({
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

/// Typed helper for the `rule.rule.or.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrCostCategory {
  const CeCostCategoryRuleRuleOrCostCategory({
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

/// Typed helper for the `rule.rule.or.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrDimension {
  const CeCostCategoryRuleRuleOrDimension({
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

/// Typed helper for the `rule.rule.or.not` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrNot {
  const CeCostCategoryRuleRuleOrNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleOrNotCostCategory? costCategory;

  final CeCostCategoryRuleRuleOrNotDimension? dimension;

  final CeCostCategoryRuleRuleOrNotTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.or.not.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrNotCostCategory {
  const CeCostCategoryRuleRuleOrNotCostCategory({
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

/// Typed helper for the `rule.rule.or.not.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrNotDimension {
  const CeCostCategoryRuleRuleOrNotDimension({
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

/// Typed helper for the `rule.rule.or.not.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrNotTags {
  const CeCostCategoryRuleRuleOrNotTags({
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

/// Typed helper for the `rule.rule.or.or` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrOr {
  const CeCostCategoryRuleRuleOrOr({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeCostCategoryRuleRuleOrOrCostCategory? costCategory;

  final CeCostCategoryRuleRuleOrOrDimension? dimension;

  final CeCostCategoryRuleRuleOrOrTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `rule.rule.or.or.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrOrCostCategory {
  const CeCostCategoryRuleRuleOrOrCostCategory({
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

/// Typed helper for the `rule.rule.or.or.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrOrDimension {
  const CeCostCategoryRuleRuleOrOrDimension({
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

/// Typed helper for the `rule.rule.or.or.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrOrTags {
  const CeCostCategoryRuleRuleOrOrTags({
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

/// Typed helper for the `rule.rule.or.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleOrTags {
  const CeCostCategoryRuleRuleOrTags({
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

/// Typed helper for the `rule.rule.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleRuleTags {
  const CeCostCategoryRuleRuleTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `split_charge_rule` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategorySplitChargeRule {
  const CeCostCategorySplitChargeRule({
    required this.method,
    required this.source,
    required this.targets,
    this.parameter,
  });

  final TfArg<String> method;

  final TfArg<String> source;

  final TfArg<List<Object?>> targets;

  final List<CeCostCategorySplitChargeRuleParameter>? parameter;

  Map<String, Object?> encode() => {
    'method': method.toTfJson(),
    'source': source.toTfJson(),
    'targets': targets.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `split_charge_rule.parameter` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategorySplitChargeRuleParameter {
  const CeCostCategorySplitChargeRuleParameter({this.type, this.values});

  final TfArg<String>? type;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ce_cost_category`.
final class AwsCeCostCategory extends Resource {
  static const String tfType = 'aws_ce_cost_category';

  AwsCeCostCategory({
    required super.localName,
    TfArg<String>? defaultValue,
    TfArg<String>? effectiveStart,
    required TfArg<String> name,
    required TfArg<String> ruleVersion,
    TfArg<Map<String, String>>? tags,
    required List<CeCostCategoryRule> rule,
    List<CeCostCategorySplitChargeRule>? splitChargeRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultValue != null) 'default_value': defaultValue,
           if (effectiveStart != null) 'effective_start': effectiveStart,
           'name': name,
           'rule_version': ruleVersion,
           if (tags != null) 'tags': tags,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
           if (splitChargeRule != null)
             'split_charge_rule': TfArg.literal([
               for (final e in splitChargeRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCeCostCategorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `effective_end` attribute.
  TfRef<String> get effectiveEnd =>
      TfRef.attribute<String>(this, 'effective_end');
}
