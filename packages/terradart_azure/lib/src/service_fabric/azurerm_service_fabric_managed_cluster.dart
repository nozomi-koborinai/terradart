// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_service_fabric_managed_cluster`.
const Set<String> _azurermServiceFabricManagedClusterSensitive = <String>{
  'password',
};

/// Service Fabric Managed Cluster enum for `sku`.
extension type const ServiceFabricManagedClusterSku._(TfArg<String> _)
    implements TfArg<String> {
  ServiceFabricManagedClusterSku.variable(String name)
    : this._(TfArg.variable(name));
  ServiceFabricManagedClusterSku.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceFabricManagedClusterSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = ServiceFabricManagedClusterSku._(TfArgLiteral('Basic'));
  static const standard = ServiceFabricManagedClusterSku._(
    TfArgLiteral('Standard'),
  );

  static const List<ServiceFabricManagedClusterSku> values = [basic, standard];
}

/// Service Fabric Managed Cluster Upgrade enum for `upgrade_wave`.
extension type const ServiceFabricManagedClusterUpgradeWave._(TfArg<String> _)
    implements TfArg<String> {
  ServiceFabricManagedClusterUpgradeWave.variable(String name)
    : this._(TfArg.variable(name));
  ServiceFabricManagedClusterUpgradeWave.expression(String template)
    : this._(TfArg.expression(template));
  const ServiceFabricManagedClusterUpgradeWave.arg(TfArg<String> arg)
    : this._(arg);

  static const wave1 = ServiceFabricManagedClusterUpgradeWave._(
    TfArgLiteral('Wave1'),
  );
  static const wave2 = ServiceFabricManagedClusterUpgradeWave._(
    TfArgLiteral('Wave2'),
  );
  static const wave0 = ServiceFabricManagedClusterUpgradeWave._(
    TfArgLiteral('Wave0'),
  );

  static const List<ServiceFabricManagedClusterUpgradeWave> values = [
    wave1,
    wave2,
    wave0,
  ];
}

/// Typed helper for the `authentication` block of
/// `azurerm_service_fabric_managed_cluster` (derived from provider schema).
@immutable
final class ServiceFabricManagedClusterAuthentication {
  const ServiceFabricManagedClusterAuthentication({
    this.activeDirectory,
    this.certificate,
  });

  final ServiceFabricManagedClusterActiveDirectory? activeDirectory;

  final List<ServiceFabricManagedClusterCertificate>? certificate;

  @internal
  Map<String, Object?> encode() => {
    'active_directory': ?activeDirectory?.encode(),
    if (certificate != null)
      'certificate': [for (final e in certificate!) e.encode()],
  };
}

