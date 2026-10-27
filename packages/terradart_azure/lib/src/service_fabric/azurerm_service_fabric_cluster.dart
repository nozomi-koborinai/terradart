// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_service_fabric_cluster`.
const Set<String> _azurermServiceFabricClusterSensitive = <String>{};

/// Service Fabric Cluster Reliability enum for `reliability_level`.
extension type const ServiceFabricClusterReliabilityLevel._(TfArg<String> _)
    implements TfArg<String> {
  ServiceFabricClusterReliabilityLevel.variable(String name)
    : this._(TfArg.variable(name));
  ServiceFabricClusterReliabilityLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceFabricClusterReliabilityLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const bronze = ServiceFabricClusterReliabilityLevel._(
    TfArgLiteral('Bronze'),
  );
  static const gold = ServiceFabricClusterReliabilityLevel._(
    TfArgLiteral('Gold'),
  );
  static const none = ServiceFabricClusterReliabilityLevel._(
    TfArgLiteral('None'),
  );
  static const platinum = ServiceFabricClusterReliabilityLevel._(
    TfArgLiteral('Platinum'),
  );
  static const silver = ServiceFabricClusterReliabilityLevel._(
    TfArgLiteral('Silver'),
  );

  static const List<ServiceFabricClusterReliabilityLevel> values = [
    bronze,
    gold,
    none,
    platinum,
    silver,
  ];
}

/// Service Fabric Cluster Service Fabric Zonal Upgrade enum for `service_fabric_zonal_upgrade_mode`.
extension type const ServiceFabricClusterServiceFabricZonalUpgradeMode._(
  TfArg<String> _
) implements TfArg<String> {
  ServiceFabricClusterServiceFabricZonalUpgradeMode.variable(String name)
    : this._(TfArg.variable(name));
  ServiceFabricClusterServiceFabricZonalUpgradeMode.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceFabricClusterServiceFabricZonalUpgradeMode.arg(TfArg<String> arg)
    : this._(arg);

  static const hierarchical =
      ServiceFabricClusterServiceFabricZonalUpgradeMode._(
        TfArgLiteral('Hierarchical'),
      );
  static const parallel = ServiceFabricClusterServiceFabricZonalUpgradeMode._(
    TfArgLiteral('Parallel'),
  );

  static const List<ServiceFabricClusterServiceFabricZonalUpgradeMode> values =
      [hierarchical, parallel];
}

/// Service Fabric Cluster Upgrade enum for `upgrade_mode`.
extension type const ServiceFabricClusterUpgradeMode._(TfArg<String> _)
    implements TfArg<String> {
  ServiceFabricClusterUpgradeMode.variable(String name)
    : this._(TfArg.variable(name));
  ServiceFabricClusterUpgradeMode.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceFabricClusterUpgradeMode.arg(TfArg<String> arg) : this._(arg);

  static const automatic = ServiceFabricClusterUpgradeMode._(
    TfArgLiteral('Automatic'),
  );
  static const manual = ServiceFabricClusterUpgradeMode._(
    TfArgLiteral('Manual'),
  );

  static const List<ServiceFabricClusterUpgradeMode> values = [
    automatic,
    manual,
  ];
}

/// Service Fabric Cluster Vmss Zonal Upgrade enum for `vmss_zonal_upgrade_mode`.
extension type const ServiceFabricClusterVmssZonalUpgradeMode._(TfArg<String> _)
    implements TfArg<String> {
  ServiceFabricClusterVmssZonalUpgradeMode.variable(String name)
    : this._(TfArg.variable(name));
  ServiceFabricClusterVmssZonalUpgradeMode.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceFabricClusterVmssZonalUpgradeMode.arg(TfArg<String> arg)
    : this._(arg);

  static const hierarchical = ServiceFabricClusterVmssZonalUpgradeMode._(
    TfArgLiteral('Hierarchical'),
  );
  static const parallel = ServiceFabricClusterVmssZonalUpgradeMode._(
    TfArgLiteral('Parallel'),
  );

  static const List<ServiceFabricClusterVmssZonalUpgradeMode> values = [
    hierarchical,
    parallel,
  ];
}

/// At most one of `certificate`, `certificate_common_names` on `azurerm_service_fabric_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.certificate(...)`.
sealed class ServiceFabricClusterCertificateOrCertificateCommonNames {
  const ServiceFabricClusterCertificateOrCertificateCommonNames();

