// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_machine`.
const Set<String> _azurermVirtualMachineSensitive = <String>{
  'os_profile.admin_password',
  'os_profile_windows_config.additional_unattend_config.content',
};

/// Virtual Machine License enum for `license_type`.
extension type const VirtualMachineLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineLicenseType.arg(TfArg<String> arg) : this._(arg);

  static const windowsClient = VirtualMachineLicenseType._(
    TfArgLiteral('Windows_Client'),
  );
  static const windowsServer = VirtualMachineLicenseType._(
    TfArgLiteral('Windows_Server'),
  );

  static const List<VirtualMachineLicenseType> values = [
    windowsClient,
    windowsServer,
  ];
}

/// At most one of `availability_set_id`, `zones` on `azurerm_virtual_machine`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.availabilitySetId(...)`.
sealed class VirtualMachineAvailabilitySetIdOrZones {
  const VirtualMachineAvailabilitySetIdOrZones();

  /// Sets `availability_set_id`.
  const factory VirtualMachineAvailabilitySetIdOrZones.availabilitySetId(
    TfArg<String> availabilitySetId,
  ) = VirtualMachineAvailabilitySetIdOrZonesAvailabilitySetId;

  /// Sets `zones`.
  const factory VirtualMachineAvailabilitySetIdOrZones.zones(
    TfArg<List<String>> zones,
  ) = VirtualMachineAvailabilitySetIdOrZonesChoice;

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

/// The [VirtualMachineAvailabilitySetIdOrZones.availabilitySetId] choice: sets `availability_set_id`.
final class VirtualMachineAvailabilitySetIdOrZonesAvailabilitySetId
    extends VirtualMachineAvailabilitySetIdOrZones {
  const VirtualMachineAvailabilitySetIdOrZonesAvailabilitySetId(
    this.availabilitySetId,
  );

  final TfArg<String> availabilitySetId;

  @internal
  @override
  String get blockKey => 'availability_set_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'availability_set_id': availabilitySetId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'availability_set_id': availabilitySetId,
  };
}

/// The [VirtualMachineAvailabilitySetIdOrZones.zones] choice: sets `zones`.
final class VirtualMachineAvailabilitySetIdOrZonesChoice
    extends VirtualMachineAvailabilitySetIdOrZones {
  const VirtualMachineAvailabilitySetIdOrZonesChoice(this.zones);

  final TfArg<List<String>> zones;

  @internal
  @override
  String get blockKey => 'zones';

  @internal
  @override
  Map<String, Object?> encode() => {'zones': zones.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'zones': zones};
}

/// At most one of `os_profile_linux_config`, `os_profile_windows_config` on `azurerm_virtual_machine`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.osProfileLinuxConfig(...)`.
sealed class VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig {
  const VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig();

  /// Sets `os_profile_linux_config`.
  const factory VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig.osProfileLinuxConfig(
    VirtualMachineOsProfileLinuxConfig osProfileLinuxConfig,
  ) = VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfigOsProfileLinuxConfig;

  /// Sets `os_profile_windows_config`.
  const factory VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig.osProfileWindowsConfig(
    VirtualMachineOsProfileWindowsConfig osProfileWindowsConfig,
  ) = VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfigChoice;

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

/// The [VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig.osProfileLinuxConfig] choice: sets `os_profile_linux_config`.
final class VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfigOsProfileLinuxConfig
    extends VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig {
  const VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfigOsProfileLinuxConfig(
    this.osProfileLinuxConfig,
  );

  final VirtualMachineOsProfileLinuxConfig osProfileLinuxConfig;

  @internal
  @override
  String get blockKey => 'os_profile_linux_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'os_profile_linux_config': osProfileLinuxConfig.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'os_profile_linux_config': TfArg.literal(osProfileLinuxConfig.encode()),
  };
}

/// The [VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig.osProfileWindowsConfig] choice: sets `os_profile_windows_config`.
final class VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfigChoice
    extends VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig {
  const VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfigChoice(
    this.osProfileWindowsConfig,
  );

  final VirtualMachineOsProfileWindowsConfig osProfileWindowsConfig;

  @internal
  @override
  String get blockKey => 'os_profile_windows_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'os_profile_windows_config': osProfileWindowsConfig.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'os_profile_windows_config': TfArg.literal(osProfileWindowsConfig.encode()),
  };
}

