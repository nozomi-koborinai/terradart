// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_fsx_openzfs_file_system`.
const Set<String> _awsFsxOpenzfsFileSystemSensitive = <String>{};

/// Fsx Openzfs File System Delete enum for `delete_options`.
extension type const FsxOpenzfsFileSystemDeleteOptions._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsFileSystemDeleteOptions.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsFileSystemDeleteOptions.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsFileSystemDeleteOptions.arg(TfArg<String> arg) : this._(arg);

  static const deleteChildVolumesAndSnapshots =
      FsxOpenzfsFileSystemDeleteOptions._(
        TfArgLiteral('DELETE_CHILD_VOLUMES_AND_SNAPSHOTS'),
      );

  static const List<FsxOpenzfsFileSystemDeleteOptions> values = [
    deleteChildVolumesAndSnapshots,
  ];
}

/// Fsx Openzfs File System Deployment enum for `deployment_type`.
extension type const FsxOpenzfsFileSystemDeploymentType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsFileSystemDeploymentType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsFileSystemDeploymentType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsFileSystemDeploymentType.arg(TfArg<String> arg) : this._(arg);

  static const singleAz1 = FsxOpenzfsFileSystemDeploymentType._(
    TfArgLiteral('SINGLE_AZ_1'),
  );
  static const singleAz2 = FsxOpenzfsFileSystemDeploymentType._(
    TfArgLiteral('SINGLE_AZ_2'),
  );
  static const singleAzHa1 = FsxOpenzfsFileSystemDeploymentType._(
    TfArgLiteral('SINGLE_AZ_HA_1'),
  );
  static const singleAzHa2 = FsxOpenzfsFileSystemDeploymentType._(
    TfArgLiteral('SINGLE_AZ_HA_2'),
  );
  static const multiAz1 = FsxOpenzfsFileSystemDeploymentType._(
    TfArgLiteral('MULTI_AZ_1'),
  );

  static const List<FsxOpenzfsFileSystemDeploymentType> values = [
    singleAz1,
    singleAz2,
    singleAzHa1,
    singleAzHa2,
    multiAz1,
  ];
}

/// Fsx Openzfs File System Network enum for `network_type`.
extension type const FsxOpenzfsFileSystemNetworkType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsFileSystemNetworkType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsFileSystemNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsFileSystemNetworkType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = FsxOpenzfsFileSystemNetworkType._(TfArgLiteral('IPV4'));
  static const dual = FsxOpenzfsFileSystemNetworkType._(TfArgLiteral('DUAL'));

  static const List<FsxOpenzfsFileSystemNetworkType> values = [ipv4, dual];
}

/// Fsx Openzfs File System Storage enum for `storage_type`.
extension type const FsxOpenzfsFileSystemStorageType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsFileSystemStorageType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsFileSystemStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsFileSystemStorageType.arg(TfArg<String> arg) : this._(arg);

  static const ssd = FsxOpenzfsFileSystemStorageType._(TfArgLiteral('SSD'));
  static const hdd = FsxOpenzfsFileSystemStorageType._(TfArgLiteral('HDD'));
  static const intelligentTiering = FsxOpenzfsFileSystemStorageType._(
    TfArgLiteral('INTELLIGENT_TIERING'),
  );

  static const List<FsxOpenzfsFileSystemStorageType> values = [
    ssd,
    hdd,
    intelligentTiering,
  ];
}

/// Typed helper for the `disk_iops_configuration` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemDiskIopsConfiguration {
  const FsxOpenzfsFileSystemDiskIopsConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final FsxOpenzfsFileSystemMode? mode;

  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const FsxOpenzfsFileSystemMode._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsFileSystemMode.variable(String name) : this._(TfArg.variable(name));
  FsxOpenzfsFileSystemMode.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsFileSystemMode.arg(TfArg<String> arg) : this._(arg);

  static const automatic = FsxOpenzfsFileSystemMode._(
    TfArgLiteral('AUTOMATIC'),
  );
  static const userProvisioned = FsxOpenzfsFileSystemMode._(
    TfArgLiteral('USER_PROVISIONED'),
  );

  static const List<FsxOpenzfsFileSystemMode> values = [
    automatic,
    userProvisioned,
  ];
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

  final FsxOpenzfsFileSystemSizingMode? sizingMode;

  Map<String, Object?> encode() => {
    'size': ?size?.toTfJson(),
    'sizing_mode': ?sizingMode?.toTfJson(),
  };
}

