// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_edgecontainer_cluster`.
const Set<String> _googleEdgecontainerClusterSensitive = <String>{
  'cluster_ca_certificate',
};

/// Edgecontainer Cluster Release enum for `release_channel`.
enum EdgecontainerClusterReleaseChannel implements TerraformEnum {
  releaseChannelUnspecified('RELEASE_CHANNEL_UNSPECIFIED'),
  none('NONE'),
  regular('REGULAR');

  const EdgecontainerClusterReleaseChannel(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// EdgecontainerClusterControlPlane — sealed (Remote | Local)
// ===========================================================================

/// Control-plane placement for [GoogleEdgecontainerCluster]. Sealed so the
/// MM `exactly_one_of` under `control_plane` (`remote` / `local`) is
/// exhaustive at the type level.
sealed class EdgecontainerClusterControlPlane {
  const EdgecontainerClusterControlPlane();

  /// Inner block key under `control_plane` (`remote` or `local`).
  String get planeKey;

  /// Encodes as `control_plane` list max 1: `[{ <planeKey>: [{…}] }]`.
  List<Map<String, Object?>> encode();
}

/// `remote` control plane — node location only.
@immutable
final class EdgecontainerClusterControlPlaneRemote
    extends EdgecontainerClusterControlPlane {
  const EdgecontainerClusterControlPlaneRemote({this.nodeLocation});

  final TfArg<String>? nodeLocation;

  @override
  String get planeKey => 'remote';

  @override
  List<Map<String, Object?>> encode() => [
    {
      planeKey: [
        {if (nodeLocation != null) 'node_location': nodeLocation!.toTfJson()},
      ],
    },
  ];
}

/// `local` control plane — optional node count (1 or 3), filter, policy.
@immutable
final class EdgecontainerClusterControlPlaneLocal
    extends EdgecontainerClusterControlPlane {
  const EdgecontainerClusterControlPlaneLocal({
    this.nodeLocation,
    this.nodeCount,
    this.machineFilter,
    this.sharedDeploymentPolicy,
  });

  final TfArg<String>? nodeLocation;
  final TfArg<int>? nodeCount;
  final TfArg<String>? machineFilter;
  final TfArg<EdgecontainerClusterSharedDeploymentPolicy>?
  sharedDeploymentPolicy;

  @override
  String get planeKey => 'local';

  @override
  List<Map<String, Object?>> encode() => [
    {
      planeKey: [
        {
          if (nodeLocation != null) 'node_location': nodeLocation!.toTfJson(),
          if (nodeCount != null) 'node_count': nodeCount!.toTfJson(),
          if (machineFilter != null)
            'machine_filter': machineFilter!.toTfJson(),
          if (sharedDeploymentPolicy != null)
            'shared_deployment_policy': sharedDeploymentPolicy!.toTfJson(),
        },
      ],
    },
  ];
}

/// Policy for deploying user apps onto local control-plane nodes.
enum EdgecontainerClusterSharedDeploymentPolicy implements TerraformEnum {
  sharedDeploymentPolicyUnspecified,
  allowed,
  disallowed;

  @override
  String get terraformValue {
    switch (this) {
      case EdgecontainerClusterSharedDeploymentPolicy
          .sharedDeploymentPolicyUnspecified:
        return 'SHARED_DEPLOYMENT_POLICY_UNSPECIFIED';
      case EdgecontainerClusterSharedDeploymentPolicy.allowed:
        return 'ALLOWED';
      case EdgecontainerClusterSharedDeploymentPolicy.disallowed:
        return 'DISALLOWED';
    }
  }
}

/// Typed helper for the `authorization` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterAuthorization {
  const EdgecontainerClusterAuthorization({required this.adminUsers});

  final EdgecontainerClusterAuthorizationAdminUsers adminUsers;

  Map<String, Object?> encode() => {'admin_users': adminUsers.encode()};
}

/// Typed helper for the `authorization.admin_users` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterAuthorizationAdminUsers {
  const EdgecontainerClusterAuthorizationAdminUsers({required this.username});

  final TfArg<String> username;

  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Typed helper for the `control_plane_encryption` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterControlPlaneEncryption {
  const EdgecontainerClusterControlPlaneEncryption({this.kmsKey});

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// Typed helper for the `fleet` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterFleet {
  const EdgecontainerClusterFleet({required this.project});

  final TfArg<String> project;

  Map<String, Object?> encode() => {'project': project.toTfJson()};
}

/// Typed helper for the `maintenance_policy` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterMaintenancePolicy {
  const EdgecontainerClusterMaintenancePolicy({
    this.maintenanceExclusions,
    required this.window,
  });

