// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_redhat_openshift_cluster`.
const Set<String> _azurermRedhatOpenshiftClusterSensitive = <String>{
  'cluster_profile.pull_secret',
  'service_principal.client_secret',
};

/// Exactly one of `identity`, `service_principal` on `azurerm_redhat_openshift_cluster`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.identity(...)`.
sealed class RedhatOpenshiftClusterCredentials {
  const RedhatOpenshiftClusterCredentials();

  /// Sets `identity`.
  const factory RedhatOpenshiftClusterCredentials.identity(
    RedhatOpenshiftClusterIdentity identity,
  ) = RedhatOpenshiftClusterCredentialsIdentity;

  /// Sets `service_principal`.
  const factory RedhatOpenshiftClusterCredentials.servicePrincipal(
    RedhatOpenshiftClusterServicePrincipal servicePrincipal,
  ) = RedhatOpenshiftClusterCredentialsServicePrincipal;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RedhatOpenshiftClusterCredentials.identity] choice: sets `identity`.
final class RedhatOpenshiftClusterCredentialsIdentity
    extends RedhatOpenshiftClusterCredentials {
  const RedhatOpenshiftClusterCredentialsIdentity(this.identity);

  final RedhatOpenshiftClusterIdentity identity;

  @internal
  @override
  String get blockKey => 'identity';

  @internal
  @override
  Map<String, Object?> encode() => {'identity': identity.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'identity': TfArg.literal(identity.encode()),
  };
}

/// The [RedhatOpenshiftClusterCredentials.servicePrincipal] choice: sets `service_principal`.
final class RedhatOpenshiftClusterCredentialsServicePrincipal
    extends RedhatOpenshiftClusterCredentials {
  const RedhatOpenshiftClusterCredentialsServicePrincipal(
    this.servicePrincipal,
  );

  final RedhatOpenshiftClusterServicePrincipal servicePrincipal;

  @internal
  @override
  String get blockKey => 'service_principal';

  @internal
  @override
  Map<String, Object?> encode() => {
    'service_principal': servicePrincipal.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'service_principal': TfArg.literal(servicePrincipal.encode()),
  };
}

/// Typed helper for the `api_server_profile` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterApiServerProfile {
  const RedhatOpenshiftClusterApiServerProfile({required this.visibility});

  final RedhatOpenshiftClusterVisibility visibility;

  @internal
  Map<String, Object?> encode() => {'visibility': visibility.toTfJson()};
}

/// `visibility` — derived from the provider schema description.
extension type const RedhatOpenshiftClusterVisibility._(TfArg<String> _)
    implements TfArg<String> {
  RedhatOpenshiftClusterVisibility.variable(String name)
    : this._(TfArg.variable(name));
  RedhatOpenshiftClusterVisibility.expression(String template)
    : this._(TfArg.expression(template));
  const RedhatOpenshiftClusterVisibility.arg(TfArg<String> arg) : this._(arg);

  static const private = RedhatOpenshiftClusterVisibility._(
    TfArgLiteral('Private'),
  );
  static const public = RedhatOpenshiftClusterVisibility._(
    TfArgLiteral('Public'),
  );

  static const List<RedhatOpenshiftClusterVisibility> values = [
    private,
    public,
  ];
}

