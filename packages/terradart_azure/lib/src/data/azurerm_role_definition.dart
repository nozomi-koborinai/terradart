// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../role/azurerm_role_definition.dart';

/// Sensitive field paths for `azurerm_role_definition`.
const Set<String> _azurermRoleDefinitionSensitive = <String>{};

/// Factory wrapper for `azurerm_role_definition`.
final class DataAzurermRoleDefinition extends Data {
  static const String tfType = 'azurerm_role_definition';

  DataAzurermRoleDefinition(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? roleDefinitionId,
    TfArg<String>? scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'role_definition_id': ?roleDefinitionId,
           'scope': ?scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRoleDefinitionSensitive;

  /// A reference to the `azurerm_role_definition` this data source reads, for
  /// arguments typed `RefTo<AzurermRoleDefinition>`.
  RefTo<AzurermRoleDefinition> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assignable_scopes` attribute.
  TfRef<List<String>> get assignableScopes =>
      TfRef.attribute<List<String>>(this, 'assignable_scopes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `permissions` attribute.
  TfRef<List<Map<String, Object?>>> get permissions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'permissions');

  /// Reference to `role_definition_resource_id` attribute.
  TfRef<String> get roleDefinitionResourceId =>
      TfRef.attribute<String>(this, 'role_definition_resource_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
