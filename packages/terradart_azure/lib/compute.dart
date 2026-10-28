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
    show AzurermDedicatedHost, DedicatedHostSkuName;
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
        LinuxVirtualMachineCertificate,
        LinuxVirtualMachineDedicatedHost,
        LinuxVirtualMachineDedicatedHostGroupId,
        LinuxVirtualMachineDedicatedHostId,
        LinuxVirtualMachineDiffDiskSettings,
        LinuxVirtualMachineDiskControllerType,
        LinuxVirtualMachineEvictionPolicy,
        LinuxVirtualMachineGalleryApplication,
        LinuxVirtualMachineIdentity,
        LinuxVirtualMachineLicenseType,
        LinuxVirtualMachineOsDisk,
        LinuxVirtualMachineOsImageNotification,
        LinuxVirtualMachineOsProfile,
        LinuxVirtualMachineOsProfileAdminUsername,
        LinuxVirtualMachineOsProfileOsManagedDiskId,
        LinuxVirtualMachinePatchAssessmentMode,
        LinuxVirtualMachinePatchMode,
        LinuxVirtualMachinePlan,
        LinuxVirtualMachineSecret,
        LinuxVirtualMachineSourceImageReference,
        LinuxVirtualMachineTerminationNotification;
export 'src/compute/azurerm_linux_virtual_machine_scale_set.dart'
    show
        AzurermLinuxVirtualMachineScaleSet,
        LinuxVirtualMachineScaleSetAdditionalCapabilities,
        LinuxVirtualMachineScaleSetAdminSshKey,
        LinuxVirtualMachineScaleSetAutomaticInstanceRepair,
        LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy,
        LinuxVirtualMachineScaleSetBootDiagnostics,
        LinuxVirtualMachineScaleSetCapacityReservationGroupId,
        LinuxVirtualMachineScaleSetCertificate,
        LinuxVirtualMachineScaleSetDataDisk,
        LinuxVirtualMachineScaleSetDiffDiskSettings,
        LinuxVirtualMachineScaleSetEvictionPolicy,
        LinuxVirtualMachineScaleSetExtension,
        LinuxVirtualMachineScaleSetGalleryApplication,
        LinuxVirtualMachineScaleSetGroupId,
        LinuxVirtualMachineScaleSetIdentity,
        LinuxVirtualMachineScaleSetIpConfiguration,
        LinuxVirtualMachineScaleSetIpTag,
        LinuxVirtualMachineScaleSetNetworkInterface,
        LinuxVirtualMachineScaleSetOsDisk,
        LinuxVirtualMachineScaleSetPlan,
        LinuxVirtualMachineScaleSetProtectedSettingsFromKeyVault,
        LinuxVirtualMachineScaleSetProximityPlacementGroupId,
        LinuxVirtualMachineScaleSetPublicIpAddress,
        LinuxVirtualMachineScaleSetRollingUpgradePolicy,
        LinuxVirtualMachineScaleSetScaleIn,
        LinuxVirtualMachineScaleSetSecret,
        LinuxVirtualMachineScaleSetSourceImage,
        LinuxVirtualMachineScaleSetSourceImageId,
        LinuxVirtualMachineScaleSetSourceImageReference,
        LinuxVirtualMachineScaleSetSourceImageReferenceChoice,
        LinuxVirtualMachineScaleSetSpotRestore,
        LinuxVirtualMachineScaleSetTerminationNotification,
        LinuxVirtualMachineScaleSetUpgradeMode;
export 'src/compute/azurerm_managed_disk.dart'
    show
        AzurermManagedDisk,
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
        ManagedDiskStorageAccountType;
export 'src/compute/azurerm_managed_disk_sas_token.dart'
    show AzurermManagedDiskSasToken;