/// Typed helper for the `additional_capabilities` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineAdditionalCapabilities {
  const VirtualMachineAdditionalCapabilities({required this.ultraSsdEnabled});

  final TfArg<bool> ultraSsdEnabled;

  @internal
  Map<String, Object?> encode() => {
    'ultra_ssd_enabled': ultraSsdEnabled.toTfJson(),
  };
}

/// Typed helper for the `boot_diagnostics` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineBootDiagnostics {
  const VirtualMachineBootDiagnostics({
    required this.enabled,
    required this.storageUri,
  });

  final TfArg<bool> enabled;

  final TfArg<String> storageUri;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'storage_uri': storageUri.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineIdentity {
  const VirtualMachineIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `os_profile` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineOsProfile {
  const VirtualMachineOsProfile({
    this.adminPassword,
    required this.adminUsername,
    required this.computerName,
    this.customData,
  });

  final Sensitive<String>? adminPassword;

  final TfArg<String> adminUsername;

  final TfArg<String> computerName;

  final TfArg<String>? customData;

  @internal
  Map<String, Object?> encode() => {
    'admin_password': ?adminPassword?.toTfJson(),
    'admin_username': adminUsername.toTfJson(),
    'computer_name': computerName.toTfJson(),
    'custom_data': ?customData?.toTfJson(),
  };
}

/// Typed helper for the `os_profile_linux_config` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineOsProfileLinuxConfig {
  const VirtualMachineOsProfileLinuxConfig({
    required this.disablePasswordAuthentication,
    this.sshKeys,
  });

  final TfArg<bool> disablePasswordAuthentication;

  final List<VirtualMachineSshKeys>? sshKeys;

  @internal
  Map<String, Object?> encode() => {
    'disable_password_authentication': disablePasswordAuthentication.toTfJson(),
    if (sshKeys != null) 'ssh_keys': [for (final e in sshKeys!) e.encode()],
  };
}

/// Typed helper for the `os_profile_linux_config.ssh_keys` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineSshKeys {
  const VirtualMachineSshKeys({required this.keyData, required this.path});

  final TfArg<String> keyData;

  final TfArg<String> path;

  @internal
  Map<String, Object?> encode() => {
    'key_data': keyData.toTfJson(),
    'path': path.toTfJson(),
  };
}

/// Typed helper for the `os_profile_secrets` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineOsProfileSecrets {
  const VirtualMachineOsProfileSecrets({
    required this.sourceVaultId,
    this.vaultCertificates,
  });

  final TfArg<String> sourceVaultId;

  final List<VirtualMachineVaultCertificates>? vaultCertificates;

  @internal
  Map<String, Object?> encode() => {
    'source_vault_id': sourceVaultId.toTfJson(),
    if (vaultCertificates != null)
      'vault_certificates': [for (final e in vaultCertificates!) e.encode()],
  };
}

/// Typed helper for the `os_profile_secrets.vault_certificates` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineVaultCertificates {
  const VirtualMachineVaultCertificates({
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
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineOsProfileWindowsConfig {
  const VirtualMachineOsProfileWindowsConfig({
    this.enableAutomaticUpgrades,
    this.provisionVmAgent,
    this.timezone,
    this.additionalUnattendConfig,
    this.winrm,
  });

  final TfArg<bool>? enableAutomaticUpgrades;

  final TfArg<bool>? provisionVmAgent;

  final TfArg<String>? timezone;

  final List<VirtualMachineAdditionalUnattendConfig>? additionalUnattendConfig;

  final List<VirtualMachineWinrm>? winrm;

  @internal
  Map<String, Object?> encode() => {
    'enable_automatic_upgrades': ?enableAutomaticUpgrades?.toTfJson(),
    'provision_vm_agent': ?provisionVmAgent?.toTfJson(),
    'timezone': ?timezone?.toTfJson(),
    if (additionalUnattendConfig != null)
      'additional_unattend_config': [
        for (final e in additionalUnattendConfig!) e.encode(),
      ],
    if (winrm != null) 'winrm': [for (final e in winrm!) e.encode()],
  };
}

/// Typed helper for the `os_profile_windows_config.additional_unattend_config` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineAdditionalUnattendConfig {
  const VirtualMachineAdditionalUnattendConfig({
    required this.component,
    required this.content,
    required this.pass,
    required this.settingName,
  });

  final TfArg<String> component;

  final Sensitive<String> content;

  final TfArg<String> pass;

  final VirtualMachineSettingName settingName;

  @internal
  Map<String, Object?> encode() => {
    'component': component.toTfJson(),
    'content': content.toTfJson(),
    'pass': pass.toTfJson(),
    'setting_name': settingName.toTfJson(),
  };
}

/// `setting_name` — derived from the provider schema description.
extension type const VirtualMachineSettingName._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineSettingName.variable(String name)
    : this._(TfArg.variable(name));
  VirtualMachineSettingName.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineSettingName.arg(TfArg<String> arg) : this._(arg);

  static const autologon = VirtualMachineSettingName._(
    TfArgLiteral('AutoLogon'),
  );
  static const firstlogoncommands = VirtualMachineSettingName._(
    TfArgLiteral('FirstLogonCommands'),
  );

  static const List<VirtualMachineSettingName> values = [
    autologon,
    firstlogoncommands,
  ];
}

