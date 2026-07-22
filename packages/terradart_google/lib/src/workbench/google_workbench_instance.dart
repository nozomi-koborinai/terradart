// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workbench_instance`.
const Set<String> _googleWorkbenchInstanceSensitive = <String>{};

/// Typed helper for the `gce_setup` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetup {
  const WorkbenchInstanceGceSetup({
    this.disablePublicIp,
    this.enableIpForwarding,
    this.machineType,
    this.metadata,
    this.tags,
    this.acceleratorConfigs,
    this.bootDisk,
    this.confidentialInstanceConfig,
    this.containerImage,
    this.dataDisks,
    this.networkInterfaces,
    this.reservationAffinity,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.vmImage,
  });

  final TfArg<bool>? disablePublicIp;

  final TfArg<bool>? enableIpForwarding;

  final TfArg<String>? machineType;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<List<Object?>>? tags;

  final List<WorkbenchInstanceGceSetupAcceleratorConfigs>? acceleratorConfigs;

  final WorkbenchInstanceGceSetupBootDisk? bootDisk;

  final WorkbenchInstanceGceSetupConfidentialInstanceConfig?
  confidentialInstanceConfig;

  final WorkbenchInstanceGceSetupContainerImage? containerImage;

  final WorkbenchInstanceGceSetupDataDisks? dataDisks;

  final List<WorkbenchInstanceGceSetupNetworkInterfaces>? networkInterfaces;

  final WorkbenchInstanceGceSetupReservationAffinity? reservationAffinity;

  final List<WorkbenchInstanceGceSetupServiceAccounts>? serviceAccounts;

  final WorkbenchInstanceGceSetupShieldedInstanceConfig? shieldedInstanceConfig;

  final WorkbenchInstanceGceSetupVmImage? vmImage;

  Map<String, Object?> encode() => {
    if (disablePublicIp != null)
      'disable_public_ip': disablePublicIp!.toTfJson(),
    if (enableIpForwarding != null)
      'enable_ip_forwarding': enableIpForwarding!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (metadata != null) 'metadata': metadata!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (acceleratorConfigs != null)
      'accelerator_configs': [for (final e in acceleratorConfigs!) e.encode()],
    if (bootDisk != null) 'boot_disk': bootDisk!.encode(),
    if (confidentialInstanceConfig != null)
      'confidential_instance_config': confidentialInstanceConfig!.encode(),
    if (containerImage != null) 'container_image': containerImage!.encode(),
    if (dataDisks != null) 'data_disks': dataDisks!.encode(),
    if (networkInterfaces != null)
      'network_interfaces': [for (final e in networkInterfaces!) e.encode()],
    if (reservationAffinity != null)
      'reservation_affinity': reservationAffinity!.encode(),
    if (serviceAccounts != null)
      'service_accounts': [for (final e in serviceAccounts!) e.encode()],
    if (shieldedInstanceConfig != null)
      'shielded_instance_config': shieldedInstanceConfig!.encode(),
    if (vmImage != null) 'vm_image': vmImage!.encode(),
  };
}

