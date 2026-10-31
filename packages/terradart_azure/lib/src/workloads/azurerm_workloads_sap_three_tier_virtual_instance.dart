// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_workloads_sap_three_tier_virtual_instance`.
const Set<String>
_azurermWorkloadsSapThreeTierVirtualInstanceSensitive = <String>{
  'three_tier_configuration.application_server_configuration.virtual_machine_configuration.os_profile.ssh_private_key',
  'three_tier_configuration.central_server_configuration.virtual_machine_configuration.os_profile.ssh_private_key',
  'three_tier_configuration.database_server_configuration.virtual_machine_configuration.os_profile.ssh_private_key',
};

/// Workloads Sap Three Tier Virtual Instance enum for `environment`.
extension type const WorkloadsSapThreeTierVirtualInstanceEnvironment._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceEnvironment.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceEnvironment.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceEnvironment.arg(TfArg<String> arg)
    : this._(arg);

  static const nonprod = WorkloadsSapThreeTierVirtualInstanceEnvironment._(
    TfArgLiteral('NonProd'),
  );
  static const prod = WorkloadsSapThreeTierVirtualInstanceEnvironment._(
    TfArgLiteral('Prod'),
  );

  static const List<WorkloadsSapThreeTierVirtualInstanceEnvironment> values = [
    nonprod,
    prod,
  ];
}

/// Workloads Sap Three Tier Virtual Instance Managed Resources Network Access enum for `managed_resources_network_access_type`.
extension type const WorkloadsSapThreeTierVirtualInstanceManagedResourcesNetworkAccessType._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceManagedResourcesNetworkAccessType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceManagedResourcesNetworkAccessType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceManagedResourcesNetworkAccessType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const private =
      WorkloadsSapThreeTierVirtualInstanceManagedResourcesNetworkAccessType._(
        TfArgLiteral('Private'),
      );
  static const public =
      WorkloadsSapThreeTierVirtualInstanceManagedResourcesNetworkAccessType._(
        TfArgLiteral('Public'),
      );

  static const List<
    WorkloadsSapThreeTierVirtualInstanceManagedResourcesNetworkAccessType
  >
  values = [private, public];
}