export 'src/compute/azurerm_orchestrated_virtual_machine_scale_set.dart'
    show
        AzurermOrchestratedVirtualMachineScaleSet,
        OrchestratedVirtualMachineScaleSetAdditionalCapabilities,
        OrchestratedVirtualMachineScaleSetAdditionalUnattendContent,
        OrchestratedVirtualMachineScaleSetAdminSshKey,
        OrchestratedVirtualMachineScaleSetAllocationStrategy,
        OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair,
        OrchestratedVirtualMachineScaleSetBootDiagnostics,
        OrchestratedVirtualMachineScaleSetCapacityReservationGroupId,
        OrchestratedVirtualMachineScaleSetDataDisk,
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
        OrchestratedVirtualMachineScaleSetLinuxConfigurationSecret,
        OrchestratedVirtualMachineScaleSetNetworkApiVersion,
        OrchestratedVirtualMachineScaleSetNetworkInterface,
        OrchestratedVirtualMachineScaleSetOsDisk,
        OrchestratedVirtualMachineScaleSetOsProfile,
        OrchestratedVirtualMachineScaleSetPlan,
        OrchestratedVirtualMachineScaleSetPriorityMix,
        OrchestratedVirtualMachineScaleSetProtectedSettingsFromKeyVault,
        OrchestratedVirtualMachineScaleSetProximityPlacementGroupId,
        OrchestratedVirtualMachineScaleSetPublicIpAddress,
        OrchestratedVirtualMachineScaleSetRollingUpgradePolicy,
        OrchestratedVirtualMachineScaleSetSkuProfile,
        OrchestratedVirtualMachineScaleSetSourceImage,
        OrchestratedVirtualMachineScaleSetSourceImageId,
        OrchestratedVirtualMachineScaleSetSourceImageReference,
        OrchestratedVirtualMachineScaleSetSourceImageReferenceChoice,
        OrchestratedVirtualMachineScaleSetTerminationNotification,
        OrchestratedVirtualMachineScaleSetUpgradeMode,
        OrchestratedVirtualMachineScaleSetVirtualMachineSize,
        OrchestratedVirtualMachineScaleSetWindowsConfiguration,
        OrchestratedVirtualMachineScaleSetWindowsConfigurationCertificate,
        OrchestratedVirtualMachineScaleSetWindowsConfigurationSecret,
        OrchestratedVirtualMachineScaleSetWinrmListener;
export 'src/compute/azurerm_proximity_placement_group.dart'
    show AzurermProximityPlacementGroup;
export 'src/compute/azurerm_shared_image.dart'
    show
        AzurermSharedImage,
        SharedImageArchitecture,
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
        VirtualMachinePlacement,
        VirtualMachinePlacementAvailabilitySetId,
        VirtualMachinePlacementZones,
        VirtualMachinePlan,
        VirtualMachineProtocol,
        VirtualMachineSettingName,
        VirtualMachineSshKeys,
        VirtualMachineStorageDataDisk,
        VirtualMachineStorageImageReference,
        VirtualMachineStorageOsDisk,
        VirtualMachineVaultCertificates,
        VirtualMachineWinrm;
export 'src/compute/azurerm_virtual_machine_automanage_configuration_assignment.dart'
    show AzurermVirtualMachineAutomanageConfigurationAssignment;
