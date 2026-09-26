// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS FSx.
library;

export 'src/fsx/aws_fsx_backup.dart' show AwsFsxBackup;
export 'src/fsx/aws_fsx_data_repository_association.dart'
    show
        AwsFsxDataRepositoryAssociation,
        FsxDataRepositoryAssociationS3,
        FsxDataRepositoryAssociationS3AutoExportPolicy,
        FsxDataRepositoryAssociationS3AutoImportPolicy;
export 'src/fsx/aws_fsx_file_cache.dart'
    show
        AwsFsxFileCache,
        FsxFileCacheDataRepositoryAssociation,
        FsxFileCacheDataRepositoryAssociationNfs,
        FsxFileCacheLustreConfiguration,
        FsxFileCacheLustreConfigurationMetadataConfiguration;
export 'src/fsx/aws_fsx_lustre_file_system.dart'
    show
        AwsFsxLustreFileSystem,
        FsxLustreFileSystemDataReadCacheConfiguration,
        FsxLustreFileSystemLogConfiguration,
        FsxLustreFileSystemMetadataConfiguration,
        FsxLustreFileSystemRootSquashConfiguration;
export 'src/fsx/aws_fsx_ontap_file_system.dart'
    show AwsFsxOntapFileSystem, FsxOntapFileSystemDiskIopsConfiguration;
export 'src/fsx/aws_fsx_ontap_storage_virtual_machine.dart'
    show
        AwsFsxOntapStorageVirtualMachine,
        FsxOntapStorageVirtualMachineActiveDirectoryConfiguration,
        FsxOntapStorageVirtualMachineActiveDirectoryConfigurationSelfManagedActiveDirectoryConfiguration;
export 'src/fsx/aws_fsx_ontap_volume.dart'
    show
        AwsFsxOntapVolume,
        FsxOntapVolumeAggregateConfiguration,
        FsxOntapVolumeSnaplockConfiguration,
        FsxOntapVolumeSnaplockConfigurationAutocommitPeriod,
        FsxOntapVolumeSnaplockConfigurationRetentionPeriod,
        FsxOntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention,
        FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention,
        FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention,
        FsxOntapVolumeTieringPolicy;
export 'src/fsx/aws_fsx_openzfs_file_system.dart'
    show
        AwsFsxOpenzfsFileSystem,
        FsxOpenzfsFileSystemDiskIopsConfiguration,
        FsxOpenzfsFileSystemReadCacheConfiguration,
        FsxOpenzfsFileSystemRootVolumeConfiguration,
        FsxOpenzfsFileSystemRootVolumeConfigurationNfsExports,
        FsxOpenzfsFileSystemRootVolumeConfigurationNfsExportsClientConfigurations,
        FsxOpenzfsFileSystemRootVolumeConfigurationUserAndGroupQuotas;
export 'src/fsx/aws_fsx_openzfs_snapshot.dart' show AwsFsxOpenzfsSnapshot;
export 'src/fsx/aws_fsx_openzfs_volume.dart'
    show
        AwsFsxOpenzfsVolume,
        FsxOpenzfsVolumeNfsExports,
        FsxOpenzfsVolumeNfsExportsClientConfigurations,
        FsxOpenzfsVolumeOriginSnapshot,
        FsxOpenzfsVolumeUserAndGroupQuotas;
export 'src/fsx/aws_fsx_s3_access_point_attachment.dart'
    show
        AwsFsxS3AccessPointAttachment,
        FsxS3AccessPointAttachmentOpenzfsConfiguration,
        FsxS3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity,
        FsxS3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser,
        FsxS3AccessPointAttachmentS3AccessPoint,
        FsxS3AccessPointAttachmentS3AccessPointVpcConfiguration;
export 'src/fsx/aws_fsx_windows_file_system.dart'
    show
        AwsFsxWindowsFileSystem,
        FsxWindowsFileSystemAuditLogConfiguration,
        FsxWindowsFileSystemDiskIopsConfiguration,
        FsxWindowsFileSystemSelfManagedActiveDirectory;
