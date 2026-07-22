// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_notebooks_instance`.
const Set<String> _googleNotebooksInstanceSensitive = <String>{};

/// Notebooks Instance Boot Disk enum for `boot_disk_type`.
enum NotebooksInstanceBootDiskType implements TerraformEnum {
  diskTypeUnspecified('DISK_TYPE_UNSPECIFIED'),
  pdStandard('PD_STANDARD'),
  pdSsd('PD_SSD'),
  pdBalanced('PD_BALANCED'),
  pdExtreme('PD_EXTREME');

  const NotebooksInstanceBootDiskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Notebooks Instance Data Disk enum for `data_disk_type`.
enum NotebooksInstanceDataDiskType implements TerraformEnum {
  diskTypeUnspecified('DISK_TYPE_UNSPECIFIED'),
  pdStandard('PD_STANDARD'),
  pdSsd('PD_SSD'),
  pdBalanced('PD_BALANCED'),
  pdExtreme('PD_EXTREME');

  const NotebooksInstanceDataDiskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Notebooks Instance Disk enum for `disk_encryption`.
enum NotebooksInstanceDiskEncryption implements TerraformEnum {
  diskEncryptionUnspecified('DISK_ENCRYPTION_UNSPECIFIED'),
  gmek('GMEK'),
  cmek('CMEK');

  const NotebooksInstanceDiskEncryption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Notebooks Instance Nic enum for `nic_type`.
enum NotebooksInstanceNicType implements TerraformEnum {
  unspecifiedNicType('UNSPECIFIED_NIC_TYPE'),
  virtioNet('VIRTIO_NET'),
  gvnic('GVNIC');

  const NotebooksInstanceNicType(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// NotebooksInstanceImage -- sealed (ContainerImage | VmImage)
// ===========================================================================

/// Exactly one image source for a [GoogleNotebooksInstance].
sealed class NotebooksInstanceImage {
  const NotebooksInstanceImage();

  /// Terraform nested-block key (`container_image` or `vm_image`).
  String get blockKey;

  /// Single-element list matching `nesting_mode: list, max_items: 1`.
  List<Map<String, Object?>> encode();
}

/// `container_image` — start the notebook from a container repository.
@immutable
final class NotebooksInstanceContainerImage extends NotebooksInstanceImage {
  const NotebooksInstanceContainerImage({required this.repository, this.tag});

  final TfArg<String> repository;
  final TfArg<String>? tag;

  @override
  String get blockKey => 'container_image';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'repository': repository.toTfJson(),
      if (tag != null) 'tag': tag!.toTfJson(),
    },
  ];
}

/// `vm_image` — start the notebook from a Compute Engine image.
@immutable
final class NotebooksInstanceVmImage extends NotebooksInstanceImage {
  const NotebooksInstanceVmImage({
    required this.project,
    this.imageName,
    this.imageFamily,
  });

  final TfArg<String> project;
  final TfArg<String>? imageName;
  final TfArg<String>? imageFamily;

  @override
  String get blockKey => 'vm_image';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'project': project.toTfJson(),
      if (imageName != null) 'image_name': imageName!.toTfJson(),
      if (imageFamily != null) 'image_family': imageFamily!.toTfJson(),
    },
  ];
}

/// Typed helper for the `accelerator_config` block of
/// `google_notebooks_instance` (derived from provider schema).
@immutable
final class NotebooksInstanceAcceleratorConfig {
  const NotebooksInstanceAcceleratorConfig({
    required this.coreCount,
    required this.type,
  });

  final TfArg<num> coreCount;

  final TfArg<NotebooksInstanceAcceleratorConfigType> type;

