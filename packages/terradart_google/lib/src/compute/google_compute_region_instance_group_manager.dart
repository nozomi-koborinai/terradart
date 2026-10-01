// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_target_pool.dart'
    show GoogleComputeTargetPool;

/// Sensitive field paths for `google_compute_region_instance_group_manager`.
const Set<String> _googleComputeRegionInstanceGroupManagerSensitive =
    <String>{};

/// `list_managed_instances_results` — pagination for the
/// `listManagedInstances` API on this regional MIG.
extension type const RegionInstanceGroupManagerListManagedInstancesResults._(
  TfArg<String> _
) implements TfArg<String> {
  RegionInstanceGroupManagerListManagedInstancesResults.variable(String name)
    : this._(TfArg.variable(name));
  RegionInstanceGroupManagerListManagedInstancesResults.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const RegionInstanceGroupManagerListManagedInstancesResults.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const pageless =
      RegionInstanceGroupManagerListManagedInstancesResults._(
        TfArgLiteral('PAGELESS'),
      );
  static const paginated =
      RegionInstanceGroupManagerListManagedInstancesResults._(
        TfArgLiteral('PAGINATED'),
      );

  static const List<RegionInstanceGroupManagerListManagedInstancesResults>
  values = [pageless, paginated];
}

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
extension type const RegionInstanceGroupManagerDistributionPolicyTargetShape._(
  TfArg<String> _
) implements TfArg<String> {
  RegionInstanceGroupManagerDistributionPolicyTargetShape.variable(String name)
    : this._(TfArg.variable(name));
  RegionInstanceGroupManagerDistributionPolicyTargetShape.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const RegionInstanceGroupManagerDistributionPolicyTargetShape.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const even = RegionInstanceGroupManagerDistributionPolicyTargetShape._(
    TfArgLiteral('EVEN'),
  );
  static const balanced =
      RegionInstanceGroupManagerDistributionPolicyTargetShape._(
        TfArgLiteral('BALANCED'),
      );
  static const any = RegionInstanceGroupManagerDistributionPolicyTargetShape._(
    TfArgLiteral('ANY'),
  );
  static const anySingleZone =
      RegionInstanceGroupManagerDistributionPolicyTargetShape._(
        TfArgLiteral('ANY_SINGLE_ZONE'),
      );

  static const List<RegionInstanceGroupManagerDistributionPolicyTargetShape>
  values = [even, balanced, any, anySingleZone];
}

// ===========================================================================
// Enums for update_policy
// ===========================================================================

/// `update_policy.type`. Controls whether the MIG actively performs
/// the rolling update or waits for an external action (resize,
/// recreate-instances) to apply it.
extension type const RegionInstanceGroupManagerUpdatePolicyType._(
  TfArg<String> _
) implements TfArg<String> {
  RegionInstanceGroupManagerUpdatePolicyType.variable(String name)
    : this._(TfArg.variable(name));
  RegionInstanceGroupManagerUpdatePolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const RegionInstanceGroupManagerUpdatePolicyType.arg(TfArg<String> arg)
    : this._(arg);

  static const opportunistic = RegionInstanceGroupManagerUpdatePolicyType._(
    TfArgLiteral('OPPORTUNISTIC'),
  );
  static const proactive = RegionInstanceGroupManagerUpdatePolicyType._(
    TfArgLiteral('PROACTIVE'),
  );

  static const List<RegionInstanceGroupManagerUpdatePolicyType> values = [
    opportunistic,
    proactive,
  ];
}

/// `update_policy.instance_redistribution_type` (regional only).
/// `PROACTIVE` (default) keeps zones balanced as VMs come and go;
/// `NONE` disables proactive rebalancing.
extension type const RegionInstanceGroupManagerInstanceRedistributionType._(
  TfArg<String> _
) implements TfArg<String> {
  RegionInstanceGroupManagerInstanceRedistributionType.variable(String name)
    : this._(TfArg.variable(name));
  RegionInstanceGroupManagerInstanceRedistributionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const RegionInstanceGroupManagerInstanceRedistributionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const proactive =
      RegionInstanceGroupManagerInstanceRedistributionType._(
        TfArgLiteral('PROACTIVE'),
      );
  static const none = RegionInstanceGroupManagerInstanceRedistributionType._(
    TfArgLiteral('NONE'),
  );

  static const List<RegionInstanceGroupManagerInstanceRedistributionType>
  values = [proactive, none];
}

