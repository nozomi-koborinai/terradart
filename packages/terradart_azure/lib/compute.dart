// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure virtual machines, disks, galleries, images, and snapshots.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/compute/azurerm_availability_set.dart' show AzurermAvailabilitySet;
export 'src/compute/azurerm_capacity_reservation.dart'
    show AzurermCapacityReservation, CapacityReservationSku;
export 'src/compute/azurerm_capacity_reservation_group.dart'
    show AzurermCapacityReservationGroup;
export 'src/compute/azurerm_dedicated_host.dart'
    show AzurermDedicatedHost, DedicatedHostLicenseType, DedicatedHostSkuName;
export 'src/compute/azurerm_dedicated_host_group.dart'
    show AzurermDedicatedHostGroup;
export 'src/compute/azurerm_disk_access.dart' show AzurermDiskAccess;
export 'src/compute/azurerm_disk_encryption_set.dart'
    show
        AzurermDiskEncryptionSet,
        DiskEncryptionSetEncryptionType,
        DiskEncryptionSetIdentity;
export 'src/compute/azurerm_gallery_application.dart'
    show AzurermGalleryApplication, GalleryApplicationSupportedOsType;
export 'src/compute/azurerm_gallery_application_version.dart'
    show
        AzurermGalleryApplicationVersion,
        GalleryApplicationVersionManageAction,
        GalleryApplicationVersionSource,
        GalleryApplicationVersionStorageAccountType,
        GalleryApplicationVersionTargetRegion;
export 'src/compute/azurerm_image.dart'
    show
        AzurermImage,
        ImageCaching,
        ImageDataDisk,
        ImageHyperVGeneration,
        ImageOsDisk,
        ImageOsState,
        ImageOsType,
        ImageStorageType;
export 'src/compute/azurerm_linux_virtual_machine.dart'
    show
        AzurermLinuxVirtualMachine,
        LinuxVirtualMachineAdditionalCapabilities,
        LinuxVirtualMachineAdminSshKey,
        LinuxVirtualMachineBootDiagnostics,
        LinuxVirtualMachineCaching,
        LinuxVirtualMachineCertificate,
        LinuxVirtualMachineDedicatedHost,
        LinuxVirtualMachineDedicatedHostGroupId,
        LinuxVirtualMachineDedicatedHostId,
        LinuxVirtualMachineDiffDiskSettings,
        LinuxVirtualMachineDiskControllerType,
        LinuxVirtualMachineEncryptionSet,
        LinuxVirtualMachineEncryptionSetDiskEncryptionSetId,
        LinuxVirtualMachineEncryptionSetSecureVmDiskEncryptionSetId,
        LinuxVirtualMachineEvictionPolicy,
        LinuxVirtualMachineGalleryApplication,
        LinuxVirtualMachineIdentity,
        LinuxVirtualMachineLicenseType,
        LinuxVirtualMachineOption,
        LinuxVirtualMachineOsDisk,
        LinuxVirtualMachineOsImageNotification,
        LinuxVirtualMachineOsSource,
        LinuxVirtualMachineOsSourceImage,
        LinuxVirtualMachineOsSourceOsManagedDiskId,
        LinuxVirtualMachinePatchAssessmentMode,
        LinuxVirtualMachinePatchMode,
        LinuxVirtualMachinePlacement,
        LinuxVirtualMachinePlan,
        LinuxVirtualMachinePriority,
        LinuxVirtualMachineRebootSetting,
        LinuxVirtualMachineSecret,
        LinuxVirtualMachineSecurityEncryptionType,
        LinuxVirtualMachineSourceImage,
        LinuxVirtualMachineSourceImageId,
        LinuxVirtualMachineSourceImageReference,
        LinuxVirtualMachineSourceImageReferenceChoice,
        LinuxVirtualMachineStorageAccountType,
        LinuxVirtualMachineTerminationNotification,
        LinuxVirtualMachineTimeout;