  /// Sets `certificate`.
  const factory ServiceFabricClusterCertificateOrCertificateCommonNames.certificate(
    ServiceFabricClusterCertificate certificate,
  ) = ServiceFabricClusterCertificateOrCertificateCommonNamesCertificate;

  /// Sets `certificate_common_names`.
  const factory ServiceFabricClusterCertificateOrCertificateCommonNames.certificateCommonNames(
    ServiceFabricClusterCertificateCommonNames certificateCommonNames,
  ) = ServiceFabricClusterCertificateOrCertificateCommonNamesChoice;

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

/// The [ServiceFabricClusterCertificateOrCertificateCommonNames.certificate] choice: sets `certificate`.
final class ServiceFabricClusterCertificateOrCertificateCommonNamesCertificate
    extends ServiceFabricClusterCertificateOrCertificateCommonNames {
  const ServiceFabricClusterCertificateOrCertificateCommonNamesCertificate(
    this.certificate,
  );

  final ServiceFabricClusterCertificate certificate;

  @internal
  @override
  String get blockKey => 'certificate';

  @internal
  @override
  Map<String, Object?> encode() => {'certificate': certificate.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'certificate': TfArg.literal(certificate.encode()),
  };
}

/// The [ServiceFabricClusterCertificateOrCertificateCommonNames.certificateCommonNames] choice: sets `certificate_common_names`.
final class ServiceFabricClusterCertificateOrCertificateCommonNamesChoice
    extends ServiceFabricClusterCertificateOrCertificateCommonNames {
  const ServiceFabricClusterCertificateOrCertificateCommonNamesChoice(
    this.certificateCommonNames,
  );

  final ServiceFabricClusterCertificateCommonNames certificateCommonNames;

  @internal
  @override
  String get blockKey => 'certificate_common_names';

  @internal
  @override
  Map<String, Object?> encode() => {
    'certificate_common_names': certificateCommonNames.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'certificate_common_names': TfArg.literal(certificateCommonNames.encode()),
  };
}

/// At most one of `reverse_proxy_certificate`, `reverse_proxy_certificate_common_names` on `azurerm_service_fabric_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.reverseProxyCertificate(...)`.
sealed class ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames {
  const ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames();

  /// Sets `reverse_proxy_certificate`.
  const factory ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames.reverseProxyCertificate(
    ServiceFabricClusterReverseProxyCertificate reverseProxyCertificate,
  ) = ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNamesReverseProxyCertificate;

  /// Sets `reverse_proxy_certificate_common_names`.
  const factory ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames.reverseProxyCertificateCommonNames(
    ServiceFabricClusterReverseProxyCertificateCommonNames
    reverseProxyCertificateCommonNames,
  ) = ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNamesChoice;

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

/// The [ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames.reverseProxyCertificate] choice: sets `reverse_proxy_certificate`.
final class ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNamesReverseProxyCertificate
    extends
        ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames {
  const ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNamesReverseProxyCertificate(
    this.reverseProxyCertificate,
  );

  final ServiceFabricClusterReverseProxyCertificate reverseProxyCertificate;

  @internal
  @override
  String get blockKey => 'reverse_proxy_certificate';

  @internal
  @override
  Map<String, Object?> encode() => {
    'reverse_proxy_certificate': reverseProxyCertificate.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'reverse_proxy_certificate': TfArg.literal(
      reverseProxyCertificate.encode(),
    ),
  };
}

/// The [ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames.reverseProxyCertificateCommonNames] choice: sets `reverse_proxy_certificate_common_names`.
final class ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNamesChoice
    extends
        ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames {
  const ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNamesChoice(
    this.reverseProxyCertificateCommonNames,
  );

  final ServiceFabricClusterReverseProxyCertificateCommonNames
  reverseProxyCertificateCommonNames;

  @internal
  @override
  String get blockKey => 'reverse_proxy_certificate_common_names';

  @internal
  @override
  Map<String, Object?> encode() => {
    'reverse_proxy_certificate_common_names': reverseProxyCertificateCommonNames
        .encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'reverse_proxy_certificate_common_names': TfArg.literal(
      reverseProxyCertificateCommonNames.encode(),
    ),
  };
}

/// Typed helper for the `azure_active_directory` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterAzureActiveDirectory {
  const ServiceFabricClusterAzureActiveDirectory({
    required this.clientApplicationId,
    required this.clusterApplicationId,
    required this.tenantId,
  });

  final TfArg<String> clientApplicationId;

