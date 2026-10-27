// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_subscription_cost_management_view`.
const Set<String> _azurermSubscriptionCostManagementViewSensitive = <String>{};

/// Typed helper for the `dataset` block of
/// `azurerm_subscription_cost_management_view` (derived from provider schema).
@immutable
final class SubscriptionCostManagementViewDataset {
  const SubscriptionCostManagementViewDataset({
    required this.granularity,
    required this.aggregation,
    this.grouping,
    this.sorting,
  });

  final TfArg<String> granularity;

  final List<SubscriptionCostManagementViewAggregation> aggregation;

  final List<SubscriptionCostManagementViewGrouping>? grouping;

  final List<SubscriptionCostManagementViewSorting>? sorting;

  @internal
  Map<String, Object?> encode() => {
    'granularity': granularity.toTfJson(),
    'aggregation': [for (final e in aggregation) e.encode()],
    if (grouping != null) 'grouping': [for (final e in grouping!) e.encode()],
    if (sorting != null) 'sorting': [for (final e in sorting!) e.encode()],
  };
}

/// Typed helper for the `dataset.aggregation` block of
/// `azurerm_subscription_cost_management_view` (derived from provider schema).
@immutable
final class SubscriptionCostManagementViewAggregation {
  const SubscriptionCostManagementViewAggregation({
    required this.columnName,
    required this.name,
  });

  final TfArg<String> columnName;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `dataset.grouping` block of
/// `azurerm_subscription_cost_management_view` (derived from provider schema).
@immutable
final class SubscriptionCostManagementViewGrouping {
  const SubscriptionCostManagementViewGrouping({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `dataset.sorting` block of
/// `azurerm_subscription_cost_management_view` (derived from provider schema).
@immutable
final class SubscriptionCostManagementViewSorting {
  const SubscriptionCostManagementViewSorting({
    required this.direction,
    required this.name,
  });

  final TfArg<String> direction;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `kpi` block of
/// `azurerm_subscription_cost_management_view` (derived from provider schema).
@immutable
final class SubscriptionCostManagementViewKpi {
  const SubscriptionCostManagementViewKpi({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `pivot` block of
/// `azurerm_subscription_cost_management_view` (derived from provider schema).
@immutable
final class SubscriptionCostManagementViewPivot {
  const SubscriptionCostManagementViewPivot({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_subscription_cost_management_view`.
final class AzurermSubscriptionCostManagementView extends Resource {
  static const String tfType = 'azurerm_subscription_cost_management_view';

  AzurermSubscriptionCostManagementView(
    super.localName, {
    required TfArg<bool> accumulated,
    required TfArg<String> chartType,
    required TfArg<String> displayName,
    required TfArg<String> name,
    required TfArg<String> reportType,
    required TfArg<String> subscriptionId,
    required TfArg<String> timeframe,
    required SubscriptionCostManagementViewDataset dataset,
    List<SubscriptionCostManagementViewKpi>? kpi,
    List<SubscriptionCostManagementViewPivot>? pivot,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accumulated': accumulated,
           'chart_type': chartType,
           'display_name': displayName,
           'name': name,
           'report_type': reportType,
           'subscription_id': subscriptionId,
           'timeframe': timeframe,
           'dataset': TfArg.literal(dataset.encode()),
           if (kpi != null)
             'kpi': TfArg.literal([for (final e in kpi) e.encode()]),
           if (pivot != null)
             'pivot': TfArg.literal([for (final e in pivot) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSubscriptionCostManagementViewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubscriptionCostManagementView>`.
  RefTo<AzurermSubscriptionCostManagementView> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accumulated` attribute.
  TfRef<bool> get accumulated => TfRef.attribute<bool>(this, 'accumulated');

  /// Reference to `chart_type` attribute.
  TfRef<String> get chartType => TfRef.attribute<String>(this, 'chart_type');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `report_type` attribute.
  TfRef<String> get reportType => TfRef.attribute<String>(this, 'report_type');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');

  /// Reference to `timeframe` attribute.
  TfRef<String> get timeframe => TfRef.attribute<String>(this, 'timeframe');
}
