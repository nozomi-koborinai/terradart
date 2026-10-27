// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cosmosdb_sql_role_definition`.
const Set<String> _azurermCosmosdbSqlRoleDefinitionSensitive = <String>{};

/// Cosmosdb Sql Role Definition enum for `type`.
extension type const CosmosdbSqlRoleDefinitionType._(TfArg<String> _)
    implements TfArg<String> {
  CosmosdbSqlRoleDefinitionType.variable(String name)
    : this._(TfArg.variable(name));
  CosmosdbSqlRoleDefinitionType.expression(String template)
    : this._(TfArg.expression(template));
  const CosmosdbSqlRoleDefinitionType.arg(TfArg<String> arg) : this._(arg);

  static const builtinrole = CosmosdbSqlRoleDefinitionType._(
    TfArgLiteral('BuiltInRole'),
  );
  static const customrole = CosmosdbSqlRoleDefinitionType._(
    TfArgLiteral('CustomRole'),
  );

  static const List<CosmosdbSqlRoleDefinitionType> values = [
    builtinrole,
    customrole,
  ];
}

/// Typed helper for the `permissions` block of
/// `azurerm_cosmosdb_sql_role_definition` (derived from provider schema).
@immutable
final class CosmosdbSqlRoleDefinitionPermissions {
  const CosmosdbSqlRoleDefinitionPermissions({required this.dataActions});

  final TfArg<List<String>> dataActions;

  @internal
  Map<String, Object?> encode() => {'data_actions': dataActions.toTfJson()};
}

/// Factory wrapper for `azurerm_cosmosdb_sql_role_definition`.
final class AzurermCosmosdbSqlRoleDefinition extends Resource {
  static const String tfType = 'azurerm_cosmosdb_sql_role_definition';

  AzurermCosmosdbSqlRoleDefinition(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<List<String>> assignableScopes,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? roleDefinitionId,
    CosmosdbSqlRoleDefinitionType? type,
    required List<CosmosdbSqlRoleDefinitionPermissions> permissions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'assignable_scopes': assignableScopes,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'role_definition_id': ?roleDefinitionId,
           'type': ?type,
           'permissions': TfArg.literal([
             for (final e in permissions) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCosmosdbSqlRoleDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbSqlRoleDefinition>`.
  RefTo<AzurermCosmosdbSqlRoleDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `assignable_scopes` attribute.
  TfRef<List<String>> get assignableScopes =>
      TfRef.attribute<List<String>>(this, 'assignable_scopes');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
