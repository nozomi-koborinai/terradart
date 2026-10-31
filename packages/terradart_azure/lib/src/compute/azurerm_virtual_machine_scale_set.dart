// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_machine_scale_set`.
const Set<String> _azurermVirtualMachineScaleSetSensitive = <String>{
  'extension.protected_settings',
  'os_profile.admin_password',
  'os_profile_windows_config.additional_unattend_config.content',
};

/// Virtual Machine Scale Set Eviction enum for `eviction_policy`.
extension type const VirtualMachineScaleSetEvictionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineScaleSetEvictionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineScaleSetEvictionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineScaleSetEvictionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const deallocate = VirtualMachineScaleSetEvictionPolicy._(
    TfArgLiteral('Deallocate'),
  );
  static const delete = VirtualMachineScaleSetEvictionPolicy._(
    TfArgLiteral('Delete'),
  );

  static const List<VirtualMachineScaleSetEvictionPolicy> values = [
    deallocate,
    delete,
  ];
}

/// Virtual Machine Scale Set License enum for `license_type`.
extension type const VirtualMachineScaleSetLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineScaleSetLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineScaleSetLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineScaleSetLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const windowsClient = VirtualMachineScaleSetLicenseType._(
    TfArgLiteral('Windows_Client'),
  );
  static const windowsServer = VirtualMachineScaleSetLicenseType._(
    TfArgLiteral('Windows_Server'),
  );

  static const List<VirtualMachineScaleSetLicenseType> values = [
    windowsClient,
    windowsServer,
  ];
}

/// Virtual Machine Scale Set enum for `priority`.
extension type const VirtualMachineScaleSetPriority._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineScaleSetPriority.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineScaleSetPriority.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineScaleSetPriority.arg(TfArg<String> arg) : this._(arg);

  static const low = VirtualMachineScaleSetPriority._(TfArgLiteral('Low'));
  static const regular = VirtualMachineScaleSetPriority._(
    TfArgLiteral('Regular'),
  );

  static const List<VirtualMachineScaleSetPriority> values = [low, regular];
}

/// Virtual Machine Scale Set Upgrade Policy enum for `upgrade_policy_mode`.
extension type const VirtualMachineScaleSetUpgradePolicyMode._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineScaleSetUpgradePolicyMode.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineScaleSetUpgradePolicyMode.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineScaleSetUpgradePolicyMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automatic = VirtualMachineScaleSetUpgradePolicyMode._(
    TfArgLiteral('Automatic'),
  );
  static const manual = VirtualMachineScaleSetUpgradePolicyMode._(
    TfArgLiteral('Manual'),
  );
  static const rolling = VirtualMachineScaleSetUpgradePolicyMode._(
    TfArgLiteral('Rolling'),
  );

  static const List<VirtualMachineScaleSetUpgradePolicyMode> values = [
    automatic,
    manual,
    rolling,
  ];
}

/// Typed helper for the `boot_diagnostics` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetBootDiagnostics {
  const VirtualMachineScaleSetBootDiagnostics({
    this.enabled,
    required this.storageUri,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> storageUri;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'storage_uri': storageUri.toTfJson(),
  };
}