/// Workloads Sap Three Tier Virtual Instance Sap enum for `sap_product`.
extension type const WorkloadsSapThreeTierVirtualInstanceSapProduct._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceSapProduct.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceSapProduct.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceSapProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const ecc = WorkloadsSapThreeTierVirtualInstanceSapProduct._(
    TfArgLiteral('ECC'),
  );
  static const other = WorkloadsSapThreeTierVirtualInstanceSapProduct._(
    TfArgLiteral('Other'),
  );
  static const s4hana = WorkloadsSapThreeTierVirtualInstanceSapProduct._(
    TfArgLiteral('S4HANA'),
  );

  static const List<WorkloadsSapThreeTierVirtualInstanceSapProduct> values = [
    ecc,
    other,
    s4hana,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceIdentity {
  const WorkloadsSapThreeTierVirtualInstanceIdentity({
    required this.identityIds,
    required this.type,
  });

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `three_tier_configuration` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceThreeTierConfiguration {
  const WorkloadsSapThreeTierVirtualInstanceThreeTierConfiguration({
    required this.appResourceGroupName,
    this.highAvailabilityType,
    this.secondaryIpEnabled,
    required this.applicationServerConfiguration,
    required this.centralServerConfiguration,
    required this.databaseServerConfiguration,
    this.resourceNames,
    this.transportCreateAndMount,
  });

  final TfArg<String> appResourceGroupName;

  final WorkloadsSapThreeTierVirtualInstanceHighAvailabilityType?
  highAvailabilityType;

  final TfArg<bool>? secondaryIpEnabled;

  final WorkloadsSapThreeTierVirtualInstanceApplicationServerConfiguration
  applicationServerConfiguration;

  final WorkloadsSapThreeTierVirtualInstanceCentralServerConfiguration
  centralServerConfiguration;

  final WorkloadsSapThreeTierVirtualInstanceDatabaseServerConfiguration
  databaseServerConfiguration;

  final WorkloadsSapThreeTierVirtualInstanceResourceNames? resourceNames;

  final WorkloadsSapThreeTierVirtualInstanceTransportCreateAndMount?
  transportCreateAndMount;

  @internal
  Map<String, Object?> encode() => {
    'app_resource_group_name': appResourceGroupName.toTfJson(),
    'high_availability_type': ?highAvailabilityType?.toTfJson(),
    'secondary_ip_enabled': ?secondaryIpEnabled?.toTfJson(),
    'application_server_configuration': applicationServerConfiguration.encode(),
    'central_server_configuration': centralServerConfiguration.encode(),
    'database_server_configuration': databaseServerConfiguration.encode(),
    'resource_names': ?resourceNames?.encode(),
    'transport_create_and_mount': ?transportCreateAndMount?.encode(),
  };
}

/// `high_availability_type` — derived from the provider schema description.
extension type const WorkloadsSapThreeTierVirtualInstanceHighAvailabilityType._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceHighAvailabilityType.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceHighAvailabilityType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceHighAvailabilityType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const availabilityset =
      WorkloadsSapThreeTierVirtualInstanceHighAvailabilityType._(
        TfArgLiteral('AvailabilitySet'),
      );
  static const availabilityzone =
      WorkloadsSapThreeTierVirtualInstanceHighAvailabilityType._(
        TfArgLiteral('AvailabilityZone'),
      );

  static const List<WorkloadsSapThreeTierVirtualInstanceHighAvailabilityType>
  values = [availabilityset, availabilityzone];
}

/// Typed helper for the `three_tier_configuration.application_server_configuration` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceApplicationServerConfiguration {
  const WorkloadsSapThreeTierVirtualInstanceApplicationServerConfiguration({
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  final TfArg<num> instanceCount;

  final TfArg<String> subnetId;

  final WorkloadsSapThreeTierVirtualInstanceVirtualMachineConfiguration
  virtualMachineConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
    'virtual_machine_configuration': virtualMachineConfiguration.encode(),
  };
}

/// Typed helper for the `three_tier_configuration.application_server_configuration.virtual_machine_configuration` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkloadsSapThreeTierVirtualInstanceVirtualMachineConfiguration {
  const WorkloadsSapThreeTierVirtualInstanceVirtualMachineConfiguration({
    required this.virtualMachineSize,
    required this.image,
    required this.osProfile,
  });

  final TfArg<String> virtualMachineSize;

  final WorkloadsSapThreeTierVirtualInstanceImage image;

  final WorkloadsSapThreeTierVirtualInstanceOsProfile osProfile;

  @internal
  Map<String, Object?> encode() => {
    'virtual_machine_size': virtualMachineSize.toTfJson(),
    'image': image.encode(),
    'os_profile': osProfile.encode(),
  };
}

/// Typed helper for the `three_tier_configuration.application_server_configuration.virtual_machine_configuration.image` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkloadsSapThreeTierVirtualInstanceImage {
  const WorkloadsSapThreeTierVirtualInstanceImage({
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  final TfArg<String> offer;

  final WorkloadsSapThreeTierVirtualInstancePublisher publisher;

  final TfArg<String> sku;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'offer': offer.toTfJson(),
    'publisher': publisher.toTfJson(),
    'sku': sku.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// `publisher` — derived from the provider schema description.
extension type const WorkloadsSapThreeTierVirtualInstancePublisher._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstancePublisher.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstancePublisher.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstancePublisher.arg(TfArg<String> arg)
    : this._(arg);

  static const redhat = WorkloadsSapThreeTierVirtualInstancePublisher._(
    TfArgLiteral('RedHat'),
  );
  static const suse = WorkloadsSapThreeTierVirtualInstancePublisher._(
    TfArgLiteral('SUSE'),
  );

  static const List<WorkloadsSapThreeTierVirtualInstancePublisher> values = [
    redhat,
    suse,
  ];
}

/// Typed helper for the `three_tier_configuration.application_server_configuration.virtual_machine_configuration.os_profile` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkloadsSapThreeTierVirtualInstanceOsProfile {
  const WorkloadsSapThreeTierVirtualInstanceOsProfile({
    required this.adminUsername,
    required this.sshPrivateKey,
    required this.sshPublicKey,
  });

  final TfArg<String> adminUsername;

  final Sensitive<String> sshPrivateKey;

  final TfArg<String> sshPublicKey;

  @internal
  Map<String, Object?> encode() => {
    'admin_username': adminUsername.toTfJson(),
    'ssh_private_key': sshPrivateKey.toTfJson(),
    'ssh_public_key': sshPublicKey.toTfJson(),
  };
}

