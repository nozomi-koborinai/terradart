// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dev_center_project_environment_type`.
const Set<String> _azurermDevCenterProjectEnvironmentTypeSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_dev_center_project_environment_type` (derived from provider schema).
@immutable
final class DevCenterProjectEnvironmentTypeIdentity {
  const DevCenterProjectEnvironmentTypeIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `user_role_assignment` block of
/// `azurerm_dev_center_project_environment_type` (derived from provider schema).
@immutable
final class DevCenterProjectEnvironmentTypeUserRoleAssignment {
  const DevCenterProjectEnvironmentTypeUserRoleAssignment({
    required this.roles,
    required this.userId,
  });

  final TfArg<List<String>> roles;

  final TfArg<String> userId;

  @internal
  Map<String, Object?> encode() => {
    'roles': roles.toTfJson(),
    'user_id': userId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dev_center_project_environment_type`.
final class AzurermDevCenterProjectEnvironmentType extends Resource {
  static const String tfType = 'azurerm_dev_center_project_environment_type';

  AzurermDevCenterProjectEnvironmentType(
    super.localName, {
    TfArg<List<String>>? creatorRoleAssignmentRoles,
    required TfArg<String> deploymentTargetId,
    required TfArg<String> devCenterProjectId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required DevCenterProjectEnvironmentTypeIdentity identity,
    List<DevCenterProjectEnvironmentTypeUserRoleAssignment>? userRoleAssignment,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'creator_role_assignment_roles': ?creatorRoleAssignmentRoles,
           'deployment_target_id': deploymentTargetId,
           'dev_center_project_id': devCenterProjectId,
           'location': location,
           'name': name,
           'tags': ?tags,
           'identity': TfArg.literal(identity.encode()),
           if (userRoleAssignment != null)
             'user_role_assignment': TfArg.literal([
               for (final e in userRoleAssignment) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDevCenterProjectEnvironmentTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenterProjectEnvironmentType>`.
  RefTo<AzurermDevCenterProjectEnvironmentType> get ref => RefTo.of(this);

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

  /// Reference to `dev_center_project_id` attribute.
  TfRef<String> get devCenterProjectId =>
      TfRef.attribute<String>(this, 'dev_center_project_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
