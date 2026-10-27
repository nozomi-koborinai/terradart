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
    TfArg<String>? adminUsername,
    TfArg<bool>? allowExtensionOperations,
    TfArg<bool>? automaticUpdatesEnabled,
    TfArg<String>? availabilitySetId,
    TfArg<bool>? bypassPlatformSafetyChecksOnUserScheduleEnabled,
    TfArg<String>? capacityReservationGroupId,
    TfArg<String>? computerName,
    Sensitive<String>? customData,
    TfArg<String>? dedicatedHostGroupId,
    TfArg<String>? dedicatedHostId,
    TfArg<String>? diskControllerType,
    TfArg<String>? edgeZone,
    TfArg<bool>? encryptionAtHostEnabled,
    TfArg<String>? evictionPolicy,
    TfArg<String>? extensionsTimeBudget,
    TfArg<bool>? hotpatchingEnabled,
    TfArg<String>? licenseType,
    required TfArg<String> location,
    TfArg<num>? maxBidPrice,
    required TfArg<String> name,
    required TfArg<List<String>> networkInterfaceIds,
    TfArg<String>? osManagedDiskId,
    TfArg<String>? patchAssessmentMode,
    TfArg<String>? patchMode,
    TfArg<num>? platformFaultDomain,
    TfArg<String>? priority,
    TfArg<bool>? provisionVmAgent,
    TfArg<String>? proximityPlacementGroupId,
    TfArg<String>? rebootSetting,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? secureBootEnabled,
    required TfArg<String> size,
    TfArg<String>? sourceImageId,
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
    WindowsVirtualMachineSourceImageReference? sourceImageReference,
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
           'admin_username': ?adminUsername,
           'allow_extension_operations': ?allowExtensionOperations,
           'automatic_updates_enabled': ?automaticUpdatesEnabled,
           'availability_set_id': ?availabilitySetId,
           'bypass_platform_safety_checks_on_user_schedule_enabled':
               ?bypassPlatformSafetyChecksOnUserScheduleEnabled,
           'capacity_reservation_group_id': ?capacityReservationGroupId,
           'computer_name': ?computerName,
           'custom_data': ?customData,
           'dedicated_host_group_id': ?dedicatedHostGroupId,
           'dedicated_host_id': ?dedicatedHostId,
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
           'os_managed_disk_id': ?osManagedDiskId,
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
           'source_image_id': ?sourceImageId,
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
           if (sourceImageReference != null)
             'source_image_reference': TfArg.literal(
               sourceImageReference.encode(),
             ),
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