/// Typed helper for the `extension` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetExtension {
  const VirtualMachineScaleSetExtension({
    this.autoUpgradeMinorVersion,
    required this.name,
    this.protectedSettings,
    this.provisionAfterExtensions,
    required this.publisher,
    this.settings,
    required this.type,
    required this.typeHandlerVersion,
  });

  final TfArg<bool>? autoUpgradeMinorVersion;

  final TfArg<String> name;

  final Sensitive<String>? protectedSettings;

  final TfArg<List<String>>? provisionAfterExtensions;

  final TfArg<String> publisher;

  final TfArg<String>? settings;

  final TfArg<String> type;

  final TfArg<String> typeHandlerVersion;

  @internal
  Map<String, Object?> encode() => {
    'auto_upgrade_minor_version': ?autoUpgradeMinorVersion?.toTfJson(),
    'name': name.toTfJson(),
    'protected_settings': ?protectedSettings?.toTfJson(),
    'provision_after_extensions': ?provisionAfterExtensions?.toTfJson(),
    'publisher': publisher.toTfJson(),
    'settings': ?settings?.toTfJson(),
    'type': type.toTfJson(),
    'type_handler_version': typeHandlerVersion.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetIdentity {
  const VirtualMachineScaleSetIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `network_profile` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetNetworkProfile {
  const VirtualMachineScaleSetNetworkProfile({
    this.acceleratedNetworking,
    this.ipForwarding,
    required this.name,
    this.networkSecurityGroupId,
    required this.primary,
    this.dnsSettings,
    required this.ipConfiguration,
  });

  final TfArg<bool>? acceleratedNetworking;

  final TfArg<bool>? ipForwarding;

  final TfArg<String> name;

  final TfArg<String>? networkSecurityGroupId;

  final TfArg<bool> primary;

  final VirtualMachineScaleSetDnsSettings? dnsSettings;

  final List<VirtualMachineScaleSetIpConfiguration> ipConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'accelerated_networking': ?acceleratedNetworking?.toTfJson(),
    'ip_forwarding': ?ipForwarding?.toTfJson(),
    'name': name.toTfJson(),
    'network_security_group_id': ?networkSecurityGroupId?.toTfJson(),
    'primary': primary.toTfJson(),
    'dns_settings': ?dnsSettings?.encode(),
    'ip_configuration': [for (final e in ipConfiguration) e.encode()],
  };
}

/// Typed helper for the `network_profile.dns_settings` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetDnsSettings {
  const VirtualMachineScaleSetDnsSettings({required this.dnsServers});

  final TfArg<List<String>> dnsServers;

  @internal
  Map<String, Object?> encode() => {'dns_servers': dnsServers.toTfJson()};
}

/// Typed helper for the `network_profile.ip_configuration` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetIpConfiguration {
  const VirtualMachineScaleSetIpConfiguration({
    this.applicationGatewayBackendAddressPoolIds,
    this.applicationSecurityGroupIds,
    this.loadBalancerBackendAddressPoolIds,
    this.loadBalancerInboundNatRulesIds,
    required this.name,
    required this.primary,
    required this.subnetId,
    this.publicIpAddressConfiguration,
  });

  final TfArg<List<String>>? applicationGatewayBackendAddressPoolIds;

  final TfArg<List<String>>? applicationSecurityGroupIds;

  final TfArg<List<String>>? loadBalancerBackendAddressPoolIds;

  final TfArg<List<String>>? loadBalancerInboundNatRulesIds;

  final TfArg<String> name;

  final TfArg<bool> primary;

  final TfArg<String> subnetId;

  final VirtualMachineScaleSetPublicIpAddressConfiguration?
  publicIpAddressConfiguration;

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
    'primary': primary.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
    'public_ip_address_configuration': ?publicIpAddressConfiguration?.encode(),
  };
}

/// Typed helper for the `network_profile.ip_configuration.public_ip_address_configuration` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetPublicIpAddressConfiguration {
  const VirtualMachineScaleSetPublicIpAddressConfiguration({
    required this.domainNameLabel,
    required this.idleTimeout,
    required this.name,
  });

  final TfArg<String> domainNameLabel;

  final TfArg<num> idleTimeout;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'domain_name_label': domainNameLabel.toTfJson(),
    'idle_timeout': idleTimeout.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `os_profile` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetOsProfile {
  const VirtualMachineScaleSetOsProfile({
    this.adminPassword,
    required this.adminUsername,
    required this.computerNamePrefix,
    this.customData,
  });

  final Sensitive<String>? adminPassword;

  final TfArg<String> adminUsername;

  final TfArg<String> computerNamePrefix;

  final TfArg<String>? customData;

  @internal
  Map<String, Object?> encode() => {
    'admin_password': ?adminPassword?.toTfJson(),
    'admin_username': adminUsername.toTfJson(),
    'computer_name_prefix': computerNamePrefix.toTfJson(),
    'custom_data': ?customData?.toTfJson(),
  };
}

/// Typed helper for the `os_profile_linux_config` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetOsProfileLinuxConfig {
  const VirtualMachineScaleSetOsProfileLinuxConfig({
    this.disablePasswordAuthentication,
    this.sshKeys,
  });

  final TfArg<bool>? disablePasswordAuthentication;

  final List<VirtualMachineScaleSetSshKeys>? sshKeys;

  @internal
  Map<String, Object?> encode() => {
    'disable_password_authentication': ?disablePasswordAuthentication
        ?.toTfJson(),
    if (sshKeys != null) 'ssh_keys': [for (final e in sshKeys!) e.encode()],
  };
}