/// `update_policy.minimal_action` / `update_policy.most_disruptive_allowed_action`.
/// Shared enum — both fields accept the same value set.
extension type const RegionInstanceGroupManagerUpdatePolicyAction._(
  TfArg<String> _
) implements TfArg<String> {
  RegionInstanceGroupManagerUpdatePolicyAction.variable(String name)
    : this._(TfArg.variable(name));
  RegionInstanceGroupManagerUpdatePolicyAction.expression(String template)
    : this._(TfArg.expression(template));
  const RegionInstanceGroupManagerUpdatePolicyAction.arg(TfArg<String> arg)
    : this._(arg);

  static const none = RegionInstanceGroupManagerUpdatePolicyAction._(
    TfArgLiteral('NONE'),
  );
  static const refresh = RegionInstanceGroupManagerUpdatePolicyAction._(
    TfArgLiteral('REFRESH'),
  );
  static const restart = RegionInstanceGroupManagerUpdatePolicyAction._(
    TfArgLiteral('RESTART'),
  );
  static const replace = RegionInstanceGroupManagerUpdatePolicyAction._(
    TfArgLiteral('REPLACE'),
  );

  static const List<RegionInstanceGroupManagerUpdatePolicyAction> values = [
    none,
    refresh,
    restart,
    replace,
  ];
}

/// `update_policy.replacement_method`. `SUBSTITUTE` (default) replaces
/// VMs with newly-named ones; `RECREATE` preserves instance names but
/// requires `max_unavailable_*` > 0.
extension type const RegionInstanceGroupManagerUpdatePolicyReplacementMethod._(
  TfArg<String> _
) implements TfArg<String> {
  RegionInstanceGroupManagerUpdatePolicyReplacementMethod.variable(String name)
    : this._(TfArg.variable(name));
  RegionInstanceGroupManagerUpdatePolicyReplacementMethod.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const RegionInstanceGroupManagerUpdatePolicyReplacementMethod.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const substitute =
      RegionInstanceGroupManagerUpdatePolicyReplacementMethod._(
        TfArgLiteral('SUBSTITUTE'),
      );
  static const recreate =
      RegionInstanceGroupManagerUpdatePolicyReplacementMethod._(
        TfArgLiteral('RECREATE'),
      );

  static const List<RegionInstanceGroupManagerUpdatePolicyReplacementMethod>
  values = [substitute, recreate];
}

// ===========================================================================
// version block (nesting=list, min_items=1)
// ===========================================================================