export 'src/compute/azurerm_linux_virtual_machine_scale_set.dart'
    show
        AzurermLinuxVirtualMachineScaleSet,
        LinuxVirtualMachineScaleSetAction,
        LinuxVirtualMachineScaleSetAdditionalCapabilities,
        LinuxVirtualMachineScaleSetAdminSshKey,
        LinuxVirtualMachineScaleSetAutomaticInstanceRepair,
        LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy,
        LinuxVirtualMachineScaleSetAuxiliaryMode,
        LinuxVirtualMachineScaleSetAuxiliarySku,
        LinuxVirtualMachineScaleSetBootDiagnostics,
        LinuxVirtualMachineScaleSetCaching,
        LinuxVirtualMachineScaleSetCapacityReservationGroupId,
        LinuxVirtualMachineScaleSetCertificate,
        LinuxVirtualMachineScaleSetCreateOption,
        LinuxVirtualMachineScaleSetDataDisk,
        LinuxVirtualMachineScaleSetDataDiskStorageAccountType,
        LinuxVirtualMachineScaleSetDiffDiskSettings,
        LinuxVirtualMachineScaleSetEncryptionSet,
        LinuxVirtualMachineScaleSetEncryptionSetDiskEncryptionSetId,
        LinuxVirtualMachineScaleSetEncryptionSetSecureVmDiskEncryptionSetId,
        LinuxVirtualMachineScaleSetEvictionPolicy,
        LinuxVirtualMachineScaleSetExtension,
        LinuxVirtualMachineScaleSetGalleryApplication,
        LinuxVirtualMachineScaleSetGroupId,
        LinuxVirtualMachineScaleSetIdentity,
        LinuxVirtualMachineScaleSetIpConfiguration,
        LinuxVirtualMachineScaleSetIpTag,
        LinuxVirtualMachineScaleSetNetworkInterface,
        LinuxVirtualMachineScaleSetOption,
        LinuxVirtualMachineScaleSetOsDisk,
        LinuxVirtualMachineScaleSetOsDiskStorageAccountType,
        LinuxVirtualMachineScaleSetPlacement,
        LinuxVirtualMachineScaleSetPlan,
        LinuxVirtualMachineScaleSetPriority,
        LinuxVirtualMachineScaleSetProtectedSettings,
        LinuxVirtualMachineScaleSetProtectedSettingsChoice,
        LinuxVirtualMachineScaleSetProtectedSettingsFromKeyVault,
        LinuxVirtualMachineScaleSetProtectedSettingsFromKeyVaultChoice,
        LinuxVirtualMachineScaleSetProximityPlacementGroupId,
        LinuxVirtualMachineScaleSetPublicIpAddress,
        LinuxVirtualMachineScaleSetRollingUpgradePolicy,
        LinuxVirtualMachineScaleSetRule,
        LinuxVirtualMachineScaleSetScaleIn,
        LinuxVirtualMachineScaleSetSecret,
        LinuxVirtualMachineScaleSetSecurityEncryptionType,
        LinuxVirtualMachineScaleSetSourceImage,
        LinuxVirtualMachineScaleSetSourceImageId,
        LinuxVirtualMachineScaleSetSourceImageReference,
        LinuxVirtualMachineScaleSetSourceImageReferenceChoice,
        LinuxVirtualMachineScaleSetSpotRestore,
        LinuxVirtualMachineScaleSetTerminationNotification,
        LinuxVirtualMachineScaleSetUpgradeMode,
        LinuxVirtualMachineScaleSetVersion;
export 'src/compute/azurerm_managed_disk.dart'
    show
        AzurermManagedDisk,
        ManagedDiskCreateOption,
        ManagedDiskEncryption,
        ManagedDiskEncryptionKey,
        ManagedDiskEncryptionSecureVmDiskEncryptionSetId,
        ManagedDiskEncryptionSetId,
        ManagedDiskEncryptionSettings,
        ManagedDiskHyperVGeneration,
        ManagedDiskImage,
        ManagedDiskImageGalleryImageReferenceId,
        ManagedDiskImageReferenceId,
        ManagedDiskKeyEncryptionKey,
        ManagedDiskNetworkAccessPolicy,
        ManagedDiskOsType,
        ManagedDiskSecurityType,
        ManagedDiskStorageAccountType;
export 'src/compute/azurerm_managed_disk_sas_token.dart'
    show AzurermManagedDiskSasToken, ManagedDiskSasTokenAccessLevel;
