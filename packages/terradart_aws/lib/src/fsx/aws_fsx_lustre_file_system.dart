// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_fsx_lustre_file_system`.
const Set<String> _awsFsxLustreFileSystemSensitive = <String>{};

/// Fsx Lustre File System Auto Import enum for `auto_import_policy`.
enum FsxLustreFileSystemAutoImportPolicy implements TerraformEnum {
  none('NONE'),
  newCase('NEW'),
  newChanged('NEW_CHANGED'),
  newChangedDeleted('NEW_CHANGED_DELETED');

  const FsxLustreFileSystemAutoImportPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Lustre File System Data Compression enum for `data_compression_type`.
enum FsxLustreFileSystemDataCompressionType implements TerraformEnum {
  none('NONE'),
  lz4('LZ4');

  const FsxLustreFileSystemDataCompressionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Lustre File System Deployment enum for `deployment_type`.
enum FsxLustreFileSystemDeploymentType implements TerraformEnum {
  scratch1('SCRATCH_1'),
  scratch2('SCRATCH_2'),
  persistent1('PERSISTENT_1'),
  persistent2('PERSISTENT_2');

  const FsxLustreFileSystemDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Lustre File System Drive Cache enum for `drive_cache_type`.
enum FsxLustreFileSystemDriveCacheType implements TerraformEnum {
  none('NONE'),
  read('READ');

  const FsxLustreFileSystemDriveCacheType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Lustre File System Storage enum for `storage_type`.
enum FsxLustreFileSystemStorageType implements TerraformEnum {
  ssd('SSD'),
  hdd('HDD'),
  intelligentTiering('INTELLIGENT_TIERING');

