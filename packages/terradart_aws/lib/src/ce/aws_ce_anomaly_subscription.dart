// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_anomaly_subscription`.
const Set<String> _awsCeAnomalySubscriptionSensitive = <String>{};

/// Typed helper for the `subscriber` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionSubscriber {
  const CeAnomalySubscriptionSubscriber({
    required this.address,
    required this.type,
  });

  final TfArg<String> address;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'type': type.toTfJson(),
  };
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

  final List<CeAnomalySubscriptionThresholdExpressionAnd>? and;

  final CeAnomalySubscriptionThresholdExpressionCostCategory? costCategory;

  final CeAnomalySubscriptionThresholdExpressionDimension? dimension;

  final CeAnomalySubscriptionThresholdExpressionNot? not;

  final List<CeAnomalySubscriptionThresholdExpressionOr>? or;

  final CeAnomalySubscriptionThresholdExpressionTags? tags;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (not != null) 'not': not!.encode(),
    if (or != null) 'or': [for (final e in or!) e.encode()],
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `threshold_expression.and` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionAnd {
  const CeAnomalySubscriptionThresholdExpressionAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeAnomalySubscriptionThresholdExpressionAndCostCategory? costCategory;

  final CeAnomalySubscriptionThresholdExpressionAndDimension? dimension;

  final CeAnomalySubscriptionThresholdExpressionAndTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `threshold_expression.and.cost_category` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionAndCostCategory {
  const CeAnomalySubscriptionThresholdExpressionAndCostCategory({
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

/// Typed helper for the `threshold_expression.and.dimension` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionAndDimension {
  const CeAnomalySubscriptionThresholdExpressionAndDimension({
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

/// Typed helper for the `threshold_expression.and.tags` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionAndTags {
  const CeAnomalySubscriptionThresholdExpressionAndTags({
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

/// Typed helper for the `threshold_expression.cost_category` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionCostCategory {
  const CeAnomalySubscriptionThresholdExpressionCostCategory({
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

/// Typed helper for the `threshold_expression.dimension` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionDimension {
  const CeAnomalySubscriptionThresholdExpressionDimension({
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

/// Typed helper for the `threshold_expression.not` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionNot {
  const CeAnomalySubscriptionThresholdExpressionNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeAnomalySubscriptionThresholdExpressionNotCostCategory? costCategory;

  final CeAnomalySubscriptionThresholdExpressionNotDimension? dimension;

  final CeAnomalySubscriptionThresholdExpressionNotTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `threshold_expression.not.cost_category` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionNotCostCategory {
  const CeAnomalySubscriptionThresholdExpressionNotCostCategory({
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

/// Typed helper for the `threshold_expression.not.dimension` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionNotDimension {
  const CeAnomalySubscriptionThresholdExpressionNotDimension({
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

/// Typed helper for the `threshold_expression.not.tags` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionNotTags {
  const CeAnomalySubscriptionThresholdExpressionNotTags({
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

/// Typed helper for the `threshold_expression.or` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionOr {
  const CeAnomalySubscriptionThresholdExpressionOr({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  final CeAnomalySubscriptionThresholdExpressionOrCostCategory? costCategory;

  final CeAnomalySubscriptionThresholdExpressionOrDimension? dimension;

  final CeAnomalySubscriptionThresholdExpressionOrTags? tags;

  Map<String, Object?> encode() => {
    if (costCategory != null) 'cost_category': costCategory!.encode(),
    if (dimension != null) 'dimension': dimension!.encode(),
    if (tags != null) 'tags': tags!.encode(),
  };
}

/// Typed helper for the `threshold_expression.or.cost_category` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionOrCostCategory {
  const CeAnomalySubscriptionThresholdExpressionOrCostCategory({
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

/// Typed helper for the `threshold_expression.or.dimension` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionOrDimension {
  const CeAnomalySubscriptionThresholdExpressionOrDimension({
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

/// Typed helper for the `threshold_expression.or.tags` block of
/// `aws_ce_anomaly_subscription` (derived from provider schema).
@immutable
final class CeAnomalySubscriptionThresholdExpressionOrTags {
  const CeAnomalySubscriptionThresholdExpressionOrTags({
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

  final TfArg<List<Object?>>? matchOptions;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (matchOptions != null) 'match_options': matchOptions!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ce_anomaly_subscription`.
final class AwsCeAnomalySubscription extends Resource {
  static const String tfType = 'aws_ce_anomaly_subscription';

  AwsCeAnomalySubscription({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> frequency,
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
           if (accountId != null) 'account_id': accountId,
           'frequency': frequency,
           'monitor_arn_list': monitorArnList,
           'name': name,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
