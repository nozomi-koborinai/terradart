// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_linux_virtual_machine`.
const Set<String> _azurermLinuxVirtualMachineSensitive = <String>{
  'admin_password',
  'custom_data',
};

/// Linux Virtual Machine Disk Controller enum for `disk_controller_type`.
extension type const LinuxVirtualMachineDiskControllerType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxVirtualMachineDiskControllerType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxVirtualMachineDiskControllerType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxVirtualMachineDiskControllerType.arg(TfArg<String> arg)
    : this._(arg);

  static const nvme = LinuxVirtualMachineDiskControllerType._(
    TfArgLiteral('NVMe'),
  );
  static const scsi = LinuxVirtualMachineDiskControllerType._(
    TfArgLiteral('SCSI'),
  );

  static const List<LinuxVirtualMachineDiskControllerType> values = [
    nvme,
    scsi,
  ];
}

/// Linux Virtual Machine Eviction enum for `eviction_policy`.
extension type const LinuxVirtualMachineEvictionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  LinuxVirtualMachineEvictionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  LinuxVirtualMachineEvictionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxVirtualMachineEvictionPolicy.arg(TfArg<String> arg) : this._(arg);

  static const deallocate = LinuxVirtualMachineEvictionPolicy._(
    TfArgLiteral('Deallocate'),
  );
  static const delete = LinuxVirtualMachineEvictionPolicy._(
    TfArgLiteral('Delete'),
  );

  static const List<LinuxVirtualMachineEvictionPolicy> values = [
    deallocate,
    delete,
  ];
}

/// Linux Virtual Machine License enum for `license_type`.
extension type const LinuxVirtualMachineLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  LinuxVirtualMachineLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  LinuxVirtualMachineLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxVirtualMachineLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const rhelByos = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('RHEL_BYOS'),
  );
  static const rhelBase = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('RHEL_BASE'),
  );
  static const rhelEus = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('RHEL_EUS'),
  );
  static const rhelSapapps = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('RHEL_SAPAPPS'),
  );
  static const rhelSapha = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('RHEL_SAPHA'),
  );
  static const rhelBasesapapps = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('RHEL_BASESAPAPPS'),
  );
  static const rhelBasesapha = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('RHEL_BASESAPHA'),
  );
  static const slesByos = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('SLES_BYOS'),
  );
  static const slesSap = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('SLES_SAP'),
  );
  static const slesHpc = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('SLES_HPC'),
  );
  static const ubuntuPro = LinuxVirtualMachineLicenseType._(
    TfArgLiteral('UBUNTU_PRO'),
  );

  static const List<LinuxVirtualMachineLicenseType> values = [
    rhelByos,
    rhelBase,
    rhelEus,
    rhelSapapps,
    rhelSapha,
    rhelBasesapapps,
    rhelBasesapha,
    slesByos,
    slesSap,
    slesHpc,
    ubuntuPro,
  ];
}

/// Linux Virtual Machine Patch Assessment enum for `patch_assessment_mode`.
extension type const LinuxVirtualMachinePatchAssessmentMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxVirtualMachinePatchAssessmentMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxVirtualMachinePatchAssessmentMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxVirtualMachinePatchAssessmentMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automaticbyplatform = LinuxVirtualMachinePatchAssessmentMode._(
    TfArgLiteral('AutomaticByPlatform'),
  );
  static const imagedefault = LinuxVirtualMachinePatchAssessmentMode._(
    TfArgLiteral('ImageDefault'),
  );

  static const List<LinuxVirtualMachinePatchAssessmentMode> values = [
    automaticbyplatform,
    imagedefault,
  ];
}

