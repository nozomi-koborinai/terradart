// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_group_manager`.
const Set<String> _googleComputeInstanceGroupManagerSensitive = <String>{};

// ===========================================================================
// Enums for update_policy
// ===========================================================================

/// `update_policy.type`. Controls whether the MIG actively performs
/// the rolling update or waits for an external action (resize,
/// recreate-instances) to apply it.
enum InstanceGroupManagerUpdatePolicyType {
  opportunistic('OPPORTUNISTIC'),
  proactive('PROACTIVE');

  const InstanceGroupManagerUpdatePolicyType(this.terraformValue);
  final String terraformValue;
}

/// `update_policy.minimal_action` / `update_policy.most_disruptive_allowed_action`.
/// Shared enum — both fields accept the same value set.
enum InstanceGroupManagerUpdatePolicyAction {
  none('NONE'),
  refresh('REFRESH'),
  restart('RESTART'),
  replace('REPLACE');

  const InstanceGroupManagerUpdatePolicyAction(this.terraformValue);
  final String terraformValue;
}

/// `update_policy.replacement_method`. `SUBSTITUTE` (default) replaces
/// VMs with newly-named ones; `RECREATE` preserves instance names but
/// requires `max_unavailable_*` > 0.
enum InstanceGroupManagerUpdatePolicyReplacementMethod {
  substitute('SUBSTITUTE'),
  recreate('RECREATE');

