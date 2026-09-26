// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_windows_file_system`.
const Set<String> _awsFsxWindowsFileSystemSensitive = <String>{};

/// Factory wrapper for `aws_fsx_windows_file_system`.
final class DataAwsFsxWindowsFileSystem extends Data {
  static const String tfType = 'aws_fsx_windows_file_system';

  DataAwsFsxWindowsFileSystem({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'id': id,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxWindowsFileSystemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_directory_id` attribute.
  TfRef<String> get activeDirectoryId =>
      TfRef.attribute<String>(this, 'active_directory_id');

  /// Reference to `aliases` attribute.
  TfRef<List<String>> get aliases =>
      TfRef.attribute<List<String>>(this, 'aliases');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `audit_log_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get auditLogConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'audit_log_configuration',
      );

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

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentType =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `disk_iops_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get diskIopsConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'disk_iops_configuration',
      );

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `preferred_file_server_ip` attribute.
  TfRef<String> get preferredFileServerIp =>
      TfRef.attribute<String>(this, 'preferred_file_server_ip');

  /// Reference to `preferred_subnet_id` attribute.
  TfRef<String> get preferredSubnetId =>
      TfRef.attribute<String>(this, 'preferred_subnet_id');

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

  /// Reference to `throughput_capacity` attribute.
  TfRef<num> get throughputCapacity =>
      TfRef.attribute<num>(this, 'throughput_capacity');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `weekly_maintenance_start_time` attribute.
  TfRef<String> get weeklyMaintenanceStartTime =>
      TfRef.attribute<String>(this, 'weekly_maintenance_start_time');
}
