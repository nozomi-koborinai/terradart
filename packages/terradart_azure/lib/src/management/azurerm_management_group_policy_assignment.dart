// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_management_group_policy_assignment`.
const Set<String> _azurermManagementGroupPolicyAssignmentSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_management_group_policy_assignment` (derived from provider schema).
@immutable
final class ManagementGroupPolicyAssignmentIdentity {
  const ManagementGroupPolicyAssignmentIdentity({
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

/// Typed helper for the `non_compliance_message` block of
/// `azurerm_management_group_policy_assignment` (derived from provider schema).
@immutable
final class ManagementGroupPolicyAssignmentNonComplianceMessage {
  const ManagementGroupPolicyAssignmentNonComplianceMessage({
    required this.content,
    this.policyDefinitionReferenceId,
  });

  final TfArg<String> content;

  final TfArg<String>? policyDefinitionReferenceId;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'policy_definition_reference_id': ?policyDefinitionReferenceId?.toTfJson(),
  };
}

/// Typed helper for the `overrides` block of
/// `azurerm_management_group_policy_assignment` (derived from provider schema).
@immutable
final class ManagementGroupPolicyAssignmentOverrides {
  const ManagementGroupPolicyAssignmentOverrides({
    required this.value,
    this.selectors,
  });

  final TfArg<String> value;

  final List<ManagementGroupPolicyAssignmentOverridesSelectors>? selectors;

  @internal
  Map<String, Object?> encode() => {
    'value': value.toTfJson(),
    if (selectors != null)
      'selectors': [for (final e in selectors!) e.encode()],
  };
}

/// Typed helper for the `overrides.selectors` block of
/// `azurerm_management_group_policy_assignment` (derived from provider schema).
@immutable
final class ManagementGroupPolicyAssignmentOverridesSelectors {
  const ManagementGroupPolicyAssignmentOverridesSelectors({
    this.inCase,
    this.kind,
    this.notIn,
  });

  final TfArg<List<String>>? inCase;

  final TfArg<String>? kind;

  final TfArg<List<String>>? notIn;

  @internal
  Map<String, Object?> encode() => {
    'in': ?inCase?.toTfJson(),
    'kind': ?kind?.toTfJson(),
    'not_in': ?notIn?.toTfJson(),
  };
}

/// Typed helper for the `resource_selectors` block of
/// `azurerm_management_group_policy_assignment` (derived from provider schema).
@immutable
final class ManagementGroupPolicyAssignmentResourceSelectors {
  const ManagementGroupPolicyAssignmentResourceSelectors({
    this.name,
    required this.selectors,
  });

  final TfArg<String>? name;

  final List<ManagementGroupPolicyAssignmentResourceSelectorsSelectors>
  selectors;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'selectors': [for (final e in selectors) e.encode()],
  };
}

/// Typed helper for the `resource_selectors.selectors` block of
/// `azurerm_management_group_policy_assignment` (derived from provider schema).
@immutable
final class ManagementGroupPolicyAssignmentResourceSelectorsSelectors {
  const ManagementGroupPolicyAssignmentResourceSelectorsSelectors({
    this.inCase,
    required this.kind,
    this.notIn,
  });

  final TfArg<List<String>>? inCase;

  final TfArg<String> kind;

  final TfArg<List<String>>? notIn;

  @internal
  Map<String, Object?> encode() => {
    'in': ?inCase?.toTfJson(),
    'kind': kind.toTfJson(),
    'not_in': ?notIn?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_management_group_policy_assignment`.
final class AzurermManagementGroupPolicyAssignment extends Resource {
  static const String tfType = 'azurerm_management_group_policy_assignment';

  AzurermManagementGroupPolicyAssignment(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? enforce,
    TfArg<String>? location,
    required TfArg<String> managementGroupId,
    TfArg<String>? metadata,
    required TfArg<String> name,
    TfArg<List<String>>? notScopes,
    TfArg<String>? parameters,
    required TfArg<String> policyDefinitionId,
    ManagementGroupPolicyAssignmentIdentity? identity,
    List<ManagementGroupPolicyAssignmentNonComplianceMessage>?
    nonComplianceMessage,
    List<ManagementGroupPolicyAssignmentOverrides>? overrides,
    List<ManagementGroupPolicyAssignmentResourceSelectors>? resourceSelectors,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': ?displayName,
           'enforce': ?enforce,
           'location': ?location,
           'management_group_id': managementGroupId,
           'metadata': ?metadata,
           'name': name,
           'not_scopes': ?notScopes,
           'parameters': ?parameters,
           'policy_definition_id': policyDefinitionId,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (nonComplianceMessage != null)
             'non_compliance_message': TfArg.literal([
               for (final e in nonComplianceMessage) e.encode(),
             ]),
           if (overrides != null)
             'overrides': TfArg.literal([
               for (final e in overrides) e.encode(),
             ]),
           if (resourceSelectors != null)
             'resource_selectors': TfArg.literal([
               for (final e in resourceSelectors) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermManagementGroupPolicyAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermManagementGroupPolicyAssignment>`.
  RefTo<AzurermManagementGroupPolicyAssignment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enforce` attribute.
  TfRef<bool> get enforce => TfRef.attribute<bool>(this, 'enforce');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `management_group_id` attribute.
  TfRef<String> get managementGroupId =>
      TfRef.attribute<String>(this, 'management_group_id');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `not_scopes` attribute.
  TfRef<List<String>> get notScopes =>
      TfRef.attribute<List<String>>(this, 'not_scopes');

  /// Reference to `parameters` attribute.
  TfRef<String> get parameters => TfRef.attribute<String>(this, 'parameters');

  /// Reference to `policy_definition_id` attribute.
  TfRef<String> get policyDefinitionId =>
      TfRef.attribute<String>(this, 'policy_definition_id');
}