/// Typed helper for the `os_profile_windows_config.winrm` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineWinrm {
  const VirtualMachineWinrm({this.certificateUrl, required this.protocol});

  final TfArg<String>? certificateUrl;

  final VirtualMachineProtocol protocol;

  @internal
  Map<String, Object?> encode() => {
    'certificate_url': ?certificateUrl?.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const VirtualMachineProtocol._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineProtocol.variable(String name) : this._(TfArg.variable(name));
  VirtualMachineProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = VirtualMachineProtocol._(TfArgLiteral('HTTP'));
  static const https = VirtualMachineProtocol._(TfArgLiteral('HTTPS'));

  static const List<VirtualMachineProtocol> values = [http, https];
}

/// Typed helper for the `plan` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachinePlan {
  const VirtualMachinePlan({
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

/// Typed helper for the `storage_data_disk` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineStorageDataDisk {
  const VirtualMachineStorageDataDisk({
    this.caching,
    required this.createOption,
    this.diskSizeGb,
    required this.lun,
    this.managedDiskId,
    this.managedDiskType,
    required this.name,
    this.vhdUri,
    this.writeAcceleratorEnabled,
  });

  final TfArg<String>? caching;

  final TfArg<String> createOption;

  final TfArg<num>? diskSizeGb;

  final TfArg<num> lun;

  final TfArg<String>? managedDiskId;

  final TfArg<String>? managedDiskType;

  final TfArg<String> name;

  final TfArg<String>? vhdUri;

  final TfArg<bool>? writeAcceleratorEnabled;

  @internal
  Map<String, Object?> encode() => {
    'caching': ?caching?.toTfJson(),
    'create_option': createOption.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'lun': lun.toTfJson(),
    'managed_disk_id': ?managedDiskId?.toTfJson(),
    'managed_disk_type': ?managedDiskType?.toTfJson(),
    'name': name.toTfJson(),
    'vhd_uri': ?vhdUri?.toTfJson(),
    'write_accelerator_enabled': ?writeAcceleratorEnabled?.toTfJson(),
  };
}

/// Typed helper for the `storage_image_reference` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineStorageImageReference {
  const VirtualMachineStorageImageReference({
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

/// Typed helper for the `storage_os_disk` block of
/// `azurerm_virtual_machine` (derived from provider schema).
@immutable
final class VirtualMachineStorageOsDisk {
  const VirtualMachineStorageOsDisk({
    this.caching,
    required this.createOption,
    this.diskSizeGb,
    this.imageUri,
    this.managedDiskId,
    this.managedDiskType,
    required this.name,
    this.osType,
    this.vhdUri,
    this.writeAcceleratorEnabled,
  });

  final TfArg<String>? caching;

  final TfArg<String> createOption;

  final TfArg<num>? diskSizeGb;

  final TfArg<String>? imageUri;

  final TfArg<String>? managedDiskId;

  final TfArg<String>? managedDiskType;

  final TfArg<String> name;

  final VirtualMachineOsType? osType;

  final TfArg<String>? vhdUri;

  final TfArg<bool>? writeAcceleratorEnabled;

  @internal
  Map<String, Object?> encode() => {
    'caching': ?caching?.toTfJson(),
    'create_option': createOption.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'image_uri': ?imageUri?.toTfJson(),
    'managed_disk_id': ?managedDiskId?.toTfJson(),
    'managed_disk_type': ?managedDiskType?.toTfJson(),
    'name': name.toTfJson(),
    'os_type': ?osType?.toTfJson(),
    'vhd_uri': ?vhdUri?.toTfJson(),
    'write_accelerator_enabled': ?writeAcceleratorEnabled?.toTfJson(),
  };
}

/// `os_type` — derived from the provider schema description.
extension type const VirtualMachineOsType._(TfArg<String> _)
    implements TfArg<String> {
  VirtualMachineOsType.variable(String name) : this._(TfArg.variable(name));
  VirtualMachineOsType.expression(String template)
    : this._(TfArg.expression(template));
  const VirtualMachineOsType.arg(TfArg<String> arg) : this._(arg);

  static const linux = VirtualMachineOsType._(TfArgLiteral('Linux'));
  static const windows = VirtualMachineOsType._(TfArgLiteral('Windows'));

  static const List<VirtualMachineOsType> values = [linux, windows];
}

/// Factory wrapper for `azurerm_virtual_machine`.
final class AzurermVirtualMachine extends Resource {
  static const String tfType = 'azurerm_virtual_machine';

  AzurermVirtualMachine(
    super.localName, {
    VirtualMachineAvailabilitySetIdOrZones? availabilitySetIdOrZones,
    TfArg<bool>? deleteDataDisksOnTermination,
    TfArg<bool>? deleteOsDiskOnTermination,
    VirtualMachineLicenseType? licenseType,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<List<String>> networkInterfaceIds,
    TfArg<String>? primaryNetworkInterfaceId,
    TfArg<String>? proximityPlacementGroupId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vmSize,
    VirtualMachineAdditionalCapabilities? additionalCapabilities,
    VirtualMachineBootDiagnostics? bootDiagnostics,
    VirtualMachineIdentity? identity,
    VirtualMachineOsProfile? osProfile,
    VirtualMachineOsProfileLinuxConfigOrOsProfileWindowsConfig?
    osProfileLinuxConfigOrOsProfileWindowsConfig,
    List<VirtualMachineOsProfileSecrets>? osProfileSecrets,
    VirtualMachinePlan? plan,
    List<VirtualMachineStorageDataDisk>? storageDataDisk,
    VirtualMachineStorageImageReference? storageImageReference,
    required VirtualMachineStorageOsDisk storageOsDisk,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?availabilitySetIdOrZones?.argMap,
           'delete_data_disks_on_termination': ?deleteDataDisksOnTermination,
           'delete_os_disk_on_termination': ?deleteOsDiskOnTermination,
           'license_type': ?licenseType,
           'location': location,
           'name': name,
           'network_interface_ids': networkInterfaceIds,
           'primary_network_interface_id': ?primaryNetworkInterfaceId,
           'proximity_placement_group_id': ?proximityPlacementGroupId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'vm_size': vmSize,
           if (additionalCapabilities != null)
             'additional_capabilities': TfArg.literal(
               additionalCapabilities.encode(),
             ),
           if (bootDiagnostics != null)
             'boot_diagnostics': TfArg.literal(bootDiagnostics.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (osProfile != null)
             'os_profile': TfArg.literal(osProfile.encode()),
           ...?osProfileLinuxConfigOrOsProfileWindowsConfig?.argMap,
           if (osProfileSecrets != null)
             'os_profile_secrets': TfArg.literal([
               for (final e in osProfileSecrets) e.encode(),
             ]),
           if (plan != null) 'plan': TfArg.literal(plan.encode()),
           if (storageDataDisk != null)
             'storage_data_disk': TfArg.literal([
               for (final e in storageDataDisk) e.encode(),
             ]),
           if (storageImageReference != null)
             'storage_image_reference': TfArg.literal(
               storageImageReference.encode(),
             ),
           'storage_os_disk': TfArg.literal(storageOsDisk.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualMachineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVirtualMachine>`.
  RefTo<AzurermVirtualMachine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_set_id` attribute.
  TfRef<String> get availabilitySetId =>
      TfRef.attribute<String>(this, 'availability_set_id');

  /// Reference to `delete_data_disks_on_termination` attribute.
  TfRef<bool> get deleteDataDisksOnTermination =>
      TfRef.attribute<bool>(this, 'delete_data_disks_on_termination');

  /// Reference to `delete_os_disk_on_termination` attribute.
  TfRef<bool> get deleteOsDiskOnTermination =>
      TfRef.attribute<bool>(this, 'delete_os_disk_on_termination');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `primary_network_interface_id` attribute.
  TfRef<String> get primaryNetworkInterfaceId =>
      TfRef.attribute<String>(this, 'primary_network_interface_id');

  /// Reference to `proximity_placement_group_id` attribute.
  TfRef<String> get proximityPlacementGroupId =>
      TfRef.attribute<String>(this, 'proximity_placement_group_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vm_size` attribute.
  TfRef<String> get vmSize => TfRef.attribute<String>(this, 'vm_size');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
