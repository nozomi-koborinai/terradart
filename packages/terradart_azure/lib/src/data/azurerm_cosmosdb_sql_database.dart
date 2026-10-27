// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cosmosdb/azurerm_cosmosdb_sql_database.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_sql_database`.
const Set<String> _azurermCosmosdbSqlDatabaseSensitive = <String>{};

/// Factory wrapper for `azurerm_cosmosdb_sql_database`.
final class DataAzurermCosmosdbSqlDatabase extends Data {
  static const String tfType = 'azurerm_cosmosdb_sql_database';

  DataAzurermCosmosdbSqlDatabase(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbSqlDatabaseSensitive;

  /// A reference to the `azurerm_cosmosdb_sql_database` this data source reads, for
  /// arguments typed `RefTo<AzurermCosmosdbSqlDatabase>`.
  RefTo<AzurermCosmosdbSqlDatabase> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autoscale_settings` attribute.
  TfRef<List<Map<String, Object?>>> get autoscaleSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'autoscale_settings');

  /// Reference to `throughput` attribute.
  TfRef<num> get throughput => TfRef.attribute<num>(this, 'throughput');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