/// `sizing_mode` — derived from the provider schema description.
extension type const FsxOpenzfsFileSystemSizingMode._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsFileSystemSizingMode.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsFileSystemSizingMode.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsFileSystemSizingMode.arg(TfArg<String> arg) : this._(arg);

  static const noCache = FsxOpenzfsFileSystemSizingMode._(
    TfArgLiteral('NO_CACHE'),
  );
  static const userProvisioned = FsxOpenzfsFileSystemSizingMode._(
    TfArgLiteral('USER_PROVISIONED'),
  );
  static const proportionalToThroughputCapacity =
      FsxOpenzfsFileSystemSizingMode._(
        TfArgLiteral('PROPORTIONAL_TO_THROUGHPUT_CAPACITY'),
      );

  static const List<FsxOpenzfsFileSystemSizingMode> values = [
    noCache,
    userProvisioned,
    proportionalToThroughputCapacity,
  ];
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

  final FsxOpenzfsFileSystemDataCompressionType? dataCompressionType;

  final TfArg<bool>? readOnly;

  final TfArg<num>? recordSizeKib;

  final FsxOpenzfsFileSystemNfsExports? nfsExports;

  final List<FsxOpenzfsFileSystemUserAndGroupQuotas>? userAndGroupQuotas;

  Map<String, Object?> encode() => {
    'copy_tags_to_snapshots': ?copyTagsToSnapshots?.toTfJson(),
    'data_compression_type': ?dataCompressionType?.toTfJson(),
    'read_only': ?readOnly?.toTfJson(),
    'record_size_kib': ?recordSizeKib?.toTfJson(),
    'nfs_exports': ?nfsExports?.encode(),
    if (userAndGroupQuotas != null)
      'user_and_group_quotas': [
        for (final e in userAndGroupQuotas!) e.encode(),
      ],
  };
}

/// `data_compression_type` — derived from the provider schema description.
extension type const FsxOpenzfsFileSystemDataCompressionType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsFileSystemDataCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsFileSystemDataCompressionType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsFileSystemDataCompressionType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = FsxOpenzfsFileSystemDataCompressionType._(
    TfArgLiteral('NONE'),
  );
  static const zstd = FsxOpenzfsFileSystemDataCompressionType._(
    TfArgLiteral('ZSTD'),
  );
  static const lz4 = FsxOpenzfsFileSystemDataCompressionType._(
    TfArgLiteral('LZ4'),
  );

  static const List<FsxOpenzfsFileSystemDataCompressionType> values = [
    none,
    zstd,
    lz4,
  ];
}

/// Typed helper for the `root_volume_configuration.nfs_exports` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemNfsExports {
  const FsxOpenzfsFileSystemNfsExports({required this.clientConfigurations});

  final List<FsxOpenzfsFileSystemClientConfigurations> clientConfigurations;

  Map<String, Object?> encode() => {
    'client_configurations': [for (final e in clientConfigurations) e.encode()],
  };
}

/// Typed helper for the `root_volume_configuration.nfs_exports.client_configurations` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemClientConfigurations {
  const FsxOpenzfsFileSystemClientConfigurations({
    required this.clients,
    required this.options,
  });

  final TfArg<String> clients;

  final TfArg<List<String>> options;

  Map<String, Object?> encode() => {
    'clients': clients.toTfJson(),
    'options': options.toTfJson(),
  };
}

/// Typed helper for the `root_volume_configuration.user_and_group_quotas` block of
/// `aws_fsx_openzfs_file_system` (derived from provider schema).
@immutable
final class FsxOpenzfsFileSystemUserAndGroupQuotas {
  const FsxOpenzfsFileSystemUserAndGroupQuotas({
    required this.id,
    required this.storageCapacityQuotaGib,
    required this.type,
  });

  final TfArg<num> id;

  final TfArg<num> storageCapacityQuotaGib;

  final FsxOpenzfsFileSystemType type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'storage_capacity_quota_gib': storageCapacityQuotaGib.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const FsxOpenzfsFileSystemType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsFileSystemType.variable(String name) : this._(TfArg.variable(name));
  FsxOpenzfsFileSystemType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsFileSystemType.arg(TfArg<String> arg) : this._(arg);

