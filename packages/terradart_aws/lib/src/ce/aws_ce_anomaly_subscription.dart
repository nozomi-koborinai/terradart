// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_anomaly_subscription`.
const Set<String> _awsCeAnomalySubscriptionSensitive = <String>{};

/// Ce Anomaly Subscription enum for `frequency`.
extension type const CeAnomalySubscriptionFrequency._(TfArg<String> _)
    implements TfArg<String> {
  CeAnomalySubscriptionFrequency.variable(String name)
    : this._(TfArg.variable(name));
  CeAnomalySubscriptionFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const CeAnomalySubscriptionFrequency.arg(TfArg<String> arg) : this._(arg);

  static const daily = CeAnomalySubscriptionFrequency._(TfArgLiteral('DAILY'));
  static const immediate = CeAnomalySubscriptionFrequency._(
    TfArgLiteral('IMMEDIATE'),
  );
  static const weekly = CeAnomalySubscriptionFrequency._(
    TfArgLiteral('WEEKLY'),
  );

  static const List<CeAnomalySubscriptionFrequency> values = [
    daily,
    immediate,
    weekly,
  ];
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

  final CeAnomalySubscriptionType type;

  @internal
  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CeAnomalySubscriptionType._(TfArg<String> _)
    implements TfArg<String> {
  CeAnomalySubscriptionType.variable(String name)
    : this._(TfArg.variable(name));
  CeAnomalySubscriptionType.expression(String template)
    : this._(TfArg.expression(template));
  const CeAnomalySubscriptionType.arg(TfArg<String> arg) : this._(arg);

  static const email = CeAnomalySubscriptionType._(TfArgLiteral('EMAIL'));
  static const sns = CeAnomalySubscriptionType._(TfArgLiteral('SNS'));

  static const List<CeAnomalySubscriptionType> values = [email, sns];
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  final List<CeAnomalySubscriptionMatchOptions>? matchOptions;

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
extension type const CeAnomalySubscriptionMatchOptions._(TfArg<String> _)
    implements TfArg<String> {
  CeAnomalySubscriptionMatchOptions.variable(String name)
    : this._(TfArg.variable(name));
  CeAnomalySubscriptionMatchOptions.expression(String template)
    : this._(TfArg.expression(template));
  const CeAnomalySubscriptionMatchOptions.arg(TfArg<String> arg) : this._(arg);

  static const equals = CeAnomalySubscriptionMatchOptions._(
    TfArgLiteral('EQUALS'),
  );
  static const absent = CeAnomalySubscriptionMatchOptions._(
    TfArgLiteral('ABSENT'),
  );
  static const startsWith = CeAnomalySubscriptionMatchOptions._(
    TfArgLiteral('STARTS_WITH'),
  );
  static const endsWith = CeAnomalySubscriptionMatchOptions._(
    TfArgLiteral('ENDS_WITH'),
  );
  static const contains = CeAnomalySubscriptionMatchOptions._(
    TfArgLiteral('CONTAINS'),
  );
  static const caseSensitive = CeAnomalySubscriptionMatchOptions._(
    TfArgLiteral('CASE_SENSITIVE'),
  );
  static const caseInsensitive = CeAnomalySubscriptionMatchOptions._(
    TfArgLiteral('CASE_INSENSITIVE'),
  );
  static const greaterThanOrEqual = CeAnomalySubscriptionMatchOptions._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL'),
  );

  static const List<CeAnomalySubscriptionMatchOptions> values = [
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

/// Typed helper for the `threshold_expression.dimension` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionDimension {
  const CeAnomalySubscriptionDimension({
    this.key,
    this.matchOptions,
    this.values,
  });

  final CeAnomalySubscriptionKey? key;

  final List<CeAnomalySubscriptionMatchOptions>? matchOptions;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    if (matchOptions != null)
      'match_options': [for (final e in matchOptions!) e.toTfJson()],
    'values': ?values?.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
extension type const CeAnomalySubscriptionKey._(TfArg<String> _)
    implements TfArg<String> {
  CeAnomalySubscriptionKey.variable(String name) : this._(TfArg.variable(name));
  CeAnomalySubscriptionKey.expression(String template)
    : this._(TfArg.expression(template));
  const CeAnomalySubscriptionKey.arg(TfArg<String> arg) : this._(arg);

  static const az = CeAnomalySubscriptionKey._(TfArgLiteral('AZ'));
  static const instanceType = CeAnomalySubscriptionKey._(
    TfArgLiteral('INSTANCE_TYPE'),
  );
  static const linkedAccount = CeAnomalySubscriptionKey._(
    TfArgLiteral('LINKED_ACCOUNT'),
  );
  static const payerAccount = CeAnomalySubscriptionKey._(
    TfArgLiteral('PAYER_ACCOUNT'),
  );
  static const linkedAccountName = CeAnomalySubscriptionKey._(
    TfArgLiteral('LINKED_ACCOUNT_NAME'),
  );
  static const operation = CeAnomalySubscriptionKey._(
    TfArgLiteral('OPERATION'),
  );
  static const purchaseType = CeAnomalySubscriptionKey._(
    TfArgLiteral('PURCHASE_TYPE'),
  );
  static const region = CeAnomalySubscriptionKey._(TfArgLiteral('REGION'));
  static const service = CeAnomalySubscriptionKey._(TfArgLiteral('SERVICE'));
  static const serviceCode = CeAnomalySubscriptionKey._(
    TfArgLiteral('SERVICE_CODE'),
  );
  static const usageType = CeAnomalySubscriptionKey._(
    TfArgLiteral('USAGE_TYPE'),
  );
  static const usageTypeGroup = CeAnomalySubscriptionKey._(
    TfArgLiteral('USAGE_TYPE_GROUP'),
  );
  static const recordType = CeAnomalySubscriptionKey._(
    TfArgLiteral('RECORD_TYPE'),
  );
  static const operatingSystem = CeAnomalySubscriptionKey._(
    TfArgLiteral('OPERATING_SYSTEM'),
  );
  static const tenancy = CeAnomalySubscriptionKey._(TfArgLiteral('TENANCY'));
  static const scope = CeAnomalySubscriptionKey._(TfArgLiteral('SCOPE'));
  static const platform = CeAnomalySubscriptionKey._(TfArgLiteral('PLATFORM'));
  static const subscriptionId = CeAnomalySubscriptionKey._(
    TfArgLiteral('SUBSCRIPTION_ID'),
  );
  static const legalEntityName = CeAnomalySubscriptionKey._(
    TfArgLiteral('LEGAL_ENTITY_NAME'),
  );
  static const deploymentOption = CeAnomalySubscriptionKey._(
    TfArgLiteral('DEPLOYMENT_OPTION'),
  );
  static const databaseEngine = CeAnomalySubscriptionKey._(
    TfArgLiteral('DATABASE_ENGINE'),
  );
  static const cacheEngine = CeAnomalySubscriptionKey._(
    TfArgLiteral('CACHE_ENGINE'),
  );
  static const instanceTypeFamily = CeAnomalySubscriptionKey._(
    TfArgLiteral('INSTANCE_TYPE_FAMILY'),
  );
  static const billingEntity = CeAnomalySubscriptionKey._(
    TfArgLiteral('BILLING_ENTITY'),
  );
  static const reservationId = CeAnomalySubscriptionKey._(
    TfArgLiteral('RESERVATION_ID'),
  );
  static const resourceId = CeAnomalySubscriptionKey._(
    TfArgLiteral('RESOURCE_ID'),
  );
  static const rightsizingType = CeAnomalySubscriptionKey._(
    TfArgLiteral('RIGHTSIZING_TYPE'),
  );
  static const savingsPlansType = CeAnomalySubscriptionKey._(
    TfArgLiteral('SAVINGS_PLANS_TYPE'),
  );
  static const savingsPlanArn = CeAnomalySubscriptionKey._(
    TfArgLiteral('SAVINGS_PLAN_ARN'),
  );
  static const paymentOption = CeAnomalySubscriptionKey._(
    TfArgLiteral('PAYMENT_OPTION'),
  );
  static const agreementEndDateTimeAfter = CeAnomalySubscriptionKey._(
    TfArgLiteral('AGREEMENT_END_DATE_TIME_AFTER'),
  );
  static const agreementEndDateTimeBefore = CeAnomalySubscriptionKey._(
    TfArgLiteral('AGREEMENT_END_DATE_TIME_BEFORE'),
  );
  static const invoicingEntity = CeAnomalySubscriptionKey._(
    TfArgLiteral('INVOICING_ENTITY'),
  );
  static const anomalyTotalImpactAbsolute = CeAnomalySubscriptionKey._(
    TfArgLiteral('ANOMALY_TOTAL_IMPACT_ABSOLUTE'),
  );
  static const anomalyTotalImpactPercentage = CeAnomalySubscriptionKey._(
    TfArgLiteral('ANOMALY_TOTAL_IMPACT_PERCENTAGE'),
  );

  static const List<CeAnomalySubscriptionKey> values = [
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

  @internal
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

  @internal
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

  final List<CeAnomalySubscriptionMatchOptions>? matchOptions;

  final TfArg<List<String>>? values;

  @internal
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
    required CeAnomalySubscriptionFrequency frequency,
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
