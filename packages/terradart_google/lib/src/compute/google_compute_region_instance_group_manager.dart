// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_instance_group_manager`.
const Set<String> _googleComputeRegionInstanceGroupManagerSensitive =
    <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// `distribution_policy_target_shape`. Controls how strictly the MIG
/// converges on an even spread across [distributionPolicyZones]
/// during proactive or resize-triggered rebalancing.
///
/// - [even]: equal counts per zone where possible.
/// - [balanced]: best-effort balance, biased by zone capacity.
/// - [any]: no spread guarantees; pick whichever zone has room.
/// - [anySingleZone]: place all VMs in a single zone (smallest
///   blast radius / cheapest egress, no zone HA).
///
/// Note: `ANY` is not a Dart reserved word — bare [any] is safe; we
/// avoid a method-name clash on `Iterable.any` because this is a
/// value of an enum, not a method.
enum RegionInstanceGroupManagerDistributionPolicyTargetShape {
  even('EVEN'),
  balanced('BALANCED'),
  any('ANY'),
  anySingleZone('ANY_SINGLE_ZONE');

  const RegionInstanceGroupManagerDistributionPolicyTargetShape(
    this.terraformValue,
  );
  final String terraformValue;
}

// ===========================================================================
// Enums for update_policy
// ===========================================================================

/// `update_policy.type`. Controls whether the MIG actively performs
/// the rolling update or waits for an external action (resize,
/// recreate-instances) to apply it.
enum RegionInstanceGroupManagerUpdatePolicyType {
  opportunistic('OPPORTUNISTIC'),
  proactive('PROACTIVE');

  const RegionInstanceGroupManagerUpdatePolicyType(this.terraformValue);
  final String terraformValue;
}

/// `update_policy.instance_redistribution_type` (regional only).
/// `PROACTIVE` (default) keeps zones balanced as VMs come and go;
/// `NONE` disables proactive rebalancing.
enum RegionInstanceGroupManagerInstanceRedistributionType {
  proactive('PROACTIVE'),
  none('NONE');

  const RegionInstanceGroupManagerInstanceRedistributionType(
    this.terraformValue,
  );
  final String terraformValue;
}

/// `update_policy.minimal_action` / `update_policy.most_disruptive_allowed_action`.
/// Shared enum — both fields accept the same value set.
enum RegionInstanceGroupManagerUpdatePolicyAction {
  none('NONE'),
  refresh('REFRESH'),
  restart('RESTART'),
  replace('REPLACE');

  const RegionInstanceGroupManagerUpdatePolicyAction(this.terraformValue);
  final String terraformValue;
}

/// `update_policy.replacement_method`. `SUBSTITUTE` (default) replaces
/// VMs with newly-named ones; `RECREATE` preserves instance names but
/// requires `max_unavailable_*` > 0.
enum RegionInstanceGroupManagerUpdatePolicyReplacementMethod {
  substitute('SUBSTITUTE'),
  recreate('RECREATE');

  const RegionInstanceGroupManagerUpdatePolicyReplacementMethod(
    this.terraformValue,
  );
  final String terraformValue;
}

// ===========================================================================
// version block (nesting=list, min_items=1)
// ===========================================================================

/// One entry in [versions]. Each version pins an
/// [instanceTemplate] (a `google_compute_instance_template`
/// self-link, typically a within-batch sibling) and optionally caps
/// how many instances run that version via [targetSize].
///
/// Multiple [RegionInstanceGroupManagerVersion] entries enable
/// canary rollouts: the MIG splits the total
/// [GoogleComputeRegionInstanceGroupManager.targetSize] across
/// versions based on each version's [targetSize] (fixed count or
/// percentage). A version without [targetSize] absorbs the
/// remainder.
@immutable
class RegionInstanceGroupManagerVersion {
  const RegionInstanceGroupManagerVersion({
    required this.instanceTemplate,
    this.name,
    this.targetSize,
  });

  /// Self-link of the `google_compute_instance_template` resource used
  /// to create members of this version.
  final TfArg<String> instanceTemplate;

  /// Optional version label. Used in API listings and logs.
  final TfArg<String>? name;

  /// Cap on how many instances run this version (fixed or percent).
  final RegionInstanceGroupManagerVersionTargetSize? targetSize;

  Map<String, Object?> toArgMap() => {
        'instance_template': instanceTemplate.toTfJson(),
        if (name != null) 'name': name!.toTfJson(),
        if (targetSize != null) 'target_size': [targetSize!.toArgMap()],
      };
}