  Map<String, Object?> encode() => {
    'core_count': coreCount.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum NotebooksInstanceAcceleratorConfigType implements TerraformEnum {
  acceleratorTypeUnspecified('ACCELERATOR_TYPE_UNSPECIFIED'),
  nvidiaTeslaK80('NVIDIA_TESLA_K80'),
  nvidiaTeslaP100('NVIDIA_TESLA_P100'),
  nvidiaTeslaV100('NVIDIA_TESLA_V100'),
  nvidiaTeslaP4('NVIDIA_TESLA_P4'),
  nvidiaTeslaT4('NVIDIA_TESLA_T4'),
  nvidiaTeslaT4Vws('NVIDIA_TESLA_T4_VWS'),
  nvidiaTeslaP100Vws('NVIDIA_TESLA_P100_VWS'),
  nvidiaTeslaP4Vws('NVIDIA_TESLA_P4_VWS'),
  nvidiaTeslaA100('NVIDIA_TESLA_A100'),
  tpuV2('TPU_V2'),
  tpuV3('TPU_V3');

  const NotebooksInstanceAcceleratorConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `reservation_affinity` block of
/// `google_notebooks_instance` (derived from provider schema).
@immutable
final class NotebooksInstanceReservationAffinity {
  const NotebooksInstanceReservationAffinity({
    required this.consumeReservationType,
    this.key,
    this.values,
  });

  final TfArg<NotebooksInstanceReservationAffinityConsumeReservationType>
  consumeReservationType;

  final TfArg<String>? key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    'consume_reservation_type': consumeReservationType.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// `consume_reservation_type` — derived from the provider schema description.
enum NotebooksInstanceReservationAffinityConsumeReservationType
    implements TerraformEnum {
  noReservation('NO_RESERVATION'),
  anyReservation('ANY_RESERVATION'),
  specificReservation('SPECIFIC_RESERVATION');

  const NotebooksInstanceReservationAffinityConsumeReservationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `shielded_instance_config` block of
/// `google_notebooks_instance` (derived from provider schema).
@immutable
final class NotebooksInstanceShieldedInstanceConfig {
  const NotebooksInstanceShieldedInstanceConfig({
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

/// Factory wrapper for `google_notebooks_instance`.
///
/// A Cloud AI Platform Notebook instance.
///
/// ~> **Note:** Due to limitations of the Notebooks Instance API, many fields
/// in this resource do not properly detect drift. These fields will also not
/// appear in state once imported.
///
/// Vertex AI Workbench (Notebooks) **instance** — a user-managed notebook
/// VM.
///
/// **Cost:** Cloud Billing Catalog service `D73B-5EEA-8215` bills Workbench
/// **management fees + GCE usage** while the VM runs (us-central1 N1
/// management CPU SKU `6196-1C27-5E30` **$0.0063222/h** + N1 usage CPU
/// `9027-15FF-8BFE` **$0.0379332/h** + RAM/disk). Destroy stops charges.
/// Too expensive for apply-smoke — factories ship without a quickstart.
///
/// Pass exactly one [image] variant:
/// - [NotebooksInstanceContainerImage]
/// - [NotebooksInstanceVmImage]
///
/// Enable `notebooks.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleNotebooksInstance(
///   localName: 'nb',
///   name: TfArg.literal('terradart-nb'),
///   location: TfArg.literal('us-central1-a'),
///   machineType: TfArg.literal('n1-standard-1'),
///   image: NotebooksInstanceVmImage(
///     project: TfArg.literal('deeplearning-platform-release'),
///     imageFamily: TfArg.literal('common-cpu-notebooks'),
///   ),
/// );
/// ```
final class GoogleNotebooksInstance extends Resource {
  static const String tfType = 'google_notebooks_instance';

  GoogleNotebooksInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> machineType,
    required NotebooksInstanceImage image,
    NotebooksInstanceAcceleratorConfig? acceleratorConfig,
    NotebooksInstanceShieldedInstanceConfig? shieldedInstanceConfig,
    NotebooksInstanceReservationAffinity? reservationAffinity,
    TfArg<String>? serviceAccount,
    TfArg<bool>? noPublicIp,
    TfArg<bool>? noProxyAccess,
    TfArg<String>? network,
    TfArg<String>? subnet,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? metadata,
    TfArg<List<String>>? tags,
    TfArg<NotebooksInstanceBootDiskType>? bootDiskType,
    TfArg<num>? bootDiskSizeGb,
    TfArg<NotebooksInstanceDataDiskType>? dataDiskType,
    TfArg<num>? dataDiskSizeGb,
    TfArg<NotebooksInstanceDiskEncryption>? diskEncryption,
    TfArg<String>? kmsKey,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'machine_type': machineType,
           if (acceleratorConfig != null)
             'accelerator_config': TfArg.literal(acceleratorConfig.encode()),
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': TfArg.literal(
               shieldedInstanceConfig.encode(),
             ),
           if (reservationAffinity != null)
             'reservation_affinity': TfArg.literal(
               reservationAffinity.encode(),
             ),
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (noPublicIp != null) 'no_public_ip': noPublicIp,
           if (noProxyAccess != null) 'no_proxy_access': noProxyAccess,
           if (network != null) 'network': network,
           if (subnet != null) 'subnet': subnet,
           if (labels != null) 'labels': labels,
           if (metadata != null) 'metadata': metadata,
           if (tags != null) 'tags': tags,
           if (bootDiskType != null) 'boot_disk_type': bootDiskType,
           if (bootDiskSizeGb != null) 'boot_disk_size_gb': bootDiskSizeGb,
           if (dataDiskType != null) 'data_disk_type': dataDiskType,
           if (dataDiskSizeGb != null) 'data_disk_size_gb': dataDiskSizeGb,
           if (diskEncryption != null) 'disk_encryption': diskEncryption,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           image.blockKey: TfArg.literal(image.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNotebooksInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `proxy_uri` attribute.
  TfRef<String> get proxyUri => TfRef.attribute<String>(this, 'proxy_uri');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
