// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_workloads_sap_single_node_virtual_instance`.
const Set<String>
_azurermWorkloadsSapSingleNodeVirtualInstanceSensitive = <String>{
  'single_server_configuration.virtual_machine_configuration.os_profile.ssh_private_key',
};

/// Workloads Sap Single Node Virtual Instance enum for `environment`.
extension type const WorkloadsSapSingleNodeVirtualInstanceEnvironment._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapSingleNodeVirtualInstanceEnvironment.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapSingleNodeVirtualInstanceEnvironment.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapSingleNodeVirtualInstanceEnvironment.arg(TfArg<String> arg)
    : this._(arg);

  static const nonprod = WorkloadsSapSingleNodeVirtualInstanceEnvironment._(
    TfArgLiteral('NonProd'),
  );
  static const prod = WorkloadsSapSingleNodeVirtualInstanceEnvironment._(
    TfArgLiteral('Prod'),
  );

  static const List<WorkloadsSapSingleNodeVirtualInstanceEnvironment> values = [
    nonprod,
    prod,
  ];
}

/// Workloads Sap Single Node Virtual Instance Managed Resources Network Access enum for `managed_resources_network_access_type`.
extension type const WorkloadsSapSingleNodeVirtualInstanceManagedResourcesNetworkAccessType._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapSingleNodeVirtualInstanceManagedResourcesNetworkAccessType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  WorkloadsSapSingleNodeVirtualInstanceManagedResourcesNetworkAccessType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WorkloadsSapSingleNodeVirtualInstanceManagedResourcesNetworkAccessType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const private =
      WorkloadsSapSingleNodeVirtualInstanceManagedResourcesNetworkAccessType._(
        TfArgLiteral('Private'),
      );
  static const public =
      WorkloadsSapSingleNodeVirtualInstanceManagedResourcesNetworkAccessType._(
        TfArgLiteral('Public'),
      );

  static const List<
    WorkloadsSapSingleNodeVirtualInstanceManagedResourcesNetworkAccessType
  >
  values = [private, public];
}