/// `version.target_size` (`max_items=1`). Exactly one of [fixed] or
/// [percent] should be set.
@immutable
class RegionInstanceGroupManagerVersionTargetSize {
  const RegionInstanceGroupManagerVersionTargetSize({this.fixed, this.percent});

  /// Fixed number of instances managed for this version.
  final int? fixed;

  /// Percentage (0-100) of total MIG size managed for this version.
  final int? percent;

  Map<String, Object?> toArgMap() => {
        if (fixed != null) 'fixed': fixed,
        if (percent != null) 'percent': percent,
      };
}

// ===========================================================================
// auto_healing_policies block (max_items=1)
// ===========================================================================

/// `auto_healing_policies` block. When a VM fails its [healthCheck]
/// for longer than the initial-delay window, the MIG recreates it.
/// Schema marks both fields as required.
@immutable
class RegionInstanceGroupManagerAutoHealingPolicy {
  const RegionInstanceGroupManagerAutoHealingPolicy({
    required this.healthCheck,
    required this.initialDelaySec,
  });

  /// Self-link of a `google_compute_health_check` (or compatible
  /// regional health check). Typically wired as
  /// `var.health_check_id`.
  final TfArg<String> healthCheck;

  /// Seconds to wait after a VM is created before applying autohealing
  /// to it. Schema range: 0-3600.
  final int initialDelaySec;

  Map<String, Object?> toArgMap() => {
        'health_check': healthCheck.toTfJson(),
        'initial_delay_sec': initialDelaySec,
      };
}

// ===========================================================================
// update_policy block (max_items=1)
// ===========================================================================

/// `update_policy` block. Drives how the regional MIG rolls a new
/// [RegionInstanceGroupManagerVersion] across its members and how
/// aggressively it rebalances across [distributionPolicyZones].
@immutable
class RegionInstanceGroupManagerUpdatePolicy {
  const RegionInstanceGroupManagerUpdatePolicy({
    required this.minimalAction,
    required this.type,
    this.instanceRedistributionType,
    this.mostDisruptiveAllowedAction,
    this.maxSurgeFixed,
    this.maxSurgePercent,
    this.maxUnavailableFixed,
    this.maxUnavailablePercent,
    this.replacementMethod,
  });

  /// Required. Minimum action the MIG is allowed to apply to a VM.
  final RegionInstanceGroupManagerUpdatePolicyAction minimalAction;

  /// Required. `OPPORTUNISTIC` waits for resize/recreate-instances
  /// calls; `PROACTIVE` actively rolls.
  final RegionInstanceGroupManagerUpdatePolicyType type;

  /// Regional-only. Whether the MIG proactively rebalances VMs
  /// across [distributionPolicyZones]. Default `PROACTIVE`.
  final RegionInstanceGroupManagerInstanceRedistributionType?
      instanceRedistributionType;

  /// Maximum action the MIG may escalate to.
  final RegionInstanceGroupManagerUpdatePolicyAction?
      mostDisruptiveAllowedAction;

  /// Extra VMs the MIG may add over
  /// [GoogleComputeRegionInstanceGroupManager.targetSize] during the
  /// rollout. Conflicts with [maxSurgePercent].
  final int? maxSurgeFixed;

  /// Percent equivalent of [maxSurgeFixed].
  final int? maxSurgePercent;

  /// VMs allowed to be unavailable simultaneously. Conflicts with
  /// [maxUnavailablePercent].
  final int? maxUnavailableFixed;

  /// Percent equivalent of [maxUnavailableFixed].
  final int? maxUnavailablePercent;

  /// Whether to keep names (`RECREATE`) or randomise them
  /// (`SUBSTITUTE`, default) when swapping VMs.
  final RegionInstanceGroupManagerUpdatePolicyReplacementMethod?
      replacementMethod;

  Map<String, Object?> toArgMap() => {
        'minimal_action': minimalAction.terraformValue,
        'type': type.terraformValue,
        if (instanceRedistributionType != null)
          'instance_redistribution_type':
              instanceRedistributionType!.terraformValue,
        if (mostDisruptiveAllowedAction != null)
          'most_disruptive_allowed_action':
              mostDisruptiveAllowedAction!.terraformValue,
        if (maxSurgeFixed != null) 'max_surge_fixed': maxSurgeFixed,
        if (maxSurgePercent != null) 'max_surge_percent': maxSurgePercent,
        if (maxUnavailableFixed != null)
          'max_unavailable_fixed': maxUnavailableFixed,
        if (maxUnavailablePercent != null)
          'max_unavailable_percent': maxUnavailablePercent,
        if (replacementMethod != null)
          'replacement_method': replacementMethod!.terraformValue,
      };
}

