// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cosmosdb/azurerm_cosmosdb_mongo_database.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_mongo_database`.
const Set<String> _azurermCosmosdbMongoDatabaseSensitive = <String>{};

/// Factory wrapper for `azurerm_cosmosdb_mongo_database`.
final class DataAzurermCosmosdbMongoDatabase extends Data {
  static const String tfType = 'azurerm_cosmosdb_mongo_database';

  DataAzurermCosmosdbMongoDatabase(
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
  Set<String> get sensitiveFields => _azurermCosmosdbMongoDatabaseSensitive;

  /// A reference to the `azurerm_cosmosdb_mongo_database` this data source reads, for
  /// arguments typed `RefTo<AzurermCosmosdbMongoDatabase>`.
  RefTo<AzurermCosmosdbMongoDatabase> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
