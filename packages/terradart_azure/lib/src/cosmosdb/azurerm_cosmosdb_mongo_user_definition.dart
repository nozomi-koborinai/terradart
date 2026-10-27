// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_mongo_user_definition`.
const Set<String> _azurermCosmosdbMongoUserDefinitionSensitive = <String>{
  'password',
};

/// Factory wrapper for `azurerm_cosmosdb_mongo_user_definition`.
final class AzurermCosmosdbMongoUserDefinition extends Resource {
  static const String tfType = 'azurerm_cosmosdb_mongo_user_definition';

  AzurermCosmosdbMongoUserDefinition(
    super.localName, {
    required TfArg<String> cosmosMongoDatabaseId,
    TfArg<List<String>>? inheritedRoleNames,
    required Sensitive<String> password,
    required TfArg<String> username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cosmos_mongo_database_id': cosmosMongoDatabaseId,
           'inherited_role_names': ?inheritedRoleNames,
           'password': password,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCosmosdbMongoUserDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbMongoUserDefinition>`.
  RefTo<AzurermCosmosdbMongoUserDefinition> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cosmos_mongo_database_id` attribute.
  TfRef<String> get cosmosMongoDatabaseId =>
      TfRef.attribute<String>(this, 'cosmos_mongo_database_id');

  /// Reference to `inherited_role_names` attribute.
  TfRef<List<String>> get inheritedRoleNames =>
      TfRef.attribute<List<String>>(this, 'inherited_role_names');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