/// Typed helper for the `os_profile_linux_config.ssh_keys` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetSshKeys {
  const VirtualMachineScaleSetSshKeys({this.keyData, required this.path});

  final TfArg<String>? keyData;

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {
    'key_data': ?keyData?.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `os_profile_secrets` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetOsProfileSecrets {
  const VirtualMachineScaleSetOsProfileSecrets({
    required this.sourceVaultId,
    this.vaultCertificates,
  });

  final TfArg<String> sourceVaultId;

  final List<VirtualMachineScaleSetVaultCertificates>? vaultCertificates;

  @internal
  Map<String, Object?> encode() => {
    'source_vault_id': sourceVaultId.toTfJson(),
    if (vaultCertificates != null)
      'vault_certificates': [for (final e in vaultCertificates!) e.encode()],
  };
}

/// Typed helper for the `os_profile_secrets.vault_certificates` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetVaultCertificates {
  const VirtualMachineScaleSetVaultCertificates({
    this.certificateStore,
    required this.certificateUrl,
  });

  final TfArg<String>? certificateStore;

  final TfArg<String> certificateUrl;

  @internal
  Map<String, Object?> encode() => {
    'certificate_store': ?certificateStore?.toTfJson(),
    'certificate_url': certificateUrl.toTfJson(),
  };
}

/// Typed helper for the `os_profile_windows_config` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetOsProfileWindowsConfig {
  const VirtualMachineScaleSetOsProfileWindowsConfig({
    this.enableAutomaticUpgrades,
    this.provisionVmAgent,
    this.additionalUnattendConfig,
    this.winrm,
  });

  final TfArg<bool>? enableAutomaticUpgrades;

  final TfArg<bool>? provisionVmAgent;

  final List<VirtualMachineScaleSetAdditionalUnattendConfig>?
  additionalUnattendConfig;

  final List<VirtualMachineScaleSetWinrm>? winrm;

  @internal
  Map<String, Object?> encode() => {
    'enable_automatic_upgrades': ?enableAutomaticUpgrades?.toTfJson(),
    'provision_vm_agent': ?provisionVmAgent?.toTfJson(),
    if (additionalUnattendConfig != null)
      'additional_unattend_config': [
        for (final e in additionalUnattendConfig!) e.encode(),
      ],
    if (winrm != null) 'winrm': [for (final e in winrm!) e.encode()],
  };
}

/// Typed helper for the `os_profile_windows_config.additional_unattend_config` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetAdditionalUnattendConfig {
  const VirtualMachineScaleSetAdditionalUnattendConfig({
    required this.component,
    required this.content,
    required this.pass,
    required this.settingName,
  });

  final TfArg<String> component;

  final Sensitive<String> content;

  final TfArg<String> pass;

  final TfArg<String> settingName;

  @internal
  Map<String, Object?> encode() => {
    'component': component.toTfJson(),
    'content': content.toTfJson(),
    'pass': pass.toTfJson(),
    'setting_name': settingName.toTfJson(),
  };
}

