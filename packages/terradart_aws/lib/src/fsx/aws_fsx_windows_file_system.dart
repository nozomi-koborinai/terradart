// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_fsx_windows_file_system`.
const Set<String> _awsFsxWindowsFileSystemSensitive = <String>{
  'self_managed_active_directory.password',
  'self_managed_active_directory.password_wo',
};

/// Fsx Windows File System Deployment enum for `deployment_type`.
enum FsxWindowsFileSystemDeploymentType implements TerraformEnum {
  multiAz1('MULTI_AZ_1'),
  singleAz1('SINGLE_AZ_1'),
  singleAz2('SINGLE_AZ_2');

  const FsxWindowsFileSystemDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Windows File System Network enum for `network_type`.
enum FsxWindowsFileSystemNetworkType implements TerraformEnum {
  ipv4('IPV4'),
  dual('DUAL');

  const FsxWindowsFileSystemNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Windows File System Storage enum for `storage_type`.
enum FsxWindowsFileSystemStorageType implements TerraformEnum {
  ssd('SSD'),
  hdd('HDD'),
  intelligentTiering('INTELLIGENT_TIERING');

  const FsxWindowsFileSystemStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `active_directory_id`, `self_managed_active_directory` on `aws_fsx_windows_file_system`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.activeDirectoryId(...)`.
sealed class FsxWindowsFileSystemActiveDirectory {
  const FsxWindowsFileSystemActiveDirectory();

  /// Sets `active_directory_id`.
  const factory FsxWindowsFileSystemActiveDirectory.activeDirectoryId(
    TfArg<String> activeDirectoryId,
  ) = FsxWindowsFileSystemActiveDirectoryId;

  /// Sets `self_managed_active_directory`.
  const factory FsxWindowsFileSystemActiveDirectory.selfManagedActiveDirectory(
    FsxWindowsFileSystemSelfManagedActiveDirectory selfManagedActiveDirectory,
  ) = FsxWindowsFileSystemActiveDirectorySelfManagedActiveDirectory;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FsxWindowsFileSystemActiveDirectory.activeDirectoryId] choice: sets `active_directory_id`.
final class FsxWindowsFileSystemActiveDirectoryId
    extends FsxWindowsFileSystemActiveDirectory {
  const FsxWindowsFileSystemActiveDirectoryId(this.activeDirectoryId);

  final TfArg<String> activeDirectoryId;

  @override
  String get blockKey => 'active_directory_id';

  @override
  Map<String, Object?> encode() => {
    'active_directory_id': activeDirectoryId.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'active_directory_id': activeDirectoryId,
  };
}

/// The [FsxWindowsFileSystemActiveDirectory.selfManagedActiveDirectory] choice: sets `self_managed_active_directory`.
final class FsxWindowsFileSystemActiveDirectorySelfManagedActiveDirectory
    extends FsxWindowsFileSystemActiveDirectory {
  const FsxWindowsFileSystemActiveDirectorySelfManagedActiveDirectory(
    this.selfManagedActiveDirectory,
  );

  final FsxWindowsFileSystemSelfManagedActiveDirectory
  selfManagedActiveDirectory;

  @override
  String get blockKey => 'self_managed_active_directory';

  @override
  Map<String, Object?> encode() => {
    'self_managed_active_directory': selfManagedActiveDirectory.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'self_managed_active_directory': TfArg.literal(
      selfManagedActiveDirectory.encode(),
    ),
  };
}

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

  final TfArg<FsxWindowsFileSystemAuditLogConfigurationFileAccessAuditLogLevel>?
  fileAccessAuditLogLevel;

  final TfArg<
    FsxWindowsFileSystemAuditLogConfigurationFileShareAccessAuditLogLevel
  >?
  fileShareAccessAuditLogLevel;

  Map<String, Object?> encode() => {
    'audit_log_destination': ?auditLogDestination?.toTfJson(),
    'file_access_audit_log_level': ?fileAccessAuditLogLevel?.toTfJson(),
    'file_share_access_audit_log_level': ?fileShareAccessAuditLogLevel
        ?.toTfJson(),
  };
}

/// `file_access_audit_log_level` — derived from the provider schema description.
enum FsxWindowsFileSystemAuditLogConfigurationFileAccessAuditLogLevel
    implements TerraformEnum {
  disabled('DISABLED'),
  successOnly('SUCCESS_ONLY'),
  failureOnly('FAILURE_ONLY'),
  successAndFailure('SUCCESS_AND_FAILURE');

  const FsxWindowsFileSystemAuditLogConfigurationFileAccessAuditLogLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `file_share_access_audit_log_level` — derived from the provider schema description.
enum FsxWindowsFileSystemAuditLogConfigurationFileShareAccessAuditLogLevel
    implements TerraformEnum {
  disabled('DISABLED'),
  successOnly('SUCCESS_ONLY'),
  failureOnly('FAILURE_ONLY'),
  successAndFailure('SUCCESS_AND_FAILURE');

  const FsxWindowsFileSystemAuditLogConfigurationFileShareAccessAuditLogLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `disk_iops_configuration` block of
/// `aws_fsx_windows_file_system` (derived from provider schema).
@immutable
final class FsxWindowsFileSystemDiskIopsConfiguration {
  const FsxWindowsFileSystemDiskIopsConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final TfArg<FsxWindowsFileSystemDiskIopsConfigurationMode>? mode;

  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum FsxWindowsFileSystemDiskIopsConfigurationMode implements TerraformEnum {
  automatic('AUTOMATIC'),
  userProvisioned('USER_PROVISIONED');

  const FsxWindowsFileSystemDiskIopsConfigurationMode(this.terraformValue);
  @override
  final String terraformValue;
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
    'domain_join_service_account_secret': ?domainJoinServiceAccountSecret
        ?.toTfJson(),
    'domain_name': domainName.toTfJson(),
    'file_system_administrators_group': ?fileSystemAdministratorsGroup
        ?.toTfJson(),
    'organizational_unit_distinguished_name':
        ?organizationalUnitDistinguishedName?.toTfJson(),
    'password': ?password?.toTfJson(),
    'password_wo': ?passwordWo?.toTfJson(),
    'password_wo_version': ?passwordWoVersion?.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_windows_file_system`.
final class AwsFsxWindowsFileSystem extends Resource {
  static const String tfType = 'aws_fsx_windows_file_system';

