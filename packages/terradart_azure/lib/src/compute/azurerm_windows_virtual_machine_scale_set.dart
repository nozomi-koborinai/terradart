// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_windows_virtual_machine_scale_set`.
const Set<String> _azurermWindowsVirtualMachineScaleSetSensitive = <String>{
  'additional_unattend_content.content',
  'admin_password',
  'custom_data',
  'extension.protected_settings',
};

/// Windows Virtual Machine Scale Set Eviction enum for `eviction_policy`.
extension type const WindowsVirtualMachineScaleSetEvictionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsVirtualMachineScaleSetEvictionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetEvictionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetEvictionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const deallocate = WindowsVirtualMachineScaleSetEvictionPolicy._(
    TfArgLiteral('Deallocate'),
  );
  static const delete = WindowsVirtualMachineScaleSetEvictionPolicy._(
    TfArgLiteral('Delete'),
  );

  static const List<WindowsVirtualMachineScaleSetEvictionPolicy> values = [
    deallocate,
    delete,
  ];
}

/// Windows Virtual Machine Scale Set License enum for `license_type`.
extension type const WindowsVirtualMachineScaleSetLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetLicenseType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = WindowsVirtualMachineScaleSetLicenseType._(
    TfArgLiteral('None'),
  );
  static const windowsClient = WindowsVirtualMachineScaleSetLicenseType._(
    TfArgLiteral('Windows_Client'),
  );
  static const windowsServer = WindowsVirtualMachineScaleSetLicenseType._(
    TfArgLiteral('Windows_Server'),
  );

  static const List<WindowsVirtualMachineScaleSetLicenseType> values = [
    none,
    windowsClient,
    windowsServer,
  ];
}

/// Windows Virtual Machine Scale Set enum for `priority`.
extension type const WindowsVirtualMachineScaleSetPriority._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetPriority.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetPriority.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetPriority.arg(TfArg<String> arg)
    : this._(arg);

  static const regular = WindowsVirtualMachineScaleSetPriority._(
    TfArgLiteral('Regular'),
  );
  static const spot = WindowsVirtualMachineScaleSetPriority._(
    TfArgLiteral('Spot'),
  );

  static const List<WindowsVirtualMachineScaleSetPriority> values = [
    regular,
    spot,
  ];
}

/// Windows Virtual Machine Scale Set Upgrade enum for `upgrade_mode`.
extension type const WindowsVirtualMachineScaleSetUpgradeMode._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetUpgradeMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetUpgradeMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetUpgradeMode.arg(TfArg<String> arg)
    : this._(arg);

  static const automatic = WindowsVirtualMachineScaleSetUpgradeMode._(
    TfArgLiteral('Automatic'),
  );
  static const manual = WindowsVirtualMachineScaleSetUpgradeMode._(
    TfArgLiteral('Manual'),
  );
  static const rolling = WindowsVirtualMachineScaleSetUpgradeMode._(
    TfArgLiteral('Rolling'),
  );

  static const List<WindowsVirtualMachineScaleSetUpgradeMode> values = [
    automatic,
    manual,
    rolling,
  ];
}

/// Exactly one of `source_image_id`, `source_image_reference` on `azurerm_windows_virtual_machine_scale_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceImageId(...)`.
sealed class WindowsVirtualMachineScaleSetSourceImage {
  const WindowsVirtualMachineScaleSetSourceImage();

  /// Sets `source_image_id`.
  const factory WindowsVirtualMachineScaleSetSourceImage.sourceImageId(
    TfArg<String> sourceImageId,
  ) = WindowsVirtualMachineScaleSetSourceImageId;