  final TfArg<String> clusterApplicationId;

  final TfArg<String> tenantId;

  @internal
  Map<String, Object?> encode() => {
    'client_application_id': clientApplicationId.toTfJson(),
    'cluster_application_id': clusterApplicationId.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Typed helper for the `certificate` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterCertificate {
  const ServiceFabricClusterCertificate({
    required this.thumbprint,
    this.thumbprintSecondary,
    required this.x509StoreName,
  });

  final TfArg<String> thumbprint;

  final TfArg<String>? thumbprintSecondary;

  final TfArg<String> x509StoreName;

  @internal
  Map<String, Object?> encode() => {
    'thumbprint': thumbprint.toTfJson(),
    'thumbprint_secondary': ?thumbprintSecondary?.toTfJson(),
    'x509_store_name': x509StoreName.toTfJson(),
  };
}

/// Typed helper for the `certificate_common_names` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterCertificateCommonNames {
  const ServiceFabricClusterCertificateCommonNames({
    required this.x509StoreName,
    required this.commonNames,
  });

  final TfArg<String> x509StoreName;

  final List<ServiceFabricClusterCommonNames> commonNames;

  @internal
  Map<String, Object?> encode() => {
    'x509_store_name': x509StoreName.toTfJson(),
    'common_names': [for (final e in commonNames) e.encode()],
  };
}

/// Typed helper for the `certificate_common_names.common_names` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ServiceFabricClusterCommonNames {
  const ServiceFabricClusterCommonNames({
    required this.certificateCommonName,
    this.certificateIssuerThumbprint,
  });

  final TfArg<String> certificateCommonName;

  final TfArg<String>? certificateIssuerThumbprint;

  @internal
  Map<String, Object?> encode() => {
    'certificate_common_name': certificateCommonName.toTfJson(),
    'certificate_issuer_thumbprint': ?certificateIssuerThumbprint?.toTfJson(),
  };
}

/// Typed helper for the `client_certificate_common_name` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterClientCertificateCommonName {
  const ServiceFabricClusterClientCertificateCommonName({
    required this.commonName,
    required this.isAdmin,
    this.issuerThumbprint,
  });

  final TfArg<String> commonName;

  final TfArg<bool> isAdmin;

  final TfArg<String>? issuerThumbprint;

  @internal
  Map<String, Object?> encode() => {
    'common_name': commonName.toTfJson(),
    'is_admin': isAdmin.toTfJson(),
    'issuer_thumbprint': ?issuerThumbprint?.toTfJson(),
  };
}

/// Typed helper for the `client_certificate_thumbprint` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterClientCertificateThumbprint {
  const ServiceFabricClusterClientCertificateThumbprint({
    required this.isAdmin,
    required this.thumbprint,
  });

  final TfArg<bool> isAdmin;

  final TfArg<String> thumbprint;

  @internal
  Map<String, Object?> encode() => {
    'is_admin': isAdmin.toTfJson(),
    'thumbprint': thumbprint.toTfJson(),
  };
}

/// Typed helper for the `diagnostics_config` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterDiagnosticsConfig {
  const ServiceFabricClusterDiagnosticsConfig({
    required this.blobEndpoint,
    required this.protectedAccountKeyName,
    required this.queueEndpoint,
    required this.storageAccountName,
    required this.tableEndpoint,
  });

  final TfArg<String> blobEndpoint;

  final TfArg<String> protectedAccountKeyName;

  final TfArg<String> queueEndpoint;

  final TfArg<String> storageAccountName;

  final TfArg<String> tableEndpoint;

  @internal
  Map<String, Object?> encode() => {
    'blob_endpoint': blobEndpoint.toTfJson(),
    'protected_account_key_name': protectedAccountKeyName.toTfJson(),
    'queue_endpoint': queueEndpoint.toTfJson(),
    'storage_account_name': storageAccountName.toTfJson(),
    'table_endpoint': tableEndpoint.toTfJson(),
  };
}

