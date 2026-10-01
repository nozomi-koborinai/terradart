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

  final WorkbenchInstanceType? type;

  Map<String, Object?> encode() => {
    'core_count': ?coreCount?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WorkbenchInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  WorkbenchInstanceType.variable(String name) : this._(TfArg.variable(name));
  WorkbenchInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkbenchInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const nvidiaTeslaP100 = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_TESLA_P100'),
  );
  static const nvidiaTeslaV100 = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_TESLA_V100'),
  );
  static const nvidiaTeslaP4 = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_TESLA_P4'),
  );
  static const nvidiaTeslaT4 = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_TESLA_T4'),
  );
  static const nvidiaTeslaA100 = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_TESLA_A100'),
  );
  static const nvidiaA10080gb = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_A100_80GB'),
  );
  static const nvidiaL4 = WorkbenchInstanceType._(TfArgLiteral('NVIDIA_L4'));
  static const nvidiaH10080gb = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_H100_80GB'),
  );
  static const nvidiaH100Mega80gb = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_H100_MEGA_80GB'),
  );
  static const nvidiaH200141gb = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_H200_141GB'),
  );
  static const nvidiaB200 = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_B200'),
  );
  static const nvidiaRtx6000 = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_RTX6000'),
  );
  static const nvidiaTeslaT4Vws = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_TESLA_T4_VWS'),
  );
  static const nvidiaTeslaP100Vws = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_TESLA_P100_VWS'),
  );
  static const nvidiaTeslaP4Vws = WorkbenchInstanceType._(
    TfArgLiteral('NVIDIA_TESLA_P4_VWS'),
  );

  static const List<WorkbenchInstanceType> values = [
    nvidiaTeslaP100,
    nvidiaTeslaV100,
    nvidiaTeslaP4,
    nvidiaTeslaT4,
    nvidiaTeslaA100,
    nvidiaA10080gb,
    nvidiaL4,
    nvidiaH10080gb,
    nvidiaH100Mega80gb,
    nvidiaH200141gb,
    nvidiaB200,
    nvidiaRtx6000,
    nvidiaTeslaT4Vws,
    nvidiaTeslaP100Vws,
    nvidiaTeslaP4Vws,
  ];
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

  final WorkbenchInstanceDiskEncryption? diskEncryption;

  final TfArg<String>? diskSizeGb;

  final WorkbenchInstanceBootDiskType? diskType;

  final RefTo<GoogleKmsCryptoKey>? kmsKey;

  Map<String, Object?> encode() => {
    'disk_encryption': ?diskEncryption?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('id').toTfJson(),
  };
}

/// `disk_encryption` — derived from the provider schema description.
extension type const WorkbenchInstanceDiskEncryption._(TfArg<String> _)
    implements TfArg<String> {
  WorkbenchInstanceDiskEncryption.variable(String name)
    : this._(TfArg.variable(name));
  WorkbenchInstanceDiskEncryption.expression(String template)
    : this._(TfArg.expression(template));
  const WorkbenchInstanceDiskEncryption.arg(TfArg<String> arg) : this._(arg);

  static const gmek = WorkbenchInstanceDiskEncryption._(TfArgLiteral('GMEK'));
  static const cmek = WorkbenchInstanceDiskEncryption._(TfArgLiteral('CMEK'));

  static const List<WorkbenchInstanceDiskEncryption> values = [gmek, cmek];
}

