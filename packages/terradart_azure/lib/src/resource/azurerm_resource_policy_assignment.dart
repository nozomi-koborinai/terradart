// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_policy_assignment`.
const Set<String> _azurermResourcePolicyAssignmentSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_resource_policy_assignment` (derived from provider schema).
@immutable
final class ResourcePolicyAssignmentIdentity {
  const ResourcePolicyAssignmentIdentity({
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
/// `azurerm_resource_policy_assignment` (derived from provider schema).
@immutable
final class ResourcePolicyAssignmentNonComplianceMessage {
  const ResourcePolicyAssignmentNonComplianceMessage({
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
/// `azurerm_resource_policy_assignment` (derived from provider schema).
@immutable
final class ResourcePolicyAssignmentOverrides {
  const ResourcePolicyAssignmentOverrides({
    required this.value,
    this.selectors,
  });

  final TfArg<String> value;

  final List<ResourcePolicyAssignmentOverridesSelectors>? selectors;

  @internal
  Map<String, Object?> encode() => {
    'value': value.toTfJson(),
    if (selectors != null)
      'selectors': [for (final e in selectors!) e.encode()],
  };
}

/// Typed helper for the `overrides.selectors` block of
/// `azurerm_resource_policy_assignment` (derived from provider schema).
@immutable
final class ResourcePolicyAssignmentOverridesSelectors {
  const ResourcePolicyAssignmentOverridesSelectors({
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
/// `azurerm_resource_policy_assignment` (derived from provider schema).
@immutable
final class ResourcePolicyAssignmentResourceSelectors {
  const ResourcePolicyAssignmentResourceSelectors({
    this.name,
    required this.selectors,
  });

  final TfArg<String>? name;

  final List<ResourcePolicyAssignmentResourceSelectorsSelectors> selectors;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'selectors': [for (final e in selectors) e.encode()],
  };
}

/// Typed helper for the `resource_selectors.selectors` block of
/// `azurerm_resource_policy_assignment` (derived from provider schema).
@immutable
final class ResourcePolicyAssignmentResourceSelectorsSelectors {
  const ResourcePolicyAssignmentResourceSelectorsSelectors({
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

/// Factory wrapper for `azurerm_resource_policy_assignment`.
final class AzurermResourcePolicyAssignment extends Resource {
  static const String tfType = 'azurerm_resource_policy_assignment';

  AzurermResourcePolicyAssignment(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<bool>? enforce,
    TfArg<String>? location,
    TfArg<String>? metadata,
    required TfArg<String> name,
    TfArg<List<String>>? notScopes,
    TfArg<String>? parameters,
    required TfArg<String> policyDefinitionId,
    required TfArg<String> resourceId,
    ResourcePolicyAssignmentIdentity? identity,
    List<ResourcePolicyAssignmentNonComplianceMessage>? nonComplianceMessage,
    List<ResourcePolicyAssignmentOverrides>? overrides,
    List<ResourcePolicyAssignmentResourceSelectors>? resourceSelectors,
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
           'metadata': ?metadata,
           'name': name,
           'not_scopes': ?notScopes,
           'parameters': ?parameters,
           'policy_definition_id': policyDefinitionId,
           'resource_id': resourceId,
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
  Set<String> get sensitiveFields => _azurermResourcePolicyAssignmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourcePolicyAssignment>`.
  RefTo<AzurermResourcePolicyAssignment> get ref => RefTo.of(this);

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

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');
}
