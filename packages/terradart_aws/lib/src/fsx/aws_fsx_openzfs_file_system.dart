// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_openzfs_file_system`.
const Set<String> _awsFsxOpenzfsFileSystemSensitive = <String>{};

/// Typed helper for the `disk_iops_configuration` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemDiskIopsConfiguration {
  const FsxOpenzfsFileSystemDiskIopsConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
  };
}

/// Typed helper for the `read_cache_configuration` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemReadCacheConfiguration {
  const FsxOpenzfsFileSystemReadCacheConfiguration({
    this.size,
    this.sizingMode,
  });

  final TfArg<num>? size;

  final TfArg<String>? sizingMode;

  Map<String, Object?> encode() => {
    if (size != null) 'size': size!.toTfJson(),
    if (sizingMode != null) 'sizing_mode': sizingMode!.toTfJson(),
  };
}

/// Typed helper for the `root_volume_configuration` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemRootVolumeConfiguration {
  const FsxOpenzfsFileSystemRootVolumeConfiguration({
    this.copyTagsToSnapshots,
    this.dataCompressionType,
    this.readOnly,
    this.recordSizeKib,
    this.nfsExports,
    this.userAndGroupQuotas,
  });

  final TfArg<bool>? copyTagsToSnapshots;

  final TfArg<String>? dataCompressionType;

  final TfArg<bool>? readOnly;

  final TfArg<num>? recordSizeKib;

  final FsxOpenzfsFileSystemRootVolumeConfigurationNfsExports? nfsExports;

  final List<FsxOpenzfsFileSystemRootVolumeConfigurationUserAndGroupQuotas>?
  userAndGroupQuotas;

  Map<String, Object?> encode() => {
    if (copyTagsToSnapshots != null)
      'copy_tags_to_snapshots': copyTagsToSnapshots!.toTfJson(),
    if (dataCompressionType != null)
      'data_compression_type': dataCompressionType!.toTfJson(),
    if (readOnly != null) 'read_only': readOnly!.toTfJson(),
    if (recordSizeKib != null) 'record_size_kib': recordSizeKib!.toTfJson(),
    if (nfsExports != null) 'nfs_exports': nfsExports!.encode(),
    if (userAndGroupQuotas != null)
      'user_and_group_quotas': [
        for (final e in userAndGroupQuotas!) e.encode(),
      ],
  };
}

/// Typed helper for the `root_volume_configuration.nfs_exports` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemRootVolumeConfigurationNfsExports {
  const FsxOpenzfsFileSystemRootVolumeConfigurationNfsExports({
    required this.clientConfigurations,
  });

  final List<
    FsxOpenzfsFileSystemRootVolumeConfigurationNfsExportsClientConfigurations
  >
  clientConfigurations;

  Map<String, Object?> encode() => {
    'client_configurations': [for (final e in clientConfigurations) e.encode()],
  };
}

/// Typed helper for the `root_volume_configuration.nfs_exports.client_configurations` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemRootVolumeConfigurationNfsExportsClientConfigurations {
  const FsxOpenzfsFileSystemRootVolumeConfigurationNfsExportsClientConfigurations({
    required this.clients,
    required this.options,
  });

  final TfArg<String> clients;

  final TfArg<List<Object?>> options;

  Map<String, Object?> encode() => {
    'clients': clients.toTfJson(),
    'options': options.toTfJson(),
  };
}

/// Typed helper for the `root_volume_configuration.user_and_group_quotas` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemRootVolumeConfigurationUserAndGroupQuotas {
  const FsxOpenzfsFileSystemRootVolumeConfigurationUserAndGroupQuotas({
    required this.id,
    required this.storageCapacityQuotaGib,
    required this.type,
  });

  final TfArg<num> id;

  final TfArg<num> storageCapacityQuotaGib;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'storage_capacity_quota_gib': storageCapacityQuotaGib.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_openzfs_file_system`.
final class AwsFsxOpenzfsFileSystem extends Resource {
  static const String tfType = 'aws_fsx_openzfs_file_system';

  AwsFsxOpenzfsFileSystem({
    required super.localName,
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? backupId,
    TfArg<bool>? copyTagsToBackups,
    TfArg<bool>? copyTagsToVolumes,
    TfArg<String>? dailyAutomaticBackupStartTime,
    TfArg<List<String>>? deleteOptions,
    required TfArg<String> deploymentType,
    TfArg<String>? endpointIpAddressRange,
    TfArg<Map<String, String>>? finalBackupTags,
    TfArg<String>? kmsKeyId,
    TfArg<String>? networkType,
    TfArg<String>? preferredSubnetId,
    TfArg<String>? region,
    TfArg<List<String>>? routeTableIds,
    TfArg<List<String>>? securityGroupIds,
    TfArg<bool>? skipFinalBackup,
    TfArg<num>? storageCapacity,
    TfArg<String>? storageType,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> throughputCapacity,
    TfArg<String>? weeklyMaintenanceStartTime,
    FsxOpenzfsFileSystemDiskIopsConfiguration? diskIopsConfiguration,
    FsxOpenzfsFileSystemReadCacheConfiguration? readCacheConfiguration,
    FsxOpenzfsFileSystemRootVolumeConfiguration? rootVolumeConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (automaticBackupRetentionDays != null)
             'automatic_backup_retention_days': automaticBackupRetentionDays,
           if (backupId != null) 'backup_id': backupId,
           if (copyTagsToBackups != null)
             'copy_tags_to_backups': copyTagsToBackups,
           if (copyTagsToVolumes != null)
             'copy_tags_to_volumes': copyTagsToVolumes,
           if (dailyAutomaticBackupStartTime != null)
             'daily_automatic_backup_start_time': dailyAutomaticBackupStartTime,
           if (deleteOptions != null) 'delete_options': deleteOptions,
           'deployment_type': deploymentType,
           if (endpointIpAddressRange != null)
             'endpoint_ip_address_range': endpointIpAddressRange,
           if (finalBackupTags != null) 'final_backup_tags': finalBackupTags,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (networkType != null) 'network_type': networkType,
           if (preferredSubnetId != null)
             'preferred_subnet_id': preferredSubnetId,
           if (region != null) 'region': region,
           if (routeTableIds != null) 'route_table_ids': routeTableIds,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (skipFinalBackup != null) 'skip_final_backup': skipFinalBackup,
           if (storageCapacity != null) 'storage_capacity': storageCapacity,
           if (storageType != null) 'storage_type': storageType,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           'throughput_capacity': throughputCapacity,
           if (weeklyMaintenanceStartTime != null)
             'weekly_maintenance_start_time': weeklyMaintenanceStartTime,
           if (diskIopsConfiguration != null)
             'disk_iops_configuration': TfArg.literal(
               diskIopsConfiguration.encode(),
             ),
           if (readCacheConfiguration != null)
             'read_cache_configuration': TfArg.literal(
               readCacheConfiguration.encode(),
             ),
           if (rootVolumeConfiguration != null)
             'root_volume_configuration': TfArg.literal(
               rootVolumeConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOpenzfsFileSystemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `endpoint_ip_address` attribute.
  TfRef<String> get endpointIpAddress =>
      TfRef.attribute<String>(this, 'endpoint_ip_address');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `root_volume_id` attribute.
  TfRef<String> get rootVolumeId =>
      TfRef.attribute<String>(this, 'root_volume_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
