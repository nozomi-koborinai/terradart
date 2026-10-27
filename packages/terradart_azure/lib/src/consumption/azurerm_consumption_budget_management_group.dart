// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_consumption_budget_management_group`.
const Set<String> _azurermConsumptionBudgetManagementGroupSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `azurerm_consumption_budget_management_group` (derived from provider schema).
@immutable
final class ConsumptionBudgetManagementGroupFilter {
  const ConsumptionBudgetManagementGroupFilter({this.dimension, this.tag});

  final List<ConsumptionBudgetManagementGroupDimension>? dimension;

  final List<ConsumptionBudgetManagementGroupTag>? tag;

  @internal
  Map<String, Object?> encode() => {
    if (dimension != null)
      'dimension': [for (final e in dimension!) e.encode()],
    if (tag != null) 'tag': [for (final e in tag!) e.encode()],
  };
}

/// Typed helper for the `filter.dimension` block of
/// `azurerm_consumption_budget_management_group` (derived from provider schema).
@immutable
final class ConsumptionBudgetManagementGroupDimension {
  const ConsumptionBudgetManagementGroupDimension({
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
/// `azurerm_consumption_budget_management_group` (derived from provider schema).
@immutable
final class ConsumptionBudgetManagementGroupTag {
  const ConsumptionBudgetManagementGroupTag({
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
/// `azurerm_consumption_budget_management_group` (derived from provider schema).
@immutable
final class ConsumptionBudgetManagementGroupNotification {
  const ConsumptionBudgetManagementGroupNotification({
    required this.contactEmails,
    this.enabled,
    required this.operator,
    required this.threshold,
    this.thresholdType,
  });

  final TfArg<List<String>> contactEmails;

  final TfArg<bool>? enabled;

  final TfArg<String> operator;

  final TfArg<num> threshold;

  final TfArg<String>? thresholdType;

  @internal
  Map<String, Object?> encode() => {
    'contact_emails': contactEmails.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'operator': operator.toTfJson(),
    'threshold': threshold.toTfJson(),
    'threshold_type': ?thresholdType?.toTfJson(),
  };
}

/// Typed helper for the `time_period` block of
/// `azurerm_consumption_budget_management_group` (derived from provider schema).
@immutable
final class ConsumptionBudgetManagementGroupTimePeriod {
  const ConsumptionBudgetManagementGroupTimePeriod({
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

/// Factory wrapper for `azurerm_consumption_budget_management_group`.
final class AzurermConsumptionBudgetManagementGroup extends Resource {
  static const String tfType = 'azurerm_consumption_budget_management_group';

  AzurermConsumptionBudgetManagementGroup(
    super.localName, {
    required TfArg<num> amount,
    TfArg<String>? etag,
    required TfArg<String> managementGroupId,
    required TfArg<String> name,
    TfArg<String>? timeGrain,
    ConsumptionBudgetManagementGroupFilter? filter,
    required List<ConsumptionBudgetManagementGroupNotification> notification,
    required ConsumptionBudgetManagementGroupTimePeriod timePeriod,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'amount': amount,
           'etag': ?etag,
           'management_group_id': managementGroupId,
           'name': name,
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
      _azurermConsumptionBudgetManagementGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermConsumptionBudgetManagementGroup>`.
  RefTo<AzurermConsumptionBudgetManagementGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `amount` attribute.
  TfRef<num> get amount => TfRef.attribute<num>(this, 'amount');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `management_group_id` attribute.
  TfRef<String> get managementGroupId =>
      TfRef.attribute<String>(this, 'management_group_id');

  /// Reference to `time_grain` attribute.
  TfRef<String> get timeGrain => TfRef.attribute<String>(this, 'time_grain');
}
