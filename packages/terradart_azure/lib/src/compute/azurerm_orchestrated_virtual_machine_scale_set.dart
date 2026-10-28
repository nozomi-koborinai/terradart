// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_orchestrated_virtual_machine_scale_set`.
const Set<String> _azurermOrchestratedVirtualMachineScaleSetSensitive =
    <String>{
      'extension.protected_settings',
      'os_profile.custom_data',
      'os_profile.linux_configuration.admin_password',
      'os_profile.windows_configuration.additional_unattend_content.content',
      'os_profile.windows_configuration.admin_password',
      'user_data_base64',
    };

/// Orchestrated Virtual Machine Scale Set Eviction enum for `eviction_policy`.
extension type const OrchestratedVirtualMachineScaleSetEvictionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  OrchestratedVirtualMachineScaleSetEvictionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  OrchestratedVirtualMachineScaleSetEvictionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const OrchestratedVirtualMachineScaleSetEvictionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const deallocate = OrchestratedVirtualMachineScaleSetEvictionPolicy._(
    TfArgLiteral('Deallocate'),
  );
  static const delete = OrchestratedVirtualMachineScaleSetEvictionPolicy._(
    TfArgLiteral('Delete'),
  );

  static const List<OrchestratedVirtualMachineScaleSetEvictionPolicy> values = [
    deallocate,
    delete,
  ];
}

/// Orchestrated Virtual Machine Scale Set License enum for `license_type`.
extension type const OrchestratedVirtualMachineScaleSetLicenseType._(
  TfArg<String> _
) implements TfArg<String> {
  OrchestratedVirtualMachineScaleSetLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  OrchestratedVirtualMachineScaleSetLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const OrchestratedVirtualMachineScaleSetLicenseType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = OrchestratedVirtualMachineScaleSetLicenseType._(
    TfArgLiteral('None'),
  );
  static const windowsClient = OrchestratedVirtualMachineScaleSetLicenseType._(
    TfArgLiteral('Windows_Client'),
  );
  static const windowsServer = OrchestratedVirtualMachineScaleSetLicenseType._(
    TfArgLiteral('Windows_Server'),
  );

  static const List<OrchestratedVirtualMachineScaleSetLicenseType> values = [
    none,
    windowsClient,
    windowsServer,
  ];
}

/// Orchestrated Virtual Machine Scale Set Network Api enum for `network_api_version`.
extension type const OrchestratedVirtualMachineScaleSetNetworkApiVersion._(
  TfArg<String> _
) implements TfArg<String> {
  OrchestratedVirtualMachineScaleSetNetworkApiVersion.variable(String name)
    : this._(TfArg.variable(name));
  OrchestratedVirtualMachineScaleSetNetworkApiVersion.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const OrchestratedVirtualMachineScaleSetNetworkApiVersion.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const v2022x11x01 =
      OrchestratedVirtualMachineScaleSetNetworkApiVersion._(
        TfArgLiteral('2022-11-01'),
      );
  static const v2020x11x01 =
      OrchestratedVirtualMachineScaleSetNetworkApiVersion._(
        TfArgLiteral('2020-11-01'),
      );

  static const List<OrchestratedVirtualMachineScaleSetNetworkApiVersion>
  values = [v2022x11x01, v2020x11x01];
}

/// Orchestrated Virtual Machine Scale Set Upgrade enum for `upgrade_mode`.
extension type const OrchestratedVirtualMachineScaleSetUpgradeMode._(
  TfArg<String> _
) implements TfArg<String> {
  OrchestratedVirtualMachineScaleSetUpgradeMode.variable(String name)
    : this._(TfArg.variable(name));
  OrchestratedVirtualMachineScaleSetUpgradeMode.expression(String template)
    : this._(TfArg.expression(template));
  const OrchestratedVirtualMachineScaleSetUpgradeMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automatic = OrchestratedVirtualMachineScaleSetUpgradeMode._(
    TfArgLiteral('Automatic'),
  );
  static const manual = OrchestratedVirtualMachineScaleSetUpgradeMode._(
    TfArgLiteral('Manual'),
  );
  static const rolling = OrchestratedVirtualMachineScaleSetUpgradeMode._(
    TfArgLiteral('Rolling'),
  );

  static const List<OrchestratedVirtualMachineScaleSetUpgradeMode> values = [
    automatic,
    manual,
    rolling,
  ];
}

/// At most one of `capacity_reservation_group_id`, `proximity_placement_group_id` on `azurerm_orchestrated_virtual_machine_scale_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationGroupId(...)`.
sealed class OrchestratedVirtualMachineScaleSetGroupId {
  const OrchestratedVirtualMachineScaleSetGroupId();

