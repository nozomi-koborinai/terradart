// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_azure_node_pool`.
const Set<String> _googleContainerAzureNodePoolSensitive = <String>{};

/// Typed helper for the `autoscaling` block of
/// `google_container_azure_node_pool` (derived from provider schema).
@immutable
final class ContainerAzureNodePoolAutoscaling {
  const ContainerAzureNodePoolAutoscaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  final TfArg<num> maxNodeCount;

  final TfArg<num> minNodeCount;

  Map<String, Object?> encode() => {
    'max_node_count': maxNodeCount.toTfJson(),
    'min_node_count': minNodeCount.toTfJson(),
  };
}

/// Typed helper for the `config` block of
/// `google_container_azure_node_pool` (derived from provider schema).
@immutable
final class ContainerAzureNodePoolConfig {
  const ContainerAzureNodePoolConfig({
    this.labels,
    this.tags,
    this.vmSize,
    this.proxyConfig,
    this.rootVolume,
    required this.sshConfig,
  });

  final TfArg<Map<String, String>>? labels;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String>? vmSize;

  final ContainerAzureNodePoolConfigProxyConfig? proxyConfig;

  final ContainerAzureNodePoolConfigRootVolume? rootVolume;

  final ContainerAzureNodePoolConfigSshConfig sshConfig;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (vmSize != null) 'vm_size': vmSize!.toTfJson(),
    if (proxyConfig != null) 'proxy_config': proxyConfig!.encode(),
    if (rootVolume != null) 'root_volume': rootVolume!.encode(),
    'ssh_config': sshConfig.encode(),
  };
}

/// Typed helper for the `config.proxy_config` block of
/// `google_container_azure_node_pool` (derived from provider schema).
@immutable
final class ContainerAzureNodePoolConfigProxyConfig {
  const ContainerAzureNodePoolConfigProxyConfig({
    required this.resourceGroupId,
    required this.secretId,
  });

  final TfArg<String> resourceGroupId;

  final TfArg<String> secretId;

  Map<String, Object?> encode() => {
    'resource_group_id': resourceGroupId.toTfJson(),
    'secret_id': secretId.toTfJson(),
  };
}

/// Typed helper for the `config.root_volume` block of
/// `google_container_azure_node_pool` (derived from provider schema).
@immutable
final class ContainerAzureNodePoolConfigRootVolume {
  const ContainerAzureNodePoolConfigRootVolume({this.sizeGib});

  final TfArg<num>? sizeGib;

  Map<String, Object?> encode() => {
    if (sizeGib != null) 'size_gib': sizeGib!.toTfJson(),
  };
}

/// Typed helper for the `config.ssh_config` block of
/// `google_container_azure_node_pool` (derived from provider schema).
@immutable
final class ContainerAzureNodePoolConfigSshConfig {
  const ContainerAzureNodePoolConfigSshConfig({required this.authorizedKey});

  final TfArg<String> authorizedKey;

  Map<String, Object?> encode() => {'authorized_key': authorizedKey.toTfJson()};
}

/// Typed helper for the `management` block of
/// `google_container_azure_node_pool` (derived from provider schema).
@immutable
final class ContainerAzureNodePoolManagement {
  const ContainerAzureNodePoolManagement({this.autoRepair});

  final TfArg<bool>? autoRepair;

  Map<String, Object?> encode() => {
    if (autoRepair != null) 'auto_repair': autoRepair!.toTfJson(),
  };
}

/// Typed helper for the `max_pods_constraint` block of
/// `google_container_azure_node_pool` (derived from provider schema).
@immutable
final class ContainerAzureNodePoolMaxPodsConstraint {
  const ContainerAzureNodePoolMaxPodsConstraint({required this.maxPodsPerNode});

  final TfArg<num> maxPodsPerNode;

  Map<String, Object?> encode() => {
    'max_pods_per_node': maxPodsPerNode.toTfJson(),
  };
}

/// Factory wrapper for `google_container_azure_node_pool`.
///
/// GKE on Azure **node pool** — Azure VM-backed workers for a
/// [GoogleContainerAzureCluster].
///
/// **Cost / apply:** Same GKE Enterprise Multicloud (Azure) management fee
/// (SKU `688E-3D16-399E` **$0.00822/h** on `9186-F79E-3871`) plus Azure VMs.
/// Requires never_apply parent cluster / Azure tenant — debt-only. **Never**
/// wire into apply-smoke.
final class GoogleContainerAzureNodePool extends Resource {
  static const String tfType = 'google_container_azure_node_pool';

  GoogleContainerAzureNodePool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> cluster,
    required TfArg<String> subnetId,
    required TfArg<String> version,
    required ContainerAzureNodePoolAutoscaling autoscaling,
    required ContainerAzureNodePoolConfig config,
    required ContainerAzureNodePoolMaxPodsConstraint maxPodsConstraint,
    ContainerAzureNodePoolManagement? management,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'cluster': cluster,
           'subnet_id': subnetId,
           'version': version,
           'autoscaling': TfArg.literal(autoscaling.encode()),
           'config': TfArg.literal(config.encode()),
           'max_pods_constraint': TfArg.literal(maxPodsConstraint.encode()),
           if (management != null)
             'management': TfArg.literal(management.encode()),
           if (annotations != null) 'annotations': annotations,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAzureNodePoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