/// Linux Virtual Machine Patch enum for `patch_mode`.
extension type const LinuxVirtualMachinePatchMode._(TfArg<String> _)
    implements TfArg<String> {
  LinuxVirtualMachinePatchMode.variable(String name)
    : this._(TfArg.variable(name));
  LinuxVirtualMachinePatchMode.expression(String template)
    : this._(TfArg.expression(template));
  const LinuxVirtualMachinePatchMode.arg(TfArg<String> arg) : this._(arg);

  static const automaticbyplatform = LinuxVirtualMachinePatchMode._(
    TfArgLiteral('AutomaticByPlatform'),
  );
  static const imagedefault = LinuxVirtualMachinePatchMode._(
    TfArgLiteral('ImageDefault'),
  );

  static const List<LinuxVirtualMachinePatchMode> values = [
    automaticbyplatform,
    imagedefault,
  ];
}

/// Exactly one of these input sets on `azurerm_linux_virtual_machine`. The provider rejects any other mix of them.
///
/// - `.image` sets `admin_username` and one of `source_image_id` or `source_image_reference`.
/// - `.osManagedDiskId` sets `os_managed_disk_id`.
///
/// Pick one with a dot shorthand: `.image(...)`.
sealed class LinuxVirtualMachineOsSource {
  const LinuxVirtualMachineOsSource();

  /// Sets `admin_username` and one of `source_image_id` or `source_image_reference`.
  const factory LinuxVirtualMachineOsSource.image({
    required TfArg<String> adminUsername,
    required LinuxVirtualMachineSourceImage sourceImage,
  }) = LinuxVirtualMachineOsSourceImage;

  /// Sets `os_managed_disk_id`.
  const factory LinuxVirtualMachineOsSource.osManagedDiskId(
    TfArg<String> osManagedDiskId,
  ) = LinuxVirtualMachineOsSourceOsManagedDiskId;

  /// The Terraform argument that identifies this choice.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LinuxVirtualMachineOsSource.image] choice: sets `admin_username` and one of `source_image_id` or `source_image_reference`.
final class LinuxVirtualMachineOsSourceImage
    extends LinuxVirtualMachineOsSource {
  const LinuxVirtualMachineOsSourceImage({
    required this.adminUsername,
    required this.sourceImage,
  });

  final TfArg<String> adminUsername;

  final LinuxVirtualMachineSourceImage sourceImage;

  @internal
  @override
  String get blockKey => 'admin_username';

  @internal
  @override
  Map<String, Object?> encode() => {
    'admin_username': adminUsername.toTfJson(),
    ...sourceImage.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'admin_username': adminUsername,
    ...sourceImage.argMap,
  };
}

/// The [LinuxVirtualMachineOsSource.osManagedDiskId] choice: sets `os_managed_disk_id`.
final class LinuxVirtualMachineOsSourceOsManagedDiskId
    extends LinuxVirtualMachineOsSource {
  const LinuxVirtualMachineOsSourceOsManagedDiskId(this.osManagedDiskId);

  final TfArg<String> osManagedDiskId;

  @internal
  @override
  String get blockKey => 'os_managed_disk_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'os_managed_disk_id': osManagedDiskId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'os_managed_disk_id': osManagedDiskId,
  };
}

/// Exactly one of `source_image_id`, `source_image_reference` on [LinuxVirtualMachineOsSource.image]: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceImageId(...)`.
sealed class LinuxVirtualMachineSourceImage {
  const LinuxVirtualMachineSourceImage();

  /// Sets `source_image_id`.
  const factory LinuxVirtualMachineSourceImage.sourceImageId(
    TfArg<String> sourceImageId,
  ) = LinuxVirtualMachineSourceImageId;

  /// Sets `source_image_reference`.
  const factory LinuxVirtualMachineSourceImage.sourceImageReference(
    LinuxVirtualMachineSourceImageReference sourceImageReference,
  ) = LinuxVirtualMachineSourceImageReferenceChoice;

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

/// The [LinuxVirtualMachineSourceImage.sourceImageId] choice: sets `source_image_id`.
final class LinuxVirtualMachineSourceImageId
    extends LinuxVirtualMachineSourceImage {
  const LinuxVirtualMachineSourceImageId(this.sourceImageId);

  final TfArg<String> sourceImageId;

  @internal
  @override
  String get blockKey => 'source_image_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_image_id': sourceImageId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'source_image_id': sourceImageId};
}

