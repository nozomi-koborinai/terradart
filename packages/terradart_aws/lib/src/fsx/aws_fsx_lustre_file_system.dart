// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_lustre_file_system`.
const Set<String> _awsFsxLustreFileSystemSensitive = <String>{};

/// Typed helper for the `data_read_cache_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemDataReadCacheConfiguration {
  const FsxLustreFileSystemDataReadCacheConfiguration({
    this.size,
    required this.sizingMode,
  });

  final TfArg<num>? size;

  final TfArg<String> sizingMode;

  Map<String, Object?> encode() => {
    if (size != null) 'size': size!.toTfJson(),
    'sizing_mode': sizingMode.toTfJson(),
  };
}

/// Typed helper for the `log_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemLogConfiguration {
  const FsxLustreFileSystemLogConfiguration({this.destination, this.level});

  final TfArg<String>? destination;

  final TfArg<String>? level;

  Map<String, Object?> encode() => {
    if (destination != null) 'destination': destination!.toTfJson(),
    if (level != null) 'level': level!.toTfJson(),
  };
}

/// Typed helper for the `metadata_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemMetadataConfiguration {
  const FsxLustreFileSystemMetadataConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
  };
}

/// Typed helper for the `root_squash_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemRootSquashConfiguration {
  const FsxLustreFileSystemRootSquashConfiguration({
    this.noSquashNids,
    this.rootSquash,
  });

  final TfArg<List<Object?>>? noSquashNids;

  final TfArg<String>? rootSquash;

  Map<String, Object?> encode() => {
    if (noSquashNids != null) 'no_squash_nids': noSquashNids!.toTfJson(),
    if (rootSquash != null) 'root_squash': rootSquash!.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_lustre_file_system`.
final class AwsFsxLustreFileSystem extends Resource {
  static const String tfType = 'aws_fsx_lustre_file_system';

  AwsFsxLustreFileSystem({
    required super.localName,
    TfArg<String>? autoImportPolicy,
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? backupId,
    TfArg<bool>? copyTagsToBackups,
    TfArg<String>? dailyAutomaticBackupStartTime,
    TfArg<String>? dataCompressionType,
    TfArg<String>? deploymentType,
    TfArg<String>? driveCacheType,
    TfArg<bool>? efaEnabled,
    TfArg<String>? exportPath,
    TfArg<String>? fileSystemTypeVersion,
    TfArg<Map<String, String>>? finalBackupTags,
    TfArg<String>? importPath,
    TfArg<num>? importedFileChunkSize,
    TfArg<String>? kmsKeyId,
    TfArg<num>? perUnitStorageThroughput,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<bool>? skipFinalBackup,
    TfArg<num>? storageCapacity,
    TfArg<String>? storageType,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? throughputCapacity,
    TfArg<String>? weeklyMaintenanceStartTime,
    FsxLustreFileSystemDataReadCacheConfiguration? dataReadCacheConfiguration,
    FsxLustreFileSystemLogConfiguration? logConfiguration,
    FsxLustreFileSystemMetadataConfiguration? metadataConfiguration,
    FsxLustreFileSystemRootSquashConfiguration? rootSquashConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoImportPolicy != null) 'auto_import_policy': autoImportPolicy,
           if (automaticBackupRetentionDays != null)
             'automatic_backup_retention_days': automaticBackupRetentionDays,
           if (backupId != null) 'backup_id': backupId,
           if (copyTagsToBackups != null)
             'copy_tags_to_backups': copyTagsToBackups,
           if (dailyAutomaticBackupStartTime != null)
             'daily_automatic_backup_start_time': dailyAutomaticBackupStartTime,
           if (dataCompressionType != null)
             'data_compression_type': dataCompressionType,
           if (deploymentType != null) 'deployment_type': deploymentType,
           if (driveCacheType != null) 'drive_cache_type': driveCacheType,
           if (efaEnabled != null) 'efa_enabled': efaEnabled,
           if (exportPath != null) 'export_path': exportPath,
           if (fileSystemTypeVersion != null)
             'file_system_type_version': fileSystemTypeVersion,
           if (finalBackupTags != null) 'final_backup_tags': finalBackupTags,
           if (importPath != null) 'import_path': importPath,
           if (importedFileChunkSize != null)
             'imported_file_chunk_size': importedFileChunkSize,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (perUnitStorageThroughput != null)
             'per_unit_storage_throughput': perUnitStorageThroughput,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (skipFinalBackup != null) 'skip_final_backup': skipFinalBackup,
           if (storageCapacity != null) 'storage_capacity': storageCapacity,
           if (storageType != null) 'storage_type': storageType,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (throughputCapacity != null)
             'throughput_capacity': throughputCapacity,
           if (weeklyMaintenanceStartTime != null)
             'weekly_maintenance_start_time': weeklyMaintenanceStartTime,
           if (dataReadCacheConfiguration != null)
             'data_read_cache_configuration': TfArg.literal(
               dataReadCacheConfiguration.encode(),
             ),
           if (logConfiguration != null)
             'log_configuration': TfArg.literal(logConfiguration.encode()),
           if (metadataConfiguration != null)
             'metadata_configuration': TfArg.literal(
               metadataConfiguration.encode(),
             ),
           if (rootSquashConfiguration != null)
             'root_squash_configuration': TfArg.literal(
               rootSquashConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxLustreFileSystemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `mount_name` attribute.
  TfRef<String> get mountName => TfRef.attribute<String>(this, 'mount_name');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
