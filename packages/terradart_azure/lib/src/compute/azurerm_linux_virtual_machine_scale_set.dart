// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_linux_virtual_machine_scale_set`.
const Set<String> _azurermLinuxVirtualMachineScaleSetSensitive = <String>{
  'admin_password',
  'custom_data',
  'extension.protected_settings',
};

/// Typed helper for the `additional_capabilities` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetAdditionalCapabilities {
  const LinuxVirtualMachineScaleSetAdditionalCapabilities({
    this.ultraSsdEnabled,
  });

  final TfArg<bool>? ultraSsdEnabled;

  @internal
  Map<String, Object?> encode() => {
    'ultra_ssd_enabled': ?ultraSsdEnabled?.toTfJson(),
  };
}

/// Typed helper for the `admin_ssh_key` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetAdminSshKey {
  const LinuxVirtualMachineScaleSetAdminSshKey({
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

/// Typed helper for the `automatic_instance_repair` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetAutomaticInstanceRepair {
  const LinuxVirtualMachineScaleSetAutomaticInstanceRepair({
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

/// Typed helper for the `automatic_os_upgrade_policy` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy {
  const LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy({
    required this.automaticOsUpgradeEnabled,
    required this.automaticRollbackEnabled,
  });

  final TfArg<bool> automaticOsUpgradeEnabled;

  final TfArg<bool> automaticRollbackEnabled;

  @internal
  Map<String, Object?> encode() => {
    'automatic_os_upgrade_enabled': automaticOsUpgradeEnabled.toTfJson(),
    'automatic_rollback_enabled': automaticRollbackEnabled.toTfJson(),
  };
}

/// Typed helper for the `boot_diagnostics` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetBootDiagnostics {
  const LinuxVirtualMachineScaleSetBootDiagnostics({this.storageAccountUri});

  final TfArg<String>? storageAccountUri;

  @internal
  Map<String, Object?> encode() => {
    'storage_account_uri': ?storageAccountUri?.toTfJson(),
  };
}

/// Typed helper for the `data_disk` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetDataDisk {
  const LinuxVirtualMachineScaleSetDataDisk({
    required this.caching,
    this.createOption,
    this.diskEncryptionSetId,
    this.diskIopsReadWrite,
    this.diskMbpsReadWrite,
    required this.diskSizeGb,
    required this.lun,
    this.name,
    required this.storageAccountType,
    this.writeAcceleratorEnabled,
  });

  final TfArg<String> caching;

  final TfArg<String>? createOption;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num>? diskIopsReadWrite;

  final TfArg<num>? diskMbpsReadWrite;

  final TfArg<num> diskSizeGb;

  final TfArg<num> lun;

  final TfArg<String>? name;

  final TfArg<String> storageAccountType;

  final TfArg<bool>? writeAcceleratorEnabled;

  @internal
  Map<String, Object?> encode() => {
    'caching': caching.toTfJson(),
    'create_option': ?createOption?.toTfJson(),
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'disk_iops_read_write': ?diskIopsReadWrite?.toTfJson(),
    'disk_mbps_read_write': ?diskMbpsReadWrite?.toTfJson(),
    'disk_size_gb': diskSizeGb.toTfJson(),
    'lun': lun.toTfJson(),
    'name': ?name?.toTfJson(),
    'storage_account_type': storageAccountType.toTfJson(),
    'write_accelerator_enabled': ?writeAcceleratorEnabled?.toTfJson(),
  };
}

/// Typed helper for the `extension` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetExtension {
  const LinuxVirtualMachineScaleSetExtension({
    this.autoUpgradeMinorVersion,
    this.automaticUpgradeEnabled,
    this.forceUpdateTag,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    required this.type,
    required this.typeHandlerVersion,
    this.protectedSettingsFromKeyVault,
  });

  final TfArg<bool>? autoUpgradeMinorVersion;

  final TfArg<bool>? automaticUpgradeEnabled;

  final TfArg<String>? forceUpdateTag;

  final TfArg<String> name;

  final Sensitive<String>? protectedSettings;

  final TfArg<List<String>>? provisionAfterExtensions;

  final TfArg<String> publisher;

  final TfArg<String>? settings;

  final TfArg<String> type;

  final TfArg<String> typeHandlerVersion;

  final LinuxVirtualMachineScaleSetProtectedSettingsFromKeyVault?
  protectedSettingsFromKeyVault;

  @internal
  Map<String, Object?> encode() => {
    'auto_upgrade_minor_version': ?autoUpgradeMinorVersion?.toTfJson(),
    'automatic_upgrade_enabled': ?automaticUpgradeEnabled?.toTfJson(),
    'force_update_tag': ?forceUpdateTag?.toTfJson(),
    'name': name.toTfJson(),
    'protected_settings': ?protectedSettings?.toTfJson(),
    'provision_after_extensions': ?provisionAfterExtensions?.toTfJson(),
    'publisher': publisher.toTfJson(),
    'settings': ?settings?.toTfJson(),
    'type': type.toTfJson(),
    'type_handler_version': typeHandlerVersion.toTfJson(),
    'protected_settings_from_key_vault': ?protectedSettingsFromKeyVault
        ?.encode(),
  };
}

