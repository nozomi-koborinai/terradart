// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

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
    this.minCpuPlatform,
    this.tags,
    this.acceleratorConfigs,
    this.bootDisk,
    this.confidentialInstanceConfig,
    this.image,
    this.dataDisks,
    this.networkInterfaces,
    this.reservationAffinity,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
  });

  final TfArg<bool>? disablePublicIp;

  final TfArg<bool>? enableIpForwarding;

  final TfArg<String>? machineType;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String>? minCpuPlatform;

  final TfArg<List<String>>? tags;

  final List<WorkbenchInstanceAcceleratorConfigs>? acceleratorConfigs;

  final WorkbenchInstanceBootDisk? bootDisk;

  final WorkbenchInstanceConfidentialInstanceConfig? confidentialInstanceConfig;

  final WorkbenchInstanceImage? image;

  final WorkbenchInstanceDataDisks? dataDisks;

  final List<WorkbenchInstanceNetworkInterfaces>? networkInterfaces;

  final WorkbenchInstanceReservationAffinity? reservationAffinity;

  final List<WorkbenchInstanceServiceAccounts>? serviceAccounts;

  final WorkbenchInstanceShieldedInstanceConfig? shieldedInstanceConfig;

  Map<String, Object?> encode() => {
    'disable_public_ip': ?disablePublicIp?.toTfJson(),
    'enable_ip_forwarding': ?enableIpForwarding?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'min_cpu_platform': ?minCpuPlatform?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    if (acceleratorConfigs != null)
      'accelerator_configs': [for (final e in acceleratorConfigs!) e.encode()],
    'boot_disk': ?bootDisk?.encode(),
    'confidential_instance_config': ?confidentialInstanceConfig?.encode(),
    ...?image?.encode(),
    'data_disks': ?dataDisks?.encode(),
    if (networkInterfaces != null)
      'network_interfaces': [for (final e in networkInterfaces!) e.encode()],
    'reservation_affinity': ?reservationAffinity?.encode(),
    if (serviceAccounts != null)
      'service_accounts': [for (final e in serviceAccounts!) e.encode()],
    'shielded_instance_config': ?shieldedInstanceConfig?.encode(),
  };
}

/// At most one of `vm_image`, `container_image` on the `gce_setup` block of `google_workbench_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.vmImage(...)`.
sealed class WorkbenchInstanceImage {
  const WorkbenchInstanceImage();

  /// Sets `vm_image`.
  const factory WorkbenchInstanceImage.vmImage(
    WorkbenchInstanceVmImage vmImage,
  ) = WorkbenchInstanceVmImageChoice;

  /// Sets `container_image`.
  const factory WorkbenchInstanceImage.containerImage(
    WorkbenchInstanceContainerImage containerImage,
  ) = WorkbenchInstanceContainerImageChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [WorkbenchInstanceImage.vmImage] choice: sets `vm_image`.
final class WorkbenchInstanceVmImageChoice extends WorkbenchInstanceImage {
  const WorkbenchInstanceVmImageChoice(this.vmImage);

  final WorkbenchInstanceVmImage vmImage;

  @override
  String get blockKey => 'vm_image';

  @override
  Map<String, Object?> encode() => {'vm_image': vmImage.encode()};
}

/// The [WorkbenchInstanceImage.containerImage] choice: sets `container_image`.
final class WorkbenchInstanceContainerImageChoice
    extends WorkbenchInstanceImage {
  const WorkbenchInstanceContainerImageChoice(this.containerImage);

  final WorkbenchInstanceContainerImage containerImage;

  @override
  String get blockKey => 'container_image';

  @override
  Map<String, Object?> encode() => {'container_image': containerImage.encode()};
}

/// Typed helper for the `gce_setup.accelerator_configs` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceAcceleratorConfigs {
  const WorkbenchInstanceAcceleratorConfigs({this.coreCount, this.type});

  final TfArg<String>? coreCount;

  final TfArg<WorkbenchInstanceType>? type;