export 'src/compute/azurerm_orchestrated_virtual_machine_scale_set.dart'
    show
        AzurermOrchestratedVirtualMachineScaleSet,
        OrchestratedVirtualMachineScaleSetAction,
        OrchestratedVirtualMachineScaleSetAdditionalCapabilities,
        OrchestratedVirtualMachineScaleSetAdditionalUnattendContent,
        OrchestratedVirtualMachineScaleSetAdminSshKey,
        OrchestratedVirtualMachineScaleSetAllocationStrategy,
        OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair,
        OrchestratedVirtualMachineScaleSetAuxiliaryMode,
        OrchestratedVirtualMachineScaleSetAuxiliarySku,
        OrchestratedVirtualMachineScaleSetBootDiagnostics,
        OrchestratedVirtualMachineScaleSetCaching,
        OrchestratedVirtualMachineScaleSetCapacityReservationGroupId,
        OrchestratedVirtualMachineScaleSetCreateOption,
        OrchestratedVirtualMachineScaleSetDataDisk,
        OrchestratedVirtualMachineScaleSetDataDiskStorageAccountType,
        OrchestratedVirtualMachineScaleSetDiffDiskSettings,
        OrchestratedVirtualMachineScaleSetEvictionPolicy,
        OrchestratedVirtualMachineScaleSetExtension,
        OrchestratedVirtualMachineScaleSetGroupId,
        OrchestratedVirtualMachineScaleSetIdentity,
        OrchestratedVirtualMachineScaleSetIpConfiguration,
        OrchestratedVirtualMachineScaleSetIpTag,
        OrchestratedVirtualMachineScaleSetLicenseType,
        OrchestratedVirtualMachineScaleSetLinuxConfiguration,
        OrchestratedVirtualMachineScaleSetLinuxConfigurationCertificate,
        OrchestratedVirtualMachineScaleSetLinuxConfigurationPatchMode,
        OrchestratedVirtualMachineScaleSetLinuxConfigurationSecret,
        OrchestratedVirtualMachineScaleSetNetworkApiVersion,
        OrchestratedVirtualMachineScaleSetNetworkInterface,
        OrchestratedVirtualMachineScaleSetOption,
        OrchestratedVirtualMachineScaleSetOsDisk,
        OrchestratedVirtualMachineScaleSetOsDiskStorageAccountType,
        OrchestratedVirtualMachineScaleSetOsProfile,
        OrchestratedVirtualMachineScaleSetPatchAssessmentMode,
        OrchestratedVirtualMachineScaleSetPlacement,
        OrchestratedVirtualMachineScaleSetPlan,
        OrchestratedVirtualMachineScaleSetPriority,
        OrchestratedVirtualMachineScaleSetPriorityMix,
        OrchestratedVirtualMachineScaleSetProtectedSettings,
        OrchestratedVirtualMachineScaleSetProtectedSettingsChoice,
        OrchestratedVirtualMachineScaleSetProtectedSettingsFromKeyVault,
        OrchestratedVirtualMachineScaleSetProtectedSettingsFromKeyVaultChoice,
        OrchestratedVirtualMachineScaleSetProtocol,
        OrchestratedVirtualMachineScaleSetProximityPlacementGroupId,
        OrchestratedVirtualMachineScaleSetPublicIpAddress,
        OrchestratedVirtualMachineScaleSetRollingUpgradePolicy,
        OrchestratedVirtualMachineScaleSetSetting,
        OrchestratedVirtualMachineScaleSetSkuProfile,
        OrchestratedVirtualMachineScaleSetSourceImage,
        OrchestratedVirtualMachineScaleSetSourceImageId,
        OrchestratedVirtualMachineScaleSetSourceImageReference,
        OrchestratedVirtualMachineScaleSetSourceImageReferenceChoice,
        OrchestratedVirtualMachineScaleSetTerminationNotification,
        OrchestratedVirtualMachineScaleSetUpgradeMode,
        OrchestratedVirtualMachineScaleSetVersion,
        OrchestratedVirtualMachineScaleSetVirtualMachineSize,
        OrchestratedVirtualMachineScaleSetWindowsConfiguration,
        OrchestratedVirtualMachineScaleSetWindowsConfigurationCertificate,
        OrchestratedVirtualMachineScaleSetWindowsConfigurationPatchMode,
        OrchestratedVirtualMachineScaleSetWindowsConfigurationSecret,
        OrchestratedVirtualMachineScaleSetWinrmListener;
