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
extension type const FsxLustreFileSystemAutoImportPolicy._(TfArg<String> _)
    implements TfArg<String> {
  FsxLustreFileSystemAutoImportPolicy.variable(String name)
    : this._(TfArg.variable(name));
  FsxLustreFileSystemAutoImportPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const FsxLustreFileSystemAutoImportPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const none = FsxLustreFileSystemAutoImportPolicy._(
    TfArgLiteral('NONE'),
  );
  static const newCase = FsxLustreFileSystemAutoImportPolicy._(
    TfArgLiteral('NEW'),
  );
  static const newChanged = FsxLustreFileSystemAutoImportPolicy._(
    TfArgLiteral('NEW_CHANGED'),
  );
  static const newChangedDeleted = FsxLustreFileSystemAutoImportPolicy._(
    TfArgLiteral('NEW_CHANGED_DELETED'),
  );

  static const List<FsxLustreFileSystemAutoImportPolicy> values = [
    none,
    newCase,
    newChanged,
    newChangedDeleted,
  ];
}

/// Fsx Lustre File System Data Compression enum for `data_compression_type`.
extension type const FsxLustreFileSystemDataCompressionType._(TfArg<String> _)
    implements TfArg<String> {
  FsxLustreFileSystemDataCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  FsxLustreFileSystemDataCompressionType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxLustreFileSystemDataCompressionType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = FsxLustreFileSystemDataCompressionType._(
    TfArgLiteral('NONE'),
  );
  static const lz4 = FsxLustreFileSystemDataCompressionType._(
    TfArgLiteral('LZ4'),
  );

  static const List<FsxLustreFileSystemDataCompressionType> values = [
    none,
    lz4,
  ];
}

/// Fsx Lustre File System Deployment enum for `deployment_type`.
extension type const FsxLustreFileSystemDeploymentType._(TfArg<String> _)
    implements TfArg<String> {
  FsxLustreFileSystemDeploymentType.variable(String name)
    : this._(TfArg.variable(name));
  FsxLustreFileSystemDeploymentType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxLustreFileSystemDeploymentType.arg(TfArg<String> arg) : this._(arg);

  static const scratch1 = FsxLustreFileSystemDeploymentType._(
    TfArgLiteral('SCRATCH_1'),
  );
  static const scratch2 = FsxLustreFileSystemDeploymentType._(
    TfArgLiteral('SCRATCH_2'),
  );
  static const persistent1 = FsxLustreFileSystemDeploymentType._(
    TfArgLiteral('PERSISTENT_1'),
  );
  static const persistent2 = FsxLustreFileSystemDeploymentType._(
    TfArgLiteral('PERSISTENT_2'),
  );

  static const List<FsxLustreFileSystemDeploymentType> values = [
    scratch1,
    scratch2,
    persistent1,
    persistent2,
  ];
}

/// Fsx Lustre File System Drive Cache enum for `drive_cache_type`.
extension type const FsxLustreFileSystemDriveCacheType._(TfArg<String> _)
    implements TfArg<String> {
  FsxLustreFileSystemDriveCacheType.variable(String name)
    : this._(TfArg.variable(name));
  FsxLustreFileSystemDriveCacheType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxLustreFileSystemDriveCacheType.arg(TfArg<String> arg) : this._(arg);

  static const none = FsxLustreFileSystemDriveCacheType._(TfArgLiteral('NONE'));
  static const read = FsxLustreFileSystemDriveCacheType._(TfArgLiteral('READ'));

  static const List<FsxLustreFileSystemDriveCacheType> values = [none, read];
}