  const FsxLustreFileSystemStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_read_cache_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemDataReadCacheConfiguration {
  const FsxLustreFileSystemDataReadCacheConfiguration({
    this.size,
    required this.sizingMode,
  });

  final TfArg<num>? size;

  final TfArg<FsxLustreFileSystemDataReadCacheConfigurationSizingMode>
  sizingMode;

  Map<String, Object?> encode() => {
    'size': ?size?.toTfJson(),
    'sizing_mode': sizingMode.toTfJson(),
  };
}

/// `sizing_mode` — derived from the provider schema description.
enum FsxLustreFileSystemDataReadCacheConfigurationSizingMode
    implements TerraformEnum {
  noCache('NO_CACHE'),
  userProvisioned('USER_PROVISIONED'),
  proportionalToThroughputCapacity('PROPORTIONAL_TO_THROUGHPUT_CAPACITY');

  const FsxLustreFileSystemDataReadCacheConfigurationSizingMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `log_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemLogConfiguration {
  const FsxLustreFileSystemLogConfiguration({this.destination, this.level});

  final TfArg<String>? destination;

  final TfArg<FsxLustreFileSystemLogConfigurationLevel>? level;

  Map<String, Object?> encode() => {
    'destination': ?destination?.toTfJson(),
    'level': ?level?.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
enum FsxLustreFileSystemLogConfigurationLevel implements TerraformEnum {
  disabled('DISABLED'),
  warnOnly('WARN_ONLY'),
  errorOnly('ERROR_ONLY'),
  warnError('WARN_ERROR');

  const FsxLustreFileSystemLogConfigurationLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemMetadataConfiguration {
  const FsxLustreFileSystemMetadataConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final TfArg<FsxLustreFileSystemMetadataConfigurationMode>? mode;

  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum FsxLustreFileSystemMetadataConfigurationMode implements TerraformEnum {
  automatic('AUTOMATIC'),
  userProvisioned('USER_PROVISIONED');

  const FsxLustreFileSystemMetadataConfigurationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `root_squash_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemRootSquashConfiguration {
  const FsxLustreFileSystemRootSquashConfiguration({
    this.noSquashNids,
    this.rootSquash,
  });

  final TfArg<List<String>>? noSquashNids;

  final TfArg<String>? rootSquash;

  Map<String, Object?> encode() => {
    'no_squash_nids': ?noSquashNids?.toTfJson(),
    'root_squash': ?rootSquash?.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_lustre_file_system`.
final class AwsFsxLustreFileSystem extends Resource {
  static const String tfType = 'aws_fsx_lustre_file_system';

  AwsFsxLustreFileSystem({
    required super.localName,
    TfArg<FsxLustreFileSystemAutoImportPolicy>? autoImportPolicy,
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? backupId,
    TfArg<bool>? copyTagsToBackups,
    TfArg<String>? dailyAutomaticBackupStartTime,
    TfArg<FsxLustreFileSystemDataCompressionType>? dataCompressionType,
    TfArg<FsxLustreFileSystemDeploymentType>? deploymentType,
    TfArg<FsxLustreFileSystemDriveCacheType>? driveCacheType,
    TfArg<bool>? efaEnabled,
    TfArg<String>? exportPath,
    TfArg<String>? fileSystemTypeVersion,
    TfArg<Map<String, String>>? finalBackupTags,
    TfArg<String>? importPath,
    TfArg<num>? importedFileChunkSize,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<num>? perUnitStorageThroughput,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    TfArg<bool>? skipFinalBackup,
    TfArg<num>? storageCapacity,
    TfArg<FsxLustreFileSystemStorageType>? storageType,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
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
           'auto_import_policy': ?autoImportPolicy,
           'automatic_backup_retention_days': ?automaticBackupRetentionDays,
           'backup_id': ?backupId,
           'copy_tags_to_backups': ?copyTagsToBackups,
           'daily_automatic_backup_start_time': ?dailyAutomaticBackupStartTime,
           'data_compression_type': ?dataCompressionType,
           'deployment_type': ?deploymentType,
           'drive_cache_type': ?driveCacheType,
           'efa_enabled': ?efaEnabled,
           'export_path': ?exportPath,
           'file_system_type_version': ?fileSystemTypeVersion,
           'final_backup_tags': ?finalBackupTags,
           'import_path': ?importPath,
           'imported_file_chunk_size': ?importedFileChunkSize,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'per_unit_storage_throughput': ?perUnitStorageThroughput,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'skip_final_backup': ?skipFinalBackup,
           'storage_capacity': ?storageCapacity,
           'storage_type': ?storageType,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'throughput_capacity': ?throughputCapacity,
           'weekly_maintenance_start_time': ?weeklyMaintenanceStartTime,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxLustreFileSystem>`.
  RefTo<AwsFsxLustreFileSystem> get ref => RefTo.of(this);

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

  /// Reference to `auto_import_policy` attribute.
  TfRef<String> get autoImportPolicyRef =>
      TfRef.attribute<String>(this, 'auto_import_policy');

  /// Reference to `automatic_backup_retention_days` attribute.
  TfRef<num> get automaticBackupRetentionDaysRef =>
      TfRef.attribute<num>(this, 'automatic_backup_retention_days');

  /// Reference to `backup_id` attribute.
  TfRef<String> get backupIdRef => TfRef.attribute<String>(this, 'backup_id');

  /// Reference to `copy_tags_to_backups` attribute.
  TfRef<bool> get copyTagsToBackupsRef =>
      TfRef.attribute<bool>(this, 'copy_tags_to_backups');

  /// Reference to `daily_automatic_backup_start_time` attribute.
  TfRef<String> get dailyAutomaticBackupStartTimeRef =>
      TfRef.attribute<String>(this, 'daily_automatic_backup_start_time');

  /// Reference to `data_compression_type` attribute.
  TfRef<String> get dataCompressionTypeRef =>
      TfRef.attribute<String>(this, 'data_compression_type');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentTypeRef =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `drive_cache_type` attribute.
  TfRef<String> get driveCacheTypeRef =>
      TfRef.attribute<String>(this, 'drive_cache_type');

  /// Reference to `efa_enabled` attribute.
  TfRef<bool> get efaEnabledRef => TfRef.attribute<bool>(this, 'efa_enabled');

  /// Reference to `export_path` attribute.
  TfRef<String> get exportPathRef =>
      TfRef.attribute<String>(this, 'export_path');

  /// Reference to `file_system_type_version` attribute.
  TfRef<String> get fileSystemTypeVersionRef =>
      TfRef.attribute<String>(this, 'file_system_type_version');

  /// Reference to `final_backup_tags` attribute.
  TfRef<Map<String, String>> get finalBackupTagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'final_backup_tags');

  /// Reference to `import_path` attribute.
  TfRef<String> get importPathRef =>
      TfRef.attribute<String>(this, 'import_path');

  /// Reference to `imported_file_chunk_size` attribute.
  TfRef<num> get importedFileChunkSizeRef =>
      TfRef.attribute<num>(this, 'imported_file_chunk_size');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `per_unit_storage_throughput` attribute.
  TfRef<num> get perUnitStorageThroughputRef =>
      TfRef.attribute<num>(this, 'per_unit_storage_throughput');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIdsRef =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `skip_final_backup` attribute.
  TfRef<bool> get skipFinalBackupRef =>
      TfRef.attribute<bool>(this, 'skip_final_backup');

  /// Reference to `storage_capacity` attribute.
  TfRef<num> get storageCapacityRef =>
      TfRef.attribute<num>(this, 'storage_capacity');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageTypeRef =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIdsRef =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throughput_capacity` attribute.
  TfRef<num> get throughputCapacityRef =>
      TfRef.attribute<num>(this, 'throughput_capacity');

  /// Reference to `weekly_maintenance_start_time` attribute.
  TfRef<String> get weeklyMaintenanceStartTimeRef =>
      TfRef.attribute<String>(this, 'weekly_maintenance_start_time');
}