/// Typed helper for the `fabric_settings` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterFabricSettings {
  const ServiceFabricClusterFabricSettings({
    required this.name,
    this.parameters,
  });

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Typed helper for the `node_type` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterNodeType {
  const ServiceFabricClusterNodeType({
    this.capacities,
    required this.clientEndpointPort,
    this.durabilityLevel,
    required this.httpEndpointPort,
    required this.instanceCount,
    required this.isPrimary,
    this.isStateless,
    this.multipleAvailabilityZones,
    required this.name,
    this.placementProperties,
    this.reverseProxyEndpointPort,
    this.applicationPorts,
    this.ephemeralPorts,
  });

  final TfArg<Map<String, String>>? capacities;

  final TfArg<num> clientEndpointPort;

  final ServiceFabricClusterDurabilityLevel? durabilityLevel;

  final TfArg<num> httpEndpointPort;

  final TfArg<num> instanceCount;

  final TfArg<bool> isPrimary;

  final TfArg<bool>? isStateless;

  final TfArg<bool>? multipleAvailabilityZones;

  final TfArg<String> name;

  final TfArg<Map<String, String>>? placementProperties;

  final TfArg<num>? reverseProxyEndpointPort;

  final ServiceFabricClusterApplicationPorts? applicationPorts;

  final ServiceFabricClusterEphemeralPorts? ephemeralPorts;

  @internal
  Map<String, Object?> encode() => {
    'capacities': ?capacities?.toTfJson(),
    'client_endpoint_port': clientEndpointPort.toTfJson(),
    'durability_level': ?durabilityLevel?.toTfJson(),
    'http_endpoint_port': httpEndpointPort.toTfJson(),
    'instance_count': instanceCount.toTfJson(),
    'is_primary': isPrimary.toTfJson(),
    'is_stateless': ?isStateless?.toTfJson(),
    'multiple_availability_zones': ?multipleAvailabilityZones?.toTfJson(),
    'name': name.toTfJson(),
    'placement_properties': ?placementProperties?.toTfJson(),
    'reverse_proxy_endpoint_port': ?reverseProxyEndpointPort?.toTfJson(),
    'application_ports': ?applicationPorts?.encode(),
    'ephemeral_ports': ?ephemeralPorts?.encode(),
  };
}

/// `durability_level` — derived from the provider schema description.
extension type const ServiceFabricClusterDurabilityLevel._(TfArg<String> _)
    implements TfArg<String> {
  ServiceFabricClusterDurabilityLevel.variable(String name)
    : this._(TfArg.variable(name));
  ServiceFabricClusterDurabilityLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceFabricClusterDurabilityLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const bronze = ServiceFabricClusterDurabilityLevel._(
    TfArgLiteral('Bronze'),
  );
  static const gold = ServiceFabricClusterDurabilityLevel._(
    TfArgLiteral('Gold'),
  );
  static const silver = ServiceFabricClusterDurabilityLevel._(
    TfArgLiteral('Silver'),
  );

  static const List<ServiceFabricClusterDurabilityLevel> values = [
    bronze,
    gold,
    silver,
  ];
}

/// Typed helper for the `node_type.application_ports` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterApplicationPorts {
  const ServiceFabricClusterApplicationPorts({
    required this.endPort,
    required this.startPort,
  });

  final TfArg<num> endPort;

  final TfArg<num> startPort;

  @internal
  Map<String, Object?> encode() => {
    'end_port': endPort.toTfJson(),
    'start_port': startPort.toTfJson(),
  };
}

/// Typed helper for the `node_type.ephemeral_ports` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterEphemeralPorts {
  const ServiceFabricClusterEphemeralPorts({
    required this.endPort,
    required this.startPort,
  });

  final TfArg<num> endPort;

  final TfArg<num> startPort;

  @internal
  Map<String, Object?> encode() => {
    'end_port': endPort.toTfJson(),
    'start_port': startPort.toTfJson(),
  };
}

/// Typed helper for the `reverse_proxy_certificate` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterReverseProxyCertificate {
  const ServiceFabricClusterReverseProxyCertificate({
    required this.thumbprint,
    this.thumbprintSecondary,
    required this.x509StoreName,
  });

  final TfArg<String> thumbprint;

  final TfArg<String>? thumbprintSecondary;

  final TfArg<String> x509StoreName;

  @internal
  Map<String, Object?> encode() => {
    'thumbprint': thumbprint.toTfJson(),
    'thumbprint_secondary': ?thumbprintSecondary?.toTfJson(),
    'x509_store_name': x509StoreName.toTfJson(),
  };
}

/// Typed helper for the `reverse_proxy_certificate_common_names` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterReverseProxyCertificateCommonNames {
  const ServiceFabricClusterReverseProxyCertificateCommonNames({
    required this.x509StoreName,
    required this.commonNames,
  });

  final TfArg<String> x509StoreName;

  final List<ServiceFabricClusterCommonNames> commonNames;

  @internal
  Map<String, Object?> encode() => {
    'x509_store_name': x509StoreName.toTfJson(),
    'common_names': [for (final e in commonNames) e.encode()],
  };
}