/// Typed helper for the `cluster_profile` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterProfile {
  const RedhatOpenshiftClusterProfile({
    required this.domain,
    this.fipsEnabled,
    this.managedResourceGroupName,
    this.pullSecret,
    required this.version,
  });

  final TfArg<String> domain;

  final TfArg<bool>? fipsEnabled;

  final TfArg<String>? managedResourceGroupName;

  final Sensitive<String>? pullSecret;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'fips_enabled': ?fipsEnabled?.toTfJson(),
    'managed_resource_group_name': ?managedResourceGroupName?.toTfJson(),
    'pull_secret': ?pullSecret?.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterIdentity {
  const RedhatOpenshiftClusterIdentity({
    required this.identityIds,
    required this.type,
  });

  final TfArg<List<String>> identityIds;

  final RedhatOpenshiftClusterType type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const RedhatOpenshiftClusterType._(TfArg<String> _)
    implements TfArg<String> {
  RedhatOpenshiftClusterType.variable(String name)
    : this._(TfArg.variable(name));
  RedhatOpenshiftClusterType.expression(String template)
    : this._(TfArg.expression(template));
  const RedhatOpenshiftClusterType.arg(TfArg<String> arg) : this._(arg);

  static const userassigned = RedhatOpenshiftClusterType._(
    TfArgLiteral('UserAssigned'),
  );

  static const List<RedhatOpenshiftClusterType> values = [userassigned];
}

/// Typed helper for the `ingress_profile` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterIngressProfile {
  const RedhatOpenshiftClusterIngressProfile({required this.visibility});

  final RedhatOpenshiftClusterVisibility visibility;

  @internal
  Map<String, Object?> encode() => {'visibility': visibility.toTfJson()};
}

/// Typed helper for the `main_profile` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterMainProfile {
  const RedhatOpenshiftClusterMainProfile({
    this.diskEncryptionSetId,
    this.encryptionAtHostEnabled,
    required this.subnetId,
    required this.vmSize,
  });

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<bool>? encryptionAtHostEnabled;

  final TfArg<String> subnetId;

  final TfArg<String> vmSize;

  @internal
  Map<String, Object?> encode() => {
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'encryption_at_host_enabled': ?encryptionAtHostEnabled?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
    'vm_size': vmSize.toTfJson(),
  };
}

/// Typed helper for the `network_profile` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterNetworkProfile {
  const RedhatOpenshiftClusterNetworkProfile({
    this.outboundType,
    required this.podCidr,
    this.preconfiguredNetworkSecurityGroupEnabled,
    required this.serviceCidr,
    this.loadBalancerProfile,
  });

  final RedhatOpenshiftClusterOutboundType? outboundType;

  final TfArg<String> podCidr;

  final TfArg<bool>? preconfiguredNetworkSecurityGroupEnabled;

  final TfArg<String> serviceCidr;

  final RedhatOpenshiftClusterLoadBalancerProfile? loadBalancerProfile;

  @internal
  Map<String, Object?> encode() => {
    'outbound_type': ?outboundType?.toTfJson(),
    'pod_cidr': podCidr.toTfJson(),
    'preconfigured_network_security_group_enabled':
        ?preconfiguredNetworkSecurityGroupEnabled?.toTfJson(),
    'service_cidr': serviceCidr.toTfJson(),
    'load_balancer_profile': ?loadBalancerProfile?.encode(),
  };
}

/// `outbound_type` — derived from the provider schema description.
extension type const RedhatOpenshiftClusterOutboundType._(TfArg<String> _)
    implements TfArg<String> {
  RedhatOpenshiftClusterOutboundType.variable(String name)
    : this._(TfArg.variable(name));
  RedhatOpenshiftClusterOutboundType.expression(String template)
    : this._(TfArg.expression(template));
  const RedhatOpenshiftClusterOutboundType.arg(TfArg<String> arg) : this._(arg);

  static const loadbalancer = RedhatOpenshiftClusterOutboundType._(
    TfArgLiteral('Loadbalancer'),
  );
  static const userdefinedrouting = RedhatOpenshiftClusterOutboundType._(
    TfArgLiteral('UserDefinedRouting'),
  );

  static const List<RedhatOpenshiftClusterOutboundType> values = [
    loadbalancer,
    userdefinedrouting,
  ];
}

/// Typed helper for the `network_profile.load_balancer_profile` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterLoadBalancerProfile {
  const RedhatOpenshiftClusterLoadBalancerProfile({
    required this.managedOutboundIpCount,
  });

  final TfArg<num> managedOutboundIpCount;

  @internal
  Map<String, Object?> encode() => {
    'managed_outbound_ip_count': managedOutboundIpCount.toTfJson(),
  };
}

