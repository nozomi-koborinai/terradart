// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_workstations_workstation_cluster`.
const Set<String> _googleWorkstationsWorkstationClusterSensitive = <String>{};

/// Typed helper for the `domain_config` block of
/// `google_workstations_workstation_cluster` (derived from provider schema).
@immutable
final class WorkstationsWorkstationClusterDomainConfig {
  const WorkstationsWorkstationClusterDomainConfig({required this.domain});

  final TfArg<String> domain;

  @internal
  Map<String, Object?> encode() => {'domain': domain.toTfJson()};
}

/// Typed helper for the `private_cluster_config` block of
/// `google_workstations_workstation_cluster` (derived from provider schema).
@immutable
final class WorkstationsWorkstationClusterPrivateClusterConfig {
  const WorkstationsWorkstationClusterPrivateClusterConfig({
    this.allowedProjects,
    required this.enablePrivateEndpoint,
  });

  final TfArg<List<String>>? allowedProjects;

  final TfArg<bool> enablePrivateEndpoint;

  @internal
  Map<String, Object?> encode() => {
    'allowed_projects': ?allowedProjects?.toTfJson(),
    'enable_private_endpoint': enablePrivateEndpoint.toTfJson(),
  };
}

/// Factory wrapper for `google_workstations_workstation_cluster`.
///
/// A grouping of workstation configurations and the associated workstations in
/// that region.
///
/// Cloud Workstations **cluster** — VPC-attached control plane for
/// workstation configs and instances.
///
/// **Cost:** Cloud Billing Catalog service `4528-FDD0-A2A0` bills a
/// **control plane fee** while the cluster exists (us-central1 SKU
/// `61C4-0757-3151` **$0.2/h**). Destroy stops the fee. Too expensive
/// for apply-smoke — factories ship without a quickstart.
///
/// Enable `workstations.googleapis.com` via [GoogleProjectService]
/// before apply.
///
/// Example:
/// ```dart
/// GoogleWorkstationsWorkstationCluster(
///   'ws',
///   workstationClusterId: TfArg.literal('terradart-ws'),
///   location: TfArg.literal('us-central1'),
///   network: vpc.ref,
///   subnetwork: subnet.ref,
/// );
/// ```
final class GoogleWorkstationsWorkstationCluster extends Resource {
  static const String tfType = 'google_workstations_workstation_cluster';

  GoogleWorkstationsWorkstationCluster(
    super.localName, {
    required TfArg<String> workstationClusterId,
    TfArg<String>? location,
    required RefTo<GoogleComputeNetwork> network,
    required RefTo<GoogleComputeSubnetwork> subnetwork,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? tags,
    WorkstationsWorkstationClusterDomainConfig? domainConfig,
    WorkstationsWorkstationClusterPrivateClusterConfig? privateClusterConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id': workstationClusterId,
           'location': ?location,
           'network': network.encodeAs('id'),
           'subnetwork': subnetwork.encodeAs('id'),
           'display_name': ?displayName,
           'labels': ?labels,
           'annotations': ?annotations,
           'tags': ?tags,
           if (domainConfig != null)
             'domain_config': TfArg.literal(domainConfig.encode()),
           if (privateClusterConfig != null)
             'private_cluster_config': TfArg.literal(
               privateClusterConfig.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstationCluster>`.
  RefTo<GoogleWorkstationsWorkstationCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `control_plane_ip` attribute.
  TfRef<String> get controlPlaneIp =>
      TfRef.attribute<String>(this, 'control_plane_ip');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `degraded` attribute.
  TfRef<bool> get degraded => TfRef.attribute<bool>(this, 'degraded');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workstation_authorization_url` attribute.
  TfRef<String> get workstationAuthorizationUrl =>
      TfRef.attribute<String>(this, 'workstation_authorization_url');

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterId =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `workstation_launch_url` attribute.
  TfRef<String> get workstationLaunchUrl =>
      TfRef.attribute<String>(this, 'workstation_launch_url');
}