// ===========================================================================
// named_port block (nesting=set)
// ===========================================================================

/// One entry in [namedPorts]. Backend services that reference this
/// MIG by `port_name` look up the matching [port] number here.
@immutable
class RegionInstanceGroupManagerNamedPort {
  const RegionInstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  /// Port label. 1-63 chars, RFC1035.
  final String name;

  /// Port number (1-65535).
  final int port;

  Map<String, Object?> toArgMap() => {'name': name, 'port': port};
}

// ===========================================================================
// stateful_disk / stateful_internal_ip / stateful_external_ip blocks
// ===========================================================================

/// One entry in [statefulDisks]. Marks a disk attached at
/// [deviceName] as **stateful** — the MIG preserves the disk across
/// VM recreates per [deleteRule]. Note: cross-zone instance
/// redistribution must be disabled (set
/// [RegionInstanceGroupManagerUpdatePolicy.instanceRedistributionType]
/// to [RegionInstanceGroupManagerInstanceRedistributionType.none])
/// before updating stateful disks on an existing regional MIG.
@immutable
class RegionInstanceGroupManagerStatefulDisk {
  const RegionInstanceGroupManagerStatefulDisk({
    required this.deviceName,
    this.deleteRule,
  });

  /// Device name the disk is attached to on the VM (matches the
  /// `device_name` set on the instance template's `disk` block).
  final String deviceName;

  /// `NEVER` (default — detach but keep the disk) or
  /// `ON_PERMANENT_INSTANCE_DELETION` (delete with the VM).
  final String? deleteRule;

  Map<String, Object?> toArgMap() => {
        'device_name': deviceName,
        if (deleteRule != null) 'delete_rule': deleteRule,
      };
}

/// One entry in [statefulInternalIps] / [statefulExternalIps].
/// Both blocks share the same shape.
@immutable
class RegionInstanceGroupManagerStatefulIp {
  const RegionInstanceGroupManagerStatefulIp({
    this.interfaceName,
    this.deleteRule,
  });

  /// Name of the VM network interface the IP is attached to.
  final String? interfaceName;

  /// `NEVER` (default — detach but keep the Address) or
  /// `ON_PERMANENT_INSTANCE_DELETION` (delete with the VM).
  final String? deleteRule;

  Map<String, Object?> toArgMap() => {
        if (interfaceName != null) 'interface_name': interfaceName,
        if (deleteRule != null) 'delete_rule': deleteRule,
      };
}

// ===========================================================================
// all_instances_config block (max_items=1)
// ===========================================================================

/// `all_instances_config` block. Patches labels and metadata onto
/// every VM the MIG manages, overlaying the instance template's
/// values.
@immutable
class RegionInstanceGroupManagerAllInstancesConfig {
  const RegionInstanceGroupManagerAllInstancesConfig({
    this.labels,
    this.metadata,
  });

  final Map<String, String>? labels;
  final Map<String, String>? metadata;

  Map<String, Object?> toArgMap() => {
        if (labels != null) 'labels': labels,
        if (metadata != null) 'metadata': metadata,
      };
}

// ===========================================================================
// instance_lifecycle_policy block (max_items=1)
// ===========================================================================

/// `instance_lifecycle_policy` block — fine-grained behavior on
/// failures and template updates.
@immutable
class RegionInstanceGroupManagerInstanceLifecyclePolicy {
  const RegionInstanceGroupManagerInstanceLifecyclePolicy({
    this.defaultActionOnFailure,
    this.forceUpdateOnRepair,
  });

  /// Default behavior for instance or health check failures.
  final String? defaultActionOnFailure;

  /// `YES` to apply the latest template when repairing a VM; `NO`
  /// (default) to honor the update policy.
  final String? forceUpdateOnRepair;

  Map<String, Object?> toArgMap() => {
        if (defaultActionOnFailure != null)
          'default_action_on_failure': defaultActionOnFailure,
        if (forceUpdateOnRepair != null)
          'force_update_on_repair': forceUpdateOnRepair,
      };
}

// ===========================================================================
// instance_flexibility_policy block (regional only, max_items=1)
// ===========================================================================