  static const user = FsxOpenzfsFileSystemType._(TfArgLiteral('USER'));
  static const group = FsxOpenzfsFileSystemType._(TfArgLiteral('GROUP'));

  static const List<FsxOpenzfsFileSystemType> values = [user, group];
}

/// Factory wrapper for `aws_fsx_openzfs_file_system`.
final class AwsFsxOpenzfsFileSystem extends Resource {
  static const String tfType = 'aws_fsx_openzfs_file_system';

  AwsFsxOpenzfsFileSystem(
    super.localName, {
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? backupId,
    TfArg<bool>? copyTagsToBackups,
    TfArg<bool>? copyTagsToVolumes,
    TfArg<String>? dailyAutomaticBackupStartTime,
    List<FsxOpenzfsFileSystemDeleteOptions>? deleteOptions,
    required FsxOpenzfsFileSystemDeploymentType deploymentType,
    TfArg<String>? endpointIpAddressRange,
    TfArg<Map<String, String>>? finalBackupTags,
    RefTo<AwsKmsKey>? kmsKeyId,
    FsxOpenzfsFileSystemNetworkType? networkType,
    TfArg<String>? preferredSubnetId,
    TfArg<String>? region,
    TfArg<List<String>>? routeTableIds,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    TfArg<bool>? skipFinalBackup,
    TfArg<num>? storageCapacity,
    FsxOpenzfsFileSystemStorageType? storageType,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
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
           'automatic_backup_retention_days': ?automaticBackupRetentionDays,
           'backup_id': ?backupId,
           'copy_tags_to_backups': ?copyTagsToBackups,
           'copy_tags_to_volumes': ?copyTagsToVolumes,
           'daily_automatic_backup_start_time': ?dailyAutomaticBackupStartTime,
           if (deleteOptions != null)
             'delete_options': TfArg.literal([
               for (final e in deleteOptions) e.toTfJson(),
             ]),
           'deployment_type': deploymentType,
           'endpoint_ip_address_range': ?endpointIpAddressRange,
           'final_backup_tags': ?finalBackupTags,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'network_type': ?networkType,
           'preferred_subnet_id': ?preferredSubnetId,
           'region': ?region,
           'route_table_ids': ?routeTableIds,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'skip_final_backup': ?skipFinalBackup,
           'storage_capacity': ?storageCapacity,
           'storage_type': ?storageType,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'throughput_capacity': throughputCapacity,
           'weekly_maintenance_start_time': ?weeklyMaintenanceStartTime,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxOpenzfsFileSystem>`.
  RefTo<AwsFsxOpenzfsFileSystem> get ref => RefTo.of(this);

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

  /// Reference to `automatic_backup_retention_days` attribute.
  TfRef<num> get automaticBackupRetentionDays =>
      TfRef.attribute<num>(this, 'automatic_backup_retention_days');

  /// Reference to `backup_id` attribute.
  TfRef<String> get backupId => TfRef.attribute<String>(this, 'backup_id');

  /// Reference to `copy_tags_to_backups` attribute.
  TfRef<bool> get copyTagsToBackups =>
      TfRef.attribute<bool>(this, 'copy_tags_to_backups');

  /// Reference to `copy_tags_to_volumes` attribute.
  TfRef<bool> get copyTagsToVolumes =>
      TfRef.attribute<bool>(this, 'copy_tags_to_volumes');

  /// Reference to `daily_automatic_backup_start_time` attribute.
  TfRef<String> get dailyAutomaticBackupStartTime =>
      TfRef.attribute<String>(this, 'daily_automatic_backup_start_time');

  /// Reference to `delete_options` attribute.
  TfRef<List<String>> get deleteOptions =>
      TfRef.attribute<List<String>>(this, 'delete_options');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentType =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `endpoint_ip_address_range` attribute.
  TfRef<String> get endpointIpAddressRange =>
      TfRef.attribute<String>(this, 'endpoint_ip_address_range');

  /// Reference to `final_backup_tags` attribute.
  TfRef<Map<String, String>> get finalBackupTags =>
      TfRef.attribute<Map<String, String>>(this, 'final_backup_tags');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `preferred_subnet_id` attribute.
  TfRef<String> get preferredSubnetId =>
      TfRef.attribute<String>(this, 'preferred_subnet_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_table_ids` attribute.
  TfRef<List<String>> get routeTableIds =>
      TfRef.attribute<List<String>>(this, 'route_table_ids');

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