/// One entry in [versions]. Each version pins an
/// [instanceTemplate] (a `google_compute_instance_template`
/// self-link, typically a within-batch sibling) and optionally caps
/// how many instances run that version via [targetSize].
///
/// Multiple [ComputeRegionInstanceGroupManagerVersion] entries enable
/// canary rollouts: the MIG splits the total
/// [GoogleComputeRegionInstanceGroupManager.targetSize] across
/// versions based on each version's [targetSize] (fixed count or
/// percentage). A version without [targetSize] absorbs the
/// remainder.
@immutable
class ComputeRegionInstanceGroupManagerVersion {
  const ComputeRegionInstanceGroupManagerVersion({
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
  final ComputeRegionInstanceGroupManagerVersionTargetSize? targetSize;

  Map<String, Object?> toArgMap() => {
    'instance_template': instanceTemplate.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (targetSize != null) 'target_size': [targetSize!.toArgMap()],
  };
}

/// `version.target_size` (`max_items=1`). Exactly one of [fixed] or
/// [percent] should be set.
@immutable
class ComputeRegionInstanceGroupManagerVersionTargetSize {
  const ComputeRegionInstanceGroupManagerVersionTargetSize({
    this.fixed,
    this.percent,
  });

  /// Fixed number of instances managed for this version.
  final TfArg<int>? fixed;

  /// Percentage (0-100) of total MIG size managed for this version.
  final TfArg<int>? percent;

  Map<String, Object?> toArgMap() => {
    if (fixed != null) 'fixed': fixed!.toTfJson(),
    if (percent != null) 'percent': percent!.toTfJson(),
  };
}

// ===========================================================================
// auto_healing_policies block (max_items=1)
// ===========================================================================

/// `auto_healing_policies` block. When a VM fails its [healthCheck]
/// for longer than the initial-delay window, the MIG recreates it.
/// Schema marks both fields as required.
@immutable
class ComputeRegionInstanceGroupManagerAutoHealingPolicy {
  const ComputeRegionInstanceGroupManagerAutoHealingPolicy({
    required this.healthCheck,
    required this.initialDelaySec,
  });

  /// Self-link of a `google_compute_health_check` (or compatible
  /// regional health check). Typically wired as
  /// `var.health_check_id`.
  final TfArg<String> healthCheck;

  /// Seconds to wait after a VM is created before applying autohealing
  /// to it. Schema range: 0-3600.
  final TfArg<int> initialDelaySec;

  Map<String, Object?> toArgMap() => {
    'health_check': healthCheck.toTfJson(),
    'initial_delay_sec': initialDelaySec.toTfJson(),
  };
}

// ===========================================================================
// update_policy block (max_items=1)
// ===========================================================================

/// `update_policy` block. Drives how the regional MIG rolls a new
/// [ComputeRegionInstanceGroupManagerVersion] across its members and how
/// aggressively it rebalances across [distributionPolicyZones].
@immutable
class ComputeRegionInstanceGroupManagerUpdatePolicy {
  const ComputeRegionInstanceGroupManagerUpdatePolicy({
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
  final TfArg<int>? maxSurgeFixed;

  /// Percent equivalent of [maxSurgeFixed].
  final TfArg<int>? maxSurgePercent;

  /// VMs allowed to be unavailable simultaneously. Conflicts with
  /// [maxUnavailablePercent].
  final TfArg<int>? maxUnavailableFixed;

  /// Percent equivalent of [maxUnavailableFixed].
  final TfArg<int>? maxUnavailablePercent;

  /// Whether to keep names (`RECREATE`) or randomise them
  /// (`SUBSTITUTE`, default) when swapping VMs.
  final RegionInstanceGroupManagerUpdatePolicyReplacementMethod?
  replacementMethod;

  Map<String, Object?> toArgMap() => {
    'minimal_action': minimalAction.toTfJson(),
    'type': type.toTfJson(),
    if (instanceRedistributionType != null)
      'instance_redistribution_type': instanceRedistributionType!.toTfJson(),
    if (mostDisruptiveAllowedAction != null)
      'most_disruptive_allowed_action': mostDisruptiveAllowedAction!.toTfJson(),
    if (maxSurgeFixed != null) 'max_surge_fixed': maxSurgeFixed!.toTfJson(),
    if (maxSurgePercent != null)
      'max_surge_percent': maxSurgePercent!.toTfJson(),
    if (maxUnavailableFixed != null)
      'max_unavailable_fixed': maxUnavailableFixed!.toTfJson(),
    if (maxUnavailablePercent != null)
      'max_unavailable_percent': maxUnavailablePercent!.toTfJson(),
    if (replacementMethod != null)
      'replacement_method': replacementMethod!.toTfJson(),
  };
}

// ===========================================================================
// named_port block (nesting=set)
// ===========================================================================

/// One entry in [namedPorts]. Backend services that reference this
/// MIG by `port_name` look up the matching [port] number here.
@immutable
class ComputeRegionInstanceGroupManagerNamedPort {
  const ComputeRegionInstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  /// Port label. 1-63 chars, RFC1035.
  final TfArg<String> name;

  /// Port number (1-65535).
  final TfArg<int> port;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'port': port.toTfJson(),
  };
}

// ===========================================================================
// stateful_disk / stateful_internal_ip / stateful_external_ip blocks
// ===========================================================================

/// One entry in [statefulDisks]. Marks a disk attached at
/// [deviceName] as **stateful** — the MIG preserves the disk across
/// VM recreates per [deleteRule]. Note: cross-zone instance
/// redistribution must be disabled (set
/// [ComputeRegionInstanceGroupManagerUpdatePolicy.instanceRedistributionType]
/// to [RegionInstanceGroupManagerInstanceRedistributionType.none])
/// before updating stateful disks on an existing regional MIG.
@immutable
class ComputeRegionInstanceGroupManagerStatefulDisk {
  const ComputeRegionInstanceGroupManagerStatefulDisk({
    required this.deviceName,
    this.deleteRule,
  });

  /// Device name the disk is attached to on the VM (matches the
  /// `device_name` set on the instance template's `disk` block).
  final TfArg<String> deviceName;

  /// `NEVER` (default — detach but keep the disk) or
  /// `ON_PERMANENT_INSTANCE_DELETION` (delete with the VM).
  final TfArg<String>? deleteRule;

  Map<String, Object?> toArgMap() => {
    'device_name': deviceName.toTfJson(),
    if (deleteRule != null) 'delete_rule': deleteRule!.toTfJson(),
  };
}

/// One entry in [statefulInternalIps] / [statefulExternalIps].
/// Both blocks share the same shape.
@immutable
class ComputeRegionInstanceGroupManagerStatefulIp {
  const ComputeRegionInstanceGroupManagerStatefulIp({
    this.interfaceName,
    this.deleteRule,
  });

  /// Name of the VM network interface the IP is attached to.
  final TfArg<String>? interfaceName;

  /// `NEVER` (default — detach but keep the Address) or
  /// `ON_PERMANENT_INSTANCE_DELETION` (delete with the VM).
  final TfArg<String>? deleteRule;

  Map<String, Object?> toArgMap() => {
    if (interfaceName != null) 'interface_name': interfaceName!.toTfJson(),
    if (deleteRule != null) 'delete_rule': deleteRule!.toTfJson(),
  };
}

// ===========================================================================
// all_instances_config block (max_items=1)
// ===========================================================================

/// `all_instances_config` block. Patches labels and metadata onto
/// every VM the MIG manages, overlaying the instance template's
/// values.
@immutable
class ComputeRegionInstanceGroupManagerAllInstancesConfig {
  const ComputeRegionInstanceGroupManagerAllInstancesConfig({
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
class ComputeRegionInstanceGroupManagerInstanceLifecyclePolicy {
  const ComputeRegionInstanceGroupManagerInstanceLifecyclePolicy({
    this.defaultActionOnFailure,
    this.forceUpdateOnRepair,
  });

  /// Default behavior for instance or health check failures.
  final TfArg<String>? defaultActionOnFailure;

  /// `YES` to apply the latest template when repairing a VM; `NO`
  /// (default) to honor the update policy.
  final TfArg<String>? forceUpdateOnRepair;

  Map<String, Object?> toArgMap() => {
    if (defaultActionOnFailure != null)
      'default_action_on_failure': defaultActionOnFailure!.toTfJson(),
    if (forceUpdateOnRepair != null)
      'force_update_on_repair': forceUpdateOnRepair!.toTfJson(),
  };
}

// ===========================================================================
// instance_flexibility_policy block (regional only, max_items=1)
// ===========================================================================

/// `instance_flexibility_policy` block — regional only. Lets the MIG
/// pick from multiple machine types when creating new VMs, instead
/// of the single machine type set on the instance template.
@immutable
class ComputeRegionInstanceGroupManagerInstanceFlexibilityPolicy {
  const ComputeRegionInstanceGroupManagerInstanceFlexibilityPolicy({
    this.instanceSelections,
  });

  /// Named selections of machine types. The MIG ranks selections by
  /// [ComputeRegionInstanceGroupManagerInstanceSelection.rank] (lower =
  /// higher preference).
  final List<ComputeRegionInstanceGroupManagerInstanceSelection>?
  instanceSelections;

  Map<String, Object?> toArgMap() => {
    if (instanceSelections != null)
      'instance_selections': instanceSelections!
          .map((s) => s.toArgMap())
          .toList(),
  };
}

/// One entry in
/// [ComputeRegionInstanceGroupManagerInstanceFlexibilityPolicy.instanceSelections].
@immutable
class ComputeRegionInstanceGroupManagerInstanceSelection {
  const ComputeRegionInstanceGroupManagerInstanceSelection({
    required this.name,
    required this.machineTypes,
    this.rank,
  });

  /// Required. Selection label.
  final TfArg<String> name;

  /// Required. Full machine-type names (e.g. `n1-standard-16`).
  final List<String> machineTypes;

  /// Lower number = higher preference. Selections with the same rank
  /// are treated equally.
  final TfArg<int>? rank;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    'machine_types': machineTypes,
    if (rank != null) 'rank': rank!.toTfJson(),
  };
}

// ===========================================================================
// standby_policy block (max_items=1)
// ===========================================================================

/// `standby_policy` block — controls how the MIG resumes VMs from a
/// standby pool during scale-out.
@immutable
class ComputeRegionInstanceGroupManagerStandbyPolicy {
  const ComputeRegionInstanceGroupManagerStandbyPolicy({
    this.initialDelaySec,
    this.mode,
  });

  /// Seconds to wait after creating a VM before allowing standby
  /// transitions (0-3600, default 0).
  final TfArg<int>? initialDelaySec;

  /// Standby mode. Defaults to `MANUAL`.
  final TfArg<String>? mode;

  Map<String, Object?> toArgMap() => {
    if (initialDelaySec != null)
      'initial_delay_sec': initialDelaySec!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
  };
}

// ===========================================================================
// target_size_policy block (nesting=list, no max_items)
// ===========================================================================

/// One entry in [targetSizePolicies]. Configures whether the MIG
/// creates VMs individually or all at once to reach
/// [GoogleComputeRegionInstanceGroupManager.targetSize].
@immutable
class ComputeRegionInstanceGroupManagerTargetSizePolicy {
  const ComputeRegionInstanceGroupManagerTargetSizePolicy({required this.mode});

  /// Required. The provisioning mode (e.g. `BATCH`, `INDIVIDUAL`).
  final TfArg<String> mode;

  Map<String, Object?> toArgMap() => {'mode': mode};
}

// ===========================================================================
// resource_policies block (max_items=1)
// ===========================================================================

/// `resource_policies` block — wires the MIG to a
/// `google_compute_resource_policy` workload policy.
@immutable
class ComputeRegionInstanceGroupManagerResourcePolicies {
  const ComputeRegionInstanceGroupManagerResourcePolicies({
    this.workloadPolicy,
  });

  /// Full or partial URL of the workload policy.
  final TfArg<String>? workloadPolicy;

  Map<String, Object?> toArgMap() => {
    if (workloadPolicy != null) 'workload_policy': workloadPolicy!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_instance_group_manager`.
///
/// Creates a managed instance group using the information that you specify in
/// the request. After the group is created, it schedules an action to create
/// instances in the group using the specified instance template. This operation
/// is marked as DONE when the group is created even if the instances in the
/// group have not yet been created. You must separately verify the status of
/// the individual instances.
///
/// A managed instance group can have up to 1000 VM instances per group.
///
/// A **regional** Managed Instance Group (MIG) — like the zonal
/// `google_compute_instance_group_manager` but distributed across
/// multiple zones inside a single GCP region. The regional MIG drives
/// the same VM lifecycle (create / heal / roll / preserve state) and
/// adds three regional-only controls:
/// - [distributionPolicyZones]: which zones in the region the MIG may
///   place VMs in. If unset, the MIG spreads across all available
///   zones in [region].
/// - [distributionPolicyTargetShape]: how aggressively the MIG balances
///   instances across [distributionPolicyZones]. See
///   [RegionInstanceGroupManagerDistributionPolicyTargetShape].
/// - [ComputeRegionInstanceGroupManagerUpdatePolicy.instanceRedistributionType]:
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
/// - At least one [ComputeRegionInstanceGroupManagerVersion] in [versions];
///   each version requires an `instance_template` self-link.
///
/// Cross-resource references (typical wiring):
/// - [ComputeRegionInstanceGroupManagerVersion.instanceTemplate]: self-link
///   of a `google_compute_instance_template` resource (curated as a
///   sibling in the same batch).
/// - [ComputeRegionInstanceGroupManagerAutoHealingPolicy.healthCheck]:
///   self-link of a `google_compute_health_check` or
///   `google_compute_region_health_check`. When a VM fails this
///   health check for longer than
///   [ComputeRegionInstanceGroupManagerAutoHealingPolicy.initialDelaySec],
///   the MIG recreates it.
/// - [targetPools]: self-links of `google_compute_target_pool`. New VMs
///   are added to these target pools.
///
/// Example (single-version regional MIG spread across two zones with
/// proactive rebalancing):
/// ```dart
/// final mig = GoogleComputeRegionInstanceGroupManager(
///   'web',
///   name: TfArg.literal('web-rmig'),
///   region: TfArg.literal('asia-northeast1'),
///   baseInstanceName: TfArg.literal('web'),
///   targetSize: TfArg.literal(6),
///   distributionPolicyZones: TfArg.literal([
///     'asia-northeast1-a',
///     'asia-northeast1-b',
///   ]),
///   distributionPolicyTargetShape: RegionInstanceGroupManagerDistributionPolicyTargetShape.even,
///   versions: [
///     ComputeRegionInstanceGroupManagerVersion(
///       instanceTemplate: TfArg.literal(
///         // var.instance_template_id — within-batch sibling self-link.
///         'projects/p/global/instanceTemplates/web-v2',
///       ),
///     ),
///   ],
///   namedPorts: [
///     ComputeRegionInstanceGroupManagerNamedPort(
///       name: TfArg.literal('http'),
///       port: TfArg.literal(80),
///     ),
///   ],
///   autoHealingPolicies: ComputeRegionInstanceGroupManagerAutoHealingPolicy(
///     healthCheck: TfArg.literal(
///       // var.health_check_id — typically a Batch 4 health check.
///       'projects/p/regions/asia-northeast1/healthChecks/web-hc',
///     ),
///     initialDelaySec: TfArg.literal(300),
///   ),
///   updatePolicy: ComputeRegionInstanceGroupManagerUpdatePolicy(
///     type: RegionInstanceGroupManagerUpdatePolicyType.proactive,
///     instanceRedistributionType: RegionInstanceGroupManagerInstanceRedistributionType.proactive,
///     minimalAction: RegionInstanceGroupManagerUpdatePolicyAction.replace,
///     maxSurgeFixed: TfArg.literal(2),
///     maxUnavailableFixed: TfArg.literal(0),
///     replacementMethod:
///         RegionInstanceGroupManagerUpdatePolicyReplacementMethod.substitute,
///   ),
/// );
/// ```
///
/// Sensitive fields: none. The MIG carries no secrets in its schema.
final class GoogleComputeRegionInstanceGroupManager extends Resource {
  static const String tfType = 'google_compute_region_instance_group_manager';

  GoogleComputeRegionInstanceGroupManager(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? description,
    required TfArg<String> baseInstanceName,
    TfArg<num>? targetSize,
    TfArg<num>? targetStoppedSize,
    TfArg<num>? targetSuspendedSize,
    RegionInstanceGroupManagerListManagedInstancesResults?
    listManagedInstancesResults,
    TfArg<bool>? waitForInstances,
    TfArg<String>? waitForInstancesStatus,
    TfArg<List<String>>? distributionPolicyZones,
    RegionInstanceGroupManagerDistributionPolicyTargetShape?
    distributionPolicyTargetShape,
    TfArg<List<RefTo<GoogleComputeTargetPool>>>? targetPools,
    required List<ComputeRegionInstanceGroupManagerVersion> versions,
    List<ComputeRegionInstanceGroupManagerNamedPort>? namedPorts,
    ComputeRegionInstanceGroupManagerAutoHealingPolicy? autoHealingPolicies,
    ComputeRegionInstanceGroupManagerUpdatePolicy? updatePolicy,
    ComputeRegionInstanceGroupManagerInstanceLifecyclePolicy?
    instanceLifecyclePolicy,
    ComputeRegionInstanceGroupManagerInstanceFlexibilityPolicy?
    instanceFlexibilityPolicy,
    ComputeRegionInstanceGroupManagerStandbyPolicy? standbyPolicy,
    List<ComputeRegionInstanceGroupManagerTargetSizePolicy>? targetSizePolicies,
    ComputeRegionInstanceGroupManagerResourcePolicies? resourcePolicies,
    ComputeRegionInstanceGroupManagerAllInstancesConfig? allInstancesConfig,
    List<ComputeRegionInstanceGroupManagerStatefulDisk>? statefulDisks,
    List<ComputeRegionInstanceGroupManagerStatefulIp>? statefulInternalIps,
    List<ComputeRegionInstanceGroupManagerStatefulIp>? statefulExternalIps,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'description': ?description,
           'base_instance_name': baseInstanceName,
           'target_size': ?targetSize,
           'target_stopped_size': ?targetStoppedSize,
           'target_suspended_size': ?targetSuspendedSize,
           'list_managed_instances_results': ?listManagedInstancesResults,
           'wait_for_instances': ?waitForInstances,
           'wait_for_instances_status': ?waitForInstancesStatus,
           'distribution_policy_zones': ?distributionPolicyZones,
           'distribution_policy_target_shape': ?distributionPolicyTargetShape,
           'target_pools': ?targetPools?.encodeAs('self_link'),
           'version': TfArg.literal(versions.map((v) => v.toArgMap()).toList()),
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
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionInstanceGroupManagerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionInstanceGroupManager>`.
  RefTo<GoogleComputeRegionInstanceGroupManager> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `instance_group` attribute.
  TfRef<String> get instanceGroup =>
      TfRef.attribute<String>(this, 'instance_group');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `base_instance_name` attribute.
  TfRef<String> get baseInstanceName =>
      TfRef.attribute<String>(this, 'base_instance_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `distribution_policy_target_shape` attribute.
  TfRef<String> get distributionPolicyTargetShape =>
      TfRef.attribute<String>(this, 'distribution_policy_target_shape');

  /// Reference to `distribution_policy_zones` attribute.
  TfRef<List<String>> get distributionPolicyZones =>
      TfRef.attribute<List<String>>(this, 'distribution_policy_zones');

  /// Reference to `list_managed_instances_results` attribute.
  TfRef<String> get listManagedInstancesResults =>
      TfRef.attribute<String>(this, 'list_managed_instances_results');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `target_pools` attribute.
  TfRef<List<String>> get targetPools =>
      TfRef.attribute<List<String>>(this, 'target_pools');

  /// Reference to `target_size` attribute.
  TfRef<num> get targetSize => TfRef.attribute<num>(this, 'target_size');

  /// Reference to `target_stopped_size` attribute.
  TfRef<num> get targetStoppedSize =>
      TfRef.attribute<num>(this, 'target_stopped_size');

  /// Reference to `target_suspended_size` attribute.
  TfRef<num> get targetSuspendedSize =>
      TfRef.attribute<num>(this, 'target_suspended_size');

  /// Reference to `wait_for_instances` attribute.
  TfRef<bool> get waitForInstances =>
      TfRef.attribute<bool>(this, 'wait_for_instances');

  /// Reference to `wait_for_instances_status` attribute.
  TfRef<String> get waitForInstancesStatus =>
      TfRef.attribute<String>(this, 'wait_for_instances_status');

  /// Reference to `id` attribute
  /// (`projects/{project}/regions/{region}/instanceGroupManagers/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to the server-assigned numeric `instance_group_manager_id`.
  /// Kept at `TfRef<int>` — schema type is `number` (derived would widen
  /// to `TfRef<num>`).
  TfRef<int> get instanceGroupManagerId =>
      TfRef.attribute<int>(this, 'instance_group_manager_id');
}