/// The [LinuxVirtualMachineSourceImage.sourceImageReference] choice: sets `source_image_reference`.
final class LinuxVirtualMachineSourceImageReferenceChoice
    extends LinuxVirtualMachineSourceImage {
  const LinuxVirtualMachineSourceImageReferenceChoice(
    this.sourceImageReference,
  );

  final LinuxVirtualMachineSourceImageReference sourceImageReference;

  @internal
  @override
  String get blockKey => 'source_image_reference';

  @internal
  @override
  Map<String, Object?> encode() => {
    'source_image_reference': sourceImageReference.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'source_image_reference': TfArg.literal(sourceImageReference.encode()),
  };
}

/// At most one of `dedicated_host_group_id`, `dedicated_host_id` on `azurerm_linux_virtual_machine`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dedicatedHostGroupId(...)`.
sealed class LinuxVirtualMachineDedicatedHost {
  const LinuxVirtualMachineDedicatedHost();

  /// Sets `dedicated_host_group_id`.
  const factory LinuxVirtualMachineDedicatedHost.dedicatedHostGroupId(
    TfArg<String> dedicatedHostGroupId,
  ) = LinuxVirtualMachineDedicatedHostGroupId;

  /// Sets `dedicated_host_id`.
  const factory LinuxVirtualMachineDedicatedHost.dedicatedHostId(
    TfArg<String> dedicatedHostId,
  ) = LinuxVirtualMachineDedicatedHostId;

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

/// The [LinuxVirtualMachineDedicatedHost.dedicatedHostGroupId] choice: sets `dedicated_host_group_id`.
final class LinuxVirtualMachineDedicatedHostGroupId
    extends LinuxVirtualMachineDedicatedHost {
  const LinuxVirtualMachineDedicatedHostGroupId(this.dedicatedHostGroupId);

  final TfArg<String> dedicatedHostGroupId;

  @internal
  @override
  String get blockKey => 'dedicated_host_group_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'dedicated_host_group_id': dedicatedHostGroupId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dedicated_host_group_id': dedicatedHostGroupId,
  };
}

/// The [LinuxVirtualMachineDedicatedHost.dedicatedHostId] choice: sets `dedicated_host_id`.
final class LinuxVirtualMachineDedicatedHostId
    extends LinuxVirtualMachineDedicatedHost {
  const LinuxVirtualMachineDedicatedHostId(this.dedicatedHostId);

  final TfArg<String> dedicatedHostId;

  @internal
  @override
  String get blockKey => 'dedicated_host_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'dedicated_host_id': dedicatedHostId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dedicated_host_id': dedicatedHostId,
  };
}

/// Typed helper for the `additional_capabilities` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineAdditionalCapabilities {
  const LinuxVirtualMachineAdditionalCapabilities({
    this.hibernationEnabled,
    this.ultraSsdEnabled,
  });

  final TfArg<bool>? hibernationEnabled;

  final TfArg<bool>? ultraSsdEnabled;

  @internal
  Map<String, Object?> encode() => {
    'hibernation_enabled': ?hibernationEnabled?.toTfJson(),
    'ultra_ssd_enabled': ?ultraSsdEnabled?.toTfJson(),
  };
}

/// Typed helper for the `admin_ssh_key` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineAdminSshKey {
  const LinuxVirtualMachineAdminSshKey({
    required this.publicKey,
    required this.username,
  });

  final TfArg<String> publicKey;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'public_key': publicKey.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `boot_diagnostics` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineBootDiagnostics {
  const LinuxVirtualMachineBootDiagnostics({this.storageAccountUri});

  final TfArg<String>? storageAccountUri;

  @internal
  Map<String, Object?> encode() => {
    'storage_account_uri': ?storageAccountUri?.toTfJson(),
  };
}