export 'src/compute/azurerm_proximity_placement_group.dart'
    show AzurermProximityPlacementGroup;
export 'src/compute/azurerm_shared_image.dart'
    show
        AzurermSharedImage,
        SharedImageArchitecture,
        SharedImageDiskTypesNotAllowed,
        SharedImageHyperVGeneration,
        SharedImageIdentifier,
        SharedImageOsType,
        SharedImagePurchasePlan,
        SharedImageSecurityType,
        SharedImageSecurityTypeConfidentialVmEnabled,
        SharedImageSecurityTypeConfidentialVmSupported,
        SharedImageSecurityTypeTrustedLaunchEnabled,
        SharedImageSecurityTypeTrustedLaunchSupported;
export 'src/compute/azurerm_shared_image_gallery.dart'
    show
        AzurermSharedImageGallery,
        SharedImageGalleryCommunityGallery,
        SharedImageGalleryPermission,
        SharedImageGallerySharing;
export 'src/compute/azurerm_shared_image_version.dart'
    show
        AzurermSharedImageVersion,
        SharedImageVersionAdditionalSignatures,
        SharedImageVersionDb,
        SharedImageVersionDbx,
        SharedImageVersionKek,
        SharedImageVersionPk,
        SharedImageVersionReplicationMode,
        SharedImageVersionSignatureTemplateNames,
        SharedImageVersionSource,
        SharedImageVersionSourceBlobUri,
        SharedImageVersionSourceManagedImageId,
        SharedImageVersionSourceOsDiskSnapshotId,
        SharedImageVersionStorageAccountType,
        SharedImageVersionTargetRegion,
        SharedImageVersionUefi;
export 'src/compute/azurerm_snapshot.dart'
    show
        AzurermSnapshot,
        SnapshotCreateOption,
        SnapshotDiskEncryptionKey,
        SnapshotEncryptionSettings,
        SnapshotKeyEncryptionKey,
        SnapshotNetworkAccessPolicy;
export 'src/compute/azurerm_ssh_public_key.dart' show AzurermSshPublicKey;
export 'src/compute/azurerm_virtual_machine.dart'
    show
        AzurermVirtualMachine,
        VirtualMachineAdditionalCapabilities,
        VirtualMachineAdditionalUnattendConfig,
        VirtualMachineBootDiagnostics,
        VirtualMachineComponent,
        VirtualMachineIdentity,
        VirtualMachineLicenseType,
        VirtualMachineOsConfiguration,
        VirtualMachineOsConfigurationOsProfileLinuxConfig,
        VirtualMachineOsConfigurationOsProfileWindowsConfig,
        VirtualMachineOsProfile,
        VirtualMachineOsProfileLinuxConfig,
        VirtualMachineOsProfileSecrets,
        VirtualMachineOsProfileWindowsConfig,
        VirtualMachineOsType,
        VirtualMachinePass,
        VirtualMachinePlacement,
        VirtualMachinePlacementAvailabilitySetId,
        VirtualMachinePlacementZones,
        VirtualMachinePlan,
        VirtualMachineProtocol,
        VirtualMachineSettingName,
        VirtualMachineSshKeys,
        VirtualMachineStorageDataDisk,
        VirtualMachineStorageDataDiskManagedDiskType,
        VirtualMachineStorageImageReference,
        VirtualMachineStorageOsDisk,
        VirtualMachineStorageOsDiskManagedDiskType,
        VirtualMachineVaultCertificates,
        VirtualMachineWinrm;
export 'src/compute/azurerm_virtual_machine_automanage_configuration_assignment.dart'
    show AzurermVirtualMachineAutomanageConfigurationAssignment;
export 'src/compute/azurerm_virtual_machine_data_disk_attachment.dart'
    show
        AzurermVirtualMachineDataDiskAttachment,
        VirtualMachineDataDiskAttachmentCaching,
        VirtualMachineDataDiskAttachmentCreateOption;
export 'src/compute/azurerm_virtual_machine_extension.dart'
    show
        AzurermVirtualMachineExtension,
        VirtualMachineExtensionProtectedSettings,
        VirtualMachineExtensionProtectedSettingsChoice,
        VirtualMachineExtensionProtectedSettingsFromKeyVault,
        VirtualMachineExtensionProtectedSettingsFromKeyVaultChoice;
