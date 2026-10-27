// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../role/azurerm_role_management_policy.dart';

/// Sensitive field paths for `azurerm_role_management_policy`.
const Set<String> _azurermRoleManagementPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_role_management_policy`.
final class DataAzurermRoleManagementPolicy extends Data {
  static const String tfType = 'azurerm_role_management_policy';

  DataAzurermRoleManagementPolicy(
    super.localName, {
    required TfArg<String> roleDefinitionId,
    required TfArg<String> scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'role_definition_id': roleDefinitionId, 'scope': scope},
       );

  @override
  Set<String> get sensitiveFields => _azurermRoleManagementPolicySensitive;

  /// A reference to the `azurerm_role_management_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermRoleManagementPolicy>`.
  RefTo<AzurermRoleManagementPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activation_rules` attribute.
  TfRef<List<Map<String, Object?>>> get activationRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'activation_rules');

  /// Reference to `active_assignment_rules` attribute.
  TfRef<List<Map<String, Object?>>> get activeAssignmentRules =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'active_assignment_rules',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `eligible_assignment_rules` attribute.
  TfRef<List<Map<String, Object?>>> get eligibleAssignmentRules =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'eligible_assignment_rules',
      );

  /// Reference to `notification_rules` attribute.
  TfRef<List<Map<String, Object?>>> get notificationRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'notification_rules');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