  Map<String, Object?> encode() => {
    'core_count': ?coreCount?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum WorkbenchInstanceType implements TerraformEnum {
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

  const WorkbenchInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.boot_disk` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceBootDisk {
  const WorkbenchInstanceBootDisk({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
  });

  final TfArg<WorkbenchInstanceDiskEncryption>? diskEncryption;

  final TfArg<String>? diskSizeGb;

  final TfArg<WorkbenchInstanceBootDiskType>? diskType;

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  Map<String, Object?> encode() => {
    'disk_encryption': ?diskEncryption?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
  };
}

/// `disk_encryption` — derived from the provider schema description.
enum WorkbenchInstanceDiskEncryption implements TerraformEnum {
  gmek('GMEK'),
  cmek('CMEK');

  const WorkbenchInstanceDiskEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `disk_type` — derived from the provider schema description.
enum WorkbenchInstanceBootDiskType implements TerraformEnum {
  pdStandard('PD_STANDARD'),
  pdSsd('PD_SSD'),
  pdBalanced('PD_BALANCED'),
  pdExtreme('PD_EXTREME'),
  hyperdiskBalanced('HYPERDISK_BALANCED'),
  hyperdiskBalancedHighAvailability('HYPERDISK_BALANCED_HIGH_AVAILABILITY'),
  hyperdiskMl('HYPERDISK_ML');

  const WorkbenchInstanceBootDiskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.confidential_instance_config` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceConfidentialInstanceConfig {
  const WorkbenchInstanceConfidentialInstanceConfig({
    this.confidentialInstanceType,
  });

  final TfArg<String>? confidentialInstanceType;

  Map<String, Object?> encode() => {
    'confidential_instance_type': ?confidentialInstanceType?.toTfJson(),
  };
}

/// Typed helper for the `gce_setup.container_image` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceContainerImage {
  const WorkbenchInstanceContainerImage({required this.repository, this.tag});

  final TfArg<String> repository;

  final TfArg<String>? tag;

  Map<String, Object?> encode() => {
    'repository': repository.toTfJson(),
    'tag': ?tag?.toTfJson(),
  };
}

/// Typed helper for the `gce_setup.data_disks` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceDataDisks {
  const WorkbenchInstanceDataDisks({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
    this.resourcePolicies,
  });

  final TfArg<WorkbenchInstanceDiskEncryption>? diskEncryption;

  final TfArg<String>? diskSizeGb;

  final TfArg<WorkbenchInstanceDataDisksDiskType>? diskType;

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  final TfArg<List<String>>? resourcePolicies;

  Map<String, Object?> encode() => {
    'disk_encryption': ?diskEncryption?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
    'resource_policies': ?resourcePolicies?.toTfJson(),
  };
}

/// `disk_type` — derived from the provider schema description.
enum WorkbenchInstanceDataDisksDiskType implements TerraformEnum {
  pdStandard('PD_STANDARD'),
  pdSsd('PD_SSD'),
  pdBalanced('PD_BALANCED'),
  pdExtreme('PD_EXTREME'),
  hyperdiskBalanced('HYPERDISK_BALANCED'),
  hyperdiskExtreme('HYPERDISK_EXTREME'),
  hyperdiskThroughput('HYPERDISK_THROUGHPUT'),
  hyperdiskBalancedHighAvailability('HYPERDISK_BALANCED_HIGH_AVAILABILITY'),
  hyperdiskMl('HYPERDISK_ML');

  const WorkbenchInstanceDataDisksDiskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.network_interfaces` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceNetworkInterfaces {
  const WorkbenchInstanceNetworkInterfaces({
    this.network,
    this.nicType,
    this.subnet,
    this.accessConfigs,
  });

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<WorkbenchInstanceNicType>? nicType;

  final RefTo<GoogleComputeSubnetwork>? subnet;

  final List<WorkbenchInstanceAccessConfigs>? accessConfigs;

  Map<String, Object?> encode() => {
    'network': ?network?.encodeAs('id').toTfJson(),
    'nic_type': ?nicType?.toTfJson(),
    'subnet': ?subnet?.encodeAs('id').toTfJson(),
    if (accessConfigs != null)
      'access_configs': [for (final e in accessConfigs!) e.encode()],
  };
}

/// `nic_type` — derived from the provider schema description.
enum WorkbenchInstanceNicType implements TerraformEnum {
  virtioNet('VIRTIO_NET'),
  gvnic('GVNIC');

  const WorkbenchInstanceNicType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.network_interfaces.access_configs` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceAccessConfigs {
  const WorkbenchInstanceAccessConfigs({required this.externalIp});

  final TfArg<String> externalIp;

  Map<String, Object?> encode() => {'external_ip': externalIp.toTfJson()};
}

/// Typed helper for the `gce_setup.reservation_affinity` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceReservationAffinity {
  const WorkbenchInstanceReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  final TfArg<WorkbenchInstanceConsumeReservationType>? consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'consume_reservation_type': ?consumeReservationType?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `consume_reservation_type` — derived from the provider schema description.
enum WorkbenchInstanceConsumeReservationType implements TerraformEnum {
  reservationNone('RESERVATION_NONE'),
  reservationAny('RESERVATION_ANY'),
  reservationSpecific('RESERVATION_SPECIFIC');

  const WorkbenchInstanceConsumeReservationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gce_setup.service_accounts` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceServiceAccounts {
  const WorkbenchInstanceServiceAccounts({this.email});

  final RefTo<GoogleServiceAccount>? email;

  Map<String, Object?> encode() => {
    'email': ?email?.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `gce_setup.shielded_instance_config` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceShieldedInstanceConfig {
  const WorkbenchInstanceShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  final TfArg<bool>? enableIntegrityMonitoring;

  final TfArg<bool>? enableSecureBoot;

  final TfArg<bool>? enableVtpm;

  Map<String, Object?> encode() => {
    'enable_integrity_monitoring': ?enableIntegrityMonitoring?.toTfJson(),
    'enable_secure_boot': ?enableSecureBoot?.toTfJson(),
    'enable_vtpm': ?enableVtpm?.toTfJson(),
  };
}

/// Typed helper for the `gce_setup.vm_image` block of
/// `google_workbench_instance` (derived from provider schema).
@immutable
final class WorkbenchInstanceVmImage {
  const WorkbenchInstanceVmImage({this.family, this.name, this.project});

  final TfArg<String>? family;

  final TfArg<String>? name;

  final TfArg<String>? project;

  Map<String, Object?> encode() => {
    'family': ?family?.toTfJson(),
    'name': ?name?.toTfJson(),
    'project': ?project?.toTfJson(),
  };
}

/// Factory wrapper for `google_workbench_instance`.
///
/// A Workbench instance.
///
/// Vertex AI Workbench **instance** — the user-managed notebook VM API
/// that replaces `google_notebooks_instance` (removed in provider 8.0).
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
///     image: .vmImage(
///       .new(
///         project: TfArg.literal('cloud-notebooks-managed'),
///         family: TfArg.literal('workbench-instances'),
///       ),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (gceSetup != null) 'gce_setup': TfArg.literal(gceSetup.encode()),
           'instance_owners': ?instanceOwners,
           'disable_proxy_access': ?disableProxyAccess,
           'enable_third_party_identity': ?enableThirdPartyIdentity,
           'enable_managed_euc': ?enableManagedEuc,
           'labels': ?labels,
           'desired_state': ?desiredState,
           'instance_id': ?instanceId,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleWorkbenchInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkbenchInstance>`.
  RefTo<GoogleWorkbenchInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `desired_state` attribute.
  TfRef<String> get desiredState =>
      TfRef.attribute<String>(this, 'desired_state');

  /// Reference to `disable_proxy_access` attribute.
  TfRef<bool> get disableProxyAccess =>
      TfRef.attribute<bool>(this, 'disable_proxy_access');

  /// Reference to `enable_deletion_protection` attribute.
  TfRef<bool> get enableDeletionProtection =>
      TfRef.attribute<bool>(this, 'enable_deletion_protection');

  /// Reference to `enable_managed_euc` attribute.
  TfRef<bool> get enableManagedEuc =>
      TfRef.attribute<bool>(this, 'enable_managed_euc');

  /// Reference to `enable_third_party_identity` attribute.
  TfRef<bool> get enableThirdPartyIdentity =>
      TfRef.attribute<bool>(this, 'enable_third_party_identity');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `instance_owners` attribute.
  TfRef<List<String>> get instanceOwners =>
      TfRef.attribute<List<String>>(this, 'instance_owners');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
