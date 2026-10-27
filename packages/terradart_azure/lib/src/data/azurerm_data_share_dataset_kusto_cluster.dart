// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../data_share/azurerm_data_share_dataset_kusto_cluster.dart';

/// Sensitive field paths for `azurerm_data_share_dataset_kusto_cluster`.
const Set<String> _azurermDataShareDatasetKustoClusterSensitive = <String>{};

/// Factory wrapper for `azurerm_data_share_dataset_kusto_cluster`.
final class DataAzurermDataShareDatasetKustoCluster extends Data {
  static const String tfType = 'azurerm_data_share_dataset_kusto_cluster';

  DataAzurermDataShareDatasetKustoCluster(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> shareId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'share_id': shareId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataShareDatasetKustoClusterSensitive;

  /// A reference to the `azurerm_data_share_dataset_kusto_cluster` this data source reads, for
  /// arguments typed `RefTo<AzurermDataShareDatasetKustoCluster>`.
  RefTo<AzurermDataShareDatasetKustoCluster> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `kusto_cluster_id` attribute.
  TfRef<String> get kustoClusterId =>
      TfRef.attribute<String>(this, 'kusto_cluster_id');

  /// Reference to `kusto_cluster_location` attribute.
  TfRef<String> get kustoClusterLocation =>
      TfRef.attribute<String>(this, 'kusto_cluster_location');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');
}
