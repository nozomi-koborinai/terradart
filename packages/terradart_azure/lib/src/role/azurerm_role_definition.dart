// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_role_definition`.
const Set<String> _azurermRoleDefinitionSensitive = <String>{};

/// Typed helper for the `permissions` block of
/// `azurerm_role_definition` (derived from provider schema).
@immutable
final class RoleDefinitionPermissions {
  const RoleDefinitionPermissions({
    this.actions,
    this.dataActions,
    this.notActions,
    this.notDataActions,
  });

  final TfArg<List<String>>? actions;

  final TfArg<List<String>>? dataActions;

  final TfArg<List<String>>? notActions;

  final TfArg<List<String>>? notDataActions;

  @internal
  Map<String, Object?> encode() => {
    'actions': ?actions?.toTfJson(),
    'data_actions': ?dataActions?.toTfJson(),
    'not_actions': ?notActions?.toTfJson(),
    'not_data_actions': ?notDataActions?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_role_definition`.
final class AzurermRoleDefinition extends Resource {
  static const String tfType = 'azurerm_role_definition';

  AzurermRoleDefinition(
    super.localName, {
    TfArg<List<String>>? assignableScopes,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? roleDefinitionId,
    required TfArg<String> scope,
    List<RoleDefinitionPermissions>? permissions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assignable_scopes': ?assignableScopes,
           'description': ?description,
           'name': name,
           'role_definition_id': ?roleDefinitionId,
           'scope': scope,
           if (permissions != null)
             'permissions': TfArg.literal([
               for (final e in permissions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRoleDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRoleDefinition>`.
  RefTo<AzurermRoleDefinition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `role_definition_resource_id` attribute.
  TfRef<String> get roleDefinitionResourceId =>
      TfRef.attribute<String>(this, 'role_definition_resource_id');

  /// Reference to `assignable_scopes` attribute.
  TfRef<List<String>> get assignableScopes =>
      TfRef.attribute<List<String>>(this, 'assignable_scopes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
