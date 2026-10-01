// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_anomaly_subscription`.
const Set<String> _awsCeAnomalySubscriptionSensitive = <String>{};

/// Ce Anomaly Subscription enum for `frequency`.
enum CeAnomalySubscriptionFrequency implements TerraformEnum {
  daily('DAILY'),
  immediate('IMMEDIATE'),
  weekly('WEEKLY');

  const CeAnomalySubscriptionFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `subscriber` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionSubscriber {
  const CeAnomalySubscriptionSubscriber({
    required this.address,
    required this.type,
  });

  final TfArg<String> address;

  final TfArg<CeAnomalySubscriptionType> type;

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CeAnomalySubscriptionType implements TerraformEnum {
  email('EMAIL'),
  sns('SNS');

  const CeAnomalySubscriptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `threshold_expression` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpression {
  const CeAnomalySubscriptionThresholdExpression({
    this.and,
    this.costCategory,
    this.dimension,
    this.not,
    this.or,
    this.tags,
  });

  final List<CeAnomalySubscriptionAnd>? and;

  final CeAnomalySubscriptionCostCategory? costCategory;

  final CeAnomalySubscriptionDimension? dimension;

  final CeAnomalySubscriptionNot? not;

  final List<CeAnomalySubscriptionOr>? or;

  final CeAnomalySubscriptionThresholdExpressionTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'not': ?not?.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `threshold_expression.and` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionAnd {
  const CeAnomalySubscriptionAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeAnomalySubscriptionAndCostCategory? costCategory;

  final CeAnomalySubscriptionAndDimension? dimension;

  final CeAnomalySubscriptionAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `threshold_expression.and.cost_category` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeAnomalySubscriptionAndCostCategory {
  const CeAnomalySubscriptionAndCostCategory({
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

/// Typed helper for the `threshold_expression.and.dimension` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeAnomalySubscriptionAndDimension {
  const CeAnomalySubscriptionAndDimension({
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

/// Typed helper for the `threshold_expression.and.tags` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CeAnomalySubscriptionAndTags {
  const CeAnomalySubscriptionAndTags({
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

/// Typed helper for the `threshold_expression.cost_category` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionCostCategory {
  const CeAnomalySubscriptionCostCategory({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final List<TfArg<CeAnomalySubscriptionMatchOptions>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `match_options` — derived from the provider schema description.
enum CeAnomalySubscriptionMatchOptions implements TerraformEnum {
  equals('EQUALS'),
  absent('ABSENT'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS'),
  caseSensitive('CASE_SENSITIVE'),
  caseInsensitive('CASE_INSENSITIVE'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL');

  const CeAnomalySubscriptionMatchOptions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `threshold_expression.dimension` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionDimension {
  const CeAnomalySubscriptionDimension({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<CeAnomalySubscriptionKey>? key;

  final List<TfArg<CeAnomalySubscriptionMatchOptions>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum CeAnomalySubscriptionKey implements TerraformEnum {
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

  const CeAnomalySubscriptionKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `threshold_expression.not` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionNot {
  const CeAnomalySubscriptionNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeAnomalySubscriptionAndCostCategory? costCategory;

  final CeAnomalySubscriptionAndDimension? dimension;

  final CeAnomalySubscriptionAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `threshold_expression.or` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionOr {
  const CeAnomalySubscriptionOr({this.costCategory, this.dimension, this.tags});

  final CeAnomalySubscriptionAndCostCategory? costCategory;

  final CeAnomalySubscriptionAndDimension? dimension;

  final CeAnomalySubscriptionAndTags? tags;

  Map<String, Object?> encode() => {
    'cost_category': ?costCategory?.encode(),
    'dimension': ?dimension?.encode(),
    'tags': ?tags?.encode(),
  };
}

/// Typed helper for the `threshold_expression.tags` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionTags {
  const CeAnomalySubscriptionThresholdExpressionTags({
    this.key,
    this.matchOptions,
    this.values,
  });

  final TfArg<String>? key;

  final List<TfArg<CeAnomalySubscriptionMatchOptions>>? matchOptions;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// Factory wrapper for `aws_ce_anomaly_subscription`.
final class AwsCeAnomalySubscription extends Resource {
  static const String tfType = 'aws_ce_anomaly_subscription';

  AwsCeAnomalySubscription(
    super.localName, {
    TfArg<String>? accountId,
    required TfArg<CeAnomalySubscriptionFrequency> frequency,
    required TfArg<List<String>> monitorArnList,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required List<CeAnomalySubscriptionSubscriber> subscriber,
    CeAnomalySubscriptionThresholdExpression? thresholdExpression,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'frequency': frequency,
           'monitor_arn_list': monitorArnList,
           'name': name,
           'tags': ?tags,
           'subscriber': TfArg.literal([
             for (final e in subscriber) e.encode(),
           ]),
           if (thresholdExpression != null)
             'threshold_expression': TfArg.literal(
               thresholdExpression.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCeAnomalySubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCeAnomalySubscription>`.
  RefTo<AwsCeAnomalySubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `monitor_arn_list` attribute.
  TfRef<List<String>> get monitorArnList =>
      TfRef.attribute<List<String>>(this, 'monitor_arn_list');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
