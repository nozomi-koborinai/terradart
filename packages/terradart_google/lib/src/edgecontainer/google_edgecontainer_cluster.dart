// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

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

/// Typed helper for the `authorization` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterAuthorization {
  const EdgecontainerClusterAuthorization({required this.adminUsers});

  final EdgecontainerClusterAdminUsers adminUsers;

  Map<String, Object?> encode() => {'admin_users': adminUsers.encode()};
}

/// Typed helper for the `authorization.admin_users` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterAdminUsers {
  const EdgecontainerClusterAdminUsers({required this.username});

  final TfArg<String> username;

  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Exactly one of `remote`, `local` on the `control_plane` block of `google_edgecontainer_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.remote(...)`.
sealed class EdgecontainerClusterControlPlane {
  const EdgecontainerClusterControlPlane();

  /// Sets `remote`.
  const factory EdgecontainerClusterControlPlane.remote(
    EdgecontainerClusterRemote remote,
  ) = EdgecontainerClusterControlPlaneRemote;

  /// Sets `local`.
  const factory EdgecontainerClusterControlPlane.local(
    EdgecontainerClusterLocal local,
  ) = EdgecontainerClusterControlPlaneLocal;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EdgecontainerClusterControlPlane.remote] choice: sets `remote`.
final class EdgecontainerClusterControlPlaneRemote
    extends EdgecontainerClusterControlPlane {
  const EdgecontainerClusterControlPlaneRemote(this.remote);

  final EdgecontainerClusterRemote remote;

  @override
  String get blockKey => 'remote';

  @override
  Map<String, Object?> encode() => {'remote': remote.encode()};
}

/// The [EdgecontainerClusterControlPlane.local] choice: sets `local`.
final class EdgecontainerClusterControlPlaneLocal
    extends EdgecontainerClusterControlPlane {
  const EdgecontainerClusterControlPlaneLocal(this.local);

  final EdgecontainerClusterLocal local;

  @override
  String get blockKey => 'local';

  @override
  Map<String, Object?> encode() => {'local': local.encode()};
}

/// Typed helper for the `control_plane.local` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterLocal {
  const EdgecontainerClusterLocal({
    this.machineFilter,
    this.nodeCount,
    this.nodeLocation,
    this.sharedDeploymentPolicy,
  });

  final TfArg<String>? machineFilter;

  final TfArg<num>? nodeCount;

  final TfArg<String>? nodeLocation;

  final TfArg<EdgecontainerClusterSharedDeploymentPolicy>?
  sharedDeploymentPolicy;

  Map<String, Object?> encode() => {
    'machine_filter': ?machineFilter?.toTfJson(),
    'node_count': ?nodeCount?.toTfJson(),
    'node_location': ?nodeLocation?.toTfJson(),
    'shared_deployment_policy': ?sharedDeploymentPolicy?.toTfJson(),
  };
}

/// `shared_deployment_policy` — derived from the provider schema description.
enum EdgecontainerClusterSharedDeploymentPolicy implements TerraformEnum {
  sharedDeploymentPolicyUnspecified('SHARED_DEPLOYMENT_POLICY_UNSPECIFIED'),
  allowed('ALLOWED'),
  disallowed('DISALLOWED');

  const EdgecontainerClusterSharedDeploymentPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `control_plane.remote` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterRemote {
  const EdgecontainerClusterRemote({this.nodeLocation});

  final TfArg<String>? nodeLocation;

  Map<String, Object?> encode() => {'node_location': ?nodeLocation?.toTfJson()};
}

/// Typed helper for the `control_plane_encryption` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterControlPlaneEncryption {
  const EdgecontainerClusterControlPlaneEncryption({this.kmsKey});

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  Map<String, Object?> encode() => {
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
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

  final List<EdgecontainerClusterMaintenanceExclusions>? maintenanceExclusions;

  final EdgecontainerClusterWindow window;

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
final class EdgecontainerClusterMaintenanceExclusions {
  const EdgecontainerClusterMaintenanceExclusions({this.id, this.window});

  final TfArg<String>? id;

  final EdgecontainerClusterMaintenanceExclusionsWindow? window;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'window': ?window?.encode(),
  };
}

/// Typed helper for the `maintenance_policy.maintenance_exclusions.window` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class EdgecontainerClusterMaintenanceExclusionsWindow {
  const EdgecontainerClusterMaintenanceExclusionsWindow({
    this.endTime,
    this.startTime,
  });

  final TfArg<String>? endTime;