  /// Sets `capacity_reservation_group_id`.
  const factory OrchestratedVirtualMachineScaleSetGroupId.capacityReservationGroupId(
    TfArg<String> capacityReservationGroupId,
  ) = OrchestratedVirtualMachineScaleSetCapacityReservationGroupId;

  /// Sets `proximity_placement_group_id`.
  const factory OrchestratedVirtualMachineScaleSetGroupId.proximityPlacementGroupId(
    TfArg<String> proximityPlacementGroupId,
  ) = OrchestratedVirtualMachineScaleSetProximityPlacementGroupId;

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

/// The [OrchestratedVirtualMachineScaleSetGroupId.capacityReservationGroupId] choice: sets `capacity_reservation_group_id`.
final class OrchestratedVirtualMachineScaleSetCapacityReservationGroupId
    extends OrchestratedVirtualMachineScaleSetGroupId {
  const OrchestratedVirtualMachineScaleSetCapacityReservationGroupId(
    this.capacityReservationGroupId,
  );

  final TfArg<String> capacityReservationGroupId;

  @internal
  @override
  String get blockKey => 'capacity_reservation_group_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_group_id': capacityReservationGroupId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'capacity_reservation_group_id': capacityReservationGroupId,
  };
}

/// The [OrchestratedVirtualMachineScaleSetGroupId.proximityPlacementGroupId] choice: sets `proximity_placement_group_id`.
final class OrchestratedVirtualMachineScaleSetProximityPlacementGroupId
    extends OrchestratedVirtualMachineScaleSetGroupId {
  const OrchestratedVirtualMachineScaleSetProximityPlacementGroupId(
    this.proximityPlacementGroupId,
  );

  final TfArg<String> proximityPlacementGroupId;

  @internal
  @override
  String get blockKey => 'proximity_placement_group_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'proximity_placement_group_id': proximityPlacementGroupId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'proximity_placement_group_id': proximityPlacementGroupId,
  };
}

/// At most one of `source_image_id`, `source_image_reference` on `azurerm_orchestrated_virtual_machine_scale_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.sourceImageId(...)`.
sealed class OrchestratedVirtualMachineScaleSetSourceImage {
  const OrchestratedVirtualMachineScaleSetSourceImage();

  /// Sets `source_image_id`.
  const factory OrchestratedVirtualMachineScaleSetSourceImage.sourceImageId(
    TfArg<String> sourceImageId,
  ) = OrchestratedVirtualMachineScaleSetSourceImageId;

  /// Sets `source_image_reference`.
  const factory OrchestratedVirtualMachineScaleSetSourceImage.sourceImageReference(
    OrchestratedVirtualMachineScaleSetSourceImageReference sourceImageReference,
  ) = OrchestratedVirtualMachineScaleSetSourceImageReferenceChoice;

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

/// The [OrchestratedVirtualMachineScaleSetSourceImage.sourceImageId] choice: sets `source_image_id`.
final class OrchestratedVirtualMachineScaleSetSourceImageId
    extends OrchestratedVirtualMachineScaleSetSourceImage {
  const OrchestratedVirtualMachineScaleSetSourceImageId(this.sourceImageId);

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

/// The [OrchestratedVirtualMachineScaleSetSourceImage.sourceImageReference] choice: sets `source_image_reference`.
final class OrchestratedVirtualMachineScaleSetSourceImageReferenceChoice
    extends OrchestratedVirtualMachineScaleSetSourceImage {
  const OrchestratedVirtualMachineScaleSetSourceImageReferenceChoice(
    this.sourceImageReference,
  );

  final OrchestratedVirtualMachineScaleSetSourceImageReference
  sourceImageReference;

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

/// Typed helper for the `additional_capabilities` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetAdditionalCapabilities {
  const OrchestratedVirtualMachineScaleSetAdditionalCapabilities({
    this.ultraSsdEnabled,
  });

  final TfArg<bool>? ultraSsdEnabled;

  @internal
  Map<String, Object?> encode() => {
    'ultra_ssd_enabled': ?ultraSsdEnabled?.toTfJson(),
  };
}

/// Typed helper for the `automatic_instance_repair` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair {
  const OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair({
    this.action,
    required this.enabled,
    this.gracePeriod,
  });

  final TfArg<String>? action;

  final TfArg<bool> enabled;

  final TfArg<String>? gracePeriod;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'grace_period': ?gracePeriod?.toTfJson(),
  };
}

/// Typed helper for the `boot_diagnostics` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetBootDiagnostics {
  const OrchestratedVirtualMachineScaleSetBootDiagnostics({
    this.storageAccountUri,
  });

  final TfArg<String>? storageAccountUri;

  @internal
  Map<String, Object?> encode() => {
    'storage_account_uri': ?storageAccountUri?.toTfJson(),
  };
}