/// Fsx Lustre File System Storage enum for `storage_type`.
extension type const FsxLustreFileSystemStorageType._(TfArg<String> _)
    implements TfArg<String> {
  FsxLustreFileSystemStorageType.variable(String name)
    : this._(TfArg.variable(name));
  FsxLustreFileSystemStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxLustreFileSystemStorageType.arg(TfArg<String> arg) : this._(arg);

  static const ssd = FsxLustreFileSystemStorageType._(TfArgLiteral('SSD'));
  static const hdd = FsxLustreFileSystemStorageType._(TfArgLiteral('HDD'));
  static const intelligentTiering = FsxLustreFileSystemStorageType._(
    TfArgLiteral('INTELLIGENT_TIERING'),
  );

  static const List<FsxLustreFileSystemStorageType> values = [
    ssd,
    hdd,
    intelligentTiering,
  ];
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

  final FsxLustreFileSystemSizingMode sizingMode;

  @internal
  Map<String, Object?> encode() => {
    'size': ?size?.toTfJson(),
    'sizing_mode': sizingMode.toTfJson(),
  };
}

/// `sizing_mode` — derived from the provider schema description.
extension type const FsxLustreFileSystemSizingMode._(TfArg<String> _)
    implements TfArg<String> {
  FsxLustreFileSystemSizingMode.variable(String name)
    : this._(TfArg.variable(name));
  FsxLustreFileSystemSizingMode.expression(String template)
    : this._(TfArg.expression(template));
  const FsxLustreFileSystemSizingMode.arg(TfArg<String> arg) : this._(arg);

  static const noCache = FsxLustreFileSystemSizingMode._(
    TfArgLiteral('NO_CACHE'),
  );
  static const userProvisioned = FsxLustreFileSystemSizingMode._(
    TfArgLiteral('USER_PROVISIONED'),
  );
  static const proportionalToThroughputCapacity =
      FsxLustreFileSystemSizingMode._(
        TfArgLiteral('PROPORTIONAL_TO_THROUGHPUT_CAPACITY'),
      );

  static const List<FsxLustreFileSystemSizingMode> values = [
    noCache,
    userProvisioned,
    proportionalToThroughputCapacity,
  ];
}

/// Typed helper for the `log_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemLogConfiguration {
  const FsxLustreFileSystemLogConfiguration({this.destination, this.level});

  final TfArg<String>? destination;

  final FsxLustreFileSystemLevel? level;

  @internal
  Map<String, Object?> encode() => {
    'destination': ?destination?.toTfJson(),
    'level': ?level?.toTfJson(),
  };
}

/// `level` — derived from the provider schema description.
extension type const FsxLustreFileSystemLevel._(TfArg<String> _)
    implements TfArg<String> {
  FsxLustreFileSystemLevel.variable(String name) : this._(TfArg.variable(name));
  FsxLustreFileSystemLevel.expression(String template)
    : this._(TfArg.expression(template));
  const FsxLustreFileSystemLevel.arg(TfArg<String> arg) : this._(arg);

  static const disabled = FsxLustreFileSystemLevel._(TfArgLiteral('DISABLED'));
  static const warnOnly = FsxLustreFileSystemLevel._(TfArgLiteral('WARN_ONLY'));
  static const errorOnly = FsxLustreFileSystemLevel._(
    TfArgLiteral('ERROR_ONLY'),
  );
  static const warnError = FsxLustreFileSystemLevel._(
    TfArgLiteral('WARN_ERROR'),
  );

  static const List<FsxLustreFileSystemLevel> values = [
    disabled,
    warnOnly,
    errorOnly,
    warnError,
  ];
}

/// Typed helper for the `metadata_configuration` block of
/// `aws_fsx_lustre_file_system` (derived from provider schema).
@immutable
final class FsxLustreFileSystemMetadataConfiguration {
  const FsxLustreFileSystemMetadataConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final FsxLustreFileSystemMode? mode;

