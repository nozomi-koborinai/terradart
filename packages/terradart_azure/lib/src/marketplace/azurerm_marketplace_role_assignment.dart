// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_marketplace_role_assignment`.
const Set<String> _azurermMarketplaceRoleAssignmentSensitive = <String>{};

/// Marketplace Role Assignment Condition enum for `condition_version`.
extension type const MarketplaceRoleAssignmentConditionVersion._(
  TfArg<String> _
) implements TfArg<String> {
  MarketplaceRoleAssignmentConditionVersion.variable(String name)
    : this._(TfArg.variable(name));
  MarketplaceRoleAssignmentConditionVersion.expression(String template)
    : this._(TfArg.expression(template));
  const MarketplaceRoleAssignmentConditionVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p0 = MarketplaceRoleAssignmentConditionVersion._(
    TfArgLiteral('1.0'),
  );
  static const v2p0 = MarketplaceRoleAssignmentConditionVersion._(
    TfArgLiteral('2.0'),
  );

  static const List<MarketplaceRoleAssignmentConditionVersion> values = [
    v1p0,
    v2p0,
  ];
}

/// At most one of `role_definition_id`, `role_definition_name` on `azurerm_marketplace_role_assignment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.roleDefinitionId(...)`.
sealed class MarketplaceRoleAssignmentRoleDefinition {
  const MarketplaceRoleAssignmentRoleDefinition();

  /// Sets `role_definition_id`.
  const factory MarketplaceRoleAssignmentRoleDefinition.roleDefinitionId(
    TfArg<String> roleDefinitionId,
  ) = MarketplaceRoleAssignmentRoleDefinitionId;

  /// Sets `role_definition_name`.
  const factory MarketplaceRoleAssignmentRoleDefinition.roleDefinitionName(
    TfArg<String> roleDefinitionName,
  ) = MarketplaceRoleAssignmentRoleDefinitionName;

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

/// The [MarketplaceRoleAssignmentRoleDefinition.roleDefinitionId] choice: sets `role_definition_id`.
final class MarketplaceRoleAssignmentRoleDefinitionId
    extends MarketplaceRoleAssignmentRoleDefinition {
  const MarketplaceRoleAssignmentRoleDefinitionId(this.roleDefinitionId);

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

/// The [MarketplaceRoleAssignmentRoleDefinition.roleDefinitionName] choice: sets `role_definition_name`.
final class MarketplaceRoleAssignmentRoleDefinitionName
    extends MarketplaceRoleAssignmentRoleDefinition {
  const MarketplaceRoleAssignmentRoleDefinitionName(this.roleDefinitionName);

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

/// Factory wrapper for `azurerm_marketplace_role_assignment`.
final class AzurermMarketplaceRoleAssignment extends Resource {
  static const String tfType = 'azurerm_marketplace_role_assignment';

  AzurermMarketplaceRoleAssignment(
    super.localName, {
    TfArg<String>? condition,
    MarketplaceRoleAssignmentConditionVersion? conditionVersion,
    TfArg<String>? delegatedManagedIdentityResourceId,
    TfArg<String>? description,
    TfArg<String>? name,
    required TfArg<String> principalId,
    MarketplaceRoleAssignmentRoleDefinition? roleDefinition,
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
           ...?roleDefinition?.argMap,
           'skip_service_principal_aad_check': ?skipServicePrincipalAadCheck,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMarketplaceRoleAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMarketplaceRoleAssignment>`.
  RefTo<AzurermMarketplaceRoleAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');

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

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `role_definition_name` attribute.
  TfRef<String> get roleDefinitionName =>
      TfRef.attribute<String>(this, 'role_definition_name');

  /// Reference to `skip_service_principal_aad_check` attribute.
  TfRef<bool> get skipServicePrincipalAadCheck =>
      TfRef.attribute<bool>(this, 'skip_service_principal_aad_check');
}