/// Typed helper for the `platform_workload_identity_profile` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterPlatformWorkloadIdentityProfile {
  const RedhatOpenshiftClusterPlatformWorkloadIdentityProfile({
    this.upgradeableTo,
    required this.platformWorkloadIdentity,
  });

  final TfArg<String>? upgradeableTo;

  final List<RedhatOpenshiftClusterPlatformWorkloadIdentity>
  platformWorkloadIdentity;

  @internal
  Map<String, Object?> encode() => {
    'upgradeable_to': ?upgradeableTo?.toTfJson(),
    'platform_workload_identity': [
      for (final e in platformWorkloadIdentity) e.encode(),
    ],
  };
}

/// Typed helper for the `platform_workload_identity_profile.platform_workload_identity` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterPlatformWorkloadIdentity {
  const RedhatOpenshiftClusterPlatformWorkloadIdentity({
    required this.identityId,
    required this.name,
  });

  final TfArg<String> identityId;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'identity_id': identityId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `service_principal` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterServicePrincipal {
  const RedhatOpenshiftClusterServicePrincipal({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final Sensitive<String> clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
  };
}

/// Typed helper for the `worker_profile` block of
/// `azurerm_redhat_openshift_cluster` (derived from provider schema).
@immutable
final class RedhatOpenshiftClusterWorkerProfile {
  const RedhatOpenshiftClusterWorkerProfile({
    this.diskEncryptionSetId,
    required this.diskSizeGb,
    this.encryptionAtHostEnabled,
    required this.nodeCount,
    required this.subnetId,
    required this.vmSize,
  });

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num> diskSizeGb;

  final TfArg<bool>? encryptionAtHostEnabled;

  final TfArg<num> nodeCount;

  final TfArg<String> subnetId;

  final TfArg<String> vmSize;

  @internal
  Map<String, Object?> encode() => {
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'disk_size_gb': diskSizeGb.toTfJson(),
    'encryption_at_host_enabled': ?encryptionAtHostEnabled?.toTfJson(),
    'node_count': nodeCount.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
    'vm_size': vmSize.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_redhat_openshift_cluster`.
final class AzurermRedhatOpenshiftCluster extends Resource {
  static const String tfType = 'azurerm_redhat_openshift_cluster';

  AzurermRedhatOpenshiftCluster(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required RedhatOpenshiftClusterApiServerProfile apiServerProfile,
    required RedhatOpenshiftClusterProfile clusterProfile,
    required RedhatOpenshiftClusterCredentials credentials,
    required RedhatOpenshiftClusterIngressProfile ingressProfile,
    required RedhatOpenshiftClusterMainProfile mainProfile,
    required RedhatOpenshiftClusterNetworkProfile networkProfile,
    RedhatOpenshiftClusterPlatformWorkloadIdentityProfile?
    platformWorkloadIdentityProfile,
    required RedhatOpenshiftClusterWorkerProfile workerProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'api_server_profile': TfArg.literal(apiServerProfile.encode()),
           'cluster_profile': TfArg.literal(clusterProfile.encode()),
           ...credentials.argMap,
           'ingress_profile': TfArg.literal(ingressProfile.encode()),
           'main_profile': TfArg.literal(mainProfile.encode()),
           'network_profile': TfArg.literal(networkProfile.encode()),
           if (platformWorkloadIdentityProfile != null)
             'platform_workload_identity_profile': TfArg.literal(
               platformWorkloadIdentityProfile.encode(),
             ),
           'worker_profile': TfArg.literal(workerProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRedhatOpenshiftClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRedhatOpenshiftCluster>`.
  RefTo<AzurermRedhatOpenshiftCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `console_url` attribute.
  TfRef<String> get consoleUrl => TfRef.attribute<String>(this, 'console_url');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
