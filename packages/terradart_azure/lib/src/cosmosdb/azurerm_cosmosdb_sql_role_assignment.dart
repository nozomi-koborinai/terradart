// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_sql_role_assignment`.
const Set<String> _azurermCosmosdbSqlRoleAssignmentSensitive = <String>{};

/// Factory wrapper for `azurerm_cosmosdb_sql_role_assignment`.
final class AzurermCosmosdbSqlRoleAssignment extends Resource {
  static const String tfType = 'azurerm_cosmosdb_sql_role_assignment';

  AzurermCosmosdbSqlRoleAssignment(
    super.localName, {
    required TfArg<String> accountName,
    TfArg<String>? name,
    required TfArg<String> principalId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> roleDefinitionId,
    required TfArg<String> scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': ?name,
           'principal_id': principalId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'role_definition_id': roleDefinitionId,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbSqlRoleAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbSqlRoleAssignment>`.
  RefTo<AzurermCosmosdbSqlRoleAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