/// Typed helper for the `authentication.active_directory` block of
/// `azurerm_service_fabric_managed_cluster` (derived from provider schema).
@immutable
final class ServiceFabricManagedClusterActiveDirectory {
  const ServiceFabricManagedClusterActiveDirectory({
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

/// Typed helper for the `authentication.certificate` block of
/// `azurerm_service_fabric_managed_cluster` (derived from provider schema).
@immutable
final class ServiceFabricManagedClusterCertificate {
  const ServiceFabricManagedClusterCertificate({
    this.commonName,
    required this.thumbprint,
    required this.type,
  });

  final TfArg<String>? commonName;

  final TfArg<String> thumbprint;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'common_name': ?commonName?.toTfJson(),
    'thumbprint': thumbprint.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `custom_fabric_setting` block of
/// `azurerm_service_fabric_managed_cluster` (derived from provider schema).
@immutable
final class ServiceFabricManagedClusterCustomFabricSetting {
  const ServiceFabricManagedClusterCustomFabricSetting({
    required this.parameter,
    required this.section,
    required this.value,
  });

  final TfArg<String> parameter;

  final TfArg<String> section;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'parameter': parameter.toTfJson(),
    'section': section.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `lb_rule` block of
/// `azurerm_service_fabric_managed_cluster` (derived from provider schema).
@immutable
final class ServiceFabricManagedClusterLbRule {
  const ServiceFabricManagedClusterLbRule({
    required this.backendPort,
    required this.frontendPort,
    required this.probeProtocol,
    this.probeRequestPath,
    required this.protocol,
  });

  final TfArg<num> backendPort;

  final TfArg<num> frontendPort;

  final TfArg<String> probeProtocol;

  final TfArg<String>? probeRequestPath;

  final TfArg<String> protocol;

  @internal
  Map<String, Object?> encode() => {
    'backend_port': backendPort.toTfJson(),
    'frontend_port': frontendPort.toTfJson(),
    'probe_protocol': probeProtocol.toTfJson(),
    'probe_request_path': ?probeRequestPath?.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// Typed helper for the `node_type` block of
/// `azurerm_service_fabric_managed_cluster` (derived from provider schema).
@immutable
final class ServiceFabricManagedClusterNodeType {
  const ServiceFabricManagedClusterNodeType({
    required this.applicationPortRange,
    this.capacities,
    required this.dataDiskSizeGb,
    this.dataDiskType,
    required this.ephemeralPortRange,
    this.multiplePlacementGroupsEnabled,
    required this.name,
    this.placementProperties,
    this.primary,
    this.stateless,
    required this.vmImageOffer,
    required this.vmImagePublisher,
    required this.vmImageSku,
    required this.vmImageVersion,
    required this.vmInstanceCount,
    required this.vmSize,
    this.vmSecrets,
  });

  final TfArg<String> applicationPortRange;

  final TfArg<Map<String, String>>? capacities;

  final TfArg<num> dataDiskSizeGb;

  final TfArg<String>? dataDiskType;

  final TfArg<String> ephemeralPortRange;

  final TfArg<bool>? multiplePlacementGroupsEnabled;

  final TfArg<String> name;

  final TfArg<Map<String, String>>? placementProperties;

  final TfArg<bool>? primary;

  final TfArg<bool>? stateless;

  final TfArg<String> vmImageOffer;

  final TfArg<String> vmImagePublisher;

  final TfArg<String> vmImageSku;

  final TfArg<String> vmImageVersion;

  final TfArg<num> vmInstanceCount;

  final TfArg<String> vmSize;

  final List<ServiceFabricManagedClusterVmSecrets>? vmSecrets;

  @internal
  Map<String, Object?> encode() => {
    'application_port_range': applicationPortRange.toTfJson(),
    'capacities': ?capacities?.toTfJson(),
    'data_disk_size_gb': dataDiskSizeGb.toTfJson(),
    'data_disk_type': ?dataDiskType?.toTfJson(),
    'ephemeral_port_range': ephemeralPortRange.toTfJson(),
    'multiple_placement_groups_enabled': ?multiplePlacementGroupsEnabled
        ?.toTfJson(),
    'name': name.toTfJson(),
    'placement_properties': ?placementProperties?.toTfJson(),
    'primary': ?primary?.toTfJson(),
    'stateless': ?stateless?.toTfJson(),
    'vm_image_offer': vmImageOffer.toTfJson(),
    'vm_image_publisher': vmImagePublisher.toTfJson(),
    'vm_image_sku': vmImageSku.toTfJson(),
    'vm_image_version': vmImageVersion.toTfJson(),
    'vm_instance_count': vmInstanceCount.toTfJson(),
    'vm_size': vmSize.toTfJson(),
    if (vmSecrets != null)
      'vm_secrets': [for (final e in vmSecrets!) e.encode()],
  };
}

/// Typed helper for the `node_type.vm_secrets` block of
/// `azurerm_service_fabric_managed_cluster` (derived from provider schema).
@immutable
final class ServiceFabricManagedClusterVmSecrets {
  const ServiceFabricManagedClusterVmSecrets({
    required this.vaultId,
    required this.certificates,
  });

  final TfArg<String> vaultId;

  final List<ServiceFabricManagedClusterCertificates> certificates;

  @internal
  Map<String, Object?> encode() => {
    'vault_id': vaultId.toTfJson(),
    'certificates': [for (final e in certificates) e.encode()],
  };
}

/// Typed helper for the `node_type.vm_secrets.certificates` block of
/// `azurerm_service_fabric_managed_cluster` (derived from provider schema).
@immutable
final class ServiceFabricManagedClusterCertificates {
  const ServiceFabricManagedClusterCertificates({
    required this.store,
    required this.url,
  });

  final TfArg<String> store;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'store': store.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_service_fabric_managed_cluster`.
final class AzurermServiceFabricManagedCluster extends Resource {
  static const String tfType = 'azurerm_service_fabric_managed_cluster';

  AzurermServiceFabricManagedCluster(
    super.localName, {
    TfArg<bool>? backupServiceEnabled,
    required TfArg<num> clientConnectionPort,
    TfArg<String>? dnsName,
    TfArg<bool>? dnsServiceEnabled,
    required TfArg<num> httpGatewayPort,
    required TfArg<String> location,
    required TfArg<String> name,
    Sensitive<String>? password,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    ServiceFabricManagedClusterSku? sku,
    RefTo<AzurermSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    ServiceFabricManagedClusterUpgradeWave? upgradeWave,
    TfArg<String>? username,
    ServiceFabricManagedClusterAuthentication? authentication,
    List<ServiceFabricManagedClusterCustomFabricSetting>? customFabricSetting,
    required List<ServiceFabricManagedClusterLbRule> lbRule,
    List<ServiceFabricManagedClusterNodeType>? nodeType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_service_enabled': ?backupServiceEnabled,
           'client_connection_port': clientConnectionPort,
           'dns_name': ?dnsName,
           'dns_service_enabled': ?dnsServiceEnabled,
           'http_gateway_port': httpGatewayPort,
           'location': location,
           'name': name,
           'password': ?password,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'upgrade_wave': ?upgradeWave,
           'username': ?username,
           if (authentication != null)
             'authentication': TfArg.literal(authentication.encode()),
           if (customFabricSetting != null)
             'custom_fabric_setting': TfArg.literal([
               for (final e in customFabricSetting) e.encode(),
             ]),
           'lb_rule': TfArg.literal([for (final e in lbRule) e.encode()]),
           if (nodeType != null)
             'node_type': TfArg.literal([for (final e in nodeType) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermServiceFabricManagedClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermServiceFabricManagedCluster>`.
  RefTo<AzurermServiceFabricManagedCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_service_enabled` attribute.
  TfRef<bool> get backupServiceEnabled =>
      TfRef.attribute<bool>(this, 'backup_service_enabled');

  /// Reference to `client_connection_port` attribute.
  TfRef<num> get clientConnectionPort =>
      TfRef.attribute<num>(this, 'client_connection_port');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `dns_service_enabled` attribute.
  TfRef<bool> get dnsServiceEnabled =>
      TfRef.attribute<bool>(this, 'dns_service_enabled');

  /// Reference to `http_gateway_port` attribute.
  TfRef<num> get httpGatewayPort =>
      TfRef.attribute<num>(this, 'http_gateway_port');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `upgrade_wave` attribute.
  TfRef<String> get upgradeWave =>
      TfRef.attribute<String>(this, 'upgrade_wave');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