export 'src/compute/azurerm_virtual_machine_data_disk_attachment.dart'
    show
        AzurermVirtualMachineDataDiskAttachment,
        VirtualMachineDataDiskAttachmentCaching;
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
    show AzurermVirtualMachineImplicitDataDiskFromSource;
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
        VirtualMachineScaleSetNetworkProfile,
        VirtualMachineScaleSetOsProfile,
        VirtualMachineScaleSetOsProfileLinuxConfig,
        VirtualMachineScaleSetOsProfileSecrets,
        VirtualMachineScaleSetOsProfileWindowsConfig,
        VirtualMachineScaleSetPlan,
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
        VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault;
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
        WindowsVirtualMachineCertificate,
        WindowsVirtualMachineDedicatedHost,
        WindowsVirtualMachineDedicatedHostGroupId,
        WindowsVirtualMachineDedicatedHostId,
        WindowsVirtualMachineDiffDiskSettings,
        WindowsVirtualMachineDiskControllerType,
        WindowsVirtualMachineEvictionPolicy,
        WindowsVirtualMachineGalleryApplication,
        WindowsVirtualMachineIdentity,
        WindowsVirtualMachineLicenseType,
        WindowsVirtualMachineOsDisk,
        WindowsVirtualMachineOsImageNotification,
        WindowsVirtualMachineOsProfile,
        WindowsVirtualMachineOsProfileAdminUsername,
        WindowsVirtualMachineOsProfileOsManagedDiskId,
        WindowsVirtualMachinePatchAssessmentMode,
        WindowsVirtualMachinePatchMode,
        WindowsVirtualMachinePlan,
        WindowsVirtualMachineSecret,
        WindowsVirtualMachineSourceImageReference,
        WindowsVirtualMachineTerminationNotification,
        WindowsVirtualMachineWinrmListener;
export 'src/compute/azurerm_windows_virtual_machine_scale_set.dart'
    show
        AzurermWindowsVirtualMachineScaleSet,
        WindowsVirtualMachineScaleSetAdditionalCapabilities,
        WindowsVirtualMachineScaleSetAdditionalUnattendContent,
        WindowsVirtualMachineScaleSetAutomaticInstanceRepair,
        WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy,
        WindowsVirtualMachineScaleSetBootDiagnostics,
        WindowsVirtualMachineScaleSetCapacityReservationGroupId,
        WindowsVirtualMachineScaleSetCertificate,
        WindowsVirtualMachineScaleSetDataDisk,
        WindowsVirtualMachineScaleSetDiffDiskSettings,
        WindowsVirtualMachineScaleSetEvictionPolicy,
        WindowsVirtualMachineScaleSetExtension,
        WindowsVirtualMachineScaleSetGalleryApplication,
        WindowsVirtualMachineScaleSetGroupId,
        WindowsVirtualMachineScaleSetIdentity,
        WindowsVirtualMachineScaleSetIpConfiguration,
        WindowsVirtualMachineScaleSetIpTag,
        WindowsVirtualMachineScaleSetLicenseType,
        WindowsVirtualMachineScaleSetNetworkInterface,
        WindowsVirtualMachineScaleSetOsDisk,
        WindowsVirtualMachineScaleSetPlan,
        WindowsVirtualMachineScaleSetProtectedSettingsFromKeyVault,
        WindowsVirtualMachineScaleSetProximityPlacementGroupId,
        WindowsVirtualMachineScaleSetPublicIpAddress,
        WindowsVirtualMachineScaleSetRollingUpgradePolicy,
        WindowsVirtualMachineScaleSetScaleIn,
        WindowsVirtualMachineScaleSetSecret,
        WindowsVirtualMachineScaleSetSourceImage,
        WindowsVirtualMachineScaleSetSourceImageId,
        WindowsVirtualMachineScaleSetSourceImageReference,
        WindowsVirtualMachineScaleSetSourceImageReferenceChoice,
        WindowsVirtualMachineScaleSetSpotRestore,
        WindowsVirtualMachineScaleSetTerminationNotification,
        WindowsVirtualMachineScaleSetUpgradeMode,
        WindowsVirtualMachineScaleSetWinrmListener;
export 'src/data/azurerm_availability_set.dart' show DataAzurermAvailabilitySet;
export 'src/data/azurerm_dedicated_host.dart' show DataAzurermDedicatedHost;
export 'src/data/azurerm_dedicated_host_group.dart'
    show DataAzurermDedicatedHostGroup;
export 'src/data/azurerm_disk_access.dart' show DataAzurermDiskAccess;
export 'src/data/azurerm_disk_encryption_set.dart'
    show DataAzurermDiskEncryptionSet;
export 'src/data/azurerm_image.dart' show DataAzurermImage;
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