export 'src/compute/azurerm_virtual_machine_gallery_application_assignment.dart'
    show AzurermVirtualMachineGalleryApplicationAssignment;
export 'src/compute/azurerm_virtual_machine_implicit_data_disk_from_source.dart'
    show
        AzurermVirtualMachineImplicitDataDiskFromSource,
        VirtualMachineImplicitDataDiskFromSourceCaching,
        VirtualMachineImplicitDataDiskFromSourceCreateOption;
export 'src/compute/azurerm_virtual_machine_packet_capture.dart'
    show
        AzurermVirtualMachinePacketCapture,
        VirtualMachinePacketCaptureFilter,
        VirtualMachinePacketCaptureProtocol,
        VirtualMachinePacketCaptureStorageLocation;
export 'src/compute/azurerm_virtual_machine_restore_point.dart'
    show AzurermVirtualMachineRestorePoint;
export 'src/compute/azurerm_virtual_machine_restore_point_collection.dart'
    show AzurermVirtualMachineRestorePointCollection;
export 'src/compute/azurerm_virtual_machine_run_command.dart'
    show
        AzurermVirtualMachineRunCommand,
        VirtualMachineRunCommandErrorBlobManagedIdentity,
        VirtualMachineRunCommandErrorBlobManagedIdentityClientId,
        VirtualMachineRunCommandErrorBlobManagedIdentityObjectId,
        VirtualMachineRunCommandOutputBlobManagedIdentity,
        VirtualMachineRunCommandOutputBlobManagedIdentityClientId,
        VirtualMachineRunCommandOutputBlobManagedIdentityObjectId,
        VirtualMachineRunCommandParameter,
        VirtualMachineRunCommandProtectedParameter,
        VirtualMachineRunCommandScriptUriManagedIdentity,
        VirtualMachineRunCommandScriptUriManagedIdentityClientId,
        VirtualMachineRunCommandScriptUriManagedIdentityObjectId,
        VirtualMachineRunCommandSource,
        VirtualMachineRunCommandSourceCommand,
        VirtualMachineRunCommandSourceCommandId,
        VirtualMachineRunCommandSourceCommandScript,
        VirtualMachineRunCommandSourceCommandScriptUri;
export 'src/compute/azurerm_virtual_machine_scale_set.dart'
    show
        AzurermVirtualMachineScaleSet,
        VirtualMachineScaleSetAdditionalUnattendConfig,
        VirtualMachineScaleSetBootDiagnostics,
        VirtualMachineScaleSetDnsSettings,
        VirtualMachineScaleSetEvictionPolicy,
        VirtualMachineScaleSetExtension,
        VirtualMachineScaleSetIdentity,
        VirtualMachineScaleSetIpConfiguration,
        VirtualMachineScaleSetLicenseType,
        VirtualMachineScaleSetManagedDiskType,
        VirtualMachineScaleSetNetworkProfile,
        VirtualMachineScaleSetOsProfile,
        VirtualMachineScaleSetOsProfileLinuxConfig,
        VirtualMachineScaleSetOsProfileSecrets,
        VirtualMachineScaleSetOsProfileWindowsConfig,
        VirtualMachineScaleSetPlan,
        VirtualMachineScaleSetPriority,
        VirtualMachineScaleSetPublicIpAddressConfiguration,
        VirtualMachineScaleSetRollingUpgradePolicy,
        VirtualMachineScaleSetSku,
        VirtualMachineScaleSetSshKeys,
        VirtualMachineScaleSetStorageProfileDataDisk,
        VirtualMachineScaleSetStorageProfileImageReference,
        VirtualMachineScaleSetStorageProfileOsDisk,
        VirtualMachineScaleSetUpgradePolicyMode,
        VirtualMachineScaleSetVaultCertificates,
        VirtualMachineScaleSetWinrm;
export 'src/compute/azurerm_virtual_machine_scale_set_extension.dart'
    show
        AzurermVirtualMachineScaleSetExtension,
        VirtualMachineScaleSetExtensionProtectedSettings,
        VirtualMachineScaleSetExtensionProtectedSettingsChoice,
        VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault,
        VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVaultChoice;