/// Typed helper for the `extension.protected_settings_from_key_vault` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetProtectedSettingsFromKeyVault {
  const LinuxVirtualMachineScaleSetProtectedSettingsFromKeyVault({
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

/// Typed helper for the `gallery_application` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetGalleryApplication {
  const LinuxVirtualMachineScaleSetGalleryApplication({
    this.configurationBlobUri,
    this.order,
    this.tag,
    required this.versionId,
  });

  final TfArg<String>? configurationBlobUri;

  final TfArg<num>? order;

  final TfArg<String>? tag;

  final TfArg<String> versionId;

  @internal
  Map<String, Object?> encode() => {
    'configuration_blob_uri': ?configurationBlobUri?.toTfJson(),
    'order': ?order?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'version_id': versionId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetIdentity {
  const LinuxVirtualMachineScaleSetIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `network_interface` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetNetworkInterface {
  const LinuxVirtualMachineScaleSetNetworkInterface({
    this.acceleratedNetworkingEnabled,
    this.auxiliaryMode,
    this.auxiliarySku,
    this.dnsServers,
    this.ipForwardingEnabled,
    required this.name,
    this.networkSecurityGroupId,
    this.primary,
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

  final List<LinuxVirtualMachineScaleSetIpConfiguration> ipConfiguration;

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
    'ip_configuration': [for (final e in ipConfiguration) e.encode()],
  };
}

/// Typed helper for the `network_interface.ip_configuration` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetIpConfiguration {
  const LinuxVirtualMachineScaleSetIpConfiguration({
    this.applicationGatewayBackendAddressPoolIds,
    this.applicationSecurityGroupIds,
    this.loadBalancerBackendAddressPoolIds,
    this.loadBalancerInboundNatRulesIds,
    required this.name,
    this.primary,
    this.subnetId,
    this.version,
    this.publicIpAddress,
  });

  final TfArg<List<String>>? applicationGatewayBackendAddressPoolIds;

  final TfArg<List<String>>? applicationSecurityGroupIds;

  final TfArg<List<String>>? loadBalancerBackendAddressPoolIds;

  final TfArg<List<String>>? loadBalancerInboundNatRulesIds;

  final TfArg<String> name;

  final TfArg<bool>? primary;

  final TfArg<String>? subnetId;

  final TfArg<String>? version;

  final List<LinuxVirtualMachineScaleSetPublicIpAddress>? publicIpAddress;

  @internal
  Map<String, Object?> encode() => {
    'application_gateway_backend_address_pool_ids':
        ?applicationGatewayBackendAddressPoolIds?.toTfJson(),
    'application_security_group_ids': ?applicationSecurityGroupIds?.toTfJson(),
    'load_balancer_backend_address_pool_ids': ?loadBalancerBackendAddressPoolIds
        ?.toTfJson(),
    'load_balancer_inbound_nat_rules_ids': ?loadBalancerInboundNatRulesIds
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
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetPublicIpAddress {
  const LinuxVirtualMachineScaleSetPublicIpAddress({
    this.domainNameLabel,
    this.idleTimeoutInMinutes,
    required this.name,
    this.publicIpPrefixId,
    this.version,
    this.ipTag,
  });

  final TfArg<String>? domainNameLabel;

  final TfArg<num>? idleTimeoutInMinutes;

  final TfArg<String> name;

  final TfArg<String>? publicIpPrefixId;

  final TfArg<String>? version;

  final List<LinuxVirtualMachineScaleSetIpTag>? ipTag;

  @internal
  Map<String, Object?> encode() => {
    'domain_name_label': ?domainNameLabel?.toTfJson(),
    'idle_timeout_in_minutes': ?idleTimeoutInMinutes?.toTfJson(),
    'name': name.toTfJson(),
    'public_ip_prefix_id': ?publicIpPrefixId?.toTfJson(),
    'version': ?version?.toTfJson(),
    if (ipTag != null) 'ip_tag': [for (final e in ipTag!) e.encode()],
  };
}

/// Typed helper for the `network_interface.ip_configuration.public_ip_address.ip_tag` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetIpTag {
  const LinuxVirtualMachineScaleSetIpTag({
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
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetOsDisk {
  const LinuxVirtualMachineScaleSetOsDisk({
    required this.caching,
    this.diskEncryptionSetId,
    this.diskSizeGb,
    this.secureVmDiskEncryptionSetId,
    this.securityEncryptionType,
    required this.storageAccountType,
    this.writeAcceleratorEnabled,
    this.diffDiskSettings,
  });

  final TfArg<String> caching;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? secureVmDiskEncryptionSetId;

  final TfArg<String>? securityEncryptionType;

  final TfArg<String> storageAccountType;

  final TfArg<bool>? writeAcceleratorEnabled;

  final LinuxVirtualMachineScaleSetDiffDiskSettings? diffDiskSettings;

  @internal
  Map<String, Object?> encode() => {
    'caching': caching.toTfJson(),
    'disk_encryption_set_id': ?diskEncryptionSetId?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'secure_vm_disk_encryption_set_id': ?secureVmDiskEncryptionSetId
        ?.toTfJson(),
    'security_encryption_type': ?securityEncryptionType?.toTfJson(),
    'storage_account_type': storageAccountType.toTfJson(),
    'write_accelerator_enabled': ?writeAcceleratorEnabled?.toTfJson(),
    'diff_disk_settings': ?diffDiskSettings?.encode(),
  };
}

/// Typed helper for the `os_disk.diff_disk_settings` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetDiffDiskSettings {
  const LinuxVirtualMachineScaleSetDiffDiskSettings({
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

/// Typed helper for the `plan` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetPlan {
  const LinuxVirtualMachineScaleSetPlan({
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

/// Typed helper for the `rolling_upgrade_policy` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetRollingUpgradePolicy {
  const LinuxVirtualMachineScaleSetRollingUpgradePolicy({
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

/// Typed helper for the `scale_in` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetScaleIn {
  const LinuxVirtualMachineScaleSetScaleIn({
    this.forceDeletionEnabled,
    this.rule,
  });

  final TfArg<bool>? forceDeletionEnabled;

  final TfArg<String>? rule;

  @internal
  Map<String, Object?> encode() => {
    'force_deletion_enabled': ?forceDeletionEnabled?.toTfJson(),
    'rule': ?rule?.toTfJson(),
  };
}

/// Typed helper for the `secret` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetSecret {
  const LinuxVirtualMachineScaleSetSecret({
    required this.keyVaultId,
    required this.certificate,
  });

  final TfArg<String> keyVaultId;

  final List<LinuxVirtualMachineScaleSetCertificate> certificate;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_id': keyVaultId.toTfJson(),
    'certificate': [for (final e in certificate) e.encode()],
  };
}

/// Typed helper for the `secret.certificate` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetCertificate {
  const LinuxVirtualMachineScaleSetCertificate({required this.url});

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {'url': url.toTfJson()};
}

/// Typed helper for the `source_image_reference` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetSourceImageReference {
  const LinuxVirtualMachineScaleSetSourceImageReference({
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

/// Typed helper for the `spot_restore` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetSpotRestore {
  const LinuxVirtualMachineScaleSetSpotRestore({this.enabled, this.timeout});

  final TfArg<bool>? enabled;

  final TfArg<String>? timeout;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
  };
}

/// Typed helper for the `termination_notification` block of
/// `azurerm_linux_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class LinuxVirtualMachineScaleSetTerminationNotification {
  const LinuxVirtualMachineScaleSetTerminationNotification({
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

/// Factory wrapper for `azurerm_linux_virtual_machine_scale_set`.
final class AzurermLinuxVirtualMachineScaleSet extends Resource {
  static const String tfType = 'azurerm_linux_virtual_machine_scale_set';

  AzurermLinuxVirtualMachineScaleSet(
    super.localName, {
    Sensitive<String>? adminPassword,
    required TfArg<String> adminUsername,
    TfArg<String>? capacityReservationGroupId,
    TfArg<String>? computerNamePrefix,
    Sensitive<String>? customData,
    TfArg<bool>? disablePasswordAuthentication,
    TfArg<bool>? doNotRunExtensionsOnOverprovisionedMachines,
    TfArg<String>? edgeZone,
    TfArg<bool>? encryptionAtHostEnabled,
    TfArg<String>? evictionPolicy,
    TfArg<bool>? extensionOperationsEnabled,
    TfArg<String>? extensionsTimeBudget,
    TfArg<String>? healthProbeId,
    TfArg<String>? hostGroupId,
    TfArg<num>? instances,
    required TfArg<String> location,
    TfArg<num>? maxBidPrice,
    required TfArg<String> name,
    TfArg<bool>? overprovision,
    TfArg<num>? platformFaultDomainCount,
    TfArg<String>? priority,
    TfArg<bool>? provisionVmAgent,
    TfArg<String>? proximityPlacementGroupId,
    TfArg<bool>? resilientVmCreationEnabled,
    TfArg<bool>? resilientVmDeletionEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? secureBootEnabled,
    TfArg<bool>? singlePlacementGroup,
    required TfArg<String> sku,
    TfArg<String>? sourceImageId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? upgradeMode,
    TfArg<String>? userData,
    TfArg<bool>? vtpmEnabled,
    TfArg<bool>? zoneBalance,
    TfArg<List<String>>? zones,
    LinuxVirtualMachineScaleSetAdditionalCapabilities? additionalCapabilities,
    List<LinuxVirtualMachineScaleSetAdminSshKey>? adminSshKey,
    LinuxVirtualMachineScaleSetAutomaticInstanceRepair? automaticInstanceRepair,
    LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy?
    automaticOsUpgradePolicy,
    LinuxVirtualMachineScaleSetBootDiagnostics? bootDiagnostics,
    List<LinuxVirtualMachineScaleSetDataDisk>? dataDisk,
    List<LinuxVirtualMachineScaleSetExtension>? extension,
    List<LinuxVirtualMachineScaleSetGalleryApplication>? galleryApplication,
    LinuxVirtualMachineScaleSetIdentity? identity,
    required List<LinuxVirtualMachineScaleSetNetworkInterface> networkInterface,
    required LinuxVirtualMachineScaleSetOsDisk osDisk,
    LinuxVirtualMachineScaleSetPlan? plan,
    LinuxVirtualMachineScaleSetRollingUpgradePolicy? rollingUpgradePolicy,
    LinuxVirtualMachineScaleSetScaleIn? scaleIn,
    List<LinuxVirtualMachineScaleSetSecret>? secret,
    LinuxVirtualMachineScaleSetSourceImageReference? sourceImageReference,
    LinuxVirtualMachineScaleSetSpotRestore? spotRestore,
    LinuxVirtualMachineScaleSetTerminationNotification? terminationNotification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_password': ?adminPassword,
           'admin_username': adminUsername,
           'capacity_reservation_group_id': ?capacityReservationGroupId,
           'computer_name_prefix': ?computerNamePrefix,
           'custom_data': ?customData,
           'disable_password_authentication': ?disablePasswordAuthentication,
           'do_not_run_extensions_on_overprovisioned_machines':
               ?doNotRunExtensionsOnOverprovisionedMachines,
           'edge_zone': ?edgeZone,
           'encryption_at_host_enabled': ?encryptionAtHostEnabled,
           'eviction_policy': ?evictionPolicy,
           'extension_operations_enabled': ?extensionOperationsEnabled,
           'extensions_time_budget': ?extensionsTimeBudget,
           'health_probe_id': ?healthProbeId,
           'host_group_id': ?hostGroupId,
           'instances': ?instances,
           'location': location,
           'max_bid_price': ?maxBidPrice,
           'name': name,
           'overprovision': ?overprovision,
           'platform_fault_domain_count': ?platformFaultDomainCount,
           'priority': ?priority,
           'provision_vm_agent': ?provisionVmAgent,
           'proximity_placement_group_id': ?proximityPlacementGroupId,
           'resilient_vm_creation_enabled': ?resilientVmCreationEnabled,
           'resilient_vm_deletion_enabled': ?resilientVmDeletionEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'secure_boot_enabled': ?secureBootEnabled,
           'single_placement_group': ?singlePlacementGroup,
           'sku': sku,
           'source_image_id': ?sourceImageId,
           'tags': ?tags,
           'upgrade_mode': ?upgradeMode,
           'user_data': ?userData,
           'vtpm_enabled': ?vtpmEnabled,
           'zone_balance': ?zoneBalance,
           'zones': ?zones,
           if (additionalCapabilities != null)
             'additional_capabilities': TfArg.literal(
               additionalCapabilities.encode(),
             ),
           if (adminSshKey != null)
             'admin_ssh_key': TfArg.literal([
               for (final e in adminSshKey) e.encode(),
             ]),
           if (automaticInstanceRepair != null)
             'automatic_instance_repair': TfArg.literal(
               automaticInstanceRepair.encode(),
             ),
           if (automaticOsUpgradePolicy != null)
             'automatic_os_upgrade_policy': TfArg.literal(
               automaticOsUpgradePolicy.encode(),
             ),
           if (bootDiagnostics != null)
             'boot_diagnostics': TfArg.literal(bootDiagnostics.encode()),
           if (dataDisk != null)
             'data_disk': TfArg.literal([for (final e in dataDisk) e.encode()]),
           if (extension != null)
             'extension': TfArg.literal([
               for (final e in extension) e.encode(),
             ]),
           if (galleryApplication != null)
             'gallery_application': TfArg.literal([
               for (final e in galleryApplication) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'network_interface': TfArg.literal([
             for (final e in networkInterface) e.encode(),
           ]),
           'os_disk': TfArg.literal(osDisk.encode()),
           if (plan != null) 'plan': TfArg.literal(plan.encode()),
           if (rollingUpgradePolicy != null)
             'rolling_upgrade_policy': TfArg.literal(
               rollingUpgradePolicy.encode(),
             ),
           if (scaleIn != null) 'scale_in': TfArg.literal(scaleIn.encode()),
           if (secret != null)
             'secret': TfArg.literal([for (final e in secret) e.encode()]),
           if (sourceImageReference != null)
             'source_image_reference': TfArg.literal(
               sourceImageReference.encode(),
             ),
           if (spotRestore != null)
             'spot_restore': TfArg.literal(spotRestore.encode()),
           if (terminationNotification != null)
             'termination_notification': TfArg.literal(
               terminationNotification.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLinuxVirtualMachineScaleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLinuxVirtualMachineScaleSet>`.
  RefTo<AzurermLinuxVirtualMachineScaleSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `admin_username` attribute.
  TfRef<String> get adminUsername =>
      TfRef.attribute<String>(this, 'admin_username');

  /// Reference to `capacity_reservation_group_id` attribute.
  TfRef<String> get capacityReservationGroupId =>
      TfRef.attribute<String>(this, 'capacity_reservation_group_id');

  /// Reference to `computer_name_prefix` attribute.
  TfRef<String> get computerNamePrefix =>
      TfRef.attribute<String>(this, 'computer_name_prefix');

  /// Reference to `custom_data` attribute.
  TfRef<String> get customData => TfRef.attribute<String>(this, 'custom_data');

  /// Reference to `disable_password_authentication` attribute.
  TfRef<bool> get disablePasswordAuthentication =>
      TfRef.attribute<bool>(this, 'disable_password_authentication');

  /// Reference to `do_not_run_extensions_on_overprovisioned_machines` attribute.
  TfRef<bool> get doNotRunExtensionsOnOverprovisionedMachines =>
      TfRef.attribute<bool>(
        this,
        'do_not_run_extensions_on_overprovisioned_machines',
      );

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

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

  /// Reference to `health_probe_id` attribute.
  TfRef<String> get healthProbeId =>
      TfRef.attribute<String>(this, 'health_probe_id');

  /// Reference to `host_group_id` attribute.
  TfRef<String> get hostGroupId =>
      TfRef.attribute<String>(this, 'host_group_id');

  /// Reference to `instances` attribute.
  TfRef<num> get instances => TfRef.attribute<num>(this, 'instances');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_bid_price` attribute.
  TfRef<num> get maxBidPrice => TfRef.attribute<num>(this, 'max_bid_price');

  /// Reference to `overprovision` attribute.
  TfRef<bool> get overprovision => TfRef.attribute<bool>(this, 'overprovision');

  /// Reference to `platform_fault_domain_count` attribute.
  TfRef<num> get platformFaultDomainCount =>
      TfRef.attribute<num>(this, 'platform_fault_domain_count');

  /// Reference to `priority` attribute.
  TfRef<String> get priority => TfRef.attribute<String>(this, 'priority');

  /// Reference to `provision_vm_agent` attribute.
  TfRef<bool> get provisionVmAgent =>
      TfRef.attribute<bool>(this, 'provision_vm_agent');

  /// Reference to `proximity_placement_group_id` attribute.
  TfRef<String> get proximityPlacementGroupId =>
      TfRef.attribute<String>(this, 'proximity_placement_group_id');

  /// Reference to `resilient_vm_creation_enabled` attribute.
  TfRef<bool> get resilientVmCreationEnabled =>
      TfRef.attribute<bool>(this, 'resilient_vm_creation_enabled');

  /// Reference to `resilient_vm_deletion_enabled` attribute.
  TfRef<bool> get resilientVmDeletionEnabled =>
      TfRef.attribute<bool>(this, 'resilient_vm_deletion_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `secure_boot_enabled` attribute.
  TfRef<bool> get secureBootEnabled =>
      TfRef.attribute<bool>(this, 'secure_boot_enabled');

  /// Reference to `single_placement_group` attribute.
  TfRef<bool> get singlePlacementGroup =>
      TfRef.attribute<bool>(this, 'single_placement_group');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `source_image_id` attribute.
  TfRef<String> get sourceImageId =>
      TfRef.attribute<String>(this, 'source_image_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `upgrade_mode` attribute.
  TfRef<String> get upgradeMode =>
      TfRef.attribute<String>(this, 'upgrade_mode');

  /// Reference to `user_data` attribute.
  TfRef<String> get userData => TfRef.attribute<String>(this, 'user_data');

  /// Reference to `vtpm_enabled` attribute.
  TfRef<bool> get vtpmEnabled => TfRef.attribute<bool>(this, 'vtpm_enabled');

  /// Reference to `zone_balance` attribute.
  TfRef<bool> get zoneBalance => TfRef.attribute<bool>(this, 'zone_balance');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
