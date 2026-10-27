// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cosmosdb/azurerm_cosmosdb_sql_role_definition.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_sql_role_definition`.
const Set<String> _azurermCosmosdbSqlRoleDefinitionSensitive = <String>{};

/// Factory wrapper for `azurerm_cosmosdb_sql_role_definition`.
final class DataAzurermCosmosdbSqlRoleDefinition extends Data {
  static const String tfType = 'azurerm_cosmosdb_sql_role_definition';

  DataAzurermCosmosdbSqlRoleDefinition(
    super.localName, {
    required TfArg<String> accountName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> roleDefinitionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'role_definition_id': roleDefinitionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbSqlRoleDefinitionSensitive;

  /// A reference to the `azurerm_cosmosdb_sql_role_definition` this data source reads, for
  /// arguments typed `RefTo<AzurermCosmosdbSqlRoleDefinition>`.
  RefTo<AzurermCosmosdbSqlRoleDefinition> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assignable_scopes` attribute.
  TfRef<List<String>> get assignableScopes =>
      TfRef.attribute<List<String>>(this, 'assignable_scopes');

  /// Reference to `permissions` attribute.
  TfRef<List<Map<String, Object?>>> get permissions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'permissions');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');
}