/// `instance_flexibility_policy` block — regional only. Lets the MIG
/// pick from multiple machine types when creating new VMs, instead
/// of the single machine type set on the instance template.
@immutable
class RegionInstanceGroupManagerInstanceFlexibilityPolicy {
  const RegionInstanceGroupManagerInstanceFlexibilityPolicy({
    this.instanceSelections,
  });

  /// Named selections of machine types. The MIG ranks selections by
  /// [RegionInstanceGroupManagerInstanceSelection.rank] (lower =
  /// higher preference).
  final List<RegionInstanceGroupManagerInstanceSelection>? instanceSelections;

  Map<String, Object?> toArgMap() => {
        if (instanceSelections != null)
          'instance_selections':
              instanceSelections!.map((s) => s.toArgMap()).toList(),
      };
}

/// One entry in
/// [RegionInstanceGroupManagerInstanceFlexibilityPolicy.instanceSelections].
@immutable
class RegionInstanceGroupManagerInstanceSelection {
  const RegionInstanceGroupManagerInstanceSelection({
    required this.name,
    required this.machineTypes,
    this.rank,
  });

  /// Required. Selection label.
  final String name;

  /// Required. Full machine-type names (e.g. `n1-standard-16`).
  final List<String> machineTypes;

  /// Lower number = higher preference. Selections with the same rank
  /// are treated equally.
  final int? rank;

  Map<String, Object?> toArgMap() => {
        'name': name,
        'machine_types': machineTypes,
        if (rank != null) 'rank': rank,
      };
}

// ===========================================================================
// standby_policy block (max_items=1)
// ===========================================================================

/// `standby_policy` block — controls how the MIG resumes VMs from a
/// standby pool during scale-out.
@immutable
class RegionInstanceGroupManagerStandbyPolicy {
  const RegionInstanceGroupManagerStandbyPolicy({
    this.initialDelaySec,
    this.mode,
  });

  /// Seconds to wait after creating a VM before allowing standby
  /// transitions (0-3600, default 0).
  final int? initialDelaySec;

  /// Standby mode. Defaults to `MANUAL`.
  final String? mode;

  Map<String, Object?> toArgMap() => {
        if (initialDelaySec != null) 'initial_delay_sec': initialDelaySec,
        if (mode != null) 'mode': mode,
      };
}

// ===========================================================================
// target_size_policy block (nesting=list, no max_items)
// ===========================================================================

/// One entry in [targetSizePolicies]. Configures whether the MIG
/// creates VMs individually or all at once to reach
/// [GoogleComputeRegionInstanceGroupManager.targetSize].
@immutable
class RegionInstanceGroupManagerTargetSizePolicy {
  const RegionInstanceGroupManagerTargetSizePolicy({required this.mode});

  /// Required. The provisioning mode (e.g. `BATCH`, `INDIVIDUAL`).
  final String mode;

  Map<String, Object?> toArgMap() => {'mode': mode};
}

// ===========================================================================
// resource_policies block (max_items=1)
// ===========================================================================

/// `resource_policies` block — wires the MIG to a
/// `google_compute_resource_policy` workload policy.
@immutable
class RegionInstanceGroupManagerResourcePolicies {
  const RegionInstanceGroupManagerResourcePolicies({this.workloadPolicy});

  /// Full or partial URL of the workload policy.
  final TfArg<String>? workloadPolicy;

  Map<String, Object?> toArgMap() => {
        if (workloadPolicy != null)
          'workload_policy': workloadPolicy!.toTfJson(),
      };
}