  /// Sets `source_image_reference`.
  const factory WindowsVirtualMachineScaleSetSourceImage.sourceImageReference(
    WindowsVirtualMachineScaleSetSourceImageReference sourceImageReference,
  ) = WindowsVirtualMachineScaleSetSourceImageReferenceChoice;

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

/// The [WindowsVirtualMachineScaleSetSourceImage.sourceImageId] choice: sets `source_image_id`.
final class WindowsVirtualMachineScaleSetSourceImageId
    extends WindowsVirtualMachineScaleSetSourceImage {
  const WindowsVirtualMachineScaleSetSourceImageId(this.sourceImageId);

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

/// The [WindowsVirtualMachineScaleSetSourceImage.sourceImageReference] choice: sets `source_image_reference`.
final class WindowsVirtualMachineScaleSetSourceImageReferenceChoice
    extends WindowsVirtualMachineScaleSetSourceImage {
  const WindowsVirtualMachineScaleSetSourceImageReferenceChoice(
    this.sourceImageReference,
  );

  final WindowsVirtualMachineScaleSetSourceImageReference sourceImageReference;

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

/// At most one of `capacity_reservation_group_id`, `proximity_placement_group_id` on `azurerm_windows_virtual_machine_scale_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationGroupId(...)`.
sealed class WindowsVirtualMachineScaleSetGroupId {
  const WindowsVirtualMachineScaleSetGroupId();

  /// Sets `capacity_reservation_group_id`.
  const factory WindowsVirtualMachineScaleSetGroupId.capacityReservationGroupId(
    TfArg<String> capacityReservationGroupId,
  ) = WindowsVirtualMachineScaleSetCapacityReservationGroupId;

  /// Sets `proximity_placement_group_id`.
  const factory WindowsVirtualMachineScaleSetGroupId.proximityPlacementGroupId(
    TfArg<String> proximityPlacementGroupId,
  ) = WindowsVirtualMachineScaleSetProximityPlacementGroupId;

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

/// The [WindowsVirtualMachineScaleSetGroupId.capacityReservationGroupId] choice: sets `capacity_reservation_group_id`.
final class WindowsVirtualMachineScaleSetCapacityReservationGroupId
    extends WindowsVirtualMachineScaleSetGroupId {
  const WindowsVirtualMachineScaleSetCapacityReservationGroupId(
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

/// The [WindowsVirtualMachineScaleSetGroupId.proximityPlacementGroupId] choice: sets `proximity_placement_group_id`.
final class WindowsVirtualMachineScaleSetProximityPlacementGroupId
    extends WindowsVirtualMachineScaleSetGroupId {
  const WindowsVirtualMachineScaleSetProximityPlacementGroupId(
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

/// Typed helper for the `additional_capabilities` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetAdditionalCapabilities {
  const WindowsVirtualMachineScaleSetAdditionalCapabilities({
    this.ultraSsdEnabled,
  });

  final TfArg<bool>? ultraSsdEnabled;

  @internal
  Map<String, Object?> encode() => {
    'ultra_ssd_enabled': ?ultraSsdEnabled?.toTfJson(),
  };
}

/// Typed helper for the `additional_unattend_content` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetAdditionalUnattendContent {
  const WindowsVirtualMachineScaleSetAdditionalUnattendContent({
    required this.content,
    required this.setting,
  });

  final Sensitive<String> content;

  final WindowsVirtualMachineScaleSetSetting setting;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'setting': setting.toTfJson(),
  };
}

/// `setting` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetSetting._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetSetting.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetSetting.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetSetting.arg(TfArg<String> arg)
    : this._(arg);

  static const autologon = WindowsVirtualMachineScaleSetSetting._(
    TfArgLiteral('AutoLogon'),
  );
  static const firstlogoncommands = WindowsVirtualMachineScaleSetSetting._(
    TfArgLiteral('FirstLogonCommands'),
  );

  static const List<WindowsVirtualMachineScaleSetSetting> values = [
    autologon,
    firstlogoncommands,
  ];
}

/// Typed helper for the `automatic_instance_repair` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetAutomaticInstanceRepair {
  const WindowsVirtualMachineScaleSetAutomaticInstanceRepair({
    this.action,
    required this.enabled,
    this.gracePeriod,
  });

  final WindowsVirtualMachineScaleSetAction? action;

  final TfArg<bool> enabled;

  final TfArg<String>? gracePeriod;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'grace_period': ?gracePeriod?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetAction._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetAction.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetAction.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetAction.arg(TfArg<String> arg)
    : this._(arg);

  static const reimage = WindowsVirtualMachineScaleSetAction._(
    TfArgLiteral('Reimage'),
  );
  static const replace = WindowsVirtualMachineScaleSetAction._(
    TfArgLiteral('Replace'),
  );
  static const restart = WindowsVirtualMachineScaleSetAction._(
    TfArgLiteral('Restart'),
  );

  static const List<WindowsVirtualMachineScaleSetAction> values = [
    reimage,
    replace,
    restart,
  ];
}

/// Typed helper for the `automatic_os_upgrade_policy` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy {
  const WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetBootDiagnostics {
  const WindowsVirtualMachineScaleSetBootDiagnostics({this.storageAccountUri});

  final TfArg<String>? storageAccountUri;

  @internal
  Map<String, Object?> encode() => {
    'storage_account_uri': ?storageAccountUri?.toTfJson(),
  };
}

/// Typed helper for the `data_disk` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetDataDisk {
  const WindowsVirtualMachineScaleSetDataDisk({
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

  final WindowsVirtualMachineScaleSetCaching caching;

  final WindowsVirtualMachineScaleSetCreateOption? createOption;

  final TfArg<String>? diskEncryptionSetId;

  final TfArg<num>? diskIopsReadWrite;

  final TfArg<num>? diskMbpsReadWrite;

  final TfArg<num> diskSizeGb;

  final TfArg<num> lun;

  final TfArg<String>? name;

  final WindowsVirtualMachineScaleSetDataDiskStorageAccountType
  storageAccountType;

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

/// `caching` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetCaching._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetCaching.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetCaching.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetCaching.arg(TfArg<String> arg)
    : this._(arg);

  static const none = WindowsVirtualMachineScaleSetCaching._(
    TfArgLiteral('None'),
  );
  static const readonly = WindowsVirtualMachineScaleSetCaching._(
    TfArgLiteral('ReadOnly'),
  );
  static const readwrite = WindowsVirtualMachineScaleSetCaching._(
    TfArgLiteral('ReadWrite'),
  );

  static const List<WindowsVirtualMachineScaleSetCaching> values = [
    none,
    readonly,
    readwrite,
  ];
}

/// `create_option` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetCreateOption._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsVirtualMachineScaleSetCreateOption.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetCreateOption.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetCreateOption.arg(TfArg<String> arg)
    : this._(arg);

  static const empty = WindowsVirtualMachineScaleSetCreateOption._(
    TfArgLiteral('Empty'),
  );
  static const fromimage = WindowsVirtualMachineScaleSetCreateOption._(
    TfArgLiteral('FromImage'),
  );

  static const List<WindowsVirtualMachineScaleSetCreateOption> values = [
    empty,
    fromimage,
  ];
}

/// `storage_account_type` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetDataDiskStorageAccountType._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsVirtualMachineScaleSetDataDiskStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetDataDiskStorageAccountType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetDataDiskStorageAccountType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const premiumLrs =
      WindowsVirtualMachineScaleSetDataDiskStorageAccountType._(
        TfArgLiteral('Premium_LRS'),
      );
  static const premiumv2Lrs =
      WindowsVirtualMachineScaleSetDataDiskStorageAccountType._(
        TfArgLiteral('PremiumV2_LRS'),
      );
  static const premiumZrs =
      WindowsVirtualMachineScaleSetDataDiskStorageAccountType._(
        TfArgLiteral('Premium_ZRS'),
      );
  static const standardLrs =
      WindowsVirtualMachineScaleSetDataDiskStorageAccountType._(
        TfArgLiteral('Standard_LRS'),
      );
  static const standardssdLrs =
      WindowsVirtualMachineScaleSetDataDiskStorageAccountType._(
        TfArgLiteral('StandardSSD_LRS'),
      );
  static const standardssdZrs =
      WindowsVirtualMachineScaleSetDataDiskStorageAccountType._(
        TfArgLiteral('StandardSSD_ZRS'),
      );
  static const ultrassdLrs =
      WindowsVirtualMachineScaleSetDataDiskStorageAccountType._(
        TfArgLiteral('UltraSSD_LRS'),
      );

  static const List<WindowsVirtualMachineScaleSetDataDiskStorageAccountType>
  values = [
    premiumLrs,
    premiumv2Lrs,
    premiumZrs,
    standardLrs,
    standardssdLrs,
    standardssdZrs,
    ultrassdLrs,
  ];
}

/// Typed helper for the `extension` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetExtension {
  const WindowsVirtualMachineScaleSetExtension({
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
  });

  final TfArg<bool>? autoUpgradeMinorVersion;

  final TfArg<bool>? automaticUpgradeEnabled;

  final TfArg<String>? forceUpdateTag;

  final TfArg<String> name;

  final WindowsVirtualMachineScaleSetProtectedSettings? protectedSettings;

  final TfArg<List<String>>? provisionAfterExtensions;

  final TfArg<String> publisher;

  final TfArg<String>? settings;

  final TfArg<String> type;

  final TfArg<String> typeHandlerVersion;

  @internal
  Map<String, Object?> encode() => {
    'auto_upgrade_minor_version': ?autoUpgradeMinorVersion?.toTfJson(),
    'automatic_upgrade_enabled': ?automaticUpgradeEnabled?.toTfJson(),
    'force_update_tag': ?forceUpdateTag?.toTfJson(),
    'name': name.toTfJson(),
    ...?protectedSettings?.encode(),
    'provision_after_extensions': ?provisionAfterExtensions?.toTfJson(),
    'publisher': publisher.toTfJson(),
    'settings': ?settings?.toTfJson(),
    'type': type.toTfJson(),
    'type_handler_version': typeHandlerVersion.toTfJson(),
  };
}

/// At most one of `protected_settings`, `protected_settings_from_key_vault` on the `extension` block of `azurerm_windows_virtual_machine_scale_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.protectedSettings(...)`.
sealed class WindowsVirtualMachineScaleSetProtectedSettings {
  const WindowsVirtualMachineScaleSetProtectedSettings();

