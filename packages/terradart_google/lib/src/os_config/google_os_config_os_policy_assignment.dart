// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_os_config_os_policy_assignment`.
const Set<String> _googleOsConfigOsPolicyAssignmentSensitive = <String>{};

/// Typed helper for the `instance_filter` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInstanceFilter {
  const OsConfigOsPolicyAssignmentInstanceFilter({
    this.all,
    this.exclusionLabels,
    this.inclusionLabels,
    this.inventories,
  });

  final TfArg<bool>? all;

  final List<OsConfigOsPolicyAssignmentInstanceFilterExclusionLabels>?
  exclusionLabels;

  final List<OsConfigOsPolicyAssignmentInstanceFilterInclusionLabels>?
  inclusionLabels;

  final List<OsConfigOsPolicyAssignmentInstanceFilterInventories>? inventories;

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

/// Typed helper for the `instance_filter.exclusion_labels` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInstanceFilterExclusionLabels {
  const OsConfigOsPolicyAssignmentInstanceFilterExclusionLabels({this.labels});

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Typed helper for the `instance_filter.inclusion_labels` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInstanceFilterInclusionLabels {
  const OsConfigOsPolicyAssignmentInstanceFilterInclusionLabels({this.labels});

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Typed helper for the `instance_filter.inventories` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentInstanceFilterInventories {
  const OsConfigOsPolicyAssignmentInstanceFilterInventories({
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

/// Typed helper for the `os_policies` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPolicies {
  const OsConfigOsPolicyAssignmentOsPolicies({
    this.allowNoResourceGroupMatch,
    this.description,
    required this.id,
    required this.mode,
    required this.resourceGroups,
  });

  final TfArg<bool>? allowNoResourceGroupMatch;

  final TfArg<String>? description;

  final TfArg<String> id;

  final TfArg<OsConfigOsPolicyAssignmentOsPoliciesMode> mode;

  final List<OsConfigOsPolicyAssignmentOsPoliciesResourceGroups> resourceGroups;

  Map<String, Object?> encode() => {
    if (allowNoResourceGroupMatch != null)
      'allow_no_resource_group_match': allowNoResourceGroupMatch!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'id': id.toTfJson(),
    'mode': mode.toTfJson(),
    'resource_groups': [for (final e in resourceGroups) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
enum OsConfigOsPolicyAssignmentOsPoliciesMode implements TerraformEnum {
  modeUnspecified('MODE_UNSPECIFIED'),
  validation('VALIDATION'),
  enforcement('ENFORCEMENT');

  const OsConfigOsPolicyAssignmentOsPoliciesMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `os_policies.resource_groups` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroups {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroups({
    this.inventoryFilters,
    required this.resources,
  });

  final List<
    OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsInventoryFilters
  >?
  inventoryFilters;

  final TfArg<List<Map<String, dynamic>>> resources;

  Map<String, Object?> encode() => {
    if (inventoryFilters != null)
      'inventory_filters': [for (final e in inventoryFilters!) e.encode()],
    'resources': resources.toTfJson(),
  };
}

/// Typed helper for the `os_policies.resource_groups.inventory_filters` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsInventoryFilters {
  const OsConfigOsPolicyAssignmentOsPoliciesResourceGroupsInventoryFilters({
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

/// Typed helper for the `rollout` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRollout {
  const OsConfigOsPolicyAssignmentRollout({
    required this.minWaitDuration,
    required this.disruptionBudget,
  });

  final TfArg<String> minWaitDuration;

  final OsConfigOsPolicyAssignmentRolloutDisruptionBudget disruptionBudget;

  Map<String, Object?> encode() => {
    'min_wait_duration': minWaitDuration.toTfJson(),
    'disruption_budget': disruptionBudget.encode(),
  };
}

/// Typed helper for the `rollout.disruption_budget` block of
/// `google_os_config_os_policy_assignment` (derived from provider schema).
@immutable
final class OsConfigOsPolicyAssignmentRolloutDisruptionBudget {
  const OsConfigOsPolicyAssignmentRolloutDisruptionBudget({
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

/// Factory wrapper for `google_os_config_os_policy_assignment`.
///
/// OS Config OS policy assignment — bundles OS policies and rolls them out
/// to a filtered set of VM instances in a zone.
///
/// Enable `osconfig.googleapis.com` via [GoogleProjectService] before apply.
/// Requires `location` (zone), `name`, `os_policies`, `instance_filter`, and
/// `rollout` blocks.
///
/// Example:
/// ```dart
/// GoogleOsConfigOsPolicyAssignment(
///   localName: 'baseline',
///   name: TfArg.literal('baseline-policies'),
///   location: TfArg.literal('us-central1-a'),
///   osPolicies: [/* OsConfigOsPolicyAssignmentOsPolicies helpers */],
///   instanceFilter: OsConfigOsPolicyAssignmentInstanceFilter(
///     all: TfArg.literal(true),
///   ),
///   rollout: OsConfigOsPolicyAssignmentRollout(
///     disruptionBudget: OsConfigOsPolicyAssignmentRolloutDisruptionBudget(
///       percent: TfArg.literal(100),
///     ),
///     minWaitDuration: TfArg.literal('0s'),
///   ),
/// );
/// ```
final class GoogleOsConfigOsPolicyAssignment extends Resource {
  static const String tfType = 'google_os_config_os_policy_assignment';

  GoogleOsConfigOsPolicyAssignment({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required List<OsConfigOsPolicyAssignmentOsPolicies> osPolicies,
    required OsConfigOsPolicyAssignmentInstanceFilter instanceFilter,
    required OsConfigOsPolicyAssignmentRollout rollout,
    TfArg<String>? description,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? skipAwaitRollout,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'os_policies': TfArg.literal([
             for (final e in osPolicies) e.encode(),
           ]),
           'instance_filter': TfArg.literal(instanceFilter.encode()),
           'rollout': TfArg.literal(rollout.encode()),
           if (description != null) 'description': description,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (skipAwaitRollout != null) 'skip_await_rollout': skipAwaitRollout,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsConfigOsPolicyAssignmentSensitive;

  /// Reference to `baseline` attribute.
  TfRef<bool> get baseline => TfRef.attribute<bool>(this, 'baseline');

  /// Reference to `deleted` attribute.
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `revision_create_time` attribute.
  TfRef<String> get revisionCreateTime =>
      TfRef.attribute<String>(this, 'revision_create_time');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `rollout_state` attribute.
  TfRef<String> get rolloutState =>
      TfRef.attribute<String>(this, 'rollout_state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