/// Typed helper for the `upgrade_policy` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterUpgradePolicy {
  const ServiceFabricClusterUpgradePolicy({
    this.forceRestartEnabled,
    this.healthCheckRetryTimeout,
    this.healthCheckStableDuration,
    this.healthCheckWaitDuration,
    this.upgradeDomainTimeout,
    this.upgradeReplicaSetCheckTimeout,
    this.upgradeTimeout,
    this.deltaHealthPolicy,
    this.healthPolicy,
  });

  final TfArg<bool>? forceRestartEnabled;

  final TfArg<String>? healthCheckRetryTimeout;

  final TfArg<String>? healthCheckStableDuration;

  final TfArg<String>? healthCheckWaitDuration;

  final TfArg<String>? upgradeDomainTimeout;

  final TfArg<String>? upgradeReplicaSetCheckTimeout;

  final TfArg<String>? upgradeTimeout;

  final ServiceFabricClusterDeltaHealthPolicy? deltaHealthPolicy;

  final ServiceFabricClusterHealthPolicy? healthPolicy;

  @internal
  Map<String, Object?> encode() => {
    'force_restart_enabled': ?forceRestartEnabled?.toTfJson(),
    'health_check_retry_timeout': ?healthCheckRetryTimeout?.toTfJson(),
    'health_check_stable_duration': ?healthCheckStableDuration?.toTfJson(),
    'health_check_wait_duration': ?healthCheckWaitDuration?.toTfJson(),
    'upgrade_domain_timeout': ?upgradeDomainTimeout?.toTfJson(),
    'upgrade_replica_set_check_timeout': ?upgradeReplicaSetCheckTimeout
        ?.toTfJson(),
    'upgrade_timeout': ?upgradeTimeout?.toTfJson(),
    'delta_health_policy': ?deltaHealthPolicy?.encode(),
    'health_policy': ?healthPolicy?.encode(),
  };
}

/// Typed helper for the `upgrade_policy.delta_health_policy` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterDeltaHealthPolicy {
  const ServiceFabricClusterDeltaHealthPolicy({
    this.maxDeltaUnhealthyApplicationsPercent,
    this.maxDeltaUnhealthyNodesPercent,
    this.maxUpgradeDomainDeltaUnhealthyNodesPercent,
  });

  final TfArg<num>? maxDeltaUnhealthyApplicationsPercent;

  final TfArg<num>? maxDeltaUnhealthyNodesPercent;

  final TfArg<num>? maxUpgradeDomainDeltaUnhealthyNodesPercent;

  @internal
  Map<String, Object?> encode() => {
    'max_delta_unhealthy_applications_percent':
        ?maxDeltaUnhealthyApplicationsPercent?.toTfJson(),
    'max_delta_unhealthy_nodes_percent': ?maxDeltaUnhealthyNodesPercent
        ?.toTfJson(),
    'max_upgrade_domain_delta_unhealthy_nodes_percent':
        ?maxUpgradeDomainDeltaUnhealthyNodesPercent?.toTfJson(),
  };
}

/// Typed helper for the `upgrade_policy.health_policy` block of
/// `azurerm_service_fabric_cluster` (derived from provider schema).
@immutable
final class ServiceFabricClusterHealthPolicy {
  const ServiceFabricClusterHealthPolicy({
    this.maxUnhealthyApplicationsPercent,
    this.maxUnhealthyNodesPercent,
  });

  final TfArg<num>? maxUnhealthyApplicationsPercent;

  final TfArg<num>? maxUnhealthyNodesPercent;

