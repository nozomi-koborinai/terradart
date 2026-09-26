// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_windows_file_system`.
const Set<String> _awsFsxWindowsFileSystemSensitive = <String>{
  'self_managed_active_directory.password',
  'self_managed_active_directory.password_wo',
};

/// Typed helper for the `audit_log_configuration` block of
/// `aws_fsx_windows_file_system` (derived from provider schema).
@immutable
final class FsxWindowsFileSystemAuditLogConfiguration {
  const FsxWindowsFileSystemAuditLogConfiguration({
    this.auditLogDestination,
    this.fileAccessAuditLogLevel,
    this.fileShareAccessAuditLogLevel,
  });

  final TfArg<String>? auditLogDestination;

  final TfArg<String>? fileAccessAuditLogLevel;

  final TfArg<String>? fileShareAccessAuditLogLevel;

  Map<String, Object?> encode() => {
    if (auditLogDestination != null)
      'audit_log_destination': auditLogDestination!.toTfJson(),
    if (fileAccessAuditLogLevel != null)
      'file_access_audit_log_level': fileAccessAuditLogLevel!.toTfJson(),
    if (fileShareAccessAuditLogLevel != null)
      'file_share_access_audit_log_level': fileShareAccessAuditLogLevel!
          .toTfJson(),
  };
}

/// Typed helper for the `disk_iops_configuration` block of
/// `aws_fsx_windows_file_system` (derived from provider schema).
@immutable
final class FsxWindowsFileSystemDiskIopsConfiguration {
  const FsxWindowsFileSystemDiskIopsConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
  };
}

/// Typed helper for the `self_managed_active_directory` block of
/// `aws_fsx_windows_file_system` (derived from provider schema).
@immutable
final class FsxWindowsFileSystemSelfManagedActiveDirectory {
  const FsxWindowsFileSystemSelfManagedActiveDirectory({
    required this.dnsIps,
    this.domainJoinServiceAccountSecret,
    required this.domainName,
    this.fileSystemAdministratorsGroup,
    this.organizationalUnitDistinguishedName,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    this.username,
  });

  final TfArg<List<Object?>> dnsIps;

  final TfArg<String>? domainJoinServiceAccountSecret;

  final TfArg<String> domainName;

  final TfArg<String>? fileSystemAdministratorsGroup;

  final TfArg<String>? organizationalUnitDistinguishedName;

  final TfArg<String>? password;

  final TfArg<String>? passwordWo;

  final TfArg<num>? passwordWoVersion;

  final TfArg<String>? username;

  Map<String, Object?> encode() => {
    'dns_ips': dnsIps.toTfJson(),
    if (domainJoinServiceAccountSecret != null)
      'domain_join_service_account_secret': domainJoinServiceAccountSecret!
          .toTfJson(),
    'domain_name': domainName.toTfJson(),
    if (fileSystemAdministratorsGroup != null)
      'file_system_administrators_group': fileSystemAdministratorsGroup!
          .toTfJson(),
    if (organizationalUnitDistinguishedName != null)
      'organizational_unit_distinguished_name':
          organizationalUnitDistinguishedName!.toTfJson(),
    if (password != null) 'password': password!.toTfJson(),
    if (passwordWo != null) 'password_wo': passwordWo!.toTfJson(),
    if (passwordWoVersion != null)
      'password_wo_version': passwordWoVersion!.toTfJson(),
    if (username != null) 'username': username!.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_windows_file_system`.
final class AwsFsxWindowsFileSystem extends Resource {
  static const String tfType = 'aws_fsx_windows_file_system';

  AwsFsxWindowsFileSystem({
    required super.localName,
    TfArg<String>? activeDirectoryId,
    TfArg<List<String>>? aliases,
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? backupId,
    TfArg<bool>? copyTagsToBackups,
    TfArg<String>? dailyAutomaticBackupStartTime,
    TfArg<String>? deploymentType,
    TfArg<Map<String, String>>? finalBackupTags,
    TfArg<String>? kmsKeyId,
    TfArg<String>? networkType,
    TfArg<String>? preferredSubnetId,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<bool>? skipFinalBackup,
    TfArg<num>? storageCapacity,
    TfArg<String>? storageType,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> throughputCapacity,
    TfArg<String>? weeklyMaintenanceStartTime,
    FsxWindowsFileSystemAuditLogConfiguration? auditLogConfiguration,
    FsxWindowsFileSystemDiskIopsConfiguration? diskIopsConfiguration,
    FsxWindowsFileSystemSelfManagedActiveDirectory? selfManagedActiveDirectory,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (activeDirectoryId != null)
             'active_directory_id': activeDirectoryId,
           if (aliases != null) 'aliases': aliases,
           if (automaticBackupRetentionDays != null)
             'automatic_backup_retention_days': automaticBackupRetentionDays,
           if (backupId != null) 'backup_id': backupId,
           if (copyTagsToBackups != null)
             'copy_tags_to_backups': copyTagsToBackups,
           if (dailyAutomaticBackupStartTime != null)
             'daily_automatic_backup_start_time': dailyAutomaticBackupStartTime,
           if (deploymentType != null) 'deployment_type': deploymentType,
           if (finalBackupTags != null) 'final_backup_tags': finalBackupTags,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (networkType != null) 'network_type': networkType,
           if (preferredSubnetId != null)
             'preferred_subnet_id': preferredSubnetId,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (skipFinalBackup != null) 'skip_final_backup': skipFinalBackup,
           if (storageCapacity != null) 'storage_capacity': storageCapacity,
           if (storageType != null) 'storage_type': storageType,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           'throughput_capacity': throughputCapacity,
           if (weeklyMaintenanceStartTime != null)
             'weekly_maintenance_start_time': weeklyMaintenanceStartTime,
           if (auditLogConfiguration != null)
             'audit_log_configuration': TfArg.literal(
               auditLogConfiguration.encode(),
             ),
           if (diskIopsConfiguration != null)
             'disk_iops_configuration': TfArg.literal(
               diskIopsConfiguration.encode(),
             ),
           if (selfManagedActiveDirectory != null)
             'self_managed_active_directory': TfArg.literal(
               selfManagedActiveDirectory.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxWindowsFileSystemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `preferred_file_server_ip` attribute.
  TfRef<String> get preferredFileServerIp =>
      TfRef.attribute<String>(this, 'preferred_file_server_ip');

  /// Reference to `remote_administration_endpoint` attribute.
  TfRef<String> get remoteAdministrationEndpoint =>
      TfRef.attribute<String>(this, 'remote_administration_endpoint');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
