// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_kusto_cosmosdb_data_connection`.
const Set<String> _azurermKustoCosmosdbDataConnectionSensitive = <String>{};

/// Factory wrapper for `azurerm_kusto_cosmosdb_data_connection`.
final class AzurermKustoCosmosdbDataConnection extends Resource {
  static const String tfType = 'azurerm_kusto_cosmosdb_data_connection';

  AzurermKustoCosmosdbDataConnection(
    super.localName, {
    required TfArg<String> cosmosdbContainerId,
    required TfArg<String> kustoDatabaseId,
    required TfArg<String> location,
    required TfArg<String> managedIdentityId,
    TfArg<String>? mappingRuleName,
    required TfArg<String> name,
    TfArg<String>? retrievalStartDate,
    required TfArg<String> tableName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cosmosdb_container_id': cosmosdbContainerId,
           'kusto_database_id': kustoDatabaseId,
           'location': location,
           'managed_identity_id': managedIdentityId,
           'mapping_rule_name': ?mappingRuleName,
           'name': name,
           'retrieval_start_date': ?retrievalStartDate,
           'table_name': tableName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKustoCosmosdbDataConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoCosmosdbDataConnection>`.
  RefTo<AzurermKustoCosmosdbDataConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cosmosdb_container_id` attribute.
  TfRef<String> get cosmosdbContainerId =>
      TfRef.attribute<String>(this, 'cosmosdb_container_id');

  /// Reference to `kusto_database_id` attribute.
  TfRef<String> get kustoDatabaseId =>
      TfRef.attribute<String>(this, 'kusto_database_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_identity_id` attribute.
  TfRef<String> get managedIdentityId =>
      TfRef.attribute<String>(this, 'managed_identity_id');

  /// Reference to `mapping_rule_name` attribute.
  TfRef<String> get mappingRuleName =>
      TfRef.attribute<String>(this, 'mapping_rule_name');

  /// Reference to `retrieval_start_date` attribute.
  TfRef<String> get retrievalStartDate =>
      TfRef.attribute<String>(this, 'retrieval_start_date');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
