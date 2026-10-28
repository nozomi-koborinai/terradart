// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_windows_virtual_machine`.
const Set<String> _azurermWindowsVirtualMachineSensitive = <String>{
  'additional_unattend_content.content',
  'admin_password',
  'custom_data',
};

/// Windows Virtual Machine Disk Controller enum for `disk_controller_type`.
extension type const WindowsVirtualMachineDiskControllerType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineDiskControllerType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineDiskControllerType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineDiskControllerType.arg(TfArg<String> arg)
    : this._(arg);

  static const nvme = WindowsVirtualMachineDiskControllerType._(
    TfArgLiteral('NVMe'),
  );
  static const scsi = WindowsVirtualMachineDiskControllerType._(
    TfArgLiteral('SCSI'),
  );

  static const List<WindowsVirtualMachineDiskControllerType> values = [
    nvme,
    scsi,
  ];
}

/// Windows Virtual Machine Eviction enum for `eviction_policy`.
extension type const WindowsVirtualMachineEvictionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineEvictionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineEvictionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineEvictionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const deallocate = WindowsVirtualMachineEvictionPolicy._(
    TfArgLiteral('Deallocate'),
  );
  static const delete = WindowsVirtualMachineEvictionPolicy._(
    TfArgLiteral('Delete'),
  );

  static const List<WindowsVirtualMachineEvictionPolicy> values = [
    deallocate,
    delete,
  ];
}

/// Windows Virtual Machine License enum for `license_type`.
extension type const WindowsVirtualMachineLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const none = WindowsVirtualMachineLicenseType._(TfArgLiteral('None'));
  static const windowsClient = WindowsVirtualMachineLicenseType._(
    TfArgLiteral('Windows_Client'),
  );
  static const windowsServer = WindowsVirtualMachineLicenseType._(
    TfArgLiteral('Windows_Server'),
  );

  static const List<WindowsVirtualMachineLicenseType> values = [
    none,
    windowsClient,
    windowsServer,
  ];
}

/// Windows Virtual Machine Patch Assessment enum for `patch_assessment_mode`.
extension type const WindowsVirtualMachinePatchAssessmentMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachinePatchAssessmentMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachinePatchAssessmentMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachinePatchAssessmentMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automaticbyplatform = WindowsVirtualMachinePatchAssessmentMode._(
    TfArgLiteral('AutomaticByPlatform'),
  );
  static const imagedefault = WindowsVirtualMachinePatchAssessmentMode._(
    TfArgLiteral('ImageDefault'),
  );

  static const List<WindowsVirtualMachinePatchAssessmentMode> values = [
    automaticbyplatform,
    imagedefault,
  ];
}

/// Windows Virtual Machine Patch enum for `patch_mode`.
extension type const WindowsVirtualMachinePatchMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachinePatchMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachinePatchMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachinePatchMode.arg(TfArg<String> arg) : this._(arg);

  static const automaticbyos = WindowsVirtualMachinePatchMode._(
    TfArgLiteral('AutomaticByOS'),
  );
  static const automaticbyplatform = WindowsVirtualMachinePatchMode._(
    TfArgLiteral('AutomaticByPlatform'),
  );
  static const manual = WindowsVirtualMachinePatchMode._(
    TfArgLiteral('Manual'),
  );

  static const List<WindowsVirtualMachinePatchMode> values = [
    automaticbyos,
    automaticbyplatform,
    manual,
  ];
}

/// Exactly one of these input sets on `azurerm_windows_virtual_machine`. The provider rejects any other mix of them.
///
/// - `.image` sets `admin_username` and one of `source_image_id` or `source_image_reference`.
/// - `.osManagedDiskId` sets `os_managed_disk_id`.
///
/// Pick one with a dot shorthand: `.image(...)`.
sealed class WindowsVirtualMachineOsSource {
  const WindowsVirtualMachineOsSource();