/// Typed helper for the `three_tier_configuration.central_server_configuration` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceCentralServerConfiguration {
  const WorkloadsSapThreeTierVirtualInstanceCentralServerConfiguration({
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  final TfArg<num> instanceCount;

  final TfArg<String> subnetId;

  final WorkloadsSapThreeTierVirtualInstanceVirtualMachineConfiguration
  virtualMachineConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
    'virtual_machine_configuration': virtualMachineConfiguration.encode(),
  };
}

/// Typed helper for the `three_tier_configuration.database_server_configuration` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceDatabaseServerConfiguration {
  const WorkloadsSapThreeTierVirtualInstanceDatabaseServerConfiguration({
    this.databaseType,
    required this.instanceCount,
    required this.subnetId,
    this.diskVolumeConfiguration,
    required this.virtualMachineConfiguration,
  });

  final WorkloadsSapThreeTierVirtualInstanceDatabaseType? databaseType;

  final TfArg<num> instanceCount;

  final TfArg<String> subnetId;

  final List<WorkloadsSapThreeTierVirtualInstanceDiskVolumeConfiguration>?
  diskVolumeConfiguration;

  final WorkloadsSapThreeTierVirtualInstanceVirtualMachineConfiguration
  virtualMachineConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'database_type': ?databaseType?.toTfJson(),
    'instance_count': instanceCount.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
    if (diskVolumeConfiguration != null)
      'disk_volume_configuration': [
        for (final e in diskVolumeConfiguration!) e.encode(),
      ],
    'virtual_machine_configuration': virtualMachineConfiguration.encode(),
  };
}

/// `database_type` — derived from the provider schema description.
extension type const WorkloadsSapThreeTierVirtualInstanceDatabaseType._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceDatabaseType.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceDatabaseType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceDatabaseType.arg(TfArg<String> arg)
    : this._(arg);

  static const db2 = WorkloadsSapThreeTierVirtualInstanceDatabaseType._(
    TfArgLiteral('DB2'),
  );
  static const hana = WorkloadsSapThreeTierVirtualInstanceDatabaseType._(
    TfArgLiteral('HANA'),
  );

  static const List<WorkloadsSapThreeTierVirtualInstanceDatabaseType> values = [
    db2,
    hana,
  ];
}

/// Typed helper for the `three_tier_configuration.database_server_configuration.disk_volume_configuration` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceDiskVolumeConfiguration {
  const WorkloadsSapThreeTierVirtualInstanceDiskVolumeConfiguration({
    required this.numberOfDisks,
    required this.sizeInGb,
    required this.skuName,
    required this.volumeName,
  });

  final TfArg<num> numberOfDisks;

  final TfArg<num> sizeInGb;

  final WorkloadsSapThreeTierVirtualInstanceSkuName skuName;

  final WorkloadsSapThreeTierVirtualInstanceVolumeName volumeName;

  @internal
  Map<String, Object?> encode() => {
    'number_of_disks': numberOfDisks.toTfJson(),
    'size_in_gb': sizeInGb.toTfJson(),
    'sku_name': skuName.toTfJson(),
    'volume_name': volumeName.toTfJson(),
  };
}

/// `sku_name` — derived from the provider schema description.
extension type const WorkloadsSapThreeTierVirtualInstanceSkuName._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceSkuName.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceSkuName.arg(TfArg<String> arg)
    : this._(arg);

  static const premiumLrs = WorkloadsSapThreeTierVirtualInstanceSkuName._(
    TfArgLiteral('Premium_LRS'),
  );
  static const premiumv2Lrs = WorkloadsSapThreeTierVirtualInstanceSkuName._(
    TfArgLiteral('PremiumV2_LRS'),
  );
  static const premiumZrs = WorkloadsSapThreeTierVirtualInstanceSkuName._(
    TfArgLiteral('Premium_ZRS'),
  );
  static const standardLrs = WorkloadsSapThreeTierVirtualInstanceSkuName._(
    TfArgLiteral('Standard_LRS'),
  );
  static const standardssdLrs = WorkloadsSapThreeTierVirtualInstanceSkuName._(
    TfArgLiteral('StandardSSD_LRS'),
  );
  static const standardssdZrs = WorkloadsSapThreeTierVirtualInstanceSkuName._(
    TfArgLiteral('StandardSSD_ZRS'),
  );
  static const ultrassdLrs = WorkloadsSapThreeTierVirtualInstanceSkuName._(
    TfArgLiteral('UltraSSD_LRS'),
  );

  static const List<WorkloadsSapThreeTierVirtualInstanceSkuName> values = [
    premiumLrs,
    premiumv2Lrs,
    premiumZrs,
    standardLrs,
    standardssdLrs,
    standardssdZrs,
    ultrassdLrs,
  ];
}