/// Workloads Sap Single Node Virtual Instance Sap enum for `sap_product`.
extension type const WorkloadsSapSingleNodeVirtualInstanceSapProduct._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapSingleNodeVirtualInstanceSapProduct.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapSingleNodeVirtualInstanceSapProduct.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapSingleNodeVirtualInstanceSapProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const ecc = WorkloadsSapSingleNodeVirtualInstanceSapProduct._(
    TfArgLiteral('ECC'),
  );
  static const other = WorkloadsSapSingleNodeVirtualInstanceSapProduct._(
    TfArgLiteral('Other'),
  );
  static const s4hana = WorkloadsSapSingleNodeVirtualInstanceSapProduct._(
    TfArgLiteral('S4HANA'),
  );

  static const List<WorkloadsSapSingleNodeVirtualInstanceSapProduct> values = [
    ecc,
    other,
    s4hana,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_workloads_sap_single_node_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapSingleNodeVirtualInstanceIdentity {
  const WorkloadsSapSingleNodeVirtualInstanceIdentity({
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

/// Typed helper for the `single_server_configuration` block of
/// `azurerm_workloads_sap_single_node_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapSingleNodeVirtualInstanceSingleServerConfiguration {
  const WorkloadsSapSingleNodeVirtualInstanceSingleServerConfiguration({
    required this.appResourceGroupName,
    this.databaseType,
    this.secondaryIpEnabled,
    required this.subnetId,
    this.diskVolumeConfiguration,
    required this.virtualMachineConfiguration,
    this.virtualMachineResourceNames,
  });

  final TfArg<String> appResourceGroupName;

  final WorkloadsSapSingleNodeVirtualInstanceDatabaseType? databaseType;

  final TfArg<bool>? secondaryIpEnabled;

  final TfArg<String> subnetId;

  final List<WorkloadsSapSingleNodeVirtualInstanceDiskVolumeConfiguration>?
  diskVolumeConfiguration;

  final WorkloadsSapSingleNodeVirtualInstanceVirtualMachineConfiguration
  virtualMachineConfiguration;

  final WorkloadsSapSingleNodeVirtualInstanceVirtualMachineResourceNames?
  virtualMachineResourceNames;

  @internal
  Map<String, Object?> encode() => {
    'app_resource_group_name': appResourceGroupName.toTfJson(),
    'database_type': ?databaseType?.toTfJson(),
    'secondary_ip_enabled': ?secondaryIpEnabled?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
    if (diskVolumeConfiguration != null)
      'disk_volume_configuration': [
        for (final e in diskVolumeConfiguration!) e.encode(),
      ],
    'virtual_machine_configuration': virtualMachineConfiguration.encode(),
    'virtual_machine_resource_names': ?virtualMachineResourceNames?.encode(),
  };
}

/// `database_type` — derived from the provider schema description.
extension type const WorkloadsSapSingleNodeVirtualInstanceDatabaseType._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapSingleNodeVirtualInstanceDatabaseType.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapSingleNodeVirtualInstanceDatabaseType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapSingleNodeVirtualInstanceDatabaseType.arg(TfArg<String> arg)
    : this._(arg);

  static const db2 = WorkloadsSapSingleNodeVirtualInstanceDatabaseType._(
    TfArgLiteral('DB2'),
  );
  static const hana = WorkloadsSapSingleNodeVirtualInstanceDatabaseType._(
    TfArgLiteral('HANA'),
  );

  static const List<WorkloadsSapSingleNodeVirtualInstanceDatabaseType> values =
      [db2, hana];
}

/// Typed helper for the `single_server_configuration.disk_volume_configuration` block of
/// `azurerm_workloads_sap_single_node_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapSingleNodeVirtualInstanceDiskVolumeConfiguration {
  const WorkloadsSapSingleNodeVirtualInstanceDiskVolumeConfiguration({
    required this.numberOfDisks,
    required this.sizeInGb,
    required this.skuName,
    required this.volumeName,
  });

  final TfArg<num> numberOfDisks;

  final TfArg<num> sizeInGb;

  final WorkloadsSapSingleNodeVirtualInstanceSkuName skuName;

  final WorkloadsSapSingleNodeVirtualInstanceVolumeName volumeName;

  @internal
  Map<String, Object?> encode() => {
    'number_of_disks': numberOfDisks.toTfJson(),
    'size_in_gb': sizeInGb.toTfJson(),
    'sku_name': skuName.toTfJson(),
    'volume_name': volumeName.toTfJson(),
  };
}

/// `sku_name` — derived from the provider schema description.
extension type const WorkloadsSapSingleNodeVirtualInstanceSkuName._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapSingleNodeVirtualInstanceSkuName.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapSingleNodeVirtualInstanceSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapSingleNodeVirtualInstanceSkuName.arg(TfArg<String> arg)
    : this._(arg);

  static const premiumLrs = WorkloadsSapSingleNodeVirtualInstanceSkuName._(
    TfArgLiteral('Premium_LRS'),
  );
  static const premiumv2Lrs = WorkloadsSapSingleNodeVirtualInstanceSkuName._(
    TfArgLiteral('PremiumV2_LRS'),
  );
  static const premiumZrs = WorkloadsSapSingleNodeVirtualInstanceSkuName._(
    TfArgLiteral('Premium_ZRS'),
  );
  static const standardLrs = WorkloadsSapSingleNodeVirtualInstanceSkuName._(
    TfArgLiteral('Standard_LRS'),
  );
  static const standardssdLrs = WorkloadsSapSingleNodeVirtualInstanceSkuName._(
    TfArgLiteral('StandardSSD_LRS'),
  );
  static const standardssdZrs = WorkloadsSapSingleNodeVirtualInstanceSkuName._(
    TfArgLiteral('StandardSSD_ZRS'),
  );
  static const ultrassdLrs = WorkloadsSapSingleNodeVirtualInstanceSkuName._(
    TfArgLiteral('UltraSSD_LRS'),
  );

  static const List<WorkloadsSapSingleNodeVirtualInstanceSkuName> values = [
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
extension type const WorkloadsSapSingleNodeVirtualInstanceVolumeName._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapSingleNodeVirtualInstanceVolumeName.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapSingleNodeVirtualInstanceVolumeName.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapSingleNodeVirtualInstanceVolumeName.arg(TfArg<String> arg)
    : this._(arg);

  static const backup = WorkloadsSapSingleNodeVirtualInstanceVolumeName._(
    TfArgLiteral('backup'),
  );
  static const hanaData = WorkloadsSapSingleNodeVirtualInstanceVolumeName._(
    TfArgLiteral('hana/data'),
  );
  static const hanaLog = WorkloadsSapSingleNodeVirtualInstanceVolumeName._(
    TfArgLiteral('hana/log'),
  );
  static const hanaShared = WorkloadsSapSingleNodeVirtualInstanceVolumeName._(
    TfArgLiteral('hana/shared'),
  );
  static const os = WorkloadsSapSingleNodeVirtualInstanceVolumeName._(
    TfArgLiteral('os'),
  );
  static const usrSap = WorkloadsSapSingleNodeVirtualInstanceVolumeName._(
    TfArgLiteral('usr/sap'),
  );

  static const List<WorkloadsSapSingleNodeVirtualInstanceVolumeName> values = [
    backup,
    hanaData,
    hanaLog,
    hanaShared,
    os,
    usrSap,
  ];
}

/// Typed helper for the `single_server_configuration.virtual_machine_configuration` block of
/// `azurerm_workloads_sap_single_node_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapSingleNodeVirtualInstanceVirtualMachineConfiguration {
  const WorkloadsSapSingleNodeVirtualInstanceVirtualMachineConfiguration({
    required this.virtualMachineSize,
    required this.image,
    required this.osProfile,
  });

  final TfArg<String> virtualMachineSize;

  final WorkloadsSapSingleNodeVirtualInstanceImage image;

  final WorkloadsSapSingleNodeVirtualInstanceOsProfile osProfile;

  @internal
  Map<String, Object?> encode() => {
    'virtual_machine_size': virtualMachineSize.toTfJson(),
    'image': image.encode(),
    'os_profile': osProfile.encode(),
  };
}