  @internal
  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const FsxLustreFileSystemMode._(TfArg<String> _)
    implements TfArg<String> {
  FsxLustreFileSystemMode.variable(String name) : this._(TfArg.variable(name));
  FsxLustreFileSystemMode.expression(String template)
    : this._(TfArg.expression(template));
  const FsxLustreFileSystemMode.arg(TfArg<String> arg) : this._(arg);

  static const automatic = FsxLustreFileSystemMode._(TfArgLiteral('AUTOMATIC'));
  static const userProvisioned = FsxLustreFileSystemMode._(
    TfArgLiteral('USER_PROVISIONED'),
  );

  static const List<FsxLustreFileSystemMode> values = [
    automatic,
    userProvisioned,
  ];
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

  @internal
  Map<String, Object?> encode() => {
    'no_squash_nids': ?noSquashNids?.toTfJson(),
    'root_squash': ?rootSquash?.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_lustre_file_system`.
final class AwsFsxLustreFileSystem extends Resource {
  static const String tfType = 'aws_fsx_lustre_file_system';

  AwsFsxLustreFileSystem(
    super.localName, {
    FsxLustreFileSystemAutoImportPolicy? autoImportPolicy,
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? backupId,
    TfArg<bool>? copyTagsToBackups,
    TfArg<String>? dailyAutomaticBackupStartTime,
    FsxLustreFileSystemDataCompressionType? dataCompressionType,
    FsxLustreFileSystemDeploymentType? deploymentType,
    FsxLustreFileSystemDriveCacheType? driveCacheType,
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
    FsxLustreFileSystemStorageType? storageType,
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
  TfRef<String> get autoImportPolicy =>
      TfRef.attribute<String>(this, 'auto_import_policy');

  /// Reference to `automatic_backup_retention_days` attribute.
  TfRef<num> get automaticBackupRetentionDays =>
      TfRef.attribute<num>(this, 'automatic_backup_retention_days');

  /// Reference to `backup_id` attribute.
  TfRef<String> get backupId => TfRef.attribute<String>(this, 'backup_id');

  /// Reference to `copy_tags_to_backups` attribute.
  TfRef<bool> get copyTagsToBackups =>
      TfRef.attribute<bool>(this, 'copy_tags_to_backups');

  /// Reference to `daily_automatic_backup_start_time` attribute.
  TfRef<String> get dailyAutomaticBackupStartTime =>
      TfRef.attribute<String>(this, 'daily_automatic_backup_start_time');

  /// Reference to `data_compression_type` attribute.
  TfRef<String> get dataCompressionType =>
      TfRef.attribute<String>(this, 'data_compression_type');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentType =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `drive_cache_type` attribute.
  TfRef<String> get driveCacheType =>
      TfRef.attribute<String>(this, 'drive_cache_type');

  /// Reference to `efa_enabled` attribute.
  TfRef<bool> get efaEnabled => TfRef.attribute<bool>(this, 'efa_enabled');

  /// Reference to `export_path` attribute.
  TfRef<String> get exportPath => TfRef.attribute<String>(this, 'export_path');

  /// Reference to `file_system_type_version` attribute.
  TfRef<String> get fileSystemTypeVersion =>
      TfRef.attribute<String>(this, 'file_system_type_version');

  /// Reference to `final_backup_tags` attribute.
  TfRef<Map<String, String>> get finalBackupTags =>
      TfRef.attribute<Map<String, String>>(this, 'final_backup_tags');

  /// Reference to `import_path` attribute.
  TfRef<String> get importPath => TfRef.attribute<String>(this, 'import_path');

  /// Reference to `imported_file_chunk_size` attribute.
  TfRef<num> get importedFileChunkSize =>
      TfRef.attribute<num>(this, 'imported_file_chunk_size');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `per_unit_storage_throughput` attribute.
  TfRef<num> get perUnitStorageThroughput =>
      TfRef.attribute<num>(this, 'per_unit_storage_throughput');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `skip_final_backup` attribute.
  TfRef<bool> get skipFinalBackup =>
      TfRef.attribute<bool>(this, 'skip_final_backup');

  /// Reference to `storage_capacity` attribute.
  TfRef<num> get storageCapacity =>
      TfRef.attribute<num>(this, 'storage_capacity');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throughput_capacity` attribute.
  TfRef<num> get throughputCapacity =>
      TfRef.attribute<num>(this, 'throughput_capacity');

  /// Reference to `weekly_maintenance_start_time` attribute.
  TfRef<String> get weeklyMaintenanceStartTime =>
      TfRef.attribute<String>(this, 'weekly_maintenance_start_time');
}