/// `volume_name` — derived from the provider schema description.
extension type const WorkloadsSapThreeTierVirtualInstanceVolumeName._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceVolumeName.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceVolumeName.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceVolumeName.arg(TfArg<String> arg)
    : this._(arg);

  static const backup = WorkloadsSapThreeTierVirtualInstanceVolumeName._(
    TfArgLiteral('backup'),
  );
  static const hanaData = WorkloadsSapThreeTierVirtualInstanceVolumeName._(
    TfArgLiteral('hana/data'),
  );
  static const hanaLog = WorkloadsSapThreeTierVirtualInstanceVolumeName._(
    TfArgLiteral('hana/log'),
  );
  static const hanaShared = WorkloadsSapThreeTierVirtualInstanceVolumeName._(
    TfArgLiteral('hana/shared'),
  );
  static const os = WorkloadsSapThreeTierVirtualInstanceVolumeName._(
    TfArgLiteral('os'),
  );
  static const usrSap = WorkloadsSapThreeTierVirtualInstanceVolumeName._(
    TfArgLiteral('usr/sap'),
  );

  static const List<WorkloadsSapThreeTierVirtualInstanceVolumeName> values = [
    backup,
    hanaData,
    hanaLog,
    hanaShared,
    os,
    usrSap,
  ];
}

/// Typed helper for the `three_tier_configuration.resource_names` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceResourceNames {
  const WorkloadsSapThreeTierVirtualInstanceResourceNames({
    this.applicationServer,
    this.centralServer,
    this.databaseServer,
    this.sharedStorage,
  });

  final WorkloadsSapThreeTierVirtualInstanceApplicationServer?
  applicationServer;

  final WorkloadsSapThreeTierVirtualInstanceCentralServer? centralServer;

  final WorkloadsSapThreeTierVirtualInstanceDatabaseServer? databaseServer;

  final WorkloadsSapThreeTierVirtualInstanceSharedStorage? sharedStorage;

  @internal
  Map<String, Object?> encode() => {
    'application_server': ?applicationServer?.encode(),
    'central_server': ?centralServer?.encode(),
    'database_server': ?databaseServer?.encode(),
    'shared_storage': ?sharedStorage?.encode(),
  };
}

/// Typed helper for the `three_tier_configuration.resource_names.application_server` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceApplicationServer {
  const WorkloadsSapThreeTierVirtualInstanceApplicationServer({
    this.availabilitySetName,
    this.virtualMachine,
  });

  final TfArg<String>? availabilitySetName;

  final List<
    WorkloadsSapThreeTierVirtualInstanceApplicationServerVirtualMachine
  >?
  virtualMachine;

  @internal
  Map<String, Object?> encode() => {
    'availability_set_name': ?availabilitySetName?.toTfJson(),
    if (virtualMachine != null)
      'virtual_machine': [for (final e in virtualMachine!) e.encode()],
  };
}

/// Typed helper for the `three_tier_configuration.resource_names.application_server.virtual_machine` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkloadsSapThreeTierVirtualInstanceApplicationServerVirtualMachine {
  const WorkloadsSapThreeTierVirtualInstanceApplicationServerVirtualMachine({
    this.hostName,
    this.networkInterfaceNames,
    this.osDiskName,
    this.virtualMachineName,
    this.dataDisk,
  });

  final TfArg<String>? hostName;

  final TfArg<List<String>>? networkInterfaceNames;

  final TfArg<String>? osDiskName;

  final TfArg<String>? virtualMachineName;

  final List<WorkloadsSapThreeTierVirtualInstanceApplicationServerDataDisk>?
  dataDisk;

  @internal
  Map<String, Object?> encode() => {
    'host_name': ?hostName?.toTfJson(),
    'network_interface_names': ?networkInterfaceNames?.toTfJson(),
    'os_disk_name': ?osDiskName?.toTfJson(),
    'virtual_machine_name': ?virtualMachineName?.toTfJson(),
    if (dataDisk != null) 'data_disk': [for (final e in dataDisk!) e.encode()],
  };
}

/// Typed helper for the `three_tier_configuration.resource_names.application_server.virtual_machine.data_disk` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkloadsSapThreeTierVirtualInstanceApplicationServerDataDisk {
  const WorkloadsSapThreeTierVirtualInstanceApplicationServerDataDisk({
    required this.names,
    required this.volumeName,
  });

  final TfArg<List<String>> names;

  final WorkloadsSapThreeTierVirtualInstanceApplicationServerVolumeName
  volumeName;

  @internal
  Map<String, Object?> encode() => {
    'names': names.toTfJson(),
    'volume_name': volumeName.toTfJson(),
  };
}