/// Typed helper for the `os_profile_windows_config.winrm` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetWinrm {
  const VirtualMachineScaleSetWinrm({
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
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetPlan {
  const VirtualMachineScaleSetPlan({
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
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetRollingUpgradePolicy {
  const VirtualMachineScaleSetRollingUpgradePolicy({
    this.maxBatchInstancePercent,
    this.maxUnhealthyInstancePercent,
    this.maxUnhealthyUpgradedInstancePercent,
    this.pauseTimeBetweenBatches,
  });

  final TfArg<num>? maxBatchInstancePercent;

  final TfArg<num>? maxUnhealthyInstancePercent;

  final TfArg<num>? maxUnhealthyUpgradedInstancePercent;

  final TfArg<String>? pauseTimeBetweenBatches;

  @internal
  Map<String, Object?> encode() => {
    'max_batch_instance_percent': ?maxBatchInstancePercent?.toTfJson(),
    'max_unhealthy_instance_percent': ?maxUnhealthyInstancePercent?.toTfJson(),
    'max_unhealthy_upgraded_instance_percent':
        ?maxUnhealthyUpgradedInstancePercent?.toTfJson(),
    'pause_time_between_batches': ?pauseTimeBetweenBatches?.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetSku {
  const VirtualMachineScaleSetSku({
    required this.capacity,
    required this.name,
    this.tier,
  });

  final TfArg<num> capacity;

  final TfArg<String> name;

  final TfArg<String>? tier;

  @internal
  Map<String, Object?> encode() => {
    'capacity': capacity.toTfJson(),
    'name': name.toTfJson(),
    'tier': ?tier?.toTfJson(),
  };
}

/// Typed helper for the `storage_profile_data_disk` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetStorageProfileDataDisk {
  const VirtualMachineScaleSetStorageProfileDataDisk({
    this.caching,
    required this.createOption,
    this.diskSizeGb,
    required this.lun,
    this.managedDiskType,
  });

  final TfArg<String>? caching;

  final TfArg<String> createOption;

  final TfArg<num>? diskSizeGb;

  final TfArg<num> lun;

  final VirtualMachineScaleSetManagedDiskType? managedDiskType;

  @internal
  Map<String, Object?> encode() => {
    'caching': ?caching?.toTfJson(),
    'create_option': createOption.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'lun': lun.toTfJson(),
    'managed_disk_type': ?managedDiskType?.toTfJson(),
  };
}

/// `managed_disk_type` — derived from the provider schema description.
extension type const VirtualMachineScaleSetManagedDiskType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineScaleSetManagedDiskType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineScaleSetManagedDiskType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineScaleSetManagedDiskType.arg(TfArg<String> arg)
    : this._(arg);

  static const premiumLrs = VirtualMachineScaleSetManagedDiskType._(
    TfArgLiteral('Premium_LRS'),
  );
  static const standardLrs = VirtualMachineScaleSetManagedDiskType._(
    TfArgLiteral('Standard_LRS'),
  );
  static const standardssdLrs = VirtualMachineScaleSetManagedDiskType._(
    TfArgLiteral('StandardSSD_LRS'),
  );

  static const List<VirtualMachineScaleSetManagedDiskType> values = [
    premiumLrs,
    standardLrs,
    standardssdLrs,
  ];
}

/// Typed helper for the `storage_profile_image_reference` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetStorageProfileImageReference {
  const VirtualMachineScaleSetStorageProfileImageReference({
    this.id,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  final TfArg<String>? id;

  final TfArg<String>? offer;

  final TfArg<String>? publisher;

  final TfArg<String>? sku;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'offer': ?offer?.toTfJson(),
    'publisher': ?publisher?.toTfJson(),
    'sku': ?sku?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `storage_profile_os_disk` block of
/// `azurerm_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class VirtualMachineScaleSetStorageProfileOsDisk {
  const VirtualMachineScaleSetStorageProfileOsDisk({
    this.caching,
    required this.createOption,
    this.image,
    this.managedDiskType,
    this.name,
    this.osType,
    this.vhdContainers,
  });

  final TfArg<String>? caching;

  final TfArg<String> createOption;

  final TfArg<String>? image;

  final VirtualMachineScaleSetManagedDiskType? managedDiskType;

  final TfArg<String>? name;

  final TfArg<String>? osType;

  final TfArg<List<String>>? vhdContainers;

  @internal
  Map<String, Object?> encode() => {
    'caching': ?caching?.toTfJson(),
    'create_option': createOption.toTfJson(),
    'image': ?image?.toTfJson(),
    'managed_disk_type': ?managedDiskType?.toTfJson(),
    'name': ?name?.toTfJson(),
    'os_type': ?osType?.toTfJson(),
    'vhd_containers': ?vhdContainers?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_virtual_machine_scale_set`.
final class AzurermVirtualMachineScaleSet extends Resource {
  static const String tfType = 'azurerm_virtual_machine_scale_set';

  AzurermVirtualMachineScaleSet(
    super.localName, {
    TfArg<bool>? automaticOsUpgrade,
    VirtualMachineScaleSetEvictionPolicy? evictionPolicy,
    TfArg<String>? healthProbeId,
    VirtualMachineScaleSetLicenseType? licenseType,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? overprovision,
    VirtualMachineScaleSetPriority? priority,
    TfArg<String>? proximityPlacementGroupId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? singlePlacementGroup,
    TfArg<Map<String, String>>? tags,
    required VirtualMachineScaleSetUpgradePolicyMode upgradePolicyMode,
    TfArg<List<String>>? zones,
    VirtualMachineScaleSetBootDiagnostics? bootDiagnostics,
    List<VirtualMachineScaleSetExtension>? extension,
    VirtualMachineScaleSetIdentity? identity,
    required List<VirtualMachineScaleSetNetworkProfile> networkProfile,
    required VirtualMachineScaleSetOsProfile osProfile,
    VirtualMachineScaleSetOsProfileLinuxConfig? osProfileLinuxConfig,
    List<VirtualMachineScaleSetOsProfileSecrets>? osProfileSecrets,
    VirtualMachineScaleSetOsProfileWindowsConfig? osProfileWindowsConfig,
    VirtualMachineScaleSetPlan? plan,
    VirtualMachineScaleSetRollingUpgradePolicy? rollingUpgradePolicy,
    required VirtualMachineScaleSetSku sku,
    List<VirtualMachineScaleSetStorageProfileDataDisk>? storageProfileDataDisk,
    VirtualMachineScaleSetStorageProfileImageReference?
    storageProfileImageReference,
    required VirtualMachineScaleSetStorageProfileOsDisk storageProfileOsDisk,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automatic_os_upgrade': ?automaticOsUpgrade,
           'eviction_policy': ?evictionPolicy,
           'health_probe_id': ?healthProbeId,
           'license_type': ?licenseType,
           'location': location,
           'name': name,
           'overprovision': ?overprovision,
           'priority': ?priority,
           'proximity_placement_group_id': ?proximityPlacementGroupId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'single_placement_group': ?singlePlacementGroup,
           'tags': ?tags,
           'upgrade_policy_mode': upgradePolicyMode,
           'zones': ?zones,
           if (bootDiagnostics != null)
             'boot_diagnostics': TfArg.literal(bootDiagnostics.encode()),
           if (extension != null)
             'extension': TfArg.literal([
               for (final e in extension) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           'network_profile': TfArg.literal([
             for (final e in networkProfile) e.encode(),
           ]),
           'os_profile': TfArg.literal(osProfile.encode()),
           if (osProfileLinuxConfig != null)
             'os_profile_linux_config': TfArg.literal(
               osProfileLinuxConfig.encode(),
             ),
           if (osProfileSecrets != null)
             'os_profile_secrets': TfArg.literal([
               for (final e in osProfileSecrets) e.encode(),
             ]),
           if (osProfileWindowsConfig != null)
             'os_profile_windows_config': TfArg.literal(
               osProfileWindowsConfig.encode(),
             ),
           if (plan != null) 'plan': TfArg.literal(plan.encode()),
           if (rollingUpgradePolicy != null)
             'rolling_upgrade_policy': TfArg.literal(
               rollingUpgradePolicy.encode(),
             ),
           'sku': TfArg.literal(sku.encode()),
           if (storageProfileDataDisk != null)
             'storage_profile_data_disk': TfArg.literal([
               for (final e in storageProfileDataDisk) e.encode(),
             ]),
           if (storageProfileImageReference != null)
             'storage_profile_image_reference': TfArg.literal(
               storageProfileImageReference.encode(),
             ),
           'storage_profile_os_disk': TfArg.literal(
             storageProfileOsDisk.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualMachineScaleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachineScaleSet>`.
  RefTo<AzurermVirtualMachineScaleSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `automatic_os_upgrade` attribute.
  TfRef<bool> get automaticOsUpgrade =>
      TfRef.attribute<bool>(this, 'automatic_os_upgrade');

  /// Reference to `eviction_policy` attribute.
  TfRef<String> get evictionPolicy =>
      TfRef.attribute<String>(this, 'eviction_policy');

  /// Reference to `health_probe_id` attribute.
  TfRef<String> get healthProbeId =>
      TfRef.attribute<String>(this, 'health_probe_id');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `overprovision` attribute.
  TfRef<bool> get overprovision => TfRef.attribute<bool>(this, 'overprovision');

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

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `upgrade_policy_mode` attribute.
  TfRef<String> get upgradePolicyMode =>
      TfRef.attribute<String>(this, 'upgrade_policy_mode');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
