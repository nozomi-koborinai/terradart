// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_group_cost_management_view`.
const Set<String> _azurermResourceGroupCostManagementViewSensitive = <String>{};

/// Typed helper for the `dataset` block of
/// `azurerm_resource_group_cost_management_view` (derived from provider schema).
@immutable
final class ResourceGroupCostManagementViewDataset {
  const ResourceGroupCostManagementViewDataset({
    required this.granularity,
    required this.aggregation,
    this.grouping,
    this.sorting,
  });

  final TfArg<String> granularity;

  final List<ResourceGroupCostManagementViewAggregation> aggregation;

  final List<ResourceGroupCostManagementViewGrouping>? grouping;

  final List<ResourceGroupCostManagementViewSorting>? sorting;

  @internal
  Map<String, Object?> encode() => {
    'granularity': granularity.toTfJson(),
    'aggregation': [for (final e in aggregation) e.encode()],
    if (grouping != null) 'grouping': [for (final e in grouping!) e.encode()],
    if (sorting != null) 'sorting': [for (final e in sorting!) e.encode()],
  };
}

/// Typed helper for the `dataset.aggregation` block of
/// `azurerm_resource_group_cost_management_view` (derived from provider schema).
@immutable
final class ResourceGroupCostManagementViewAggregation {
  const ResourceGroupCostManagementViewAggregation({
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
/// `azurerm_resource_group_cost_management_view` (derived from provider schema).
@immutable
final class ResourceGroupCostManagementViewGrouping {
  const ResourceGroupCostManagementViewGrouping({
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
/// `azurerm_resource_group_cost_management_view` (derived from provider schema).
@immutable
final class ResourceGroupCostManagementViewSorting {
  const ResourceGroupCostManagementViewSorting({
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
/// `azurerm_resource_group_cost_management_view` (derived from provider schema).
@immutable
final class ResourceGroupCostManagementViewKpi {
  const ResourceGroupCostManagementViewKpi({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `pivot` block of
/// `azurerm_resource_group_cost_management_view` (derived from provider schema).
@immutable
final class ResourceGroupCostManagementViewPivot {
  const ResourceGroupCostManagementViewPivot({
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

/// Factory wrapper for `azurerm_resource_group_cost_management_view`.
final class AzurermResourceGroupCostManagementView extends Resource {
  static const String tfType = 'azurerm_resource_group_cost_management_view';

  AzurermResourceGroupCostManagementView(
    super.localName, {
    required TfArg<bool> accumulated,
    required TfArg<String> chartType,
    required TfArg<String> displayName,
    required TfArg<String> name,
    required TfArg<String> reportType,
    required TfArg<String> resourceGroupId,
    required TfArg<String> timeframe,
    required ResourceGroupCostManagementViewDataset dataset,
    List<ResourceGroupCostManagementViewKpi>? kpi,
    List<ResourceGroupCostManagementViewPivot>? pivot,
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
           'resource_group_id': resourceGroupId,
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
      _azurermResourceGroupCostManagementViewSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourceGroupCostManagementView>`.
  RefTo<AzurermResourceGroupCostManagementView> get ref => RefTo.of(this);

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

  /// Reference to `resource_group_id` attribute.
  TfRef<String> get resourceGroupId =>
      TfRef.attribute<String>(this, 'resource_group_id');

  /// Reference to `timeframe` attribute.
  TfRef<String> get timeframe => TfRef.attribute<String>(this, 'timeframe');
}