  AwsFsxWindowsFileSystem({
    required super.localName,
    FsxWindowsFileSystemActiveDirectory? activeDirectory,
    TfArg<List<String>>? aliases,
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? backupId,
    TfArg<bool>? copyTagsToBackups,
    TfArg<String>? dailyAutomaticBackupStartTime,
    TfArg<FsxWindowsFileSystemDeploymentType>? deploymentType,
    TfArg<Map<String, String>>? finalBackupTags,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<FsxWindowsFileSystemNetworkType>? networkType,
    TfArg<String>? preferredSubnetId,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    TfArg<bool>? skipFinalBackup,
    TfArg<num>? storageCapacity,
    TfArg<FsxWindowsFileSystemStorageType>? storageType,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> throughputCapacity,
    TfArg<String>? weeklyMaintenanceStartTime,
    FsxWindowsFileSystemAuditLogConfiguration? auditLogConfiguration,
    FsxWindowsFileSystemDiskIopsConfiguration? diskIopsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?activeDirectory?.argMap,
           'aliases': ?aliases,
           'automatic_backup_retention_days': ?automaticBackupRetentionDays,
           'backup_id': ?backupId,
           'copy_tags_to_backups': ?copyTagsToBackups,
           'daily_automatic_backup_start_time': ?dailyAutomaticBackupStartTime,
           'deployment_type': ?deploymentType,
           'final_backup_tags': ?finalBackupTags,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'network_type': ?networkType,
           'preferred_subnet_id': ?preferredSubnetId,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'skip_final_backup': ?skipFinalBackup,
           'storage_capacity': ?storageCapacity,
           'storage_type': ?storageType,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'throughput_capacity': throughputCapacity,
           'weekly_maintenance_start_time': ?weeklyMaintenanceStartTime,
           if (auditLogConfiguration != null)
             'audit_log_configuration': TfArg.literal(
               auditLogConfiguration.encode(),
             ),
           if (diskIopsConfiguration != null)
             'disk_iops_configuration': TfArg.literal(
               diskIopsConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxWindowsFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxWindowsFileSystem>`.
  RefTo<AwsFsxWindowsFileSystem> get ref => RefTo.of(this);

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