  const InstanceGroupManagerUpdatePolicyReplacementMethod(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// version block (nesting=list, min_items=1)
// ===========================================================================

/// One entry in [versions]. Each version pins an
/// [instanceTemplate] (a `google_compute_instance_template`
/// self-link, typically a within-batch sibling) and optionally caps how
/// many instances run that version via [targetSize].
///
/// Multiple [ComputeInstanceGroupManagerInstanceGroupManagerVersion] entries enable canary
/// rollouts: the MIG splits the total [GoogleComputeInstanceGroupManager.targetSize]
/// across versions based on each version's [targetSize] (fixed count
/// or percentage). A version without [targetSize] absorbs the
/// remainder.
@immutable
class ComputeInstanceGroupManagerInstanceGroupManagerVersion {
  const ComputeInstanceGroupManagerInstanceGroupManagerVersion({
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
  final ComputeInstanceGroupManagerInstanceGroupManagerVersionTargetSize?
  targetSize;

  Map<String, Object?> toArgMap() => {
    'instance_template': instanceTemplate.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (targetSize != null) 'target_size': [targetSize!.toArgMap()],
  };
}

/// `version.target_size` (`max_items=1`). Exactly one of [fixed] or
/// [percent] should be set.
@immutable
class ComputeInstanceGroupManagerInstanceGroupManagerVersionTargetSize {
  const ComputeInstanceGroupManagerInstanceGroupManagerVersionTargetSize({
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
class ComputeInstanceGroupManagerInstanceGroupManagerAutoHealingPolicy {
  const ComputeInstanceGroupManagerInstanceGroupManagerAutoHealingPolicy({
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

/// `update_policy` block. Drives how the MIG rolls a new
/// [ComputeInstanceGroupManagerInstanceGroupManagerVersion] across its members.
@immutable
class ComputeInstanceGroupManagerInstanceGroupManagerUpdatePolicy {
  const ComputeInstanceGroupManagerInstanceGroupManagerUpdatePolicy({
    required this.minimalAction,
    required this.type,
    this.mostDisruptiveAllowedAction,
    this.maxSurgeFixed,
    this.maxSurgePercent,
    this.maxUnavailableFixed,
    this.maxUnavailablePercent,
    this.replacementMethod,
  });

  /// Required. Minimum action the MIG is allowed to apply to a VM.
  final InstanceGroupManagerUpdatePolicyAction minimalAction;

  /// Required. `OPPORTUNISTIC` waits for resize/recreate-instances
  /// calls; `PROACTIVE` actively rolls.
  final InstanceGroupManagerUpdatePolicyType type;

  /// Maximum action the MIG may escalate to.
  final InstanceGroupManagerUpdatePolicyAction? mostDisruptiveAllowedAction;

  /// Extra VMs the MIG may add over [GoogleComputeInstanceGroupManager.targetSize]
  /// during the rollout. Conflicts with [maxSurgePercent].
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
  final InstanceGroupManagerUpdatePolicyReplacementMethod? replacementMethod;

  Map<String, Object?> toArgMap() => {
    'minimal_action': minimalAction.terraformValue,
    'type': type.terraformValue,
    if (mostDisruptiveAllowedAction != null)
      'most_disruptive_allowed_action':
          mostDisruptiveAllowedAction!.terraformValue,
    if (maxSurgeFixed != null) 'max_surge_fixed': maxSurgeFixed!.toTfJson(),
    if (maxSurgePercent != null)
      'max_surge_percent': maxSurgePercent!.toTfJson(),
    if (maxUnavailableFixed != null)
      'max_unavailable_fixed': maxUnavailableFixed!.toTfJson(),
    if (maxUnavailablePercent != null)
      'max_unavailable_percent': maxUnavailablePercent!.toTfJson(),
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
class ComputeInstanceGroupManagerInstanceGroupManagerNamedPort {
  const ComputeInstanceGroupManagerInstanceGroupManagerNamedPort({
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
/// VM recreates per [deleteRule].
@immutable
class ComputeInstanceGroupManagerInstanceGroupManagerStatefulDisk {
  const ComputeInstanceGroupManagerInstanceGroupManagerStatefulDisk({
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
class ComputeInstanceGroupManagerInstanceGroupManagerStatefulIp {
  const ComputeInstanceGroupManagerInstanceGroupManagerStatefulIp({
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
class ComputeInstanceGroupManagerInstanceGroupManagerAllInstancesConfig {
  const ComputeInstanceGroupManagerInstanceGroupManagerAllInstancesConfig({
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
class ComputeInstanceGroupManagerInstanceGroupManagerInstanceLifecyclePolicy {
  const ComputeInstanceGroupManagerInstanceGroupManagerInstanceLifecyclePolicy({
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
// standby_policy block (max_items=1)
// ===========================================================================

/// `standby_policy` block — controls how the MIG resumes VMs from a
/// standby pool during scale-out.
@immutable
class ComputeInstanceGroupManagerInstanceGroupManagerStandbyPolicy {
  const ComputeInstanceGroupManagerInstanceGroupManagerStandbyPolicy({
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
/// [GoogleComputeInstanceGroupManager.targetSize].
@immutable
class ComputeInstanceGroupManagerInstanceGroupManagerTargetSizePolicy {
  const ComputeInstanceGroupManagerInstanceGroupManagerTargetSizePolicy({
    required this.mode,
  });

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
class ComputeInstanceGroupManagerInstanceGroupManagerResourcePolicies {
  const ComputeInstanceGroupManagerInstanceGroupManagerResourcePolicies({
    this.workloadPolicy,
  });

  /// Full or partial URL of the workload policy.
  final TfArg<String>? workloadPolicy;

  Map<String, Object?> toArgMap() => {
    if (workloadPolicy != null) 'workload_policy': workloadPolicy!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_instance_group_manager` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A **zonal** Managed Instance Group (MIG). The MIG schedules and
/// maintains a fleet of VM instances inside a single GCP zone using one
/// or more [version] blocks, each pointing at a
/// `google_compute_instance_template`. The MIG drives the lifecycle of
/// its members: it creates and resizes VMs to match [targetSize],
/// recreates unhealthy VMs per [autoHealingPolicies], rolls new
/// templates out under [updatePolicy], and (optionally) preserves
/// per-instance state via [statefulDisk] / [statefulInternalIp] /
/// [statefulExternalIp].
///
/// For multi-zone (regional) MIGs use
/// `google_compute_region_instance_group_manager` (curated separately).
/// The two resources share most fields; the regional variant adds
/// `distribution_policy_*` zone-spread controls and
/// `update_policy.instance_redistribution_type`, and replaces this
/// resource's [zone] with `region`.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_instance_group_manager.`).
/// - `name`: GCP resource name (1-63 chars, lowercase RFC1035).
/// - `zone`: GCP zone. The Terraform schema lists this as
///   optional+computed (the provider falls back to the provider-level
///   zone), but it is wrapped as required here to keep cross-zone
///   composition explicit.
/// - `base_instance_name`: 1-58 chars; each VM the MIG creates is named
///   `<base_instance_name>-<random4>`.
/// - At least one [ComputeInstanceGroupManagerInstanceGroupManagerVersion] in [versions]; each
///   version requires an `instance_template` self-link.
///
/// Cross-resource references (typical wiring):
/// - [ComputeInstanceGroupManagerInstanceGroupManagerVersion.instanceTemplate]: self-link of a
///   `google_compute_instance_template` resource (curated as a sibling
///   in the same batch). The MIG creates members from this template.
/// - [ComputeInstanceGroupManagerInstanceGroupManagerAutoHealingPolicy.healthCheck]: self-link of a
///   `google_compute_health_check` (or `google_compute_region_health_check`
///   for compatible types). When a VM fails this health check for
///   longer than [ComputeInstanceGroupManagerInstanceGroupManagerAutoHealingPolicy.initialDelaySec],
///   the MIG recreates it.
/// - [targetPools]: self-links of `google_compute_target_pool`. New VMs
///   are added to these target pools; pre-existing VMs are not
///   retroactively rebalanced.
///
/// Example (single-version zonal MIG with autohealing and a rolling
/// proactive update policy):
/// ```dart
/// final mig = GoogleComputeInstanceGroupManager(
///   localName: 'web',
///   name: TfArg.literal('web-mig'),
///   zone: TfArg.literal('asia-northeast1-a'),
///   baseInstanceName: TfArg.literal('web'),
///   targetSize: TfArg.literal(3),
///   versions: [
///     ComputeInstanceGroupManagerInstanceGroupManagerVersion(
///       name: TfArg.literal('canary'),
///       instanceTemplate: TfArg.literal(
///         // var.instance_template_id — within-batch sibling self-link.
///         'projects/p/global/instanceTemplates/web-v2',
///       ),
///     ),
///   ],
///   namedPorts: const [
///     ComputeInstanceGroupManagerInstanceGroupManagerNamedPort(name: 'http', port: 80),
///   ],
///   autoHealingPolicies: ComputeInstanceGroupManagerInstanceGroupManagerAutoHealingPolicy(
///     healthCheck: TfArg.literal(
///       // var.health_check_id — typically a Batch 4 health check.
///       'projects/p/global/healthChecks/web-hc',
///     ),
///     initialDelaySec: 300,
///   ),
///   updatePolicy: const ComputeInstanceGroupManagerInstanceGroupManagerUpdatePolicy(
///     type: InstanceGroupManagerUpdatePolicyType.proactive,
///     minimalAction: InstanceGroupManagerUpdatePolicyAction.replace,
///     maxSurgeFixed: 1,
///     maxUnavailableFixed: 0,
///     replacementMethod:
///         InstanceGroupManagerUpdatePolicyReplacementMethod.substitute,
///   ),
/// );
/// ```
///
/// Sensitive fields: none. The MIG carries no secrets in its schema.
final class GoogleComputeInstanceGroupManager extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_instance_group_manager';

  GoogleComputeInstanceGroupManager({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? zone,
    TfArg<String>? description,
    required TfArg<String> baseInstanceName,
    TfArg<num>? targetSize,
    TfArg<num>? targetStoppedSize,
    TfArg<num>? targetSuspendedSize,
    TfArg<String>? listManagedInstancesResults,
    TfArg<bool>? waitForInstances,
    TfArg<String>? waitForInstancesStatus,
    TfArg<List<String>>? targetPools,
    required List<ComputeInstanceGroupManagerInstanceGroupManagerVersion>
    versions,
    List<ComputeInstanceGroupManagerInstanceGroupManagerNamedPort>? namedPorts,
    ComputeInstanceGroupManagerInstanceGroupManagerAutoHealingPolicy?
    autoHealingPolicies,
    ComputeInstanceGroupManagerInstanceGroupManagerUpdatePolicy? updatePolicy,
    ComputeInstanceGroupManagerInstanceGroupManagerInstanceLifecyclePolicy?
    instanceLifecyclePolicy,
    ComputeInstanceGroupManagerInstanceGroupManagerStandbyPolicy? standbyPolicy,
    List<ComputeInstanceGroupManagerInstanceGroupManagerTargetSizePolicy>?
    targetSizePolicies,
    ComputeInstanceGroupManagerInstanceGroupManagerResourcePolicies?
    resourcePolicies,
    ComputeInstanceGroupManagerInstanceGroupManagerAllInstancesConfig?
    allInstancesConfig,
    List<ComputeInstanceGroupManagerInstanceGroupManagerStatefulDisk>?
    statefulDisks,
    List<ComputeInstanceGroupManagerInstanceGroupManagerStatefulIp>?
    statefulInternalIps,
    List<ComputeInstanceGroupManagerInstanceGroupManagerStatefulIp>?
    statefulExternalIps,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           if (zone != null) 'zone': zone,
           if (description != null) 'description': description,
           'base_instance_name': baseInstanceName,
           if (targetSize != null) 'target_size': targetSize,
           if (targetStoppedSize != null)
             'target_stopped_size': targetStoppedSize,
           if (targetSuspendedSize != null)
             'target_suspended_size': targetSuspendedSize,
           if (listManagedInstancesResults != null)
             'list_managed_instances_results': listManagedInstancesResults,
           if (waitForInstances != null) 'wait_for_instances': waitForInstances,
           if (waitForInstancesStatus != null)
             'wait_for_instances_status': waitForInstancesStatus,
           if (targetPools != null) 'target_pools': targetPools,
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
      _googleComputeInstanceGroupManagerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute
  /// (`projects/{project}/zones/{zone}/instanceGroupManagers/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` (HTTPS API path). Use this when wiring the
  /// MIG into a backend service or an autoscaler.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `instance_group` — self-link of the underlying
  /// `google_compute_instance_group` the MIG manages. Use this when
  /// adding the MIG as a `backend.group` on a
  /// `google_compute_backend_service`.
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