/// Typed helper for the `single_server_configuration.virtual_machine_configuration.image` block of
/// `azurerm_workloads_sap_single_node_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapSingleNodeVirtualInstanceImage {
  const WorkloadsSapSingleNodeVirtualInstanceImage({
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  final TfArg<String> offer;

  final WorkloadsSapSingleNodeVirtualInstancePublisher publisher;

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
extension type const WorkloadsSapSingleNodeVirtualInstancePublisher._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapSingleNodeVirtualInstancePublisher.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapSingleNodeVirtualInstancePublisher.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapSingleNodeVirtualInstancePublisher.arg(TfArg<String> arg)
    : this._(arg);

  static const redhat = WorkloadsSapSingleNodeVirtualInstancePublisher._(
    TfArgLiteral('RedHat'),
  );
  static const suse = WorkloadsSapSingleNodeVirtualInstancePublisher._(
    TfArgLiteral('SUSE'),
  );

  static const List<WorkloadsSapSingleNodeVirtualInstancePublisher> values = [
    redhat,
    suse,
  ];
}

/// Typed helper for the `single_server_configuration.virtual_machine_configuration.os_profile` block of
/// `azurerm_workloads_sap_single_node_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapSingleNodeVirtualInstanceOsProfile {
  const WorkloadsSapSingleNodeVirtualInstanceOsProfile({
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

/// Typed helper for the `single_server_configuration.virtual_machine_resource_names` block of
/// `azurerm_workloads_sap_single_node_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapSingleNodeVirtualInstanceVirtualMachineResourceNames {
  const WorkloadsSapSingleNodeVirtualInstanceVirtualMachineResourceNames({
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

  final List<WorkloadsSapSingleNodeVirtualInstanceDataDisk>? dataDisk;

  @internal
  Map<String, Object?> encode() => {
    'host_name': ?hostName?.toTfJson(),
    'network_interface_names': ?networkInterfaceNames?.toTfJson(),
    'os_disk_name': ?osDiskName?.toTfJson(),
    'virtual_machine_name': ?virtualMachineName?.toTfJson(),
    if (dataDisk != null) 'data_disk': [for (final e in dataDisk!) e.encode()],
  };
}

/// Typed helper for the `single_server_configuration.virtual_machine_resource_names.data_disk` block of
/// `azurerm_workloads_sap_single_node_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapSingleNodeVirtualInstanceDataDisk {
  const WorkloadsSapSingleNodeVirtualInstanceDataDisk({
    required this.names,
    required this.volumeName,
  });

  final TfArg<List<String>> names;

  final WorkloadsSapSingleNodeVirtualInstanceDataDiskVolumeName volumeName;

  @internal
  Map<String, Object?> encode() => {
    'names': names.toTfJson(),
    'volume_name': volumeName.toTfJson(),
  };
}

/// `volume_name` — derived from the provider schema description.
extension type const WorkloadsSapSingleNodeVirtualInstanceDataDiskVolumeName._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapSingleNodeVirtualInstanceDataDiskVolumeName.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapSingleNodeVirtualInstanceDataDiskVolumeName.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WorkloadsSapSingleNodeVirtualInstanceDataDiskVolumeName.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const defaultCase =
      WorkloadsSapSingleNodeVirtualInstanceDataDiskVolumeName._(
        TfArgLiteral('default'),
      );

  static const List<WorkloadsSapSingleNodeVirtualInstanceDataDiskVolumeName>
  values = [defaultCase];
}

/// Factory wrapper for `azurerm_workloads_sap_single_node_virtual_instance`.
final class AzurermWorkloadsSapSingleNodeVirtualInstance extends Resource {
  static const String tfType =
      'azurerm_workloads_sap_single_node_virtual_instance';

  AzurermWorkloadsSapSingleNodeVirtualInstance(
    super.localName, {
    required TfArg<String> appLocation,
    required WorkloadsSapSingleNodeVirtualInstanceEnvironment environment,
    required TfArg<String> location,
    TfArg<String>? managedResourceGroupName,
    WorkloadsSapSingleNodeVirtualInstanceManagedResourcesNetworkAccessType?
    managedResourcesNetworkAccessType,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> sapFqdn,
    required WorkloadsSapSingleNodeVirtualInstanceSapProduct sapProduct,
    TfArg<Map<String, String>>? tags,
    WorkloadsSapSingleNodeVirtualInstanceIdentity? identity,
    required WorkloadsSapSingleNodeVirtualInstanceSingleServerConfiguration
    singleServerConfiguration,
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
           'single_server_configuration': TfArg.literal(
             singleServerConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermWorkloadsSapSingleNodeVirtualInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWorkloadsSapSingleNodeVirtualInstance>`.
  RefTo<AzurermWorkloadsSapSingleNodeVirtualInstance> get ref => RefTo.of(this);

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