/// Typed helper for the `data_disk` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetDataDisk {
  const OrchestratedVirtualMachineScaleSetDataDisk({
    required this.caching,
    this.createOption,
    this.diskEncryptionSetId,
    this.diskIopsReadWrite,
    this.diskMbpsReadWrite,
    this.diskSizeGb,
    this.lun,
    required this.storageAccountType,
    this.writeAcceleratorEnabled,
  });

  final TfArg<String> caching;

  final TfArg<String>? createOption;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num>? diskIopsReadWrite;

  final TfArg<num>? diskMbpsReadWrite;

  final TfArg<num>? diskSizeGb;

  final TfArg<num>? lun;

  final TfArg<String> storageAccountType;

  final TfArg<bool>? writeAcceleratorEnabled;

  @internal
  Map<String, Object?> encode() => {
    'caching': caching.toTfJson(),
    'create_option': ?createOption?.toTfJson(),
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'disk_iops_read_write': ?diskIopsReadWrite?.toTfJson(),
    'disk_mbps_read_write': ?diskMbpsReadWrite?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'lun': ?lun?.toTfJson(),
    'storage_account_type': storageAccountType.toTfJson(),
    'write_accelerator_enabled': ?writeAcceleratorEnabled?.toTfJson(),
  };
}

/// Typed helper for the `extension` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetExtension {
  const OrchestratedVirtualMachineScaleSetExtension({
    this.autoUpgradeMinorVersionEnabled,
    this.extensionsToProvisionAfterVmCreation,
    this.failureSuppressionEnabled,
    this.forceExtensionExecutionOnChange,
    required this.name,
    this.protectedSettings,
    required this.publisher,
    this.settings,
    required this.type,
    required this.typeHandlerVersion,
    this.protectedSettingsFromKeyVault,
  });

  final TfArg<bool>? autoUpgradeMinorVersionEnabled;

  final TfArg<List<String>>? extensionsToProvisionAfterVmCreation;

  final TfArg<bool>? failureSuppressionEnabled;

  final TfArg<String>? forceExtensionExecutionOnChange;

  final TfArg<String> name;

  final Sensitive<String>? protectedSettings;

  final TfArg<String> publisher;

  final TfArg<String>? settings;

  final TfArg<String> type;

  final TfArg<String> typeHandlerVersion;

  final OrchestratedVirtualMachineScaleSetProtectedSettingsFromKeyVault?
  protectedSettingsFromKeyVault;

  @internal
  Map<String, Object?> encode() => {
    'auto_upgrade_minor_version_enabled': ?autoUpgradeMinorVersionEnabled
        ?.toTfJson(),
    'extensions_to_provision_after_vm_creation':
        ?extensionsToProvisionAfterVmCreation?.toTfJson(),
    'failure_suppression_enabled': ?failureSuppressionEnabled?.toTfJson(),
    'force_extension_execution_on_change': ?forceExtensionExecutionOnChange
        ?.toTfJson(),
    'name': name.toTfJson(),
    'protected_settings': ?protectedSettings?.toTfJson(),
    'publisher': publisher.toTfJson(),
    'settings': ?settings?.toTfJson(),
    'type': type.toTfJson(),
    'type_handler_version': typeHandlerVersion.toTfJson(),
    'protected_settings_from_key_vault': ?protectedSettingsFromKeyVault
        ?.encode(),
  };
}