  /// Sets `protected_settings`.
  const factory WindowsVirtualMachineScaleSetProtectedSettings.protectedSettings(
    Sensitive<String> protectedSettings,
  ) = WindowsVirtualMachineScaleSetProtectedSettingsChoice;

  /// Sets `protected_settings_from_key_vault`.
  const factory WindowsVirtualMachineScaleSetProtectedSettings.protectedSettingsFromKeyVault(
    WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVault
    protectedSettingsFromKeyVault,
  ) = WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVaultChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsVirtualMachineScaleSetProtectedSettings.protectedSettings] choice: sets `protected_settings`.
final class WindowsVirtualMachineScaleSetProtectedSettingsChoice
    extends WindowsVirtualMachineScaleSetProtectedSettings {
  const WindowsVirtualMachineScaleSetProtectedSettingsChoice(
    this.protectedSettings,
  );

  final Sensitive<String> protectedSettings;

  @internal
  @override
  String get blockKey => 'protected_settings';

  @internal
  @override
  Map<String, Object?> encode() => {
    'protected_settings': protectedSettings.toTfJson(),
  };
}

/// The [WindowsVirtualMachineScaleSetProtectedSettings.protectedSettingsFromKeyVault] choice: sets `protected_settings_from_key_vault`.
final class WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVaultChoice
    extends WindowsVirtualMachineScaleSetProtectedSettings {
  const WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVaultChoice(
    this.protectedSettingsFromKeyVault,
  );

  final WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVault
  protectedSettingsFromKeyVault;

  @internal
  @override
  String get blockKey => 'protected_settings_from_key_vault';

  @internal
  @override
  Map<String, Object?> encode() => {
    'protected_settings_from_key_vault': protectedSettingsFromKeyVault.encode(),
  };
}

/// Typed helper for the `extension.protected_settings_from_key_vault` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVault {
  const WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVault({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetGalleryApplication {
  const WindowsVirtualMachineScaleSetGalleryApplication({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetIdentity {
  const WindowsVirtualMachineScaleSetIdentity({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetNetworkInterface {
  const WindowsVirtualMachineScaleSetNetworkInterface({
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

  final WindowsVirtualMachineScaleSetAuxiliaryMode? auxiliaryMode;

  final WindowsVirtualMachineScaleSetAuxiliarySku? auxiliarySku;

  final TfArg<List<String>>? dnsServers;

  final TfArg<bool>? ipForwardingEnabled;

  final TfArg<String> name;

  final TfArg<String>? networkSecurityGroupId;

  final TfArg<bool>? primary;

  final List<WindowsVirtualMachineScaleSetIpConfiguration> ipConfiguration;

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

/// `auxiliary_mode` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetAuxiliaryMode._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsVirtualMachineScaleSetAuxiliaryMode.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetAuxiliaryMode.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetAuxiliaryMode.arg(TfArg<String> arg)
    : this._(arg);

  static const acceleratedconnections =
      WindowsVirtualMachineScaleSetAuxiliaryMode._(
        TfArgLiteral('AcceleratedConnections'),
      );
  static const floating = WindowsVirtualMachineScaleSetAuxiliaryMode._(
    TfArgLiteral('Floating'),
  );

  static const List<WindowsVirtualMachineScaleSetAuxiliaryMode> values = [
    acceleratedconnections,
    floating,
  ];
}

/// `auxiliary_sku` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetAuxiliarySku._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsVirtualMachineScaleSetAuxiliarySku.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetAuxiliarySku.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetAuxiliarySku.arg(TfArg<String> arg)
    : this._(arg);

  static const a8 = WindowsVirtualMachineScaleSetAuxiliarySku._(
    TfArgLiteral('A8'),
  );
  static const a4 = WindowsVirtualMachineScaleSetAuxiliarySku._(
    TfArgLiteral('A4'),
  );
  static const a1 = WindowsVirtualMachineScaleSetAuxiliarySku._(
    TfArgLiteral('A1'),
  );
  static const a2 = WindowsVirtualMachineScaleSetAuxiliarySku._(
    TfArgLiteral('A2'),
  );

  static const List<WindowsVirtualMachineScaleSetAuxiliarySku> values = [
    a8,
    a4,
    a1,
    a2,
  ];
}

/// Typed helper for the `network_interface.ip_configuration` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetIpConfiguration {
  const WindowsVirtualMachineScaleSetIpConfiguration({
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

  final WindowsVirtualMachineScaleSetVersion? version;

  final List<WindowsVirtualMachineScaleSetPublicIpAddress>? publicIpAddress;

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

/// `version` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetVersion._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetVersion.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetVersion.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = WindowsVirtualMachineScaleSetVersion._(
    TfArgLiteral('IPv4'),
  );
  static const ipv6 = WindowsVirtualMachineScaleSetVersion._(
    TfArgLiteral('IPv6'),
  );

  static const List<WindowsVirtualMachineScaleSetVersion> values = [ipv4, ipv6];
}

/// Typed helper for the `network_interface.ip_configuration.public_ip_address` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetPublicIpAddress {
  const WindowsVirtualMachineScaleSetPublicIpAddress({
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

  final WindowsVirtualMachineScaleSetVersion? version;

  final List<WindowsVirtualMachineScaleSetIpTag>? ipTag;

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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetIpTag {
  const WindowsVirtualMachineScaleSetIpTag({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetOsDisk {
  const WindowsVirtualMachineScaleSetOsDisk({
    required this.caching,
    this.encryptionSet,
    this.diskSizeGb,
    this.securityEncryptionType,
    required this.storageAccountType,
    this.writeAcceleratorEnabled,
    this.diffDiskSettings,
  });

  final WindowsVirtualMachineScaleSetCaching caching;

  final WindowsVirtualMachineScaleSetEncryptionSet? encryptionSet;

  final TfArg<num>? diskSizeGb;

  final WindowsVirtualMachineScaleSetSecurityEncryptionType?
  securityEncryptionType;

  final WindowsVirtualMachineScaleSetOsDiskStorageAccountType
  storageAccountType;

  final TfArg<bool>? writeAcceleratorEnabled;

  final WindowsVirtualMachineScaleSetDiffDiskSettings? diffDiskSettings;

  @internal
  Map<String, Object?> encode() => {
    'caching': caching.toTfJson(),
    ...?encryptionSet?.encode(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'security_encryption_type': ?securityEncryptionType?.toTfJson(),
    'storage_account_type': storageAccountType.toTfJson(),
    'write_accelerator_enabled': ?writeAcceleratorEnabled?.toTfJson(),
    'diff_disk_settings': ?diffDiskSettings?.encode(),
  };
}

/// At most one of `disk_encryption_set_id`, `secure_vm_disk_encryption_set_id` on the `os_disk` block of `azurerm_windows_virtual_machine_scale_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.diskEncryptionSetId(...)`.
sealed class WindowsVirtualMachineScaleSetEncryptionSet {
  const WindowsVirtualMachineScaleSetEncryptionSet();

  /// Sets `disk_encryption_set_id`.
  const factory WindowsVirtualMachineScaleSetEncryptionSet.diskEncryptionSetId(
    TfArg<String> diskEncryptionSetId,
  ) = WindowsVirtualMachineScaleSetEncryptionSetDiskEncryptionSetId;

  /// Sets `secure_vm_disk_encryption_set_id`.
  const factory WindowsVirtualMachineScaleSetEncryptionSet.secureVmDiskEncryptionSetId(
    TfArg<String> secureVmDiskEncryptionSetId,
  ) = WindowsVirtualMachineScaleSetEncryptionSetSecureVmDiskEncryptionSetId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [WindowsVirtualMachineScaleSetEncryptionSet.diskEncryptionSetId] choice: sets `disk_encryption_set_id`.
final class WindowsVirtualMachineScaleSetEncryptionSetDiskEncryptionSetId
    extends WindowsVirtualMachineScaleSetEncryptionSet {
  const WindowsVirtualMachineScaleSetEncryptionSetDiskEncryptionSetId(
    this.diskEncryptionSetId,
  );

  final TfArg<String> diskEncryptionSetId;

  @internal
  @override
  String get blockKey => 'disk_encryption_set_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'disk_encryption_set_id': diskEncryptionSetId.toTfJson(),
  };
}

/// The [WindowsVirtualMachineScaleSetEncryptionSet.secureVmDiskEncryptionSetId] choice: sets `secure_vm_disk_encryption_set_id`.
final class WindowsVirtualMachineScaleSetEncryptionSetSecureVmDiskEncryptionSetId
    extends WindowsVirtualMachineScaleSetEncryptionSet {
  const WindowsVirtualMachineScaleSetEncryptionSetSecureVmDiskEncryptionSetId(
    this.secureVmDiskEncryptionSetId,
  );

  final TfArg<String> secureVmDiskEncryptionSetId;

  @internal
  @override
  String get blockKey => 'secure_vm_disk_encryption_set_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'secure_vm_disk_encryption_set_id': secureVmDiskEncryptionSetId.toTfJson(),
  };
}

/// `security_encryption_type` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetSecurityEncryptionType._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsVirtualMachineScaleSetSecurityEncryptionType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetSecurityEncryptionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetSecurityEncryptionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const vmgueststateonly =
      WindowsVirtualMachineScaleSetSecurityEncryptionType._(
        TfArgLiteral('VMGuestStateOnly'),
      );
  static const diskwithvmgueststate =
      WindowsVirtualMachineScaleSetSecurityEncryptionType._(
        TfArgLiteral('DiskWithVMGuestState'),
      );

  static const List<WindowsVirtualMachineScaleSetSecurityEncryptionType>
  values = [vmgueststateonly, diskwithvmgueststate];
}

/// `storage_account_type` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetOsDiskStorageAccountType._(
  TfArg<String> _
) implements TfArg<String> {
  WindowsVirtualMachineScaleSetOsDiskStorageAccountType.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetOsDiskStorageAccountType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetOsDiskStorageAccountType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const premiumLrs =
      WindowsVirtualMachineScaleSetOsDiskStorageAccountType._(
        TfArgLiteral('Premium_LRS'),
      );
  static const premiumZrs =
      WindowsVirtualMachineScaleSetOsDiskStorageAccountType._(
        TfArgLiteral('Premium_ZRS'),
      );
  static const standardLrs =
      WindowsVirtualMachineScaleSetOsDiskStorageAccountType._(
        TfArgLiteral('Standard_LRS'),
      );
  static const standardssdLrs =
      WindowsVirtualMachineScaleSetOsDiskStorageAccountType._(
        TfArgLiteral('StandardSSD_LRS'),
      );
  static const standardssdZrs =
      WindowsVirtualMachineScaleSetOsDiskStorageAccountType._(
        TfArgLiteral('StandardSSD_ZRS'),
      );

  static const List<WindowsVirtualMachineScaleSetOsDiskStorageAccountType>
  values = [
    premiumLrs,
    premiumZrs,
    standardLrs,
    standardssdLrs,
    standardssdZrs,
  ];
}

/// Typed helper for the `os_disk.diff_disk_settings` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetDiffDiskSettings {
  const WindowsVirtualMachineScaleSetDiffDiskSettings({
    required this.option,
    this.placement,
  });

  final WindowsVirtualMachineScaleSetOption option;

  final WindowsVirtualMachineScaleSetPlacement? placement;

  @internal
  Map<String, Object?> encode() => {
    'option': option.toTfJson(),
    'placement': ?placement?.toTfJson(),
  };
}

/// `option` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetOption._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetOption.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetOption.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetOption.arg(TfArg<String> arg)
    : this._(arg);

  static const local = WindowsVirtualMachineScaleSetOption._(
    TfArgLiteral('Local'),
  );

  static const List<WindowsVirtualMachineScaleSetOption> values = [local];
}

/// `placement` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetPlacement._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetPlacement.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetPlacement.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetPlacement.arg(TfArg<String> arg)
    : this._(arg);

  static const cachedisk = WindowsVirtualMachineScaleSetPlacement._(
    TfArgLiteral('CacheDisk'),
  );
  static const nvmedisk = WindowsVirtualMachineScaleSetPlacement._(
    TfArgLiteral('NvmeDisk'),
  );
  static const resourcedisk = WindowsVirtualMachineScaleSetPlacement._(
    TfArgLiteral('ResourceDisk'),
  );

  static const List<WindowsVirtualMachineScaleSetPlacement> values = [
    cachedisk,
    nvmedisk,
    resourcedisk,
  ];
}

/// Typed helper for the `plan` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetPlan {
  const WindowsVirtualMachineScaleSetPlan({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetRollingUpgradePolicy {
  const WindowsVirtualMachineScaleSetRollingUpgradePolicy({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetScaleIn {
  const WindowsVirtualMachineScaleSetScaleIn({
    this.forceDeletionEnabled,
    this.rule,
  });

  final TfArg<bool>? forceDeletionEnabled;

  final WindowsVirtualMachineScaleSetRule? rule;

  @internal
  Map<String, Object?> encode() => {
    'force_deletion_enabled': ?forceDeletionEnabled?.toTfJson(),
    'rule': ?rule?.toTfJson(),
  };
}

/// `rule` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetRule._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetRule.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetRule.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetRule.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = WindowsVirtualMachineScaleSetRule._(
    TfArgLiteral('Default'),
  );
  static const newestvm = WindowsVirtualMachineScaleSetRule._(
    TfArgLiteral('NewestVM'),
  );
  static const oldestvm = WindowsVirtualMachineScaleSetRule._(
    TfArgLiteral('OldestVM'),
  );

  static const List<WindowsVirtualMachineScaleSetRule> values = [
    defaultCase,
    newestvm,
    oldestvm,
  ];
}

/// Typed helper for the `secret` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetSecret {
  const WindowsVirtualMachineScaleSetSecret({
    required this.keyVaultId,
    required this.certificate,
  });

  final TfArg<String> keyVaultId;

  final List<WindowsVirtualMachineScaleSetCertificate> certificate;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_id': keyVaultId.toTfJson(),
    'certificate': [for (final e in certificate) e.encode()],
  };
}

/// Typed helper for the `secret.certificate` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetCertificate {
  const WindowsVirtualMachineScaleSetCertificate({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetSourceImageReference {
  const WindowsVirtualMachineScaleSetSourceImageReference({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetSpotRestore {
  const WindowsVirtualMachineScaleSetSpotRestore({this.enabled, this.timeout});

  final TfArg<bool>? enabled;

  final TfArg<String>? timeout;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
  };
}

/// Typed helper for the `termination_notification` block of
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetTerminationNotification {
  const WindowsVirtualMachineScaleSetTerminationNotification({
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
/// `azurerm_windows_virtual_machine_scale_set` (derived from provider schema).
@immutable
final class WindowsVirtualMachineScaleSetWinrmListener {
  const WindowsVirtualMachineScaleSetWinrmListener({
    this.certificateUrl,
    required this.protocol,
  });

  final TfArg<String>? certificateUrl;

  final WindowsVirtualMachineScaleSetProtocol protocol;

  @internal
  Map<String, Object?> encode() => {
    'certificate_url': ?certificateUrl?.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const WindowsVirtualMachineScaleSetProtocol._(TfArg<String> _)
    implements TfArg<String> {
  WindowsVirtualMachineScaleSetProtocol.variable(String name)
    : this._(TfArg.variable(name));
  WindowsVirtualMachineScaleSetProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const WindowsVirtualMachineScaleSetProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const http = WindowsVirtualMachineScaleSetProtocol._(
    TfArgLiteral('Http'),
  );
  static const https = WindowsVirtualMachineScaleSetProtocol._(
    TfArgLiteral('Https'),
  );

  static const List<WindowsVirtualMachineScaleSetProtocol> values = [
    http,
    https,
  ];
}

/// Factory wrapper for `azurerm_windows_virtual_machine_scale_set`.
final class AzurermWindowsVirtualMachineScaleSet extends Resource {
  static const String tfType = 'azurerm_windows_virtual_machine_scale_set';

  AzurermWindowsVirtualMachineScaleSet(
    super.localName, {
    required Sensitive<String> adminPassword,
    required TfArg<String> adminUsername,
    TfArg<bool>? automaticUpdatesEnabled,
    WindowsVirtualMachineScaleSetGroupId? groupId,
    TfArg<String>? computerNamePrefix,
    Sensitive<String>? customData,
    TfArg<bool>? doNotRunExtensionsOnOverprovisionedMachines,
    TfArg<String>? edgeZone,
    TfArg<bool>? encryptionAtHostEnabled,
    WindowsVirtualMachineScaleSetEvictionPolicy? evictionPolicy,
    TfArg<bool>? extensionOperationsEnabled,
    TfArg<String>? extensionsTimeBudget,
    TfArg<String>? healthProbeId,
    TfArg<String>? hostGroupId,
    required TfArg<num> instances,
    WindowsVirtualMachineScaleSetLicenseType? licenseType,
    required TfArg<String> location,
    TfArg<num>? maxBidPrice,
    required TfArg<String> name,
    TfArg<bool>? overprovision,
    TfArg<num>? platformFaultDomainCount,
    WindowsVirtualMachineScaleSetPriority? priority,
    TfArg<bool>? provisionVmAgent,
    TfArg<bool>? resilientVmCreationEnabled,
    TfArg<bool>? resilientVmDeletionEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? secureBootEnabled,
    TfArg<bool>? singlePlacementGroup,
    required TfArg<String> sku,
    required WindowsVirtualMachineScaleSetSourceImage sourceImage,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timezone,
    WindowsVirtualMachineScaleSetUpgradeMode? upgradeMode,
    TfArg<String>? userData,
    TfArg<bool>? vtpmEnabled,
    TfArg<bool>? zoneBalance,
    TfArg<List<String>>? zones,
    WindowsVirtualMachineScaleSetAdditionalCapabilities? additionalCapabilities,
    List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>?
    additionalUnattendContent,
    WindowsVirtualMachineScaleSetAutomaticInstanceRepair?
    automaticInstanceRepair,
    WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy?
    automaticOsUpgradePolicy,
    WindowsVirtualMachineScaleSetBootDiagnostics? bootDiagnostics,
    List<WindowsVirtualMachineScaleSetDataDisk>? dataDisk,
    List<WindowsVirtualMachineScaleSetExtension>? extension,
    List<WindowsVirtualMachineScaleSetGalleryApplication>? galleryApplication,
    WindowsVirtualMachineScaleSetIdentity? identity,
    required List<WindowsVirtualMachineScaleSetNetworkInterface>
    networkInterface,
    required WindowsVirtualMachineScaleSetOsDisk osDisk,
    WindowsVirtualMachineScaleSetPlan? plan,
    WindowsVirtualMachineScaleSetRollingUpgradePolicy? rollingUpgradePolicy,
    WindowsVirtualMachineScaleSetScaleIn? scaleIn,
    List<WindowsVirtualMachineScaleSetSecret>? secret,
    WindowsVirtualMachineScaleSetSpotRestore? spotRestore,
    WindowsVirtualMachineScaleSetTerminationNotification?
    terminationNotification,
    List<WindowsVirtualMachineScaleSetWinrmListener>? winrmListener,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_password': adminPassword,
           'admin_username': adminUsername,
           'automatic_updates_enabled': ?automaticUpdatesEnabled,
           ...?groupId?.argMap,
           'computer_name_prefix': ?computerNamePrefix,
           'custom_data': ?customData,
           'do_not_run_extensions_on_overprovisioned_machines':
               ?doNotRunExtensionsOnOverprovisionedMachines,
           'edge_zone': ?edgeZone,
           'encryption_at_host_enabled': ?encryptionAtHostEnabled,
           'eviction_policy': ?evictionPolicy,
           'extension_operations_enabled': ?extensionOperationsEnabled,
           'extensions_time_budget': ?extensionsTimeBudget,
           'health_probe_id': ?healthProbeId,
           'host_group_id': ?hostGroupId,
           'instances': instances,
           'license_type': ?licenseType,
           'location': location,
           'max_bid_price': ?maxBidPrice,
           'name': name,
           'overprovision': ?overprovision,
           'platform_fault_domain_count': ?platformFaultDomainCount,
           'priority': ?priority,
           'provision_vm_agent': ?provisionVmAgent,
           'resilient_vm_creation_enabled': ?resilientVmCreationEnabled,
           'resilient_vm_deletion_enabled': ?resilientVmDeletionEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'secure_boot_enabled': ?secureBootEnabled,
           'single_placement_group': ?singlePlacementGroup,
           'sku': sku,
           ...sourceImage.argMap,
           'tags': ?tags,
           'timezone': ?timezone,
           'upgrade_mode': ?upgradeMode,
           'user_data': ?userData,
           'vtpm_enabled': ?vtpmEnabled,
           'zone_balance': ?zoneBalance,
           'zones': ?zones,
           if (additionalCapabilities != null)
             'additional_capabilities': TfArg.literal(
               additionalCapabilities.encode(),
             ),
           if (additionalUnattendContent != null)
             'additional_unattend_content': TfArg.literal([
               for (final e in additionalUnattendContent) e.encode(),
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
           if (spotRestore != null)
             'spot_restore': TfArg.literal(spotRestore.encode()),
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
  Set<String> get sensitiveFields =>
      _azurermWindowsVirtualMachineScaleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWindowsVirtualMachineScaleSet>`.
  RefTo<AzurermWindowsVirtualMachineScaleSet> get ref => RefTo.of(this);

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

  /// Reference to `automatic_updates_enabled` attribute.
  TfRef<bool> get automaticUpdatesEnabled =>
      TfRef.attribute<bool>(this, 'automatic_updates_enabled');

  /// Reference to `capacity_reservation_group_id` attribute.
  TfRef<String> get capacityReservationGroupId =>
      TfRef.attribute<String>(this, 'capacity_reservation_group_id');

  /// Reference to `computer_name_prefix` attribute.
  TfRef<String> get computerNamePrefix =>
      TfRef.attribute<String>(this, 'computer_name_prefix');

  /// Reference to `custom_data` attribute.
  TfRef<String> get customData => TfRef.attribute<String>(this, 'custom_data');

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

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

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

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');

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