/// Typed helper for the `gallery_application` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineGalleryApplication {
  const LinuxVirtualMachineGalleryApplication({
    this.automaticUpgradeEnabled,
    this.configurationBlobUri,
    this.order,
    this.tag,
    this.treatFailureAsDeploymentFailureEnabled,
    required this.versionId,
  });

  final TfArg<bool>? automaticUpgradeEnabled;

  final TfArg<String>? configurationBlobUri;

  final TfArg<num>? order;

  final TfArg<String>? tag;

  final TfArg<bool>? treatFailureAsDeploymentFailureEnabled;

  final TfArg<String> versionId;

  @internal
  Map<String, Object?> encode() => {
    'automatic_upgrade_enabled': ?automaticUpgradeEnabled?.toTfJson(),
    'configuration_blob_uri': ?configurationBlobUri?.toTfJson(),
    'order': ?order?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'treat_failure_as_deployment_failure_enabled':
        ?treatFailureAsDeploymentFailureEnabled?.toTfJson(),
    'version_id': versionId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineIdentity {
  const LinuxVirtualMachineIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `os_disk` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineOsDisk {
  const LinuxVirtualMachineOsDisk({
    required this.caching,
    this.diskEncryptionSetId,
    this.diskSizeGb,
    this.name,
    this.secureVmDiskEncryptionSetId,
    this.securityEncryptionType,
    this.storageAccountType,
    this.writeAcceleratorEnabled,
    this.diffDiskSettings,
  });

  final TfArg<String> caching;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? name;

  final TfArg<String>? secureVmDiskEncryptionSetId;

  final TfArg<String>? securityEncryptionType;

  final TfArg<String>? storageAccountType;

  final TfArg<bool>? writeAcceleratorEnabled;

  final LinuxVirtualMachineDiffDiskSettings? diffDiskSettings;

  @internal
  Map<String, Object?> encode() => {
    'caching': caching.toTfJson(),
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'name': ?name?.toTfJson(),
    'secure_vm_disk_encryption_set_id': ?secureVmDiskEncryptionSetId
        ?.toTfJson(),
    'security_encryption_type': ?securityEncryptionType?.toTfJson(),
    'storage_account_type': ?storageAccountType?.toTfJson(),
    'write_accelerator_enabled': ?writeAcceleratorEnabled?.toTfJson(),
    'diff_disk_settings': ?diffDiskSettings?.encode(),
  };
}

/// Typed helper for the `os_disk.diff_disk_settings` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineDiffDiskSettings {
  const LinuxVirtualMachineDiffDiskSettings({
    required this.option,
    this.placement,
  });

  final TfArg<String> option;

  final TfArg<String>? placement;

  @internal
  Map<String, Object?> encode() => {
    'option': option.toTfJson(),
    'placement': ?placement?.toTfJson(),
  };
}

/// Typed helper for the `os_image_notification` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineOsImageNotification {
  const LinuxVirtualMachineOsImageNotification({this.timeout});

  final TfArg<String>? timeout;

  @internal
  Map<String, Object?> encode() => {'timeout': ?timeout?.toTfJson()};
}

/// Typed helper for the `plan` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachinePlan {
  const LinuxVirtualMachinePlan({
    required this.name,
    required this.product,
    required this.publisher,
  });

  final TfArg<String> name;

  final TfArg<String> product;

  final TfArg<String> publisher;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'product': product.toTfJson(),
    'publisher': publisher.toTfJson(),
  };
}

/// Typed helper for the `secret` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineSecret {
  const LinuxVirtualMachineSecret({
    required this.keyVaultId,
    required this.certificate,
  });

  final TfArg<String> keyVaultId;

  final List<LinuxVirtualMachineCertificate> certificate;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_id': keyVaultId.toTfJson(),
    'certificate': [for (final e in certificate) e.encode()],
  };
}

