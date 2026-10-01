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

  final CeCostCategoryType? type;

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
extension type const CeCostCategoryType._(TfArg<String> _)
    implements TfArg<String> {
  CeCostCategoryType.variable(String name) : this._(TfArg.variable(name));
  CeCostCategoryType.expression(String template)
    : this._(TfArg.expression(template));
  const CeCostCategoryType.arg(TfArg<String> arg) : this._(arg);

  static const regular = CeCostCategoryType._(TfArgLiteral('REGULAR'));
  static const inheritedValue = CeCostCategoryType._(
    TfArgLiteral('INHERITED_VALUE'),
  );

  static const List<CeCostCategoryType> values = [regular, inheritedValue];
}

/// Typed helper for the `rule.inherited_value` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryInheritedValue {
  const CeCostCategoryInheritedValue({this.dimensionKey, this.dimensionName});

  final TfArg<String>? dimensionKey;

  final CeCostCategoryDimensionName? dimensionName;

  Map<String, Object?> encode() => {
    'dimension_key': ?dimensionKey?.toTfJson(),
    'dimension_name': ?dimensionName?.toTfJson(),
  };
}

/// `dimension_name` — derived from the provider schema description.
extension type const CeCostCategoryDimensionName._(TfArg<String> _)
    implements TfArg<String> {
  CeCostCategoryDimensionName.variable(String name)
    : this._(TfArg.variable(name));
  CeCostCategoryDimensionName.expression(String template)
    : this._(TfArg.expression(template));
  const CeCostCategoryDimensionName.arg(TfArg<String> arg) : this._(arg);

  static const linkedAccountName = CeCostCategoryDimensionName._(
    TfArgLiteral('LINKED_ACCOUNT_NAME'),
  );
  static const tag = CeCostCategoryDimensionName._(TfArgLiteral('TAG'));

  static const List<CeCostCategoryDimensionName> values = [
    linkedAccountName,
    tag,
  ];
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

  final List<CeCostCategoryMatchOptions>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `match_options` — derived from the provider schema description.
extension type const CeCostCategoryMatchOptions._(TfArg<String> _)
    implements TfArg<String> {
  CeCostCategoryMatchOptions.variable(String name)
    : this._(TfArg.variable(name));
  CeCostCategoryMatchOptions.expression(String template)
    : this._(TfArg.expression(template));
  const CeCostCategoryMatchOptions.arg(TfArg<String> arg) : this._(arg);

  static const equals = CeCostCategoryMatchOptions._(TfArgLiteral('EQUALS'));
  static const absent = CeCostCategoryMatchOptions._(TfArgLiteral('ABSENT'));
  static const startsWith = CeCostCategoryMatchOptions._(
    TfArgLiteral('STARTS_WITH'),
  );
  static const endsWith = CeCostCategoryMatchOptions._(
    TfArgLiteral('ENDS_WITH'),
  );
  static const contains = CeCostCategoryMatchOptions._(
    TfArgLiteral('CONTAINS'),
  );
  static const caseSensitive = CeCostCategoryMatchOptions._(
    TfArgLiteral('CASE_SENSITIVE'),
  );
  static const caseInsensitive = CeCostCategoryMatchOptions._(
    TfArgLiteral('CASE_INSENSITIVE'),
  );
  static const greaterThanOrEqual = CeCostCategoryMatchOptions._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL'),
  );

  static const List<CeCostCategoryMatchOptions> values = [
    equals,
    absent,
    startsWith,
    endsWith,
    contains,
    caseSensitive,
    caseInsensitive,
    greaterThanOrEqual,
  ];
}

/// Typed helper for the `rule.rule.dimension` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryDimension {
  const CeCostCategoryDimension({this.key, this.matchOptions, this.values});

  final CeCostCategoryKey? key;

  final List<CeCostCategoryMatchOptions>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
