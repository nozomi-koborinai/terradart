// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_os_config_v2_policy_orchestrator`.
const Set<String> _googleOsConfigV2PolicyOrchestratorSensitive = <String>{};

/// Typed helper for the `orchestrated_resource` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResource {
  const OsConfigV2PolicyOrchestratorOrchestratedResource({
    this.id,
    this.osPolicyAssignmentV1Payload,
  });

  final TfArg<String>? id;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload?
  osPolicyAssignmentV1Payload;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (osPolicyAssignmentV1Payload != null)
      'os_policy_assignment_v1_payload': osPolicyAssignmentV1Payload!.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload({
    this.description,
    this.name,
    required this.instanceFilter,
    required this.osPolicies,
    required this.rollout,
  });

  final TfArg<String>? description;

  final TfArg<String>? name;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter
  instanceFilter;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies
  >
  osPolicies;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout
  rollout;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'instance_filter': instanceFilter.encode(),
    'os_policies': [for (final e in osPolicies) e.encode()],
    'rollout': rollout.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  final TfArg<bool>? all;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels
  >?
  exclusionLabels;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels
  >?
  inclusionLabels;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories
  >?
  inventories;

  Map<String, Object?> encode() => {
    if (all != null) 'all': all!.toTfJson(),
    if (exclusionLabels != null)
      'exclusion_labels': [for (final e in exclusionLabels!) e.encode()],
    if (inclusionLabels != null)
      'inclusion_labels': [for (final e in inclusionLabels!) e.encode()],
    if (inventories != null)
      'inventories': [for (final e in inventories!) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.exclusion_labels` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterExclusionLabels({
    this.labels,
  });

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inclusion_labels` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInclusionLabels({
    this.labels,
  });

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.instance_filter.inventories` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories({
    required this.osShortName,
    this.osVersion,
  });

  final TfArg<String> osShortName;

  final TfArg<String>? osVersion;

  Map<String, Object?> encode() => {
    'os_short_name': osShortName.toTfJson(),
    if (osVersion != null) 'os_version': osVersion!.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies({
    this.allowNoResourceGroupMatch,
    this.description,
    required this.id,
    required this.mode,
    required this.resourceGroups,
  });

  final TfArg<bool>? allowNoResourceGroupMatch;

  final TfArg<String>? description;

  final TfArg<String> id;

  final TfArg<String> mode;

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups
  >
  resourceGroups;

  Map<String, Object?> encode() => {
    if (allowNoResourceGroupMatch != null)
      'allow_no_resource_group_match': allowNoResourceGroupMatch!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'id': id.toTfJson(),
    'mode': mode.toTfJson(),
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups({
    this.inventoryFilters,
    required this.resources,
  });

  final List<
    OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters
  >?
  inventoryFilters;

  final TfArg<List<Map<String, dynamic>>> resources;

  Map<String, Object?> encode() => {
    if (inventoryFilters != null)
      'inventory_filters': [for (final e in inventoryFilters!) e.encode()],
    'resources': resources.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.os_policies.resource_groups.inventory_filters` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroupsInventoryFilters({
    required this.osShortName,
    this.osVersion,
  });

  final TfArg<String> osShortName;

  final TfArg<String>? osVersion;

  Map<String, Object?> encode() => {
    'os_short_name': osShortName.toTfJson(),
    if (osVersion != null) 'os_version': osVersion!.toTfJson(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout({
    required this.minWaitDuration,
    required this.disruptionBudget,
  });

  final TfArg<String> minWaitDuration;

  final OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget
  disruptionBudget;

  Map<String, Object?> encode() => {
    'min_wait_duration': minWaitDuration.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// Typed helper for the `orchestrated_resource.os_policy_assignment_v1_payload.rollout.disruption_budget` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget {
  const OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget({
    this.fixed,
    this.percent,
  });

  final TfArg<num>? fixed;

  final TfArg<num>? percent;

  Map<String, Object?> encode() => {
    if (fixed != null) 'fixed': fixed!.toTfJson(),
    if (percent != null) 'percent': percent!.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestrationScope {
  const OsConfigV2PolicyOrchestratorOrchestrationScope({this.selectors});

  final List<OsConfigV2PolicyOrchestratorOrchestrationScopeSelectors>?
  selectors;

  Map<String, Object?> encode() => {
    if (selectors != null)
      'selectors': [for (final e in selectors!) e.encode()],
  };
}

/// Typed helper for the `orchestration_scope.selectors` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestrationScopeSelectors {
  const OsConfigV2PolicyOrchestratorOrchestrationScopeSelectors({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  final OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsLocationSelector?
  locationSelector;

  final OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsResourceHierarchySelector?
  resourceHierarchySelector;

  Map<String, Object?> encode() => {
    if (locationSelector != null)
      'location_selector': locationSelector!.encode(),
    if (resourceHierarchySelector != null)
      'resource_hierarchy_selector': resourceHierarchySelector!.encode(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.location_selector` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsLocationSelector {
  const OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsLocationSelector({
    this.includedLocations,
  });

  final TfArg<List<Object?>>? includedLocations;

  Map<String, Object?> encode() => {
    if (includedLocations != null)
      'included_locations': includedLocations!.toTfJson(),
  };
}

/// Typed helper for the `orchestration_scope.selectors.resource_hierarchy_selector` block of
/// `google_os_config_v2_policy_orchestrator` (derived from provider schema).
@immutable
final class OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsResourceHierarchySelector {
  const OsConfigV2PolicyOrchestratorOrchestrationScopeSelectorsResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  final TfArg<List<Object?>>? includedFolders;

  final TfArg<List<Object?>>? includedProjects;

  Map<String, Object?> encode() => {
    if (includedFolders != null)
      'included_folders': includedFolders!.toTfJson(),
    if (includedProjects != null)
      'included_projects': includedProjects!.toTfJson(),
  };
}

/// Factory wrapper for `google_os_config_v2_policy_orchestrator`.
///
/// PolicyOrchestrator helps managing project+zone level policy resources (e.g.
/// OS Policy Assignments), by providing tools to create, update and delete them
/// across projects and locations, at scale.
///
/// OS Config v2 **policy orchestrator** — stores a project-scoped recipe
/// that can create, update, or delete zonal OS policy assignments.
///
/// Set [state] to `STOPPED` so the orchestrator is stored but **does not
/// create any OS policy assignments** (Google: STOPPED = won't make any
/// changes). `ACTIVE` + `UPSERT` would fan out assignments across zones
/// and is not used in apply-smoke.
///
/// Enable `osconfig.googleapis.com` via [GoogleProjectService] before
/// apply. Set [deletionPolicy] to `DELETE` so destroy removes the unused
/// orchestrator.
///
/// Example:
/// ```dart
/// GoogleOsConfigV2PolicyOrchestrator(
///   localName: 'stopped',
///   policyOrchestratorId: TfArg.literal('terradart-po'),
///   action: TfArg.literal('UPSERT'),
///   state: TfArg.literal('STOPPED'),
///   orchestratedResource: OsConfigV2PolicyOrchestratorOrchestratedResource(
///     osPolicyAssignmentV1Payload:
///         OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload(
///       osPolicies: [
///         OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicies(
///           id: TfArg.literal('test-os-policy'),
///           mode: TfArg.literal('VALIDATION'),
///           resourceGroups: [
///             OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPoliciesResourceGroups(
///               resources: TfArg.literal([
///                 {
///                   'id': 'resource-tf',
///                   'file': {
///                     'content': 'file-content-tf',
///                     'path': 'file-path-tf-1',
///                     'state': 'PRESENT',
///                   },
///                 },
///               ]),
///             ),
///           ],
///         ),
///       ],
///       instanceFilter:
///           OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter(
///         inventories: [
///           OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilterInventories(
///             osShortName: TfArg.literal('windows-10'),
///           ),
///         ],
///       ),
///       rollout:
///           OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout(
///         disruptionBudget:
///             OsConfigV2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget(
///           percent: TfArg.literal(100),
///         ),
///         minWaitDuration: TfArg.literal('60s'),
///       ),
///     ),
///   ),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleOsConfigV2PolicyOrchestrator extends Resource {
  static const String tfType = 'google_os_config_v2_policy_orchestrator';

  GoogleOsConfigV2PolicyOrchestrator({
    required super.localName,
    required TfArg<String> policyOrchestratorId,
    required TfArg<String> action,
    required OsConfigV2PolicyOrchestratorOrchestratedResource
    orchestratedResource,
    TfArg<String>? state,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    OsConfigV2PolicyOrchestratorOrchestrationScope? orchestrationScope,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_orchestrator_id': policyOrchestratorId,
           'action': action,
           'orchestrated_resource': TfArg.literal(
             orchestratedResource.encode(),
           ),
           if (state != null) 'state': state,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (orchestrationScope != null)
             'orchestration_scope': TfArg.literal(orchestrationScope.encode()),
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOsConfigV2PolicyOrchestratorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `orchestration_state` attribute.
  TfRef<List<Map<String, Object?>>> get orchestrationState =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'orchestration_state');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