/// `disk_type` — derived from the provider schema description.
extension type const WorkbenchInstanceBootDiskType._(TfArg<String> _)
    implements TfArg<String> {
  WorkbenchInstanceBootDiskType.variable(String name)
    : this._(TfArg.variable(name));
  WorkbenchInstanceBootDiskType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkbenchInstanceBootDiskType.arg(TfArg<String> arg) : this._(arg);

  static const pdStandard = WorkbenchInstanceBootDiskType._(
    TfArgLiteral('PD_STANDARD'),
  );
  static const pdSsd = WorkbenchInstanceBootDiskType._(TfArgLiteral('PD_SSD'));
  static const pdBalanced = WorkbenchInstanceBootDiskType._(
    TfArgLiteral('PD_BALANCED'),
  );
  static const pdExtreme = WorkbenchInstanceBootDiskType._(
    TfArgLiteral('PD_EXTREME'),
  );
  static const hyperdiskBalanced = WorkbenchInstanceBootDiskType._(
    TfArgLiteral('HYPERDISK_BALANCED'),
  );
  static const hyperdiskBalancedHighAvailability =
      WorkbenchInstanceBootDiskType._(
        TfArgLiteral('HYPERDISK_BALANCED_HIGH_AVAILABILITY'),
      );
  static const hyperdiskMl = WorkbenchInstanceBootDiskType._(
    TfArgLiteral('HYPERDISK_ML'),
  );

  static const List<WorkbenchInstanceBootDiskType> values = [
    pdStandard,
    pdSsd,
    pdBalanced,
    pdExtreme,
    hyperdiskBalanced,
    hyperdiskBalancedHighAvailability,
    hyperdiskMl,
  ];
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

  final WorkbenchInstanceDiskEncryption? diskEncryption;

  final TfArg<String>? diskSizeGb;

  final WorkbenchInstanceDataDisksDiskType? diskType;

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
extension type const WorkbenchInstanceDataDisksDiskType._(TfArg<String> _)
    implements TfArg<String> {
  WorkbenchInstanceDataDisksDiskType.variable(String name)
    : this._(TfArg.variable(name));
  WorkbenchInstanceDataDisksDiskType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkbenchInstanceDataDisksDiskType.arg(TfArg<String> arg) : this._(arg);

  static const pdStandard = WorkbenchInstanceDataDisksDiskType._(
    TfArgLiteral('PD_STANDARD'),
  );
  static const pdSsd = WorkbenchInstanceDataDisksDiskType._(
    TfArgLiteral('PD_SSD'),
  );
  static const pdBalanced = WorkbenchInstanceDataDisksDiskType._(
    TfArgLiteral('PD_BALANCED'),
  );
  static const pdExtreme = WorkbenchInstanceDataDisksDiskType._(
    TfArgLiteral('PD_EXTREME'),
  );
  static const hyperdiskBalanced = WorkbenchInstanceDataDisksDiskType._(
    TfArgLiteral('HYPERDISK_BALANCED'),
  );
  static const hyperdiskExtreme = WorkbenchInstanceDataDisksDiskType._(
    TfArgLiteral('HYPERDISK_EXTREME'),
  );
  static const hyperdiskThroughput = WorkbenchInstanceDataDisksDiskType._(
    TfArgLiteral('HYPERDISK_THROUGHPUT'),
  );
  static const hyperdiskBalancedHighAvailability =
      WorkbenchInstanceDataDisksDiskType._(
        TfArgLiteral('HYPERDISK_BALANCED_HIGH_AVAILABILITY'),
      );
  static const hyperdiskMl = WorkbenchInstanceDataDisksDiskType._(
    TfArgLiteral('HYPERDISK_ML'),
  );

  static const List<WorkbenchInstanceDataDisksDiskType> values = [
    pdStandard,
    pdSsd,
    pdBalanced,
    pdExtreme,
    hyperdiskBalanced,
    hyperdiskExtreme,
    hyperdiskThroughput,
    hyperdiskBalancedHighAvailability,
    hyperdiskMl,
  ];
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

  final WorkbenchInstanceNicType? nicType;

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
extension type const WorkbenchInstanceNicType._(TfArg<String> _)
    implements TfArg<String> {
  WorkbenchInstanceNicType.variable(String name) : this._(TfArg.variable(name));
  WorkbenchInstanceNicType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkbenchInstanceNicType.arg(TfArg<String> arg) : this._(arg);

  static const virtioNet = WorkbenchInstanceNicType._(
    TfArgLiteral('VIRTIO_NET'),
  );
  static const gvnic = WorkbenchInstanceNicType._(TfArgLiteral('GVNIC'));

  static const List<WorkbenchInstanceNicType> values = [virtioNet, gvnic];
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

  final WorkbenchInstanceConsumeReservationType? consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'consume_reservation_type': ?consumeReservationType?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `consume_reservation_type` — derived from the provider schema description.
extension type const WorkbenchInstanceConsumeReservationType._(TfArg<String> _)
    implements TfArg<String> {
  WorkbenchInstanceConsumeReservationType.variable(String name)
    : this._(TfArg.variable(name));
  WorkbenchInstanceConsumeReservationType.expression(String template)
    : this._(TfArg.expression(template));
  const WorkbenchInstanceConsumeReservationType.arg(TfArg<String> arg)
    : this._(arg);

  static const reservationNone = WorkbenchInstanceConsumeReservationType._(
    TfArgLiteral('RESERVATION_NONE'),
  );
  static const reservationAny = WorkbenchInstanceConsumeReservationType._(
    TfArgLiteral('RESERVATION_ANY'),
  );
  static const reservationSpecific = WorkbenchInstanceConsumeReservationType._(
    TfArgLiteral('RESERVATION_SPECIFIC'),
  );

  static const List<WorkbenchInstanceConsumeReservationType> values = [
    reservationNone,
    reservationAny,
    reservationSpecific,
  ];
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
///   'wb',
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

  GoogleWorkbenchInstance(
    super.localName, {
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
