// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_mongo_role_definition`.
const Set<String> _azurermCosmosdbMongoRoleDefinitionSensitive = <String>{};

/// Typed helper for the `privilege` block of
/// `azurerm_cosmosdb_mongo_role_definition` (derived from provider schema).
@immutable
final class CosmosdbMongoRoleDefinitionPrivilege {
  const CosmosdbMongoRoleDefinitionPrivilege({
    required this.actions,
    required this.resource,
  });

  final TfArg<List<String>> actions;

  final CosmosdbMongoRoleDefinitionResource resource;

  @internal
  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'resource': resource.encode(),
  };
}

/// Typed helper for the `privilege.resource` block of
/// `azurerm_cosmosdb_mongo_role_definition` (derived from provider schema).
@immutable
final class CosmosdbMongoRoleDefinitionResource {
  const CosmosdbMongoRoleDefinitionResource({this.collectionName, this.dbName});

  final TfArg<String>? collectionName;

  final TfArg<String>? dbName;

  @internal
  Map<String, Object?> encode() => {
    'collection_name': ?collectionName?.toTfJson(),
    'db_name': ?dbName?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_cosmosdb_mongo_role_definition`.
final class AzurermCosmosdbMongoRoleDefinition extends Resource {
  static const String tfType = 'azurerm_cosmosdb_mongo_role_definition';

  AzurermCosmosdbMongoRoleDefinition(
    super.localName, {
    required TfArg<String> cosmosMongoDatabaseId,
    TfArg<List<String>>? inheritedRoleNames,
    required TfArg<String> roleName,
    List<CosmosdbMongoRoleDefinitionPrivilege>? privilege,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cosmos_mongo_database_id': cosmosMongoDatabaseId,
           'inherited_role_names': ?inheritedRoleNames,
           'role_name': roleName,
           if (privilege != null)
             'privilege': TfArg.literal([
               for (final e in privilege) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCosmosdbMongoRoleDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbMongoRoleDefinition>`.
  RefTo<AzurermCosmosdbMongoRoleDefinition> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cosmos_mongo_database_id` attribute.
  TfRef<String> get cosmosMongoDatabaseId =>
      TfRef.attribute<String>(this, 'cosmos_mongo_database_id');

  /// Reference to `inherited_role_names` attribute.
  TfRef<List<String>> get inheritedRoleNames =>
      TfRef.attribute<List<String>>(this, 'inherited_role_names');

  /// Reference to `role_name` attribute.
  TfRef<String> get roleName => TfRef.attribute<String>(this, 'role_name');
}