  final List<EdgecontainerClusterMaintenancePolicyMaintenanceExclusions>?
  maintenanceExclusions;

  final EdgecontainerClusterMaintenancePolicyWindow window;

  Map<String, Object?> encode() => {
    if (maintenanceExclusions != null)
      'maintenance_exclusions': [
        for (final e in maintenanceExclusions!) e.encode(),
      ],
    'window': window.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusions` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterMaintenancePolicyMaintenanceExclusions {
  const EdgecontainerClusterMaintenancePolicyMaintenanceExclusions({
    this.id,
    this.window,
  });

  final TfArg<String>? id;

  final EdgecontainerClusterMaintenancePolicyMaintenanceExclusionsWindow?
  window;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (window != null) 'window': window!.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusions.window` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterMaintenancePolicyMaintenanceExclusionsWindow {
  const EdgecontainerClusterMaintenancePolicyMaintenanceExclusionsWindow({
    this.endTime,
    this.startTime,
  });

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  Map<String, Object?> encode() => {
    if (endTime != null) 'end_time': endTime!.toTfJson(),
    if (startTime != null) 'start_time': startTime!.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy.window` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterMaintenancePolicyWindow {
  const EdgecontainerClusterMaintenancePolicyWindow({
    required this.recurringWindow,
  });

  final EdgecontainerClusterMaintenancePolicyWindowRecurringWindow
  recurringWindow;

  Map<String, Object?> encode() => {
    'recurring_window': recurringWindow.encode(),
  };
}

/// Typed helper for the `maintenance_policy.window.recurring_window` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterMaintenancePolicyWindowRecurringWindow {
  const EdgecontainerClusterMaintenancePolicyWindowRecurringWindow({
    this.recurrence,
    this.window,
  });

  final TfArg<String>? recurrence;

  final EdgecontainerClusterMaintenancePolicyWindowRecurringWindowWindow?
  window;

  Map<String, Object?> encode() => {
    if (recurrence != null) 'recurrence': recurrence!.toTfJson(),
    if (window != null) 'window': window!.encode(),
  };
}

/// Typed helper for the `maintenance_policy.window.recurring_window.window` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterMaintenancePolicyWindowRecurringWindowWindow {
  const EdgecontainerClusterMaintenancePolicyWindowRecurringWindowWindow({
    this.endTime,
    this.startTime,
  });

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  Map<String, Object?> encode() => {
    if (endTime != null) 'end_time': endTime!.toTfJson(),
    if (startTime != null) 'start_time': startTime!.toTfJson(),
  };
}

/// Typed helper for the `networking` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterNetworking {
  const EdgecontainerClusterNetworking({
    required this.clusterIpv4CidrBlocks,
    this.clusterIpv6CidrBlocks,
    required this.servicesIpv4CidrBlocks,
    this.servicesIpv6CidrBlocks,
  });

  final TfArg<List<Object?>> clusterIpv4CidrBlocks;

  final TfArg<List<Object?>>? clusterIpv6CidrBlocks;

  final TfArg<List<Object?>> servicesIpv4CidrBlocks;

  final TfArg<List<Object?>>? servicesIpv6CidrBlocks;

  Map<String, Object?> encode() => {
    'cluster_ipv4_cidr_blocks': clusterIpv4CidrBlocks.toTfJson(),
    if (clusterIpv6CidrBlocks != null)
      'cluster_ipv6_cidr_blocks': clusterIpv6CidrBlocks!.toTfJson(),
    'services_ipv4_cidr_blocks': servicesIpv4CidrBlocks.toTfJson(),
    if (servicesIpv6CidrBlocks != null)
      'services_ipv6_cidr_blocks': servicesIpv6CidrBlocks!.toTfJson(),
  };
}

/// Typed helper for the `system_addons_config` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterSystemAddonsConfig {
  const EdgecontainerClusterSystemAddonsConfig({this.ingress});

  final EdgecontainerClusterSystemAddonsConfigIngress? ingress;

  Map<String, Object?> encode() => {
    if (ingress != null) 'ingress': ingress!.encode(),
  };
}

/// Typed helper for the `system_addons_config.ingress` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterSystemAddonsConfigIngress {
  const EdgecontainerClusterSystemAddonsConfigIngress({
    this.disabled,
    this.ipv4Vip,
  });

  final TfArg<bool>? disabled;

  final TfArg<String>? ipv4Vip;

  Map<String, Object?> encode() => {
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    if (ipv4Vip != null) 'ipv4_vip': ipv4Vip!.toTfJson(),
  };
}

/// Factory wrapper for `google_edgecontainer_cluster`.
///
/// Cluster contains information about a Google Distributed Cloud Edge
/// Kubernetes cluster.
///
/// Google Distributed Cloud Edge **cluster** — Kubernetes control plane on
/// edge hardware (GDCE).
///
/// Choose exactly one [EdgecontainerClusterControlPlane]:
/// - [EdgecontainerClusterControlPlaneRemote] — remote control plane.
/// - [EdgecontainerClusterControlPlaneLocal] — local control plane
///   (node count 1 or 3).
///
/// **Cost:** Google Distributed Cloud Edge `8A2D-5CB1-345B` bills
/// connected / edge server hardware+SW commitments (e.g. Connected Server
/// Gen1 64vCPU FI 6mo SKU `007E-2D86-E472` **$3600/mo**). Requires physical
/// GDCE machines absent on `terradart-validate` — ships without a
/// quickstart (`tool/example_debt.yaml`).
///
/// Enable `edgecontainer.googleapis.com` via [GoogleProjectService] before
/// apply. [networking], [fleet], and [authorization] are required by the
/// provider.
///
/// Example (remote control plane):
/// ```dart
/// GoogleEdgecontainerCluster(
///   localName: 'edge',
///   name: TfArg.literal('terradart-edge'),
///   location: TfArg.literal('us-central1'),
///   networking: EdgecontainerClusterNetworking(
///     clusterIpv4CidrBlocks: [TfArg.literal('10.96.0.0/17')],
///     servicesIpv4CidrBlocks: [TfArg.literal('10.200.0.0/20')],
///   ),
///   fleet: EdgecontainerClusterFleet(
///     project: TfArg.literal('projects/$projectNumber'),
///   ),
///   authorization: EdgecontainerClusterAuthorization(
///     adminUsers: EdgecontainerClusterAuthorizationAdminUsers(
///       username: TfArg.literal('admin@example.com'),
///     ),
///   ),
///   controlPlane: EdgecontainerClusterControlPlaneRemote(
///     nodeLocation: TfArg.literal('us-central1-edge-customer-a'),
///   ),
/// );
/// ```
final class GoogleEdgecontainerCluster extends Resource {
  static const String tfType = 'google_edgecontainer_cluster';

  GoogleEdgecontainerCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required EdgecontainerClusterNetworking networking,
    required EdgecontainerClusterFleet fleet,
    required EdgecontainerClusterAuthorization authorization,
    required EdgecontainerClusterControlPlane controlPlane,
    EdgecontainerClusterControlPlaneEncryption? controlPlaneEncryption,
    EdgecontainerClusterMaintenancePolicy? maintenancePolicy,
    EdgecontainerClusterSystemAddonsConfig? systemAddonsConfig,
    TfArg<List<String>>? externalLoadBalancerIpv4AddressPools,
    TfArg<String>? targetVersion,
    TfArg<String>? releaseChannel,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'networking': TfArg.literal(networking.encode()),
           'fleet': TfArg.literal(fleet.encode()),
           'authorization': TfArg.literal(authorization.encode()),
           if (controlPlaneEncryption != null)
             'control_plane_encryption': TfArg.literal(
               controlPlaneEncryption.encode(),
             ),
           if (maintenancePolicy != null)
             'maintenance_policy': TfArg.literal(maintenancePolicy.encode()),
           if (systemAddonsConfig != null)
             'system_addons_config': TfArg.literal(systemAddonsConfig.encode()),
           if (externalLoadBalancerIpv4AddressPools != null)
             'external_load_balancer_ipv4_address_pools':
                 externalLoadBalancerIpv4AddressPools,
           if (targetVersion != null) 'target_version': targetVersion,
           if (releaseChannel != null) 'release_channel': releaseChannel,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           'control_plane': TfArg.literal(controlPlane.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEdgecontainerClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_ca_certificate` attribute.
  TfRef<String> get clusterCaCertificate =>
      TfRef.attribute<String>(this, 'cluster_ca_certificate');

  /// Reference to `control_plane_version` attribute.
  TfRef<String> get controlPlaneVersion =>
      TfRef.attribute<String>(this, 'control_plane_version');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `maintenance_events` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceEvents =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_events');

  /// Reference to `node_version` attribute.
  TfRef<String> get nodeVersion =>
      TfRef.attribute<String>(this, 'node_version');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
