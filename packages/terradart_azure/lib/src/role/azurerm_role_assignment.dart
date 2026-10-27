// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_role_assignment`.
const Set<String> _azurermRoleAssignmentSensitive = <String>{};

/// Factory wrapper for `azurerm_role_assignment`.
final class AzurermRoleAssignment extends Resource {
  static const String tfType = 'azurerm_role_assignment';

  AzurermRoleAssignment(
    super.localName, {
    TfArg<String>? condition,
    TfArg<String>? conditionVersion,
    TfArg<String>? delegatedManagedIdentityResourceId,
    TfArg<String>? description,
    TfArg<String>? name,
    required TfArg<String> principalId,
    TfArg<String>? principalType,
    TfArg<String>? roleDefinitionId,
    TfArg<String>? roleDefinitionName,
    required TfArg<String> scope,
    TfArg<bool>? skipServicePrincipalAadCheck,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'condition': ?condition,
           'condition_version': ?conditionVersion,
           'delegated_managed_identity_resource_id':
               ?delegatedManagedIdentityResourceId,
           'description': ?description,
           'name': ?name,
           'principal_id': principalId,
           'principal_type': ?principalType,
           'role_definition_id': ?roleDefinitionId,
           'role_definition_name': ?roleDefinitionName,
           'scope': scope,
           'skip_service_principal_aad_check': ?skipServicePrincipalAadCheck,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRoleAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRoleAssignment>`.
  RefTo<AzurermRoleAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `condition` attribute.
  TfRef<String> get condition => TfRef.attribute<String>(this, 'condition');

  /// Reference to `condition_version` attribute.
  TfRef<String> get conditionVersion =>
      TfRef.attribute<String>(this, 'condition_version');

  /// Reference to `delegated_managed_identity_resource_id` attribute.
  TfRef<String> get delegatedManagedIdentityResourceId =>
      TfRef.attribute<String>(this, 'delegated_managed_identity_resource_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `role_definition_name` attribute.
  TfRef<String> get roleDefinitionName =>
      TfRef.attribute<String>(this, 'role_definition_name');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `skip_service_principal_aad_check` attribute.
  TfRef<bool> get skipServicePrincipalAadCheck =>
      TfRef.attribute<bool>(this, 'skip_service_principal_aad_check');
}