  final TfArg<String>? startTime;

  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `maintenance_policy.window` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterWindow {
  const EdgecontainerClusterWindow({required this.recurringWindow});

  final EdgecontainerClusterRecurringWindow recurringWindow;

  Map<String, Object?> encode() => {
    'recurring_window': recurringWindow.encode(),
  };
}

/// Typed helper for the `maintenance_policy.window.recurring_window` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterRecurringWindow {
  const EdgecontainerClusterRecurringWindow({this.recurrence, this.window});

  final TfArg<String>? recurrence;

  final EdgecontainerClusterMaintenanceExclusionsWindow? window;

  Map<String, Object?> encode() => {
    'recurrence': ?recurrence?.toTfJson(),
    'window': ?window?.encode(),
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

  final TfArg<List<String>> clusterIpv4CidrBlocks;

  final TfArg<List<String>>? clusterIpv6CidrBlocks;

  final TfArg<List<String>> servicesIpv4CidrBlocks;

  final TfArg<List<String>>? servicesIpv6CidrBlocks;

  Map<String, Object?> encode() => {
    'cluster_ipv4_cidr_blocks': clusterIpv4CidrBlocks.toTfJson(),
    'cluster_ipv6_cidr_blocks': ?clusterIpv6CidrBlocks?.toTfJson(),
    'services_ipv4_cidr_blocks': servicesIpv4CidrBlocks.toTfJson(),
    'services_ipv6_cidr_blocks': ?servicesIpv6CidrBlocks?.toTfJson(),
  };
}

/// Typed helper for the `system_addons_config` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterSystemAddonsConfig {
  const EdgecontainerClusterSystemAddonsConfig({this.ingress});

  final EdgecontainerClusterIngress? ingress;

  Map<String, Object?> encode() => {'ingress': ?ingress?.encode()};
}

/// Typed helper for the `system_addons_config.ingress` block of
/// `google_edgecontainer_cluster` (derived from provider schema).
@immutable
final class EdgecontainerClusterIngress {
  const EdgecontainerClusterIngress({this.disabled, this.ipv4Vip});

  final TfArg<bool>? disabled;

  final TfArg<String>? ipv4Vip;

  Map<String, Object?> encode() => {
    'disabled': ?disabled?.toTfJson(),
    'ipv4_vip': ?ipv4Vip?.toTfJson(),
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
/// [controlPlane] is exactly one placement: `.remote(...)` or
/// `.local(...)` (node count 1 or 3).
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
///     clusterIpv4CidrBlocks: TfArg.literal(['10.96.0.0/17']),
///     servicesIpv4CidrBlocks: TfArg.literal(['10.200.0.0/20']),
///   ),
///   fleet: EdgecontainerClusterFleet(
///     project: TfArg.literal('projects/$projectNumber'),
///   ),
///   authorization: EdgecontainerClusterAuthorization(
///     adminUsers: EdgecontainerClusterAdminUsers(
///       username: TfArg.literal('admin@example.com'),
///     ),
///   ),
///   controlPlane: .remote(
///     EdgecontainerClusterRemote(
///       nodeLocation: .literal('us-central1-edge-customer-a'),
///     ),
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
    EdgecontainerClusterControlPlane? controlPlane,
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
    super.provider,
    super.timeouts,
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
           'external_load_balancer_ipv4_address_pools':
               ?externalLoadBalancerIpv4AddressPools,
           'target_version': ?targetVersion,
           'release_channel': ?releaseChannel,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (controlPlane != null)
             'control_plane': TfArg.literal(controlPlane.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEdgecontainerClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEdgecontainerCluster>`.
  RefTo<GoogleEdgecontainerCluster> get ref => RefTo.of(this);

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

  /// Reference to `default_max_pods_per_node` attribute.
  TfRef<num> get defaultMaxPodsPerNodeRef =>
      TfRef.attribute<num>(this, 'default_max_pods_per_node');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `external_load_balancer_ipv4_address_pools` attribute.
  TfRef<List<String>> get externalLoadBalancerIpv4AddressPoolsRef =>
      TfRef.attribute<List<String>>(
        this,
        'external_load_balancer_ipv4_address_pools',
      );

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `release_channel` attribute.
  TfRef<String> get releaseChannelRef =>
      TfRef.attribute<String>(this, 'release_channel');

  /// Reference to `target_version` attribute.
  TfRef<String> get targetVersionRef =>
      TfRef.attribute<String>(this, 'target_version');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