  @internal
  Map<String, Object?> encode() => {
    'max_unhealthy_applications_percent': ?maxUnhealthyApplicationsPercent
        ?.toTfJson(),
    'max_unhealthy_nodes_percent': ?maxUnhealthyNodesPercent?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_service_fabric_cluster`.
final class AzurermServiceFabricCluster extends Resource {
  static const String tfType = 'azurerm_service_fabric_cluster';

  AzurermServiceFabricCluster(
    super.localName, {
    TfArg<List<String>>? addOnFeatures,
    TfArg<String>? clusterCodeVersion,
    required TfArg<String> location,
    required TfArg<String> managementEndpoint,
    required TfArg<String> name,
    required ServiceFabricClusterReliabilityLevel reliabilityLevel,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    ServiceFabricClusterServiceFabricZonalUpgradeMode?
    serviceFabricZonalUpgradeMode,
    TfArg<Map<String, String>>? tags,
    required ServiceFabricClusterUpgradeMode upgradeMode,
    required TfArg<String> vmImage,
    ServiceFabricClusterVmssZonalUpgradeMode? vmssZonalUpgradeMode,
    ServiceFabricClusterAzureActiveDirectory? azureActiveDirectory,
    ServiceFabricClusterCertificateOrCertificateCommonNames?
    certificateOrCertificateCommonNames,
    List<ServiceFabricClusterClientCertificateCommonName>?
    clientCertificateCommonName,
    List<ServiceFabricClusterClientCertificateThumbprint>?
    clientCertificateThumbprint,
    ServiceFabricClusterDiagnosticsConfig? diagnosticsConfig,
    List<ServiceFabricClusterFabricSettings>? fabricSettings,
    required List<ServiceFabricClusterNodeType> nodeType,
    ServiceFabricClusterReverseProxyCertificateOrReverseProxyCertificateCommonNames?
    reverseProxyCertificateOrReverseProxyCertificateCommonNames,
    ServiceFabricClusterUpgradePolicy? upgradePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'add_on_features': ?addOnFeatures,
           'cluster_code_version': ?clusterCodeVersion,
           'location': location,
           'management_endpoint': managementEndpoint,
           'name': name,
           'reliability_level': reliabilityLevel,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_fabric_zonal_upgrade_mode': ?serviceFabricZonalUpgradeMode,
           'tags': ?tags,
           'upgrade_mode': upgradeMode,
           'vm_image': vmImage,
           'vmss_zonal_upgrade_mode': ?vmssZonalUpgradeMode,
           if (azureActiveDirectory != null)
             'azure_active_directory': TfArg.literal(
               azureActiveDirectory.encode(),
             ),
           ...?certificateOrCertificateCommonNames?.argMap,
           if (clientCertificateCommonName != null)
             'client_certificate_common_name': TfArg.literal([
               for (final e in clientCertificateCommonName) e.encode(),
             ]),
           if (clientCertificateThumbprint != null)
             'client_certificate_thumbprint': TfArg.literal([
               for (final e in clientCertificateThumbprint) e.encode(),
             ]),
           if (diagnosticsConfig != null)
             'diagnostics_config': TfArg.literal(diagnosticsConfig.encode()),
           if (fabricSettings != null)
             'fabric_settings': TfArg.literal([
               for (final e in fabricSettings) e.encode(),
             ]),
           'node_type': TfArg.literal([for (final e in nodeType) e.encode()]),
           ...?reverseProxyCertificateOrReverseProxyCertificateCommonNames
               ?.argMap,
           if (upgradePolicy != null)
             'upgrade_policy': TfArg.literal(upgradePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermServiceFabricClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermServiceFabricCluster>`.
  RefTo<AzurermServiceFabricCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_endpoint` attribute.
  TfRef<String> get clusterEndpoint =>
      TfRef.attribute<String>(this, 'cluster_endpoint');

  /// Reference to `add_on_features` attribute.
  TfRef<List<String>> get addOnFeatures =>
      TfRef.attribute<List<String>>(this, 'add_on_features');

  /// Reference to `cluster_code_version` attribute.
  TfRef<String> get clusterCodeVersion =>
      TfRef.attribute<String>(this, 'cluster_code_version');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `management_endpoint` attribute.
  TfRef<String> get managementEndpoint =>
      TfRef.attribute<String>(this, 'management_endpoint');

  /// Reference to `reliability_level` attribute.
  TfRef<String> get reliabilityLevel =>
      TfRef.attribute<String>(this, 'reliability_level');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_fabric_zonal_upgrade_mode` attribute.
  TfRef<String> get serviceFabricZonalUpgradeMode =>
      TfRef.attribute<String>(this, 'service_fabric_zonal_upgrade_mode');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `upgrade_mode` attribute.
  TfRef<String> get upgradeMode =>
      TfRef.attribute<String>(this, 'upgrade_mode');

  /// Reference to `vm_image` attribute.
  TfRef<String> get vmImage => TfRef.attribute<String>(this, 'vm_image');

  /// Reference to `vmss_zonal_upgrade_mode` attribute.
  TfRef<String> get vmssZonalUpgradeMode =>
      TfRef.attribute<String>(this, 'vmss_zonal_upgrade_mode');
}