/// Typed helper for the `gce_setup.accelerator_configs` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupAcceleratorConfigs {
  const WorkbenchInstanceGceSetupAcceleratorConfigs({
    this.coreCount,
    this.type,
  });

  final TfArg<String>? coreCount;

  final TfArg<WorkbenchInstanceGceSetupAcceleratorConfigsType>? type;

  Map<String, Object?> encode() => {
    if (coreCount != null) 'core_count': coreCount!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum WorkbenchInstanceGceSetupAcceleratorConfigsType implements TerraformEnum {
  nvidiaTeslaP100('NVIDIA_TESLA_P100'),
  nvidiaTeslaV100('NVIDIA_TESLA_V100'),
  nvidiaTeslaP4('NVIDIA_TESLA_P4'),
  nvidiaTeslaT4('NVIDIA_TESLA_T4'),
  nvidiaTeslaA100('NVIDIA_TESLA_A100'),
  nvidiaA10080gb('NVIDIA_A100_80GB'),
  nvidiaL4('NVIDIA_L4'),
  nvidiaH10080gb('NVIDIA_H100_80GB'),
  nvidiaH100Mega80gb('NVIDIA_H100_MEGA_80GB'),
  nvidiaH200141gb('NVIDIA_H200_141GB'),
  nvidiaB200('NVIDIA_B200'),
  nvidiaRtx6000('NVIDIA_RTX6000'),
  nvidiaTeslaT4Vws('NVIDIA_TESLA_T4_VWS'),
  nvidiaTeslaP100Vws('NVIDIA_TESLA_P100_VWS'),
  nvidiaTeslaP4Vws('NVIDIA_TESLA_P4_VWS');

  const WorkbenchInstanceGceSetupAcceleratorConfigsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.boot_disk` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupBootDisk {
  const WorkbenchInstanceGceSetupBootDisk({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
  });

  final TfArg<WorkbenchInstanceGceSetupBootDiskDiskEncryption>? diskEncryption;

  final TfArg<String>? diskSizeGb;

  final TfArg<WorkbenchInstanceGceSetupBootDiskDiskType>? diskType;

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (diskEncryption != null) 'disk_encryption': diskEncryption!.toTfJson(),
    if (diskSizeGb != null) 'disk_size_gb': diskSizeGb!.toTfJson(),
    if (diskType != null) 'disk_type': diskType!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// `disk_encryption` — derived from the provider schema description.
enum WorkbenchInstanceGceSetupBootDiskDiskEncryption implements TerraformEnum {
  gmek('GMEK'),
  cmek('CMEK');

  const WorkbenchInstanceGceSetupBootDiskDiskEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `disk_type` — derived from the provider schema description.
enum WorkbenchInstanceGceSetupBootDiskDiskType implements TerraformEnum {
  pdStandard('PD_STANDARD'),
  pdSsd('PD_SSD'),
  pdBalanced('PD_BALANCED'),
  pdExtreme('PD_EXTREME'),
  hyperdiskBalanced('HYPERDISK_BALANCED'),
  hyperdiskBalancedHighAvailability('HYPERDISK_BALANCED_HIGH_AVAILABILITY'),
  hyperdiskMl('HYPERDISK_ML');

  const WorkbenchInstanceGceSetupBootDiskDiskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.confidential_instance_config` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupConfidentialInstanceConfig {
  const WorkbenchInstanceGceSetupConfidentialInstanceConfig({
    this.confidentialInstanceType,
  });

  final TfArg<String>? confidentialInstanceType;

  Map<String, Object?> encode() => {
    if (confidentialInstanceType != null)
      'confidential_instance_type': confidentialInstanceType!.toTfJson(),
  };
}

/// Typed helper for the `gce_setup.container_image` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupContainerImage {
  const WorkbenchInstanceGceSetupContainerImage({
    required this.repository,
    this.tag,
  });

  final TfArg<String> repository;

  final TfArg<String>? tag;

  Map<String, Object?> encode() => {
    'repository': repository.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
  };
}

/// Typed helper for the `gce_setup.data_disks` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupDataDisks {
  const WorkbenchInstanceGceSetupDataDisks({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
  });

  final TfArg<WorkbenchInstanceGceSetupDataDisksDiskEncryption>? diskEncryption;

  final TfArg<String>? diskSizeGb;

  final TfArg<WorkbenchInstanceGceSetupDataDisksDiskType>? diskType;

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (diskEncryption != null) 'disk_encryption': diskEncryption!.toTfJson(),
    if (diskSizeGb != null) 'disk_size_gb': diskSizeGb!.toTfJson(),
    if (diskType != null) 'disk_type': diskType!.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// `disk_encryption` — derived from the provider schema description.
enum WorkbenchInstanceGceSetupDataDisksDiskEncryption implements TerraformEnum {
  gmek('GMEK'),
  cmek('CMEK');

  const WorkbenchInstanceGceSetupDataDisksDiskEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `disk_type` — derived from the provider schema description.
enum WorkbenchInstanceGceSetupDataDisksDiskType implements TerraformEnum {
  pdStandard('PD_STANDARD'),
  pdSsd('PD_SSD'),
  pdBalanced('PD_BALANCED'),
  pdExtreme('PD_EXTREME'),
  hyperdiskBalanced('HYPERDISK_BALANCED'),
  hyperdiskExtreme('HYPERDISK_EXTREME'),
  hyperdiskThroughput('HYPERDISK_THROUGHPUT'),
  hyperdiskBalancedHighAvailability('HYPERDISK_BALANCED_HIGH_AVAILABILITY'),
  hyperdiskMl('HYPERDISK_ML');

  const WorkbenchInstanceGceSetupDataDisksDiskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.network_interfaces` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupNetworkInterfaces {
  const WorkbenchInstanceGceSetupNetworkInterfaces({
    this.network,
    this.nicType,
    this.subnet,
    this.accessConfigs,
  });

  final TfArg<String>? network;

  final TfArg<WorkbenchInstanceGceSetupNetworkInterfacesNicType>? nicType;

  final TfArg<String>? subnet;

  final List<WorkbenchInstanceGceSetupNetworkInterfacesAccessConfigs>?
  accessConfigs;

  Map<String, Object?> encode() => {
    if (network != null) 'network': network!.toTfJson(),
    if (nicType != null) 'nic_type': nicType!.toTfJson(),
    if (subnet != null) 'subnet': subnet!.toTfJson(),
    if (accessConfigs != null)
      'access_configs': [for (final e in accessConfigs!) e.encode()],
  };
}

/// `nic_type` — derived from the provider schema description.
enum WorkbenchInstanceGceSetupNetworkInterfacesNicType
    implements TerraformEnum {
  virtioNet('VIRTIO_NET'),
  gvnic('GVNIC');

  const WorkbenchInstanceGceSetupNetworkInterfacesNicType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.network_interfaces.access_configs` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupNetworkInterfacesAccessConfigs {
  const WorkbenchInstanceGceSetupNetworkInterfacesAccessConfigs({
    required this.externalIp,
  });

  final TfArg<String> externalIp;

  Map<String, Object?> encode() => {'external_ip': externalIp.toTfJson()};
}

/// Typed helper for the `gce_setup.reservation_affinity` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupReservationAffinity {
  const WorkbenchInstanceGceSetupReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  final TfArg<
    WorkbenchInstanceGceSetupReservationAffinityConsumeReservationType
  >?
  consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (consumeReservationType != null)
      'consume_reservation_type': consumeReservationType!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// `consume_reservation_type` — derived from the provider schema description.
enum WorkbenchInstanceGceSetupReservationAffinityConsumeReservationType
    implements TerraformEnum {
  reservationNone('RESERVATION_NONE'),
  reservationAny('RESERVATION_ANY'),
  reservationSpecific('RESERVATION_SPECIFIC');

  const WorkbenchInstanceGceSetupReservationAffinityConsumeReservationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.service_accounts` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupServiceAccounts {
  const WorkbenchInstanceGceSetupServiceAccounts({this.email});

  final TfArg<String>? email;

  Map<String, Object?> encode() => {
    if (email != null) 'email': email!.toTfJson(),
  };
}

/// Typed helper for the `gce_setup.shielded_instance_config` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupShieldedInstanceConfig {
  const WorkbenchInstanceGceSetupShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    if (enableIntegrityMonitoring != null)
      'enable_integrity_monitoring': enableIntegrityMonitoring!.toTfJson(),
    if (enableSecureBoot != null)
      'enable_secure_boot': enableSecureBoot!.toTfJson(),
    if (enableVtpm != null) 'enable_vtpm': enableVtpm!.toTfJson(),
  };
}

/// Typed helper for the `gce_setup.vm_image` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceGceSetupVmImage {
  const WorkbenchInstanceGceSetupVmImage({
    this.family,
    this.name,
    this.project,
  });

  final TfArg<String>? family;

  final TfArg<String>? name;

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    if (family != null) 'family': family!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (project != null) 'project': project!.toTfJson(),
  };
}

/// Factory wrapper for `google_workbench_instance`.
///
/// A Workbench instance.
///
/// Vertex AI Workbench **instance** — the current user-managed notebook
/// VM API (`google_notebooks_instance` is deprecated in favor of this).
///
/// **Cost:** Cloud Billing Catalog service `D73B-5EEA-8215` bills Workbench
/// **management fees + GCE usage** while the VM runs (us-central1 N1
/// management CPU SKU `6196-1C27-5E30` **$0.0063222/h** + N1 usage CPU
/// `9027-15FF-8BFE` **$0.0379332/h** + RAM/disk). Destroy stops charges.
/// Too expensive for apply-smoke — factories ship without a quickstart.
///
/// Configure the VM via [gceSetup] (machine type, image, disks, network).
/// Enable `notebooks.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleWorkbenchInstance(
///   localName: 'wb',
///   name: TfArg.literal('terradart-wb'),
///   location: TfArg.literal('us-central1-a'),
///   gceSetup: WorkbenchInstanceGceSetup(
///     machineType: TfArg.literal('n1-standard-1'),
///     vmImage: WorkbenchInstanceGceSetupVmImage(
///       project: TfArg.literal('cloud-notebooks-managed'),
///       family: TfArg.literal('workbench-instances'),
///     ),
///   ),
///   desiredState: TfArg.literal('STOPPED'),
/// );
/// ```
final class GoogleWorkbenchInstance extends Resource {
  static const String tfType = 'google_workbench_instance';

  GoogleWorkbenchInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    WorkbenchInstanceGceSetup? gceSetup,
    TfArg<List<String>>? instanceOwners,
    TfArg<bool>? disableProxyAccess,
    TfArg<bool>? enableThirdPartyIdentity,
    TfArg<bool>? enableManagedEuc,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? desiredState,
    TfArg<String>? instanceId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (gceSetup != null) 'gce_setup': TfArg.literal(gceSetup.encode()),
           if (instanceOwners != null) 'instance_owners': instanceOwners,
           if (disableProxyAccess != null)
             'disable_proxy_access': disableProxyAccess,
           if (enableThirdPartyIdentity != null)
             'enable_third_party_identity': enableThirdPartyIdentity,
           if (enableManagedEuc != null) 'enable_managed_euc': enableManagedEuc,
           if (labels != null) 'labels': labels,
           if (desiredState != null) 'desired_state': desiredState,
           if (instanceId != null) 'instance_id': instanceId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleWorkbenchInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `health_info` attribute.
  TfRef<List<Map<String, Object?>>> get healthInfo =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health_info');

  /// Reference to `health_state` attribute.
  TfRef<String> get healthState =>
      TfRef.attribute<String>(this, 'health_state');

  /// Reference to `proxy_uri` attribute.
  TfRef<String> get proxyUri => TfRef.attribute<String>(this, 'proxy_uri');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `upgrade_history` attribute.
  TfRef<List<Map<String, Object?>>> get upgradeHistory =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'upgrade_history');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
