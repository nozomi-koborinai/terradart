// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_share_dataset_kusto_database`.
const Set<String> _azurermDataShareDatasetKustoDatabaseSensitive = <String>{};

/// Factory wrapper for `azurerm_data_share_dataset_kusto_database`.
final class AzurermDataShareDatasetKustoDatabase extends Resource {
  static const String tfType = 'azurerm_data_share_dataset_kusto_database';

  AzurermDataShareDatasetKustoDatabase(
    super.localName, {
    required TfArg<String> kustoDatabaseId,
    required TfArg<String> name,
    required TfArg<String> shareId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kusto_database_id': kustoDatabaseId,
           'name': name,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataShareDatasetKustoDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataShareDatasetKustoDatabase>`.
  RefTo<AzurermDataShareDatasetKustoDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `kusto_cluster_location` attribute.
  TfRef<String> get kustoClusterLocation =>
      TfRef.attribute<String>(this, 'kusto_cluster_location');

  /// Reference to `kusto_database_id` attribute.
  TfRef<String> get kustoDatabaseId =>
      TfRef.attribute<String>(this, 'kusto_database_id');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');
}
