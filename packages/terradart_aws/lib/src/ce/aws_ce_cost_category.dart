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

  final TfArg<CeCostCategoryType>? type;

  final TfArg<String>? value;

  final CeCostCategoryInheritedValue? inheritedValue;

  final CeCostCategoryRuleRule? rule;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
    'inherited_value': ?inheritedValue?.encode(),
    'rule': ?rule?.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum CeCostCategoryType implements TerraformEnum {
  regular('REGULAR'),
  inheritedValue('INHERITED_VALUE');

  const CeCostCategoryType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.inherited_value` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryInheritedValue {
  const CeCostCategoryInheritedValue({this.dimensionKey, this.dimensionName});

  final TfArg<String>? dimensionKey;

  final TfArg<CeCostCategoryDimensionName>? dimensionName;

  Map<String, Object?> encode() => {
    'dimension_key': ?dimensionKey?.toTfJson(),
    'dimension_name': ?dimensionName?.toTfJson(),
  };
}

/// `dimension_name` — derived from the provider schema description.
enum CeCostCategoryDimensionName implements TerraformEnum {
  linkedAccountName('LINKED_ACCOUNT_NAME'),
  tag('TAG');

  const CeCostCategoryDimensionName(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<CeCostCategoryAnd>? and;

  final CeCostCategory? costCategory;

  final CeCostCategoryDimension? dimension;

  final CeCostCategoryNot? not;

  final List<CeCostCategoryOr>? or;

  final CeCostCategoryRuleTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `rule.rule.and` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryAnd {
  const CeCostCategoryAnd({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<CeCostCategoryAndAnd>? and;

  final CeCostCategoryAndCostCategory? costCategory;

  final CeCostCategoryAndDimension? dimension;

  final CeCostCategoryAndNot? not;

  final List<CeCostCategoryAndOr>? or;

  final CeCostCategoryAndTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `rule.rule.and.and` block of
/// `aws_ce_cost_category` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeCostCategoryAndAnd {
  const CeCostCategoryAndAnd({this.costCategory, this.dimension, this.tags});

  final CeCostCategoryAndCostCategory? costCategory;

  final CeCostCategoryAndDimension? dimension;

  final CeCostCategoryAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `rule.rule.and.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeCostCategoryAndCostCategory {
  const CeCostCategoryAndCostCategory({
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

/// Typed helper for the `rule.rule.and.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeCostCategoryAndDimension {
  const CeCostCategoryAndDimension({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<String>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'match_options': ?matchOptions?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `rule.rule.and.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeCostCategoryAndTags {
  const CeCostCategoryAndTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final TfArg<List<String>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'match_options': ?matchOptions?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `rule.rule.and.not` block of
/// `aws_ce_cost_category` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeCostCategoryAndNot {
  const CeCostCategoryAndNot({this.costCategory, this.dimension, this.tags});

  final CeCostCategoryAndCostCategory? costCategory;

  final CeCostCategoryAndDimension? dimension;

  final CeCostCategoryAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `rule.rule.and.or` block of
/// `aws_ce_cost_category` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeCostCategoryAndOr {
  const CeCostCategoryAndOr({this.costCategory, this.dimension, this.tags});

  final CeCostCategoryAndCostCategory? costCategory;

  final CeCostCategoryAndDimension? dimension;

  final CeCostCategoryAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `rule.rule.cost_category` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategory {
  const CeCostCategory({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final List<TfArg<CeCostCategoryMatchOptions>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `match_options` — derived from the provider schema description.
enum CeCostCategoryMatchOptions implements TerraformEnum {
  equals('EQUALS'),
  absent('ABSENT'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS'),
  caseSensitive('CASE_SENSITIVE'),
  caseInsensitive('CASE_INSENSITIVE'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL');

  const CeCostCategoryMatchOptions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.rule.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryDimension {
  const CeCostCategoryDimension({this.key, this.matchOptions, this.values});

  final TfArg<CeCostCategoryKey>? key;

  final List<TfArg<CeCostCategoryMatchOptions>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum CeCostCategoryKey implements TerraformEnum {
  az('AZ'),
  instanceType('INSTANCE_TYPE'),
  linkedAccount('LINKED_ACCOUNT'),
  payerAccount('PAYER_ACCOUNT'),
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
  agreementEndDateTimeAfter('AGREEMENT_END_DATE_TIME_AFTER'),
  agreementEndDateTimeBefore('AGREEMENT_END_DATE_TIME_BEFORE'),
  invoicingEntity('INVOICING_ENTITY'),
  anomalyTotalImpactAbsolute('ANOMALY_TOTAL_IMPACT_ABSOLUTE'),
  anomalyTotalImpactPercentage('ANOMALY_TOTAL_IMPACT_PERCENTAGE');

  const CeCostCategoryKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.rule.not` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryNot {
  const CeCostCategoryNot({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<CeCostCategoryAndAnd>? and;

  final CeCostCategoryAndCostCategory? costCategory;

  final CeCostCategoryAndDimension? dimension;

  final CeCostCategoryAndNot? not;

  final List<CeCostCategoryAndOr>? or;

  final CeCostCategoryAndTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `rule.rule.or` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryOr {
  const CeCostCategoryOr({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<CeCostCategoryAndAnd>? and;

  final CeCostCategoryAndCostCategory? costCategory;

  final CeCostCategoryAndDimension? dimension;

  final CeCostCategoryAndNot? not;

  final List<CeCostCategoryAndOr>? or;

  final CeCostCategoryAndTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `rule.rule.tags` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryRuleTags {
  const CeCostCategoryRuleTags({this.key, this.matchOptions, this.values});

  final TfArg<String>? key;

  final List<TfArg<CeCostCategoryMatchOptions>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
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

  final TfArg<CeCostCategoryMethod> method;

  final TfArg<String> source;

  final TfArg<List<String>> targets;

  final List<CeCostCategoryParameter>? parameter;

  Map<String, Object?> encode() => {
    'method': method.toTfJson(),
    'source': source.toTfJson(),
    'targets': targets.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// `method` — derived from the provider schema description.
enum CeCostCategoryMethod implements TerraformEnum {
  fixed('FIXED'),
  proportional('PROPORTIONAL'),
  even('EVEN');

  const CeCostCategoryMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `split_charge_rule.parameter` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryParameter {
  const CeCostCategoryParameter({this.type, this.values});

  final TfArg<CeCostCategoryParameterType>? type;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CeCostCategoryParameterType implements TerraformEnum {
  allocationPercentages('ALLOCATION_PERCENTAGES');

  const CeCostCategoryParameterType(this.terraformValue);
  @override
  final String terraformValue;
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
           'default_value': ?defaultValue,
           'effective_start': ?effectiveStart,
           'name': name,
           'rule_version': ruleVersion,
           'tags': ?tags,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
           if (splitChargeRule != null)
             'split_charge_rule': TfArg.literal([
               for (final e in splitChargeRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCeCostCategorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCeCostCategory>`.
  RefTo<AwsCeCostCategory> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `effective_end` attribute.
  TfRef<String> get effectiveEnd =>
      TfRef.attribute<String>(this, 'effective_end');

  /// Reference to `default_value` attribute.
  TfRef<String> get defaultValueRef =>
      TfRef.attribute<String>(this, 'default_value');

  /// Reference to `effective_start` attribute.
  TfRef<String> get effectiveStartRef =>
      TfRef.attribute<String>(this, 'effective_start');

  /// Reference to `rule_version` attribute.
  TfRef<String> get ruleVersionRef =>
      TfRef.attribute<String>(this, 'rule_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
