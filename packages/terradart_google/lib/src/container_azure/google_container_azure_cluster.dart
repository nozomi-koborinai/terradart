// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_azure_cluster`.
const Set<String> _googleContainerAzureClusterSensitive = <String>{};

/// Typed helper for the `authorization` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterAuthorization {
  const ContainerAzureClusterAuthorization({
    this.adminGroups,
    required this.adminUsers,
  });

  final List<ContainerAzureClusterAuthorizationAdminGroups>? adminGroups;

  final List<ContainerAzureClusterAuthorizationAdminUsers> adminUsers;

  Map<String, Object?> encode() => {
    if (adminGroups != null)
      'admin_groups': [for (final e in adminGroups!) e.encode()],
    'admin_users': [for (final e in adminUsers) e.encode()],
  };
}

/// Typed helper for the `authorization.admin_groups` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterAuthorizationAdminGroups {
  const ContainerAzureClusterAuthorizationAdminGroups({required this.group});

  final TfArg<String> group;

  Map<String, Object?> encode() => {'group': group.toTfJson()};
}

/// Typed helper for the `authorization.admin_users` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterAuthorizationAdminUsers {
  const ContainerAzureClusterAuthorizationAdminUsers({required this.username});

  final TfArg<String> username;

  Map<String, Object?> encode() => {'username': username.toTfJson()};
}

/// Typed helper for the `azure_services_authentication` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterAzureServicesAuthentication {
  const ContainerAzureClusterAzureServicesAuthentication({
    required this.applicationId,
    required this.tenantId,
  });

  final TfArg<String> applicationId;

  final TfArg<String> tenantId;

  Map<String, Object?> encode() => {
    'application_id': applicationId.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Typed helper for the `control_plane` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterControlPlane {
  const ContainerAzureClusterControlPlane({
    required this.subnetId,
    this.tags,
    required this.version,
    this.vmSize,
    this.databaseEncryption,
    this.mainVolume,
    this.proxyConfig,
    this.replicaPlacements,
    this.rootVolume,
    required this.sshConfig,
  });

  final TfArg<String> subnetId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> version;

  final TfArg<String>? vmSize;

  final ContainerAzureClusterControlPlaneDatabaseEncryption? databaseEncryption;

  final ContainerAzureClusterControlPlaneMainVolume? mainVolume;

  final ContainerAzureClusterControlPlaneProxyConfig? proxyConfig;

  final List<ContainerAzureClusterControlPlaneReplicaPlacements>?
  replicaPlacements;

  final ContainerAzureClusterControlPlaneRootVolume? rootVolume;

  final ContainerAzureClusterControlPlaneSshConfig sshConfig;

  Map<String, Object?> encode() => {
    'subnet_id': subnetId.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    'version': version.toTfJson(),
    if (vmSize != null) 'vm_size': vmSize!.toTfJson(),
    if (databaseEncryption != null)
      'database_encryption': databaseEncryption!.encode(),
    if (mainVolume != null) 'main_volume': mainVolume!.encode(),
    if (proxyConfig != null) 'proxy_config': proxyConfig!.encode(),
    if (replicaPlacements != null)
      'replica_placements': [for (final e in replicaPlacements!) e.encode()],
    if (rootVolume != null) 'root_volume': rootVolume!.encode(),
    'ssh_config': sshConfig.encode(),
  };
}

/// Typed helper for the `control_plane.database_encryption` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterControlPlaneDatabaseEncryption {
  const ContainerAzureClusterControlPlaneDatabaseEncryption({
    required this.keyId,
  });

  final TfArg<String> keyId;

  Map<String, Object?> encode() => {'key_id': keyId.toTfJson()};
}

/// Typed helper for the `control_plane.main_volume` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterControlPlaneMainVolume {
  const ContainerAzureClusterControlPlaneMainVolume({this.sizeGib});

  final TfArg<num>? sizeGib;

  Map<String, Object?> encode() => {
    if (sizeGib != null) 'size_gib': sizeGib!.toTfJson(),
  };
}

