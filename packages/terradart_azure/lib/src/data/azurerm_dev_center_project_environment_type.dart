// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_center/azurerm_dev_center_project_environment_type.dart';

/// Sensitive field paths for `azurerm_dev_center_project_environment_type`.
const Set<String> _azurermDevCenterProjectEnvironmentTypeSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_center_project_environment_type`.
final class DataAzurermDevCenterProjectEnvironmentType extends Data {
  static const String tfType = 'azurerm_dev_center_project_environment_type';

  DataAzurermDevCenterProjectEnvironmentType(
    super.localName, {
    required TfArg<String> devCenterProjectId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'dev_center_project_id': devCenterProjectId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDevCenterProjectEnvironmentTypeSensitive;

  /// A reference to the `azurerm_dev_center_project_environment_type` this data source reads, for
  /// arguments typed `RefTo<AzurermDevCenterProjectEnvironmentType>`.
  RefTo<AzurermDevCenterProjectEnvironmentType> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creator_role_assignment_roles` attribute.
  TfRef<List<String>> get creatorRoleAssignmentRoles =>
      TfRef.attribute<List<String>>(this, 'creator_role_assignment_roles');

  /// Reference to `deployment_target_id` attribute.
  TfRef<String> get deploymentTargetId =>
      TfRef.attribute<String>(this, 'deployment_target_id');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_role_assignment` attribute.
  TfRef<List<Map<String, Object?>>> get userRoleAssignment =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'user_role_assignment');

  /// Reference to `dev_center_project_id` attribute.
  TfRef<String> get devCenterProjectId =>
      TfRef.attribute<String>(this, 'dev_center_project_id');
}