export 'src/compute/azurerm_virtual_machine_scale_set_packet_capture.dart'
    show
        AzurermVirtualMachineScaleSetPacketCapture,
        VirtualMachineScaleSetPacketCaptureFilter,
        VirtualMachineScaleSetPacketCaptureMachineScope,
        VirtualMachineScaleSetPacketCaptureMachineScopeExcludeInstanceIds,
        VirtualMachineScaleSetPacketCaptureMachineScopeIncludeInstanceIds,
        VirtualMachineScaleSetPacketCaptureProtocol,
        VirtualMachineScaleSetPacketCaptureStorageLocation;
export 'src/compute/azurerm_virtual_machine_scale_set_standby_pool.dart'
    show
        AzurermVirtualMachineScaleSetStandbyPool,
        VirtualMachineScaleSetStandbyPoolElasticityProfile,
        VirtualMachineScaleSetStandbyPoolVirtualMachineState;
export 'src/compute/azurerm_windows_virtual_machine.dart'
    show
        AzurermWindowsVirtualMachine,
        WindowsVirtualMachineAdditionalCapabilities,
        WindowsVirtualMachineAdditionalUnattendContent,
        WindowsVirtualMachineBootDiagnostics,
        WindowsVirtualMachineCaching,
        WindowsVirtualMachineCertificate,
        WindowsVirtualMachineDedicatedHost,
        WindowsVirtualMachineDedicatedHostGroupId,
        WindowsVirtualMachineDedicatedHostId,
        WindowsVirtualMachineDiffDiskSettings,
        WindowsVirtualMachineDiskControllerType,
        WindowsVirtualMachineEncryptionSet,
        WindowsVirtualMachineEncryptionSetDiskEncryptionSetId,
        WindowsVirtualMachineEncryptionSetSecureVmDiskEncryptionSetId,
        WindowsVirtualMachineEvictionPolicy,
        WindowsVirtualMachineGalleryApplication,
        WindowsVirtualMachineIdentity,
        WindowsVirtualMachineLicenseType,
        WindowsVirtualMachineOption,
        WindowsVirtualMachineOsDisk,
        WindowsVirtualMachineOsImageNotification,
        WindowsVirtualMachineOsSource,
        WindowsVirtualMachineOsSourceImage,
        WindowsVirtualMachineOsSourceOsManagedDiskId,
        WindowsVirtualMachinePatchAssessmentMode,
        WindowsVirtualMachinePatchMode,
        WindowsVirtualMachinePlacement,
        WindowsVirtualMachinePlan,
        WindowsVirtualMachinePriority,
        WindowsVirtualMachineProtocol,
        WindowsVirtualMachineRebootSetting,
        WindowsVirtualMachineSecret,
        WindowsVirtualMachineSecurityEncryptionType,
        WindowsVirtualMachineSetting,
        WindowsVirtualMachineSourceImage,
        WindowsVirtualMachineSourceImageId,
        WindowsVirtualMachineSourceImageReference,
        WindowsVirtualMachineSourceImageReferenceChoice,
        WindowsVirtualMachineStorageAccountType,
        WindowsVirtualMachineTerminationNotification,
        WindowsVirtualMachineTimeout,
        WindowsVirtualMachineWinrmListener;
