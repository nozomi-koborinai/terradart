// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_role_assignment`.
const Set<String> _azurermRoleAssignmentSensitive = <String>{};

/// Role Assignment Condition enum for `condition_version`.
extension type const RoleAssignmentConditionVersion._(TfArg<String> _)
    implements TfArg<String> {
  RoleAssignmentConditionVersion.variable(String name)
    : this._(TfArg.variable(name));
  RoleAssignmentConditionVersion.expression(String template)
    : this._(TfArg.expression(template));
  const RoleAssignmentConditionVersion.arg(TfArg<String> arg) : this._(arg);

  static const v1p0 = RoleAssignmentConditionVersion._(TfArgLiteral('1.0'));
  static const v2p0 = RoleAssignmentConditionVersion._(TfArgLiteral('2.0'));

  static const List<RoleAssignmentConditionVersion> values = [v1p0, v2p0];
}

/// Role Assignment Principal enum for `principal_type`.
extension type const RoleAssignmentPrincipalType._(TfArg<String> _)
    implements TfArg<String> {
  RoleAssignmentPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  RoleAssignmentPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const RoleAssignmentPrincipalType.arg(TfArg<String> arg) : this._(arg);

  static const user = RoleAssignmentPrincipalType._(TfArgLiteral('User'));
  static const group = RoleAssignmentPrincipalType._(TfArgLiteral('Group'));
  static const serviceprincipal = RoleAssignmentPrincipalType._(
    TfArgLiteral('ServicePrincipal'),
  );

  static const List<RoleAssignmentPrincipalType> values = [
    user,
    group,
    serviceprincipal,
  ];
}

/// Exactly one of `role_definition_id`, `role_definition_name` on `azurerm_role_assignment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.roleDefinitionId(...)`.
sealed class RoleAssignmentRoleDefinition {
  const RoleAssignmentRoleDefinition();

  /// Sets `role_definition_id`.
  const factory RoleAssignmentRoleDefinition.roleDefinitionId(
    TfArg<String> roleDefinitionId,
  ) = RoleAssignmentRoleDefinitionId;

  /// Sets `role_definition_name`.
  const factory RoleAssignmentRoleDefinition.roleDefinitionName(
    TfArg<String> roleDefinitionName,
  ) = RoleAssignmentRoleDefinitionName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RoleAssignmentRoleDefinition.roleDefinitionId] choice: sets `role_definition_id`.
final class RoleAssignmentRoleDefinitionId
    extends RoleAssignmentRoleDefinition {
  const RoleAssignmentRoleDefinitionId(this.roleDefinitionId);

  final TfArg<String> roleDefinitionId;

  @internal
  @override
  String get blockKey => 'role_definition_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'role_definition_id': roleDefinitionId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'role_definition_id': roleDefinitionId,
  };
}

/// The [RoleAssignmentRoleDefinition.roleDefinitionName] choice: sets `role_definition_name`.
final class RoleAssignmentRoleDefinitionName
    extends RoleAssignmentRoleDefinition {
  const RoleAssignmentRoleDefinitionName(this.roleDefinitionName);

  final TfArg<String> roleDefinitionName;

  @internal
  @override
  String get blockKey => 'role_definition_name';

  @internal
  @override
  Map<String, Object?> encode() => {
    'role_definition_name': roleDefinitionName.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'role_definition_name': roleDefinitionName,
  };
}

/// Factory wrapper for `azurerm_role_assignment`.
final class AzurermRoleAssignment extends Resource {
  static const String tfType = 'azurerm_role_assignment';

  AzurermRoleAssignment(
    super.localName, {
    TfArg<String>? condition,
    RoleAssignmentConditionVersion? conditionVersion,
    TfArg<String>? delegatedManagedIdentityResourceId,
    TfArg<String>? description,
    TfArg<String>? name,
    required TfArg<String> principalId,
    RoleAssignmentPrincipalType? principalType,
    required RoleAssignmentRoleDefinition roleDefinition,
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
           ...roleDefinition.argMap,
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