/// Typed helper for the `extension.protected_settings_from_key_vault` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetProtectedSettingsFromKeyVault {
  const OrchestratedVirtualMachineScaleSetProtectedSettingsFromKeyVault({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  final TfArg<String> secretUrl;

  final TfArg<String> sourceVaultId;

  @internal
  Map<String, Object?> encode() => {
    'secret_url': secretUrl.toTfJson(),
    'source_vault_id': sourceVaultId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetIdentity {
  const OrchestratedVirtualMachineScaleSetIdentity({
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

/// Typed helper for the `network_interface` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetNetworkInterface {
  const OrchestratedVirtualMachineScaleSetNetworkInterface({
    this.acceleratedNetworkingEnabled,
    this.auxiliaryMode,
    this.auxiliarySku,
    this.dnsServers,
    this.ipForwardingEnabled,
    required this.name,
    this.networkSecurityGroupId,
    this.primary,
    this.tags,
    required this.ipConfiguration,
  });

  final TfArg<bool>? acceleratedNetworkingEnabled;

  final TfArg<String>? auxiliaryMode;

  final TfArg<String>? auxiliarySku;

  final TfArg<List<String>>? dnsServers;

  final TfArg<bool>? ipForwardingEnabled;

  final TfArg<String> name;

  final TfArg<String>? networkSecurityGroupId;

  final TfArg<bool>? primary;

  final TfArg<Map<String, String>>? tags;

  final List<OrchestratedVirtualMachineScaleSetIpConfiguration> ipConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'accelerated_networking_enabled': ?acceleratedNetworkingEnabled?.toTfJson(),
    'auxiliary_mode': ?auxiliaryMode?.toTfJson(),
    'auxiliary_sku': ?auxiliarySku?.toTfJson(),
    'dns_servers': ?dnsServers?.toTfJson(),
    'ip_forwarding_enabled': ?ipForwardingEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'network_security_group_id': ?networkSecurityGroupId?.toTfJson(),
    'primary': ?primary?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'ip_configuration': [for (final e in ipConfiguration) e.encode()],
  };
}

/// Typed helper for the `network_interface.ip_configuration` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetIpConfiguration {
  const OrchestratedVirtualMachineScaleSetIpConfiguration({
    this.applicationGatewayBackendAddressPoolIds,
    this.applicationSecurityGroupIds,
    this.loadBalancerBackendAddressPoolIds,
    required this.name,
    this.primary,
    this.subnetId,
    this.version,
    this.publicIpAddress,
  });

  final TfArg<List<String>>? applicationGatewayBackendAddressPoolIds;

  final TfArg<List<String>>? applicationSecurityGroupIds;

  final TfArg<List<String>>? loadBalancerBackendAddressPoolIds;

  final TfArg<String> name;

  final TfArg<bool>? primary;

  final TfArg<String>? subnetId;

  final TfArg<String>? version;

  final List<OrchestratedVirtualMachineScaleSetPublicIpAddress>?
  publicIpAddress;

  @internal
  Map<String, Object?> encode() => {
    'application_gateway_backend_address_pool_ids':
        ?applicationGatewayBackendAddressPoolIds?.toTfJson(),
    'application_security_group_ids': ?applicationSecurityGroupIds?.toTfJson(),
    'load_balancer_backend_address_pool_ids': ?loadBalancerBackendAddressPoolIds
        ?.toTfJson(),
    'name': name.toTfJson(),
    'primary': ?primary?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
    'version': ?version?.toTfJson(),
    if (publicIpAddress != null)
      'public_ip_address': [for (final e in publicIpAddress!) e.encode()],
  };
}

/// Typed helper for the `network_interface.ip_configuration.public_ip_address` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetPublicIpAddress {
  const OrchestratedVirtualMachineScaleSetPublicIpAddress({
    this.domainNameLabel,
    this.idleTimeoutInMinutes,
    required this.name,
    this.publicIpPrefixId,
    this.skuName,
    this.version,
    this.ipTag,
  });

  final TfArg<String>? domainNameLabel;

  final TfArg<num>? idleTimeoutInMinutes;

  final TfArg<String> name;

  final TfArg<String>? publicIpPrefixId;

  final TfArg<String>? skuName;

  final TfArg<String>? version;

  final List<OrchestratedVirtualMachineScaleSetIpTag>? ipTag;

  @internal
  Map<String, Object?> encode() => {
    'domain_name_label': ?domainNameLabel?.toTfJson(),
    'idle_timeout_in_minutes': ?idleTimeoutInMinutes?.toTfJson(),
    'name': name.toTfJson(),
    'public_ip_prefix_id': ?publicIpPrefixId?.toTfJson(),
    'sku_name': ?skuName?.toTfJson(),
    'version': ?version?.toTfJson(),
    if (ipTag != null) 'ip_tag': [for (final e in ipTag!) e.encode()],
  };
}

/// Typed helper for the `network_interface.ip_configuration.public_ip_address.ip_tag` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetIpTag {
  const OrchestratedVirtualMachineScaleSetIpTag({
    required this.tag,
    required this.type,
  });

  final TfArg<String> tag;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'tag': tag.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `os_disk` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetOsDisk {
  const OrchestratedVirtualMachineScaleSetOsDisk({
    required this.caching,
    this.diskEncryptionSetId,
    this.diskSizeGb,
    required this.storageAccountType,
    this.writeAcceleratorEnabled,
    this.diffDiskSettings,
  });

  final TfArg<String> caching;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num>? diskSizeGb;

  final TfArg<String> storageAccountType;

  final TfArg<bool>? writeAcceleratorEnabled;

  final OrchestratedVirtualMachineScaleSetDiffDiskSettings? diffDiskSettings;

  @internal
  Map<String, Object?> encode() => {
    'caching': caching.toTfJson(),
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'storage_account_type': storageAccountType.toTfJson(),
    'write_accelerator_enabled': ?writeAcceleratorEnabled?.toTfJson(),
    'diff_disk_settings': ?diffDiskSettings?.encode(),
  };
}

/// Typed helper for the `os_disk.diff_disk_settings` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetDiffDiskSettings {
  const OrchestratedVirtualMachineScaleSetDiffDiskSettings({
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

/// Typed helper for the `os_profile` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetOsProfile {
  const OrchestratedVirtualMachineScaleSetOsProfile({
    this.customData,
    this.linuxConfiguration,
    this.windowsConfiguration,
  });

  final Sensitive<String>? customData;

  final OrchestratedVirtualMachineScaleSetLinuxConfiguration?
  linuxConfiguration;

  final OrchestratedVirtualMachineScaleSetWindowsConfiguration?
  windowsConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'custom_data': ?customData?.toTfJson(),
    'linux_configuration': ?linuxConfiguration?.encode(),
    'windows_configuration': ?windowsConfiguration?.encode(),
  };
}

/// Typed helper for the `os_profile.linux_configuration` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetLinuxConfiguration {
  const OrchestratedVirtualMachineScaleSetLinuxConfiguration({
    this.adminPassword,
    required this.adminUsername,
    this.computerNamePrefix,
    this.disablePasswordAuthentication,
    this.patchAssessmentMode,
    this.patchMode,
    this.provisionVmAgent,
    this.adminSshKey,
    this.secret,
  });

  final Sensitive<String>? adminPassword;

  final TfArg<String> adminUsername;

  final TfArg<String>? computerNamePrefix;

  final TfArg<bool>? disablePasswordAuthentication;

  final TfArg<String>? patchAssessmentMode;

  final TfArg<String>? patchMode;

  final TfArg<bool>? provisionVmAgent;

  final List<OrchestratedVirtualMachineScaleSetAdminSshKey>? adminSshKey;

  final List<OrchestratedVirtualMachineScaleSetLinuxConfigurationSecret>?
  secret;

  @internal
  Map<String, Object?> encode() => {
    'admin_password': ?adminPassword?.toTfJson(),
    'admin_username': adminUsername.toTfJson(),
    'computer_name_prefix': ?computerNamePrefix?.toTfJson(),
    'disable_password_authentication': ?disablePasswordAuthentication
        ?.toTfJson(),
    'patch_assessment_mode': ?patchAssessmentMode?.toTfJson(),
    'patch_mode': ?patchMode?.toTfJson(),
    'provision_vm_agent': ?provisionVmAgent?.toTfJson(),
    if (adminSshKey != null)
      'admin_ssh_key': [for (final e in adminSshKey!) e.encode()],
    if (secret != null) 'secret': [for (final e in secret!) e.encode()],
  };
}

/// Typed helper for the `os_profile.linux_configuration.admin_ssh_key` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetAdminSshKey {
  const OrchestratedVirtualMachineScaleSetAdminSshKey({
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

/// Typed helper for the `os_profile.linux_configuration.secret` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetLinuxConfigurationSecret {
  const OrchestratedVirtualMachineScaleSetLinuxConfigurationSecret({
    required this.keyVaultId,
    required this.certificate,
  });

  final TfArg<String> keyVaultId;

  final List<OrchestratedVirtualMachineScaleSetLinuxConfigurationCertificate>
  certificate;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_id': keyVaultId.toTfJson(),
    'certificate': [for (final e in certificate) e.encode()],
  };
}

/// Typed helper for the `os_profile.linux_configuration.secret.certificate` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetLinuxConfigurationCertificate {
  const OrchestratedVirtualMachineScaleSetLinuxConfigurationCertificate({
    required this.url,
  });

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Typed helper for the `os_profile.windows_configuration` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetWindowsConfiguration {
  const OrchestratedVirtualMachineScaleSetWindowsConfiguration({
    required this.adminPassword,
    required this.adminUsername,
    this.automaticUpdatesEnabled,
    this.computerNamePrefix,
    this.hotpatchingEnabled,
    this.patchAssessmentMode,
    this.patchMode,
    this.provisionVmAgent,
    this.timezone,
    this.additionalUnattendContent,
    this.secret,
    this.winrmListener,
  });

  final Sensitive<String> adminPassword;

  final TfArg<String> adminUsername;

  final TfArg<bool>? automaticUpdatesEnabled;

  final TfArg<String>? computerNamePrefix;

  final TfArg<bool>? hotpatchingEnabled;

  final TfArg<String>? patchAssessmentMode;

  final TfArg<String>? patchMode;

  final TfArg<bool>? provisionVmAgent;

  final TfArg<String>? timezone;

  final List<OrchestratedVirtualMachineScaleSetAdditionalUnattendContent>?
  additionalUnattendContent;

  final List<OrchestratedVirtualMachineScaleSetWindowsConfigurationSecret>?
  secret;

  final List<OrchestratedVirtualMachineScaleSetWinrmListener>? winrmListener;

  @internal
  Map<String, Object?> encode() => {
    'admin_password': adminPassword.toTfJson(),
    'admin_username': adminUsername.toTfJson(),
    'automatic_updates_enabled': ?automaticUpdatesEnabled?.toTfJson(),
    'computer_name_prefix': ?computerNamePrefix?.toTfJson(),
    'hotpatching_enabled': ?hotpatchingEnabled?.toTfJson(),
    'patch_assessment_mode': ?patchAssessmentMode?.toTfJson(),
    'patch_mode': ?patchMode?.toTfJson(),
    'provision_vm_agent': ?provisionVmAgent?.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
    if (additionalUnattendContent != null)
      'additional_unattend_content': [
        for (final e in additionalUnattendContent!) e.encode(),
      ],
    if (secret != null) 'secret': [for (final e in secret!) e.encode()],
    if (winrmListener != null)
      'winrm_listener': [for (final e in winrmListener!) e.encode()],
  };
}

/// Typed helper for the `os_profile.windows_configuration.additional_unattend_content` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetAdditionalUnattendContent {
  const OrchestratedVirtualMachineScaleSetAdditionalUnattendContent({
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

/// Typed helper for the `os_profile.windows_configuration.secret` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetWindowsConfigurationSecret {
  const OrchestratedVirtualMachineScaleSetWindowsConfigurationSecret({
    required this.keyVaultId,
    required this.certificate,
  });

  final TfArg<String> keyVaultId;

  final List<OrchestratedVirtualMachineScaleSetWindowsConfigurationCertificate>
  certificate;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_id': keyVaultId.toTfJson(),
    'certificate': [for (final e in certificate) e.encode()],
  };
}

/// Typed helper for the `os_profile.windows_configuration.secret.certificate` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetWindowsConfigurationCertificate {
  const OrchestratedVirtualMachineScaleSetWindowsConfigurationCertificate({
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

/// Typed helper for the `os_profile.windows_configuration.winrm_listener` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetWinrmListener {
  const OrchestratedVirtualMachineScaleSetWinrmListener({
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

/// Typed helper for the `plan` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetPlan {
  const OrchestratedVirtualMachineScaleSetPlan({
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

/// Typed helper for the `priority_mix` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetPriorityMix {
  const OrchestratedVirtualMachineScaleSetPriorityMix({
    this.baseRegularCount,
    this.regularPercentageAboveBase,
  });

  final TfArg<num>? baseRegularCount;

  final TfArg<num>? regularPercentageAboveBase;

  @internal
  Map<String, Object?> encode() => {
    'base_regular_count': ?baseRegularCount?.toTfJson(),
    'regular_percentage_above_base': ?regularPercentageAboveBase?.toTfJson(),
  };
}

/// Typed helper for the `rolling_upgrade_policy` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetRollingUpgradePolicy {
  const OrchestratedVirtualMachineScaleSetRollingUpgradePolicy({
    this.crossZoneUpgradesEnabled,
    required this.maxBatchInstancePercent,
    required this.maxUnhealthyInstancePercent,
    required this.maxUnhealthyUpgradedInstancePercent,
    this.maximumSurgeInstancesEnabled,
    required this.pauseTimeBetweenBatches,
    this.prioritizeUnhealthyInstancesEnabled,
  });

  final TfArg<bool>? crossZoneUpgradesEnabled;

  final TfArg<num> maxBatchInstancePercent;

  final TfArg<num> maxUnhealthyInstancePercent;

  final TfArg<num> maxUnhealthyUpgradedInstancePercent;

  final TfArg<bool>? maximumSurgeInstancesEnabled;

  final TfArg<String> pauseTimeBetweenBatches;

  final TfArg<bool>? prioritizeUnhealthyInstancesEnabled;

  @internal
  Map<String, Object?> encode() => {
    'cross_zone_upgrades_enabled': ?crossZoneUpgradesEnabled?.toTfJson(),
    'max_batch_instance_percent': maxBatchInstancePercent.toTfJson(),
    'max_unhealthy_instance_percent': maxUnhealthyInstancePercent.toTfJson(),
    'max_unhealthy_upgraded_instance_percent':
        maxUnhealthyUpgradedInstancePercent.toTfJson(),
    'maximum_surge_instances_enabled': ?maximumSurgeInstancesEnabled
        ?.toTfJson(),
    'pause_time_between_batches': pauseTimeBetweenBatches.toTfJson(),
    'prioritize_unhealthy_instances_enabled':
        ?prioritizeUnhealthyInstancesEnabled?.toTfJson(),
  };
}

/// Typed helper for the `sku_profile` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetSkuProfile {
  const OrchestratedVirtualMachineScaleSetSkuProfile({
    required this.allocationStrategy,
    required this.virtualMachineSize,
  });

  final OrchestratedVirtualMachineScaleSetAllocationStrategy allocationStrategy;

  final List<OrchestratedVirtualMachineScaleSetVirtualMachineSize>
  virtualMachineSize;

  @internal
  Map<String, Object?> encode() => {
    'allocation_strategy': allocationStrategy.toTfJson(),
    'virtual_machine_size': [for (final e in virtualMachineSize) e.encode()],
  };
}

/// `allocation_strategy` — derived from the provider schema description.
extension type const OrchestratedVirtualMachineScaleSetAllocationStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  OrchestratedVirtualMachineScaleSetAllocationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  OrchestratedVirtualMachineScaleSetAllocationStrategy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const OrchestratedVirtualMachineScaleSetAllocationStrategy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const capacityoptimized =
      OrchestratedVirtualMachineScaleSetAllocationStrategy._(
        TfArgLiteral('CapacityOptimized'),
      );
  static const lowestprice =
      OrchestratedVirtualMachineScaleSetAllocationStrategy._(
        TfArgLiteral('LowestPrice'),
      );
  static const prioritized =
      OrchestratedVirtualMachineScaleSetAllocationStrategy._(
        TfArgLiteral('Prioritized'),
      );

  static const List<OrchestratedVirtualMachineScaleSetAllocationStrategy>
  values = [capacityoptimized, lowestprice, prioritized];
}

/// Typed helper for the `sku_profile.virtual_machine_size` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetVirtualMachineSize {
  const OrchestratedVirtualMachineScaleSetVirtualMachineSize({
    required this.name,
    this.rank,
  });

  final TfArg<String> name;

  final TfArg<num>? rank;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'rank': ?rank?.toTfJson(),
  };
}

/// Typed helper for the `source_image_reference` block of
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetSourceImageReference {
  const OrchestratedVirtualMachineScaleSetSourceImageReference({
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
/// `azurerm_orchestrated_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class OrchestratedVirtualMachineScaleSetTerminationNotification {
  const OrchestratedVirtualMachineScaleSetTerminationNotification({
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

/// Factory wrapper for `azurerm_orchestrated_virtual_machine_scale_set`.
final class AzurermOrchestratedVirtualMachineScaleSet extends Resource {
  static const String tfType = 'azurerm_orchestrated_virtual_machine_scale_set';

  AzurermOrchestratedVirtualMachineScaleSet(
    super.localName, {
    OrchestratedVirtualMachineScaleSetGroupId? groupId,
    TfArg<bool>? encryptionAtHostEnabled,
    OrchestratedVirtualMachineScaleSetEvictionPolicy? evictionPolicy,
    TfArg<bool>? extensionOperationsEnabled,
    TfArg<String>? extensionsTimeBudget,
    TfArg<num>? instances,
    OrchestratedVirtualMachineScaleSetLicenseType? licenseType,
    required TfArg<String> location,
    TfArg<num>? maxBidPrice,
    required TfArg<String> name,
    OrchestratedVirtualMachineScaleSetNetworkApiVersion? networkApiVersion,
    required TfArg<num> platformFaultDomainCount,
    TfArg<String>? priority,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? singlePlacementGroup,
    TfArg<String>? skuName,
    OrchestratedVirtualMachineScaleSetSourceImage? sourceImage,
    TfArg<Map<String, String>>? tags,
    OrchestratedVirtualMachineScaleSetUpgradeMode? upgradeMode,
    Sensitive<String>? userDataBase64,
    TfArg<bool>? zoneBalance,
    TfArg<List<String>>? zones,
    OrchestratedVirtualMachineScaleSetAdditionalCapabilities?
    additionalCapabilities,
    OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair?
    automaticInstanceRepair,
    OrchestratedVirtualMachineScaleSetBootDiagnostics? bootDiagnostics,
    List<OrchestratedVirtualMachineScaleSetDataDisk>? dataDisk,
    List<OrchestratedVirtualMachineScaleSetExtension>? extension,
    OrchestratedVirtualMachineScaleSetIdentity? identity,
    List<OrchestratedVirtualMachineScaleSetNetworkInterface>? networkInterface,
    OrchestratedVirtualMachineScaleSetOsDisk? osDisk,
    OrchestratedVirtualMachineScaleSetOsProfile? osProfile,
    OrchestratedVirtualMachineScaleSetPlan? plan,
    OrchestratedVirtualMachineScaleSetPriorityMix? priorityMix,
    OrchestratedVirtualMachineScaleSetRollingUpgradePolicy?
    rollingUpgradePolicy,
    OrchestratedVirtualMachineScaleSetSkuProfile? skuProfile,
    OrchestratedVirtualMachineScaleSetTerminationNotification?
    terminationNotification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?groupId?.argMap,
           'encryption_at_host_enabled': ?encryptionAtHostEnabled,
           'eviction_policy': ?evictionPolicy,
           'extension_operations_enabled': ?extensionOperationsEnabled,
           'extensions_time_budget': ?extensionsTimeBudget,
           'instances': ?instances,
           'license_type': ?licenseType,
           'location': location,
           'max_bid_price': ?maxBidPrice,
           'name': name,
           'network_api_version': ?networkApiVersion,
           'platform_fault_domain_count': platformFaultDomainCount,
           'priority': ?priority,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'single_placement_group': ?singlePlacementGroup,
           'sku_name': ?skuName,
           ...?sourceImage?.argMap,
           'tags': ?tags,
           'upgrade_mode': ?upgradeMode,
           'user_data_base64': ?userDataBase64,
           'zone_balance': ?zoneBalance,
           'zones': ?zones,
           if (additionalCapabilities != null)
             'additional_capabilities': TfArg.literal(
               additionalCapabilities.encode(),
             ),
           if (automaticInstanceRepair != null)
             'automatic_instance_repair': TfArg.literal(
               automaticInstanceRepair.encode(),
             ),
           if (bootDiagnostics != null)
             'boot_diagnostics': TfArg.literal(bootDiagnostics.encode()),
           if (dataDisk != null)
             'data_disk': TfArg.literal([for (final e in dataDisk) e.encode()]),
           if (extension != null)
             'extension': TfArg.literal([
               for (final e in extension) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (networkInterface != null)
             'network_interface': TfArg.literal([
               for (final e in networkInterface) e.encode(),
             ]),
           if (osDisk != null) 'os_disk': TfArg.literal(osDisk.encode()),
           if (osProfile != null)
             'os_profile': TfArg.literal(osProfile.encode()),
           if (plan != null) 'plan': TfArg.literal(plan.encode()),
           if (priorityMix != null)
             'priority_mix': TfArg.literal(priorityMix.encode()),
           if (rollingUpgradePolicy != null)
             'rolling_upgrade_policy': TfArg.literal(
               rollingUpgradePolicy.encode(),
             ),
           if (skuProfile != null)
             'sku_profile': TfArg.literal(skuProfile.encode()),
           if (terminationNotification != null)
             'termination_notification': TfArg.literal(
               terminationNotification.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermOrchestratedVirtualMachineScaleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermOrchestratedVirtualMachineScaleSet>`.
  RefTo<AzurermOrchestratedVirtualMachineScaleSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `capacity_reservation_group_id` attribute.
  TfRef<String> get capacityReservationGroupId =>
      TfRef.attribute<String>(this, 'capacity_reservation_group_id');

  /// Reference to `encryption_at_host_enabled` attribute.
  TfRef<bool> get encryptionAtHostEnabled =>
      TfRef.attribute<bool>(this, 'encryption_at_host_enabled');

  /// Reference to `eviction_policy` attribute.
  TfRef<String> get evictionPolicy =>
      TfRef.attribute<String>(this, 'eviction_policy');

  /// Reference to `extension_operations_enabled` attribute.
  TfRef<bool> get extensionOperationsEnabled =>
      TfRef.attribute<bool>(this, 'extension_operations_enabled');

  /// Reference to `extensions_time_budget` attribute.
  TfRef<String> get extensionsTimeBudget =>
      TfRef.attribute<String>(this, 'extensions_time_budget');

  /// Reference to `instances` attribute.
  TfRef<num> get instances => TfRef.attribute<num>(this, 'instances');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_bid_price` attribute.
  TfRef<num> get maxBidPrice => TfRef.attribute<num>(this, 'max_bid_price');

  /// Reference to `network_api_version` attribute.
  TfRef<String> get networkApiVersion =>
      TfRef.attribute<String>(this, 'network_api_version');

  /// Reference to `platform_fault_domain_count` attribute.
  TfRef<num> get platformFaultDomainCount =>
      TfRef.attribute<num>(this, 'platform_fault_domain_count');

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `proximity_placement_group_id` attribute.
  TfRef<String> get proximityPlacementGroupId =>
      TfRef.attribute<String>(this, 'proximity_placement_group_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `single_placement_group` attribute.
  TfRef<bool> get singlePlacementGroup =>
      TfRef.attribute<bool>(this, 'single_placement_group');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `source_image_id` attribute.
  TfRef<String> get sourceImageId =>
      TfRef.attribute<String>(this, 'source_image_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `upgrade_mode` attribute.
  TfRef<String> get upgradeMode =>
      TfRef.attribute<String>(this, 'upgrade_mode');

  /// Reference to `user_data_base64` attribute.
  TfRef<String> get userDataBase64 =>
      TfRef.attribute<String>(this, 'user_data_base64');

  /// Reference to `zone_balance` attribute.
  TfRef<bool> get zoneBalance => TfRef.attribute<bool>(this, 'zone_balance');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