  /// Sets `admin_username` and one of `source_image_id` or `source_image_reference`.
  const factory WindowsVirtualMachineOsSource.image({
    required TfArg<String> adminUsername,
    required WindowsVirtualMachineSourceImage sourceImage,
  }) = WindowsVirtualMachineOsSourceImage;

  /// Sets `os_managed_disk_id`.
  const factory WindowsVirtualMachineOsSource.osManagedDiskId(
    TfArg<String> osManagedDiskId,
  ) = WindowsVirtualMachineOsSourceOsManagedDiskId;

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

/// The [WindowsVirtualMachineOsSource.image] choice: sets `admin_username` and one of `source_image_id` or `source_image_reference`.
final class WindowsVirtualMachineOsSourceImage
    extends WindowsVirtualMachineOsSource {
  const WindowsVirtualMachineOsSourceImage({
    required this.adminUsername,
    required this.sourceImage,
  });

  final TfArg<String> adminUsername;

  final WindowsVirtualMachineSourceImage sourceImage;

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

/// The [WindowsVirtualMachineOsSource.osManagedDiskId] choice: sets `os_managed_disk_id`.
final class WindowsVirtualMachineOsSourceOsManagedDiskId
    extends WindowsVirtualMachineOsSource {
  const WindowsVirtualMachineOsSourceOsManagedDiskId(this.osManagedDiskId);

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

/// Exactly one of `source_image_id`, `source_image_reference` on [WindowsVirtualMachineOsSource.image]: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceImageId(...)`.
sealed class WindowsVirtualMachineSourceImage {
  const WindowsVirtualMachineSourceImage();

  /// Sets `source_image_id`.
  const factory WindowsVirtualMachineSourceImage.sourceImageId(
    TfArg<String> sourceImageId,
  ) = WindowsVirtualMachineSourceImageId;

  /// Sets `source_image_reference`.
  const factory WindowsVirtualMachineSourceImage.sourceImageReference(
    WindowsVirtualMachineSourceImageReference sourceImageReference,
  ) = WindowsVirtualMachineSourceImageReferenceChoice;

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

/// The [WindowsVirtualMachineSourceImage.sourceImageId] choice: sets `source_image_id`.
final class WindowsVirtualMachineSourceImageId
    extends WindowsVirtualMachineSourceImage {
  const WindowsVirtualMachineSourceImageId(this.sourceImageId);

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

/// The [WindowsVirtualMachineSourceImage.sourceImageReference] choice: sets `source_image_reference`.
final class WindowsVirtualMachineSourceImageReferenceChoice
    extends WindowsVirtualMachineSourceImage {
  const WindowsVirtualMachineSourceImageReferenceChoice(
    this.sourceImageReference,
  );

  final WindowsVirtualMachineSourceImageReference sourceImageReference;

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

/// At most one of `dedicated_host_group_id`, `dedicated_host_id` on `azurerm_windows_virtual_machine`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dedicatedHostGroupId(...)`.
sealed class WindowsVirtualMachineDedicatedHost {
  const WindowsVirtualMachineDedicatedHost();

  /// Sets `dedicated_host_group_id`.
  const factory WindowsVirtualMachineDedicatedHost.dedicatedHostGroupId(
    TfArg<String> dedicatedHostGroupId,
  ) = WindowsVirtualMachineDedicatedHostGroupId;

  /// Sets `dedicated_host_id`.
  const factory WindowsVirtualMachineDedicatedHost.dedicatedHostId(
    TfArg<String> dedicatedHostId,
  ) = WindowsVirtualMachineDedicatedHostId;

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

/// The [WindowsVirtualMachineDedicatedHost.dedicatedHostGroupId] choice: sets `dedicated_host_group_id`.
final class WindowsVirtualMachineDedicatedHostGroupId
    extends WindowsVirtualMachineDedicatedHost {
  const WindowsVirtualMachineDedicatedHostGroupId(this.dedicatedHostGroupId);

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

/// The [WindowsVirtualMachineDedicatedHost.dedicatedHostId] choice: sets `dedicated_host_id`.
final class WindowsVirtualMachineDedicatedHostId
    extends WindowsVirtualMachineDedicatedHost {
  const WindowsVirtualMachineDedicatedHostId(this.dedicatedHostId);

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
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineAdditionalCapabilities {
  const WindowsVirtualMachineAdditionalCapabilities({
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

/// Typed helper for the `additional_unattend_content` block of
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineAdditionalUnattendContent {
  const WindowsVirtualMachineAdditionalUnattendContent({
    required this.content,
    required this.setting,
  });

  final Sensitive<String> content;

  final TfArg<String> setting;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'setting': setting.toTfJson(),
  };
}

/// Typed helper for the `boot_diagnostics` block of
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineBootDiagnostics {
  const WindowsVirtualMachineBootDiagnostics({this.storageAccountUri});

  final TfArg<String>? storageAccountUri;

  @internal
  Map<String, Object?> encode() => {
    'storage_account_uri': ?storageAccountUri?.toTfJson(),
  };
}

/// Typed helper for the `gallery_application` block of
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineGalleryApplication {
  const WindowsVirtualMachineGalleryApplication({
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
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineIdentity {
  const WindowsVirtualMachineIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `os_disk` block of
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineOsDisk {
  const WindowsVirtualMachineOsDisk({
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

  final WindowsVirtualMachineDiffDiskSettings? diffDiskSettings;

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
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineDiffDiskSettings {
  const WindowsVirtualMachineDiffDiskSettings({
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
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineOsImageNotification {
  const WindowsVirtualMachineOsImageNotification({this.timeout});

  final TfArg<String>? timeout;

  @internal
  Map<String, Object?> encode() => {'timeout': ?timeout?.toTfJson()};
}

/// Typed helper for the `plan` block of
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachinePlan {
  const WindowsVirtualMachinePlan({
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
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineSecret {
  const WindowsVirtualMachineSecret({
    required this.keyVaultId,
    required this.certificate,
  });

  final TfArg<String> keyVaultId;

  final List<WindowsVirtualMachineCertificate> certificate;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_id': keyVaultId.toTfJson(),
    'certificate': [for (final e in certificate) e.encode()],
  };
}

/// Typed helper for the `secret.certificate` block of
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineCertificate {
  const WindowsVirtualMachineCertificate({
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

/// Typed helper for the `source_image_reference` block of
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineSourceImageReference {
  const WindowsVirtualMachineSourceImageReference({
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
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineTerminationNotification {
  const WindowsVirtualMachineTerminationNotification({
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

/// Typed helper for the `winrm_listener` block of
/// `azurerm_windows_virtual_machine` (derived from provider schema).
@immutable
final class WindowsVirtualMachineWinrmListener {
  const WindowsVirtualMachineWinrmListener({
    this.certificateUrl,
    required this.protocol,
  });

  final TfArg<String>? certificateUrl;

  final TfArg<String> protocol;

  @internal
  Map<String, Object?> encode() => {
    'certificate_url': ?certificateUrl?.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_windows_virtual_machine`.
final class AzurermWindowsVirtualMachine extends Resource {
  static const String tfType = 'azurerm_windows_virtual_machine';

  AzurermWindowsVirtualMachine(
    super.localName, {
    Sensitive<String>? adminPassword,
    required WindowsVirtualMachineOsSource osSource,
    TfArg<bool>? allowExtensionOperations,
    TfArg<bool>? automaticUpdatesEnabled,
    TfArg<String>? availabilitySetId,
    TfArg<bool>? bypassPlatformSafetyChecksOnUserScheduleEnabled,
    TfArg<String>? capacityReservationGroupId,
    TfArg<String>? computerName,
    Sensitive<String>? customData,
    WindowsVirtualMachineDedicatedHost? dedicatedHost,
    WindowsVirtualMachineDiskControllerType? diskControllerType,
    TfArg<String>? edgeZone,
    TfArg<bool>? encryptionAtHostEnabled,
    WindowsVirtualMachineEvictionPolicy? evictionPolicy,
    TfArg<String>? extensionsTimeBudget,
    TfArg<bool>? hotpatchingEnabled,
    WindowsVirtualMachineLicenseType? licenseType,
    required TfArg<String> location,
    TfArg<num>? maxBidPrice,
    required TfArg<String> name,
    required TfArg<List<String>> networkInterfaceIds,
    WindowsVirtualMachinePatchAssessmentMode? patchAssessmentMode,
    WindowsVirtualMachinePatchMode? patchMode,
    TfArg<num>? platformFaultDomain,
    TfArg<String>? priority,
    TfArg<bool>? provisionVmAgent,
    TfArg<String>? proximityPlacementGroupId,
    TfArg<String>? rebootSetting,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? secureBootEnabled,
    required TfArg<String> size,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timezone,
    TfArg<String>? userData,
    TfArg<String>? virtualMachineScaleSetId,
    TfArg<bool>? vtpmEnabled,
    TfArg<String>? zone,
    WindowsVirtualMachineAdditionalCapabilities? additionalCapabilities,
    List<WindowsVirtualMachineAdditionalUnattendContent>?
    additionalUnattendContent,
    WindowsVirtualMachineBootDiagnostics? bootDiagnostics,
    List<WindowsVirtualMachineGalleryApplication>? galleryApplication,
    WindowsVirtualMachineIdentity? identity,
    required WindowsVirtualMachineOsDisk osDisk,
    WindowsVirtualMachineOsImageNotification? osImageNotification,
    WindowsVirtualMachinePlan? plan,
    List<WindowsVirtualMachineSecret>? secret,
    WindowsVirtualMachineTerminationNotification? terminationNotification,
    List<WindowsVirtualMachineWinrmListener>? winrmListener,
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
           'automatic_updates_enabled': ?automaticUpdatesEnabled,
           'availability_set_id': ?availabilitySetId,
           'bypass_platform_safety_checks_on_user_schedule_enabled':
               ?bypassPlatformSafetyChecksOnUserScheduleEnabled,
           'capacity_reservation_group_id': ?capacityReservationGroupId,
           'computer_name': ?computerName,
           'custom_data': ?customData,
           ...?dedicatedHost?.argMap,
           'disk_controller_type': ?diskControllerType,
           'edge_zone': ?edgeZone,
           'encryption_at_host_enabled': ?encryptionAtHostEnabled,
           'eviction_policy': ?evictionPolicy,
           'extensions_time_budget': ?extensionsTimeBudget,
           'hotpatching_enabled': ?hotpatchingEnabled,
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
           'timezone': ?timezone,
           'user_data': ?userData,
           'virtual_machine_scale_set_id': ?virtualMachineScaleSetId,
           'vtpm_enabled': ?vtpmEnabled,
           'zone': ?zone,
           if (additionalCapabilities != null)
             'additional_capabilities': TfArg.literal(
               additionalCapabilities.encode(),
             ),
           if (additionalUnattendContent != null)
             'additional_unattend_content': TfArg.literal([
               for (final e in additionalUnattendContent) e.encode(),
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
           if (winrmListener != null)
             'winrm_listener': TfArg.literal([
               for (final e in winrmListener) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermWindowsVirtualMachineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWindowsVirtualMachine>`.
  RefTo<AzurermWindowsVirtualMachine> get ref => RefTo.of(this);

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

  /// Reference to `automatic_updates_enabled` attribute.
  TfRef<bool> get automaticUpdatesEnabled =>
      TfRef.attribute<bool>(this, 'automatic_updates_enabled');

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

  /// Reference to `hotpatching_enabled` attribute.
  TfRef<bool> get hotpatchingEnabled =>
      TfRef.attribute<bool>(this, 'hotpatching_enabled');

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

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');

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