/// `volume_name` — derived from the provider schema description.
extension type const WorkloadsSapThreeTierVirtualInstanceApplicationServerVolumeName._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceApplicationServerVolumeName.variable(
    String name,
  ) : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceApplicationServerVolumeName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceApplicationServerVolumeName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const defaultCase =
      WorkloadsSapThreeTierVirtualInstanceApplicationServerVolumeName._(
        TfArgLiteral('default'),
      );

  static const List<
    WorkloadsSapThreeTierVirtualInstanceApplicationServerVolumeName
  >
  values = [defaultCase];
}

/// Typed helper for the `three_tier_configuration.resource_names.central_server` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceCentralServer {
  const WorkloadsSapThreeTierVirtualInstanceCentralServer({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachine,
  });

  final TfArg<String>? availabilitySetName;

  final WorkloadsSapThreeTierVirtualInstanceLoadBalancer? loadBalancer;

  final List<
    WorkloadsSapThreeTierVirtualInstanceApplicationServerVirtualMachine
  >?
  virtualMachine;

  @internal
  Map<String, Object?> encode() => {
    'availability_set_name': ?availabilitySetName?.toTfJson(),
    'load_balancer': ?loadBalancer?.encode(),
    if (virtualMachine != null)
      'virtual_machine': [for (final e in virtualMachine!) e.encode()],
  };
}

/// Typed helper for the `three_tier_configuration.resource_names.central_server.load_balancer` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class WorkloadsSapThreeTierVirtualInstanceLoadBalancer {
  const WorkloadsSapThreeTierVirtualInstanceLoadBalancer({
    this.backendPoolNames,
    this.frontendIpConfigurationNames,
    this.healthProbeNames,
    this.name,
  });

  final TfArg<List<String>>? backendPoolNames;

  final TfArg<List<String>>? frontendIpConfigurationNames;

  final TfArg<List<String>>? healthProbeNames;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'backend_pool_names': ?backendPoolNames?.toTfJson(),
    'frontend_ip_configuration_names': ?frontendIpConfigurationNames
        ?.toTfJson(),
    'health_probe_names': ?healthProbeNames?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Typed helper for the `three_tier_configuration.resource_names.database_server` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceDatabaseServer {
  const WorkloadsSapThreeTierVirtualInstanceDatabaseServer({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachine,
  });

  final TfArg<String>? availabilitySetName;

  final WorkloadsSapThreeTierVirtualInstanceLoadBalancer? loadBalancer;

  final List<WorkloadsSapThreeTierVirtualInstanceDatabaseServerVirtualMachine>?
  virtualMachine;

  @internal
  Map<String, Object?> encode() => {
    'availability_set_name': ?availabilitySetName?.toTfJson(),
    'load_balancer': ?loadBalancer?.encode(),
    if (virtualMachine != null)
      'virtual_machine': [for (final e in virtualMachine!) e.encode()],
  };
}

/// Typed helper for the `three_tier_configuration.resource_names.database_server.virtual_machine` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceDatabaseServerVirtualMachine {
  const WorkloadsSapThreeTierVirtualInstanceDatabaseServerVirtualMachine({
    this.hostName,
    this.networkInterfaceNames,
    this.osDiskName,
    this.virtualMachineName,
    this.dataDisk,
  });

  final TfArg<String>? hostName;

  final TfArg<List<String>>? networkInterfaceNames;

  final TfArg<String>? osDiskName;

  final TfArg<String>? virtualMachineName;

  final List<WorkloadsSapThreeTierVirtualInstanceDatabaseServerDataDisk>?
  dataDisk;

  @internal
  Map<String, Object?> encode() => {
    'host_name': ?hostName?.toTfJson(),
    'network_interface_names': ?networkInterfaceNames?.toTfJson(),
    'os_disk_name': ?osDiskName?.toTfJson(),
    'virtual_machine_name': ?virtualMachineName?.toTfJson(),
    if (dataDisk != null) 'data_disk': [for (final e in dataDisk!) e.encode()],
  };
}