/// Typed helper for the `control_plane.proxy_config` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterControlPlaneProxyConfig {
  const ContainerAzureClusterControlPlaneProxyConfig({
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

/// Typed helper for the `control_plane.replica_placements` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterControlPlaneReplicaPlacements {
  const ContainerAzureClusterControlPlaneReplicaPlacements({
    required this.azureAvailabilityZone,
    required this.subnetId,
  });

  final TfArg<String> azureAvailabilityZone;

  final TfArg<String> subnetId;

  Map<String, Object?> encode() => {
    'azure_availability_zone': azureAvailabilityZone.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Typed helper for the `control_plane.root_volume` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterControlPlaneRootVolume {
  const ContainerAzureClusterControlPlaneRootVolume({this.sizeGib});

  final TfArg<num>? sizeGib;

  Map<String, Object?> encode() => {
    if (sizeGib != null) 'size_gib': sizeGib!.toTfJson(),
  };
}

/// Typed helper for the `control_plane.ssh_config` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterControlPlaneSshConfig {
  const ContainerAzureClusterControlPlaneSshConfig({
    required this.authorizedKey,
  });

  final TfArg<String> authorizedKey;

  Map<String, Object?> encode() => {'authorized_key': authorizedKey.toTfJson()};
}

/// Typed helper for the `fleet` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterFleet {
  const ContainerAzureClusterFleet({this.project});

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    if (project != null) 'project': project!.toTfJson(),
  };
}

/// Typed helper for the `networking` block of
/// `google_container_azure_cluster` (derived from provider schema).
@immutable
final class ContainerAzureClusterNetworking {
  const ContainerAzureClusterNetworking({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    required this.virtualNetworkId,
  });

  final TfArg<List<Object?>> podAddressCidrBlocks;

  final TfArg<List<Object?>> serviceAddressCidrBlocks;

  final TfArg<String> virtualNetworkId;

  Map<String, Object?> encode() => {
    'pod_address_cidr_blocks': podAddressCidrBlocks.toTfJson(),
    'service_address_cidr_blocks': serviceAddressCidrBlocks.toTfJson(),
    'virtual_network_id': virtualNetworkId.toTfJson(),
  };
}

/// Factory wrapper for `google_container_azure_cluster`.
///
/// GKE on Azure **cluster** — multi-cloud control plane on Microsoft Azure,
/// registered to a Fleet.
///
/// **Cost / apply:** GKE Enterprise Multicloud (Azure) SKU `688E-3D16-399E`
/// **$0.00822/h** (service `9186-F79E-3871`) plus Azure VMs for the control
/// plane and node pools. Needs a real Azure tenant / resource group —
/// debt-only. **Never** wire into apply-smoke.
///
/// Enable `gkemulticloud.googleapis.com` via [GoogleProjectService] before
/// apply. [authorization], [controlPlane], [fleet], and [networking] are
/// required.
final class GoogleContainerAzureCluster extends Resource {
  static const String tfType = 'google_container_azure_cluster';

  GoogleContainerAzureCluster({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> azureRegion,
    required TfArg<String> resourceGroupId,
    required ContainerAzureClusterAuthorization authorization,
    required ContainerAzureClusterControlPlane controlPlane,
    required ContainerAzureClusterFleet fleet,
    required ContainerAzureClusterNetworking networking,
    ContainerAzureClusterAzureServicesAuthentication?
    azureServicesAuthentication,
    TfArg<String>? client,
    TfArg<String>? description,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'azure_region': azureRegion,
           'resource_group_id': resourceGroupId,
           'authorization': TfArg.literal(authorization.encode()),
           'control_plane': TfArg.literal(controlPlane.encode()),
           'fleet': TfArg.literal(fleet.encode()),
           'networking': TfArg.literal(networking.encode()),
           if (azureServicesAuthentication != null)
             'azure_services_authentication': TfArg.literal(
               azureServicesAuthentication.encode(),
             ),
           if (client != null) 'client': client,
           if (description != null) 'description': description,
           if (annotations != null) 'annotations': annotations,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAzureClusterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

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

  /// Reference to `workload_identity_config` attribute.
  TfRef<List<Map<String, Object?>>> get workloadIdentityConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'workload_identity_config',
      );

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