extension type const CeCostCategoryKey._(TfArg<String> _)
    implements TfArg<String> {
  CeCostCategoryKey.variable(String name) : this._(TfArg.variable(name));
  CeCostCategoryKey.expression(String template)
    : this._(TfArg.expression(template));
  const CeCostCategoryKey.arg(TfArg<String> arg) : this._(arg);

  static const az = CeCostCategoryKey._(TfArgLiteral('AZ'));
  static const instanceType = CeCostCategoryKey._(
    TfArgLiteral('INSTANCE_TYPE'),
  );
  static const linkedAccount = CeCostCategoryKey._(
    TfArgLiteral('LINKED_ACCOUNT'),
  );
  static const payerAccount = CeCostCategoryKey._(
    TfArgLiteral('PAYER_ACCOUNT'),
  );
  static const linkedAccountName = CeCostCategoryKey._(
    TfArgLiteral('LINKED_ACCOUNT_NAME'),
  );
  static const operation = CeCostCategoryKey._(TfArgLiteral('OPERATION'));
  static const purchaseType = CeCostCategoryKey._(
    TfArgLiteral('PURCHASE_TYPE'),
  );
  static const region = CeCostCategoryKey._(TfArgLiteral('REGION'));
  static const service = CeCostCategoryKey._(TfArgLiteral('SERVICE'));
  static const serviceCode = CeCostCategoryKey._(TfArgLiteral('SERVICE_CODE'));
  static const usageType = CeCostCategoryKey._(TfArgLiteral('USAGE_TYPE'));
  static const usageTypeGroup = CeCostCategoryKey._(
    TfArgLiteral('USAGE_TYPE_GROUP'),
  );
  static const recordType = CeCostCategoryKey._(TfArgLiteral('RECORD_TYPE'));
  static const operatingSystem = CeCostCategoryKey._(
    TfArgLiteral('OPERATING_SYSTEM'),
  );
  static const tenancy = CeCostCategoryKey._(TfArgLiteral('TENANCY'));
  static const scope = CeCostCategoryKey._(TfArgLiteral('SCOPE'));
  static const platform = CeCostCategoryKey._(TfArgLiteral('PLATFORM'));
  static const subscriptionId = CeCostCategoryKey._(
    TfArgLiteral('SUBSCRIPTION_ID'),
  );
  static const legalEntityName = CeCostCategoryKey._(
    TfArgLiteral('LEGAL_ENTITY_NAME'),
  );
  static const deploymentOption = CeCostCategoryKey._(
    TfArgLiteral('DEPLOYMENT_OPTION'),
  );
  static const databaseEngine = CeCostCategoryKey._(
    TfArgLiteral('DATABASE_ENGINE'),
  );
  static const cacheEngine = CeCostCategoryKey._(TfArgLiteral('CACHE_ENGINE'));
  static const instanceTypeFamily = CeCostCategoryKey._(
    TfArgLiteral('INSTANCE_TYPE_FAMILY'),
  );
  static const billingEntity = CeCostCategoryKey._(
    TfArgLiteral('BILLING_ENTITY'),
  );
  static const reservationId = CeCostCategoryKey._(
    TfArgLiteral('RESERVATION_ID'),
  );
  static const resourceId = CeCostCategoryKey._(TfArgLiteral('RESOURCE_ID'));
  static const rightsizingType = CeCostCategoryKey._(
    TfArgLiteral('RIGHTSIZING_TYPE'),
  );
  static const savingsPlansType = CeCostCategoryKey._(
    TfArgLiteral('SAVINGS_PLANS_TYPE'),
  );
  static const savingsPlanArn = CeCostCategoryKey._(
    TfArgLiteral('SAVINGS_PLAN_ARN'),
  );
  static const paymentOption = CeCostCategoryKey._(
    TfArgLiteral('PAYMENT_OPTION'),
  );
  static const agreementEndDateTimeAfter = CeCostCategoryKey._(
    TfArgLiteral('AGREEMENT_END_DATE_TIME_AFTER'),
  );
  static const agreementEndDateTimeBefore = CeCostCategoryKey._(
    TfArgLiteral('AGREEMENT_END_DATE_TIME_BEFORE'),
  );
  static const invoicingEntity = CeCostCategoryKey._(
    TfArgLiteral('INVOICING_ENTITY'),
  );
  static const anomalyTotalImpactAbsolute = CeCostCategoryKey._(
    TfArgLiteral('ANOMALY_TOTAL_IMPACT_ABSOLUTE'),
  );
  static const anomalyTotalImpactPercentage = CeCostCategoryKey._(
    TfArgLiteral('ANOMALY_TOTAL_IMPACT_PERCENTAGE'),
  );

  static const List<CeCostCategoryKey> values = [
    az,
    instanceType,
    linkedAccount,
    payerAccount,
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
    agreementEndDateTimeAfter,
    agreementEndDateTimeBefore,
    invoicingEntity,
    anomalyTotalImpactAbsolute,
    anomalyTotalImpactPercentage,
  ];
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

  final List<CeCostCategoryMatchOptions>? matchOptions;

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

  final CeCostCategoryMethod method;

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
extension type const CeCostCategoryMethod._(TfArg<String> _)
    implements TfArg<String> {
  CeCostCategoryMethod.variable(String name) : this._(TfArg.variable(name));
  CeCostCategoryMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CeCostCategoryMethod.arg(TfArg<String> arg) : this._(arg);

  static const fixed = CeCostCategoryMethod._(TfArgLiteral('FIXED'));
  static const proportional = CeCostCategoryMethod._(
    TfArgLiteral('PROPORTIONAL'),
  );
  static const even = CeCostCategoryMethod._(TfArgLiteral('EVEN'));

  static const List<CeCostCategoryMethod> values = [fixed, proportional, even];
}

/// Typed helper for the `split_charge_rule.parameter` block of
/// `aws_ce_cost_category` (derived from provider schema).
@immutable
final class CeCostCategoryParameter {
  const CeCostCategoryParameter({this.type, this.values});

  final CeCostCategoryParameterType? type;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CeCostCategoryParameterType._(TfArg<String> _)
    implements TfArg<String> {
  CeCostCategoryParameterType.variable(String name)
    : this._(TfArg.variable(name));
  CeCostCategoryParameterType.expression(String template)
    : this._(TfArg.expression(template));
  const CeCostCategoryParameterType.arg(TfArg<String> arg) : this._(arg);

  static const allocationPercentages = CeCostCategoryParameterType._(
    TfArgLiteral('ALLOCATION_PERCENTAGES'),
  );

  static const List<CeCostCategoryParameterType> values = [
    allocationPercentages,
  ];
}

/// Factory wrapper for `aws_ce_cost_category`.
final class AwsCeCostCategory extends Resource {
  static const String tfType = 'aws_ce_cost_category';

  AwsCeCostCategory(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `effective_end` attribute.
  TfRef<String> get effectiveEnd =>
      TfRef.attribute<String>(this, 'effective_end');

  /// Reference to `default_value` attribute.
  TfRef<String> get defaultValue =>
      TfRef.attribute<String>(this, 'default_value');

  /// Reference to `effective_start` attribute.
  TfRef<String> get effectiveStart =>
      TfRef.attribute<String>(this, 'effective_start');

  /// Reference to `rule_version` attribute.
  TfRef<String> get ruleVersion =>
      TfRef.attribute<String>(this, 'rule_version');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