/// Typed helper for the `secret.certificate` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineCertificate {
  const LinuxVirtualMachineCertificate({required this.url});

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Typed helper for the `source_image_reference` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineSourceImageReference {
  const LinuxVirtualMachineSourceImageReference({
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  final TfArg<String> offer;

  final TfArg<String> publisher;

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

/// Typed helper for the `termination_notification` block of
/// `azurerm_linux_virtual_machine` (derived from provider schema).
@immutable
final class LinuxVirtualMachineTerminationNotification {
  const LinuxVirtualMachineTerminationNotification({
    required this.enabled,
    this.timeout,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? timeout;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_linux_virtual_machine`.
final class AzurermLinuxVirtualMachine extends Resource {
  static const String tfType = 'azurerm_linux_virtual_machine';

  AzurermLinuxVirtualMachine(
    super.localName, {
    Sensitive<String>? adminPassword,
    required LinuxVirtualMachineOsSource osSource,
    TfArg<bool>? allowExtensionOperations,
    TfArg<String>? availabilitySetId,
    TfArg<bool>? bypassPlatformSafetyChecksOnUserScheduleEnabled,
    TfArg<String>? capacityReservationGroupId,
    TfArg<String>? computerName,
    Sensitive<String>? customData,
    LinuxVirtualMachineDedicatedHost? dedicatedHost,
    TfArg<bool>? disablePasswordAuthentication,
    LinuxVirtualMachineDiskControllerType? diskControllerType,
    TfArg<String>? edgeZone,
    TfArg<bool>? encryptionAtHostEnabled,
    LinuxVirtualMachineEvictionPolicy? evictionPolicy,
    TfArg<String>? extensionsTimeBudget,
    LinuxVirtualMachineLicenseType? licenseType,
    required TfArg<String> location,
    TfArg<num>? maxBidPrice,
    required TfArg<String> name,
    required TfArg<List<String>> networkInterfaceIds,
    LinuxVirtualMachinePatchAssessmentMode? patchAssessmentMode,
    LinuxVirtualMachinePatchMode? patchMode,
    TfArg<num>? platformFaultDomain,
    TfArg<String>? priority,
    TfArg<bool>? provisionVmAgent,
    TfArg<String>? proximityPlacementGroupId,
    TfArg<String>? rebootSetting,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? secureBootEnabled,
    required TfArg<String> size,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userData,
    TfArg<String>? virtualMachineScaleSetId,
    TfArg<bool>? vtpmEnabled,
    TfArg<String>? zone,
    LinuxVirtualMachineAdditionalCapabilities? additionalCapabilities,
    List<LinuxVirtualMachineAdminSshKey>? adminSshKey,
    LinuxVirtualMachineBootDiagnostics? bootDiagnostics,
    List<LinuxVirtualMachineGalleryApplication>? galleryApplication,
    LinuxVirtualMachineIdentity? identity,
    required LinuxVirtualMachineOsDisk osDisk,
    LinuxVirtualMachineOsImageNotification? osImageNotification,
    LinuxVirtualMachinePlan? plan,
    List<LinuxVirtualMachineSecret>? secret,
    LinuxVirtualMachineTerminationNotification? terminationNotification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_password': ?adminPassword,
           ...osSource.argMap,
           'allow_extension_operations': ?allowExtensionOperations,
           'availability_set_id': ?availabilitySetId,
           'bypass_platform_safety_checks_on_user_schedule_enabled':
               ?bypassPlatformSafetyChecksOnUserScheduleEnabled,
           'capacity_reservation_group_id': ?capacityReservationGroupId,
           'computer_name': ?computerName,
           'custom_data': ?customData,
           ...?dedicatedHost?.argMap,
           'disable_password_authentication': ?disablePasswordAuthentication,
           'disk_controller_type': ?diskControllerType,
           'edge_zone': ?edgeZone,
           'encryption_at_host_enabled': ?encryptionAtHostEnabled,
           'eviction_policy': ?evictionPolicy,
           'extensions_time_budget': ?extensionsTimeBudget,
           'license_type': ?licenseType,
           'location': location,
           'max_bid_price': ?maxBidPrice,
           'name': name,
           'network_interface_ids': networkInterfaceIds,
           'patch_assessment_mode': ?patchAssessmentMode,
           'patch_mode': ?patchMode,
           'platform_fault_domain': ?platformFaultDomain,
           'priority': ?priority,
           'provision_vm_agent': ?provisionVmAgent,
           'proximity_placement_group_id': ?proximityPlacementGroupId,
           'reboot_setting': ?rebootSetting,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'secure_boot_enabled': ?secureBootEnabled,
           'size': size,
           'tags': ?tags,
           'user_data': ?userData,
           'virtual_machine_scale_set_id': ?virtualMachineScaleSetId,
           'vtpm_enabled': ?vtpmEnabled,
           'zone': ?zone,
           if (additionalCapabilities != null)
             'additional_capabilities': TfArg.literal(
               additionalCapabilities.encode(),
             ),
           if (adminSshKey != null)
             'admin_ssh_key': TfArg.literal([
               for (final e in adminSshKey) e.encode(),
             ]),
           if (bootDiagnostics != null)
             'boot_diagnostics': TfArg.literal(bootDiagnostics.encode()),
           if (galleryApplication != null)
             'gallery_application': TfArg.literal([
               for (final e in galleryApplication) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'os_disk': TfArg.literal(osDisk.encode()),
           if (osImageNotification != null)
             'os_image_notification': TfArg.literal(
               osImageNotification.encode(),
             ),
           if (plan != null) 'plan': TfArg.literal(plan.encode()),
           if (secret != null)
             'secret': TfArg.literal([for (final e in secret) e.encode()]),
           if (terminationNotification != null)
             'termination_notification': TfArg.literal(
               terminationNotification.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLinuxVirtualMachineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLinuxVirtualMachine>`.
  RefTo<AzurermLinuxVirtualMachine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `private_ip_addresses` attribute.
  TfRef<List<String>> get privateIpAddresses =>
      TfRef.attribute<List<String>>(this, 'private_ip_addresses');

  /// Reference to `public_ip_address` attribute.
  TfRef<String> get publicIpAddress =>
      TfRef.attribute<String>(this, 'public_ip_address');

  /// Reference to `public_ip_addresses` attribute.
  TfRef<List<String>> get publicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'public_ip_addresses');

  /// Reference to `virtual_machine_id` attribute.
  TfRef<String> get virtualMachineId =>
      TfRef.attribute<String>(this, 'virtual_machine_id');

  /// Reference to `vm_agent_platform_updates_enabled` attribute.
  TfRef<bool> get vmAgentPlatformUpdatesEnabled =>
      TfRef.attribute<bool>(this, 'vm_agent_platform_updates_enabled');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `admin_username` attribute.
  TfRef<String> get adminUsername =>
      TfRef.attribute<String>(this, 'admin_username');

  /// Reference to `allow_extension_operations` attribute.
  TfRef<bool> get allowExtensionOperations =>
      TfRef.attribute<bool>(this, 'allow_extension_operations');

  /// Reference to `availability_set_id` attribute.
  TfRef<String> get availabilitySetId =>
      TfRef.attribute<String>(this, 'availability_set_id');

  /// Reference to `bypass_platform_safety_checks_on_user_schedule_enabled` attribute.
  TfRef<bool> get bypassPlatformSafetyChecksOnUserScheduleEnabled =>
      TfRef.attribute<bool>(
        this,
        'bypass_platform_safety_checks_on_user_schedule_enabled',
      );

  /// Reference to `capacity_reservation_group_id` attribute.
  TfRef<String> get capacityReservationGroupId =>
      TfRef.attribute<String>(this, 'capacity_reservation_group_id');

  /// Reference to `computer_name` attribute.
  TfRef<String> get computerName =>
      TfRef.attribute<String>(this, 'computer_name');

  /// Reference to `custom_data` attribute.
  TfRef<String> get customData => TfRef.attribute<String>(this, 'custom_data');

  /// Reference to `dedicated_host_group_id` attribute.
  TfRef<String> get dedicatedHostGroupId =>
      TfRef.attribute<String>(this, 'dedicated_host_group_id');

  /// Reference to `dedicated_host_id` attribute.
  TfRef<String> get dedicatedHostId =>
      TfRef.attribute<String>(this, 'dedicated_host_id');

  /// Reference to `disable_password_authentication` attribute.
  TfRef<bool> get disablePasswordAuthentication =>
      TfRef.attribute<bool>(this, 'disable_password_authentication');

  /// Reference to `disk_controller_type` attribute.
  TfRef<String> get diskControllerType =>
      TfRef.attribute<String>(this, 'disk_controller_type');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `encryption_at_host_enabled` attribute.
  TfRef<bool> get encryptionAtHostEnabled =>
      TfRef.attribute<bool>(this, 'encryption_at_host_enabled');

  /// Reference to `eviction_policy` attribute.
  TfRef<String> get evictionPolicy =>
      TfRef.attribute<String>(this, 'eviction_policy');

  /// Reference to `extensions_time_budget` attribute.
  TfRef<String> get extensionsTimeBudget =>
      TfRef.attribute<String>(this, 'extensions_time_budget');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_bid_price` attribute.
  TfRef<num> get maxBidPrice => TfRef.attribute<num>(this, 'max_bid_price');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `os_managed_disk_id` attribute.
  TfRef<String> get osManagedDiskId =>
      TfRef.attribute<String>(this, 'os_managed_disk_id');

  /// Reference to `patch_assessment_mode` attribute.
  TfRef<String> get patchAssessmentMode =>
      TfRef.attribute<String>(this, 'patch_assessment_mode');

  /// Reference to `patch_mode` attribute.
  TfRef<String> get patchMode => TfRef.attribute<String>(this, 'patch_mode');

  /// Reference to `platform_fault_domain` attribute.
  TfRef<num> get platformFaultDomain =>
      TfRef.attribute<num>(this, 'platform_fault_domain');

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `provision_vm_agent` attribute.
  TfRef<bool> get provisionVmAgent =>
      TfRef.attribute<bool>(this, 'provision_vm_agent');

  /// Reference to `proximity_placement_group_id` attribute.
  TfRef<String> get proximityPlacementGroupId =>
      TfRef.attribute<String>(this, 'proximity_placement_group_id');

  /// Reference to `reboot_setting` attribute.
  TfRef<String> get rebootSetting =>
      TfRef.attribute<String>(this, 'reboot_setting');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `secure_boot_enabled` attribute.
  TfRef<bool> get secureBootEnabled =>
      TfRef.attribute<bool>(this, 'secure_boot_enabled');

  /// Reference to `size` attribute.
  TfRef<String> get size => TfRef.attribute<String>(this, 'size');

  /// Reference to `source_image_id` attribute.
  TfRef<String> get sourceImageId =>
      TfRef.attribute<String>(this, 'source_image_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_data` attribute.
  TfRef<String> get userData => TfRef.attribute<String>(this, 'user_data');

  /// Reference to `virtual_machine_scale_set_id` attribute.
  TfRef<String> get virtualMachineScaleSetId =>
      TfRef.attribute<String>(this, 'virtual_machine_scale_set_id');

  /// Reference to `vtpm_enabled` attribute.
  TfRef<bool> get vtpmEnabled => TfRef.attribute<bool>(this, 'vtpm_enabled');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
