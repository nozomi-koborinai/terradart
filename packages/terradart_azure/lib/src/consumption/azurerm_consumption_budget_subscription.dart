// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_consumption_budget_subscription`.
const Set<String> _azurermConsumptionBudgetSubscriptionSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `azurerm_consumption_budget_subscription` (derived from provider schema).
@immutable
final class ConsumptionBudgetSubscriptionFilter {
  const ConsumptionBudgetSubscriptionFilter({this.dimension, this.tag});

  final List<ConsumptionBudgetSubscriptionDimension>? dimension;

  final List<ConsumptionBudgetSubscriptionTag>? tag;

  @internal
  Map<String, Object?> encode() => {
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
    if (tag != null) 'tag': [for (final e in tag!) e.encode()],
  };
}

/// Typed helper for the `filter.dimension` block of
/// `azurerm_consumption_budget_subscription` (derived from provider schema).
@immutable
final class ConsumptionBudgetSubscriptionDimension {
  const ConsumptionBudgetSubscriptionDimension({
    required this.name,
    this.operator,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<String>? operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `filter.tag` block of
/// `azurerm_consumption_budget_subscription` (derived from provider schema).
@immutable
final class ConsumptionBudgetSubscriptionTag {
  const ConsumptionBudgetSubscriptionTag({
    required this.name,
    this.operator,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<String>? operator;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `notification` block of
/// `azurerm_consumption_budget_subscription` (derived from provider schema).
@immutable
final class ConsumptionBudgetSubscriptionNotification {
  const ConsumptionBudgetSubscriptionNotification({
    this.contactEmails,
    this.contactGroups,
    this.contactRoles,
    this.enabled,
    required this.operator,
    required this.threshold,
    this.thresholdType,
  });

  final TfArg<List<String>>? contactEmails;

  final TfArg<List<String>>? contactGroups;

  final TfArg<List<String>>? contactRoles;

  final TfArg<bool>? enabled;

  final TfArg<String> operator;

  final TfArg<num> threshold;

  final TfArg<String>? thresholdType;

  @internal
  Map<String, Object?> encode() => {
    'contact_emails': ?contactEmails?.toTfJson(),
    'contact_groups': ?contactGroups?.toTfJson(),
    'contact_roles': ?contactRoles?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'operator': operator.toTfJson(),
    'threshold': threshold.toTfJson(),
    'threshold_type': ?thresholdType?.toTfJson(),
  };
}

/// Typed helper for the `time_period` block of
/// `azurerm_consumption_budget_subscription` (derived from provider schema).
@immutable
final class ConsumptionBudgetSubscriptionTimePeriod {
  const ConsumptionBudgetSubscriptionTimePeriod({
    this.endDate,
    required this.startDate,
  });

  final TfArg<String>? endDate;

  final TfArg<String> startDate;

  @internal
  Map<String, Object?> encode() => {
    'end_date': ?endDate?.toTfJson(),
    'start_date': startDate.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_consumption_budget_subscription`.
final class AzurermConsumptionBudgetSubscription extends Resource {
  static const String tfType = 'azurerm_consumption_budget_subscription';

  AzurermConsumptionBudgetSubscription(
    super.localName, {
    required TfArg<num> amount,
    TfArg<String>? etag,
    required TfArg<String> name,
    required TfArg<String> subscriptionId,
    TfArg<String>? timeGrain,
    ConsumptionBudgetSubscriptionFilter? filter,
    required List<ConsumptionBudgetSubscriptionNotification> notification,
    required ConsumptionBudgetSubscriptionTimePeriod timePeriod,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'amount': amount,
           'etag': ?etag,
           'name': name,
           'subscription_id': subscriptionId,
           'time_grain': ?timeGrain,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           'notification': TfArg.literal([
             for (final e in notification) e.encode(),
           ]),
           'time_period': TfArg.literal(timePeriod.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermConsumptionBudgetSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermConsumptionBudgetSubscription>`.
  RefTo<AzurermConsumptionBudgetSubscription> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `amount` attribute.
  TfRef<num> get amount => TfRef.attribute<num>(this, 'amount');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');

  /// Reference to `time_grain` attribute.
  TfRef<String> get timeGrain => TfRef.attribute<String>(this, 'time_grain');
}