export 'src/compute/azurerm_windows_virtual_machine_scale_set.dart'
    show
        AzurermWindowsVirtualMachineScaleSet,
        WindowsVirtualMachineScaleSetAction,
        WindowsVirtualMachineScaleSetAdditionalCapabilities,
        WindowsVirtualMachineScaleSetAdditionalUnattendContent,
        WindowsVirtualMachineScaleSetAutomaticInstanceRepair,
        WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy,
        WindowsVirtualMachineScaleSetAuxiliaryMode,
        WindowsVirtualMachineScaleSetAuxiliarySku,
        WindowsVirtualMachineScaleSetBootDiagnostics,
        WindowsVirtualMachineScaleSetCaching,
        WindowsVirtualMachineScaleSetCapacityReservationGroupId,
        WindowsVirtualMachineScaleSetCertificate,
        WindowsVirtualMachineScaleSetCreateOption,
        WindowsVirtualMachineScaleSetDataDisk,
        WindowsVirtualMachineScaleSetDataDiskStorageAccountType,
        WindowsVirtualMachineScaleSetDiffDiskSettings,
        WindowsVirtualMachineScaleSetEncryptionSet,
        WindowsVirtualMachineScaleSetEncryptionSetDiskEncryptionSetId,
        WindowsVirtualMachineScaleSetEncryptionSetSecureVmDiskEncryptionSetId,
        WindowsVirtualMachineScaleSetEvictionPolicy,
        WindowsVirtualMachineScaleSetExtension,
        WindowsVirtualMachineScaleSetGalleryApplication,
        WindowsVirtualMachineScaleSetGroupId,
        WindowsVirtualMachineScaleSetIdentity,
        WindowsVirtualMachineScaleSetIpConfiguration,
        WindowsVirtualMachineScaleSetIpTag,
        WindowsVirtualMachineScaleSetLicenseType,
        WindowsVirtualMachineScaleSetNetworkInterface,
        WindowsVirtualMachineScaleSetOption,
        WindowsVirtualMachineScaleSetOsDisk,
        WindowsVirtualMachineScaleSetOsDiskStorageAccountType,
        WindowsVirtualMachineScaleSetPlacement,
        WindowsVirtualMachineScaleSetPlan,
        WindowsVirtualMachineScaleSetPriority,
        WindowsVirtualMachineScaleSetProtectedSettings,
        WindowsVirtualMachineScaleSetProtectedSettingsChoice,
        WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVault,
        WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVaultChoice,
        WindowsVirtualMachineScaleSetProtocol,
        WindowsVirtualMachineScaleSetProximityPlacementGroupId,
        WindowsVirtualMachineScaleSetPublicIpAddress,
        WindowsVirtualMachineScaleSetRollingUpgradePolicy,
        WindowsVirtualMachineScaleSetRule,
        WindowsVirtualMachineScaleSetScaleIn,
        WindowsVirtualMachineScaleSetSecret,
        WindowsVirtualMachineScaleSetSecurityEncryptionType,
        WindowsVirtualMachineScaleSetSetting,
        WindowsVirtualMachineScaleSetSourceImage,
        WindowsVirtualMachineScaleSetSourceImageId,
        WindowsVirtualMachineScaleSetSourceImageReference,
        WindowsVirtualMachineScaleSetSourceImageReferenceChoice,
        WindowsVirtualMachineScaleSetSpotRestore,
        WindowsVirtualMachineScaleSetTerminationNotification,
        WindowsVirtualMachineScaleSetUpgradeMode,
        WindowsVirtualMachineScaleSetVersion,
        WindowsVirtualMachineScaleSetWinrmListener;
export 'src/data/azurerm_availability_set.dart' show DataAzurermAvailabilitySet;
export 'src/data/azurerm_dedicated_host.dart' show DataAzurermDedicatedHost;
export 'src/data/azurerm_dedicated_host_group.dart'
    show DataAzurermDedicatedHostGroup;
export 'src/data/azurerm_disk_access.dart' show DataAzurermDiskAccess;
export 'src/data/azurerm_disk_encryption_set.dart'
    show DataAzurermDiskEncryptionSet;
export 'src/data/azurerm_image.dart'
    show
        DataAzurermImage,
        DataImageName,
        DataImageNameChoice,
        DataImageNameRegex;
export 'src/data/azurerm_managed_disk.dart' show DataAzurermManagedDisk;
export 'src/data/azurerm_orchestrated_virtual_machine_scale_set.dart'
    show DataAzurermOrchestratedVirtualMachineScaleSet;
export 'src/data/azurerm_proximity_placement_group.dart'
    show DataAzurermProximityPlacementGroup;
export 'src/data/azurerm_shared_image.dart' show DataAzurermSharedImage;
export 'src/data/azurerm_shared_image_gallery.dart'
    show DataAzurermSharedImageGallery;
export 'src/data/azurerm_shared_image_version.dart'
    show DataAzurermSharedImageVersion;
export 'src/data/azurerm_shared_image_versions.dart'
    show DataAzurermSharedImageVersions;
export 'src/data/azurerm_snapshot.dart' show DataAzurermSnapshot;
export 'src/data/azurerm_ssh_public_key.dart' show DataAzurermSshPublicKey;
export 'src/data/azurerm_virtual_machine.dart' show DataAzurermVirtualMachine;
export 'src/data/azurerm_virtual_machine_scale_set.dart'
    show DataAzurermVirtualMachineScaleSet;