/// Factory wrapper for `google_compute_region_instance_group_manager`
/// (provider `hashicorp/google ~> 7.0`).
///
/// A **regional** Managed Instance Group (MIG) — like the zonal
/// `google_compute_instance_group_manager` but distributed across
/// multiple zones inside a single GCP region. The regional MIG drives
/// the same VM lifecycle (create / heal / roll / preserve state) and
/// adds two regional-only controls:
/// - [distributionPolicyZones]: which zones in the region the MIG may
///   place VMs in. If unset, the MIG spreads across all available
///   zones in [region].
/// - [distributionPolicyTargetShape]: how aggressively the MIG balances
///   instances across [distributionPolicyZones]. See
///   [RegionInstanceGroupManagerDistributionPolicyTargetShape].
/// - [RegionInstanceGroupManagerUpdatePolicy.instanceRedistributionType]:
///   whether the MIG proactively rebalances VMs back toward the
///   target shape when VMs are added or removed.
///
/// For single-zone MIGs use `google_compute_instance_group_manager`
/// (curated separately, with prefix `InstanceGroupManager`). Aside
/// from the zone/region distinction and the three regional-only
/// fields above, the two resources are field-compatible.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_region_instance_group_manager.`).
/// - `name`: GCP resource name (1-63 chars, lowercase RFC1035).
/// - `region`: GCP region. The Terraform schema lists this as
///   optional+computed (the provider falls back to the provider-level
///   region), but it is wrapped as required here to keep cross-region
///   composition explicit.
/// - `base_instance_name`: 1-58 chars; each VM the MIG creates is named
///   `<base_instance_name>-<random4>`.
/// - At least one [RegionInstanceGroupManagerVersion] in [versions];
///   each version requires an `instance_template` self-link.
///
/// Cross-resource references (typical wiring):
/// - [RegionInstanceGroupManagerVersion.instanceTemplate]: self-link
///   of a `google_compute_instance_template` resource (curated as a
///   sibling in the same batch).
/// - [RegionInstanceGroupManagerAutoHealingPolicy.healthCheck]:
///   self-link of a `google_compute_health_check` or
///   `google_compute_region_health_check`. When a VM fails this
///   health check for longer than
///   [RegionInstanceGroupManagerAutoHealingPolicy.initialDelaySec],
///   the MIG recreates it.
/// - [targetPools]: self-links of `google_compute_target_pool`. New VMs
///   are added to these target pools.
///
/// Example (single-version regional MIG spread across two zones with
/// proactive rebalancing):
/// ```dart
/// final mig = GoogleComputeRegionInstanceGroupManager(
///   localName: 'web',
///   name: TfArg.literal('web-rmig'),
///   region: TfArg.literal('asia-northeast1'),
///   baseInstanceName: TfArg.literal('web'),
///   targetSize: TfArg.literal(6),
///   distributionPolicyZones: TfArg.literal([
///     'asia-northeast1-a',
///     'asia-northeast1-b',
///   ]),
///   distributionPolicyTargetShape: TfArg.literal(
///     RegionInstanceGroupManagerDistributionPolicyTargetShape.even,
///   ),
///   versions: [
///     RegionInstanceGroupManagerVersion(
///       instanceTemplate: TfArg.literal(
///         // var.instance_template_id — within-batch sibling self-link.
///         'projects/p/global/instanceTemplates/web-v2',
///       ),
///     ),
///   ],
///   namedPorts: const [
///     RegionInstanceGroupManagerNamedPort(name: 'http', port: 80),
///   ],
///   autoHealingPolicies: RegionInstanceGroupManagerAutoHealingPolicy(
///     healthCheck: TfArg.literal(
///       // var.health_check_id — typically a Batch 4 health check.
///       'projects/p/regions/asia-northeast1/healthChecks/web-hc',
///     ),
///     initialDelaySec: 300,
///   ),
///   updatePolicy: const RegionInstanceGroupManagerUpdatePolicy(
///     type: RegionInstanceGroupManagerUpdatePolicyType.proactive,
///     instanceRedistributionType: RegionInstanceGroupManagerInstanceRedistributionType.proactive,
///     minimalAction: RegionInstanceGroupManagerUpdatePolicyAction.replace,
///     maxSurgeFixed: 2,
///     maxUnavailableFixed: 0,
///     replacementMethod:
///         RegionInstanceGroupManagerUpdatePolicyReplacementMethod.substitute,
///   ),
/// );
/// ```
///
/// Sensitive fields: none. The MIG carries no secrets in its schema.
final class GoogleComputeRegionInstanceGroupManager extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_region_instance_group_manager';

  GoogleComputeRegionInstanceGroupManager({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    required TfArg<String> baseInstanceName,
    TfArg<num>? targetSize,
    TfArg<num>? targetStoppedSize,
    TfArg<num>? targetSuspendedSize,
    TfArg<String>? listManagedInstancesResults,
    TfArg<bool>? waitForInstances,
    TfArg<String>? waitForInstancesStatus,
    TfArg<List<String>>? distributionPolicyZones,
    TfArg<RegionInstanceGroupManagerDistributionPolicyTargetShape>?
        distributionPolicyTargetShape,
    TfArg<List<String>>? targetPools,
    required List<RegionInstanceGroupManagerVersion> versions,
    List<RegionInstanceGroupManagerNamedPort>? namedPorts,
    RegionInstanceGroupManagerAutoHealingPolicy? autoHealingPolicies,
    RegionInstanceGroupManagerUpdatePolicy? updatePolicy,
    RegionInstanceGroupManagerInstanceLifecyclePolicy? instanceLifecyclePolicy,
    RegionInstanceGroupManagerInstanceFlexibilityPolicy?
        instanceFlexibilityPolicy,
    RegionInstanceGroupManagerStandbyPolicy? standbyPolicy,
    List<RegionInstanceGroupManagerTargetSizePolicy>? targetSizePolicies,
    RegionInstanceGroupManagerResourcePolicies? resourcePolicies,
    RegionInstanceGroupManagerAllInstancesConfig? allInstancesConfig,
    List<RegionInstanceGroupManagerStatefulDisk>? statefulDisks,
    List<RegionInstanceGroupManagerStatefulIp>? statefulInternalIps,
    List<RegionInstanceGroupManagerStatefulIp>? statefulExternalIps,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            if (region != null) 'region': region,
            if (description != null) 'description': description,
            'base_instance_name': baseInstanceName,
            if (targetSize != null) 'target_size': targetSize,
            if (targetStoppedSize != null)
              'target_stopped_size': targetStoppedSize,
            if (targetSuspendedSize != null)
              'target_suspended_size': targetSuspendedSize,
            if (listManagedInstancesResults != null)
              'list_managed_instances_results': listManagedInstancesResults,
            if (waitForInstances != null)
              'wait_for_instances': waitForInstances,
            if (waitForInstancesStatus != null)
              'wait_for_instances_status': waitForInstancesStatus,
            if (distributionPolicyZones != null)
              'distribution_policy_zones': distributionPolicyZones,
            if (distributionPolicyTargetShape != null)
              'distribution_policy_target_shape': distributionPolicyTargetShape,
            if (targetPools != null) 'target_pools': targetPools,
            'version':
                TfArg.literal(versions.map((v) => v.toArgMap()).toList()),
            if (namedPorts != null)
              'named_port': TfArg.literal(
                namedPorts.map((p) => p.toArgMap()).toList(),
              ),
            if (autoHealingPolicies != null)
              'auto_healing_policies': TfArg.literal([
                autoHealingPolicies.toArgMap(),
              ]),
            if (updatePolicy != null)
              'update_policy': TfArg.literal([updatePolicy.toArgMap()]),
            if (instanceLifecyclePolicy != null)
              'instance_lifecycle_policy': TfArg.literal([
                instanceLifecyclePolicy.toArgMap(),
              ]),
            if (instanceFlexibilityPolicy != null)
              'instance_flexibility_policy': TfArg.literal([
                instanceFlexibilityPolicy.toArgMap(),
              ]),
            if (standbyPolicy != null)
              'standby_policy': TfArg.literal([standbyPolicy.toArgMap()]),
            if (targetSizePolicies != null)
              'target_size_policy': TfArg.literal(
                targetSizePolicies.map((p) => p.toArgMap()).toList(),
              ),
            if (resourcePolicies != null)
              'resource_policies': TfArg.literal([resourcePolicies.toArgMap()]),
            if (allInstancesConfig != null)
              'all_instances_config': TfArg.literal([
                allInstancesConfig.toArgMap(),
              ]),
            if (statefulDisks != null)
              'stateful_disk': TfArg.literal(
                statefulDisks.map((d) => d.toArgMap()).toList(),
              ),
            if (statefulInternalIps != null)
              'stateful_internal_ip': TfArg.literal(
                statefulInternalIps.map((i) => i.toArgMap()).toList(),
              ),
            if (statefulExternalIps != null)
              'stateful_external_ip': TfArg.literal(
                statefulExternalIps.map((i) => i.toArgMap()).toList(),
              ),
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleComputeRegionInstanceGroupManagerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute
  /// (`projects/{project}/regions/{region}/instanceGroupManagers/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` (HTTPS API path). Use this when wiring
  /// the regional MIG into a regional backend service or an
  /// autoscaler.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `instance_group` — self-link of the underlying
  /// `google_compute_region_instance_group` the MIG manages. Use this
  /// when adding the MIG as a `backend.group` on a
  /// `google_compute_region_backend_service`.
  TfRef<String> get instanceGroup =>
      TfRef.attribute<String>(this, 'instance_group');

  /// Reference to the server-assigned numeric `instance_group_manager_id`.
  TfRef<int> get instanceGroupManagerId =>
      TfRef.attribute<int>(this, 'instance_group_manager_id');

  /// Reference to `fingerprint` — used by the API for optimistic locking.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `creation_timestamp` (RFC3339).
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');
}