/// Typed helper for the `three_tier_configuration.resource_names.database_server.virtual_machine.data_disk` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceDatabaseServerDataDisk {
  const WorkloadsSapThreeTierVirtualInstanceDatabaseServerDataDisk({
    required this.names,
    required this.volumeName,
  });

  final TfArg<List<String>> names;

  final WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName volumeName;

  @internal
  Map<String, Object?> encode() => {
    'names': names.toTfJson(),
    'volume_name': volumeName.toTfJson(),
  };
}

/// `volume_name` — derived from the provider schema description.
extension type const WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName.variable(
    String name,
  ) : this._(TfArg.variable(name));
  WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const hanadata =
      WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName._(
        TfArgLiteral('hanaData'),
      );
  static const hanalog =
      WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName._(
        TfArgLiteral('hanaLog'),
      );
  static const hanashared =
      WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName._(
        TfArgLiteral('hanaShared'),
      );
  static const usrsap =
      WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName._(
        TfArgLiteral('usrSap'),
      );

  static const List<
    WorkloadsSapThreeTierVirtualInstanceDatabaseServerVolumeName
  >
  values = [hanadata, hanalog, hanashared, usrsap];
}

/// Typed helper for the `three_tier_configuration.resource_names.shared_storage` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceSharedStorage {
  const WorkloadsSapThreeTierVirtualInstanceSharedStorage({
    this.accountName,
    this.privateEndpointName,
  });

  final TfArg<String>? accountName;

  final TfArg<String>? privateEndpointName;

  @internal
  Map<String, Object?> encode() => {
    'account_name': ?accountName?.toTfJson(),
    'private_endpoint_name': ?privateEndpointName?.toTfJson(),
  };
}

/// Typed helper for the `three_tier_configuration.transport_create_and_mount` block of
/// `azurerm_workloads_sap_three_tier_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapThreeTierVirtualInstanceTransportCreateAndMount {
  const WorkloadsSapThreeTierVirtualInstanceTransportCreateAndMount({
    this.resourceGroupId,
    this.storageAccountName,
  });

  final TfArg<String>? resourceGroupId;

  final TfArg<String>? storageAccountName;

  @internal
  Map<String, Object?> encode() => {
    'resource_group_id': ?resourceGroupId?.toTfJson(),
    'storage_account_name': ?storageAccountName?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_workloads_sap_three_tier_virtual_instance`.
final class AzurermWorkloadsSapThreeTierVirtualInstance extends Resource {
  static const String tfType =
      'azurerm_workloads_sap_three_tier_virtual_instance';

  AzurermWorkloadsSapThreeTierVirtualInstance(
    super.localName, {
    required TfArg<String> appLocation,
    required WorkloadsSapThreeTierVirtualInstanceEnvironment environment,
    required TfArg<String> location,
    TfArg<String>? managedResourceGroupName,
    WorkloadsSapThreeTierVirtualInstanceManagedResourcesNetworkAccessType?
    managedResourcesNetworkAccessType,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sapFqdn,
    required WorkloadsSapThreeTierVirtualInstanceSapProduct sapProduct,
    TfArg<Map<String, String>>? tags,
    WorkloadsSapThreeTierVirtualInstanceIdentity? identity,
    required WorkloadsSapThreeTierVirtualInstanceThreeTierConfiguration
    threeTierConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_location': appLocation,
           'environment': environment,
           'location': location,
           'managed_resource_group_name': ?managedResourceGroupName,
           'managed_resources_network_access_type':
               ?managedResourcesNetworkAccessType,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sap_fqdn': sapFqdn,
           'sap_product': sapProduct,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'three_tier_configuration': TfArg.literal(
             threeTierConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermWorkloadsSapThreeTierVirtualInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWorkloadsSapThreeTierVirtualInstance>`.
  RefTo<AzurermWorkloadsSapThreeTierVirtualInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_location` attribute.
  TfRef<String> get appLocation =>
      TfRef.attribute<String>(this, 'app_location');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_resource_group_name` attribute.
  TfRef<String> get managedResourceGroupName =>
      TfRef.attribute<String>(this, 'managed_resource_group_name');

  /// Reference to `managed_resources_network_access_type` attribute.
  TfRef<String> get managedResourcesNetworkAccessType =>
      TfRef.attribute<String>(this, 'managed_resources_network_access_type');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sap_fqdn` attribute.
  TfRef<String> get sapFqdn => TfRef.attribute<String>(this, 'sap_fqdn');

  /// Reference to `sap_product` attribute.
  TfRef<String> get sapProduct => TfRef.attribute<String>(this, 'sap_product');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
