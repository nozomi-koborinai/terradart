// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workstations_workstation_cluster`.
const Set<String> _googleWorkstationsWorkstationClusterSensitive = <String>{};

/// Typed helper for the `domain_config` block of
/// `google_workstations_workstation_cluster` (derived from provider schema).
@immutable
final class WorkstationsWorkstationClusterDomainConfig {
  const WorkstationsWorkstationClusterDomainConfig({required this.domain});

  final TfArg<String> domain;

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

  final TfArg<List<Object?>>? allowedProjects;

  final TfArg<bool> enablePrivateEndpoint;

  Map<String, Object?> encode() => {
    if (allowedProjects != null)
      'allowed_projects': allowedProjects!.toTfJson(),
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
///   localName: 'ws',
///   workstationClusterId: TfArg.literal('terradart-ws'),
///   location: TfArg.literal('us-central1'),
///   network: TfArg.ref(vpc.id),
///   subnetwork: TfArg.ref(subnet.id),
/// );
/// ```
final class GoogleWorkstationsWorkstationCluster extends Resource {
  static const String tfType = 'google_workstations_workstation_cluster';

  GoogleWorkstationsWorkstationCluster({
    required super.localName,
    required TfArg<String> workstationClusterId,
    TfArg<String>? location,
    required TfArg<String> network,
    required TfArg<String> subnetwork,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id': workstationClusterId,
           if (location != null) 'location': location,
           'network': network,
           'subnetwork': subnetwork,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (tags != null) 'tags': tags,
           if (domainConfig != null)
             'domain_config': TfArg.literal(domainConfig.encode()),
           if (privateClusterConfig != null)
             'private_cluster_config': TfArg.literal(
               privateClusterConfig.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterIdRef =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
