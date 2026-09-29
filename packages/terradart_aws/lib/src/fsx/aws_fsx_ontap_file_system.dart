// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_fsx_ontap_file_system`.
const Set<String> _awsFsxOntapFileSystemSensitive = <String>{
  'fsx_admin_password',
};

/// Fsx Ontap File System Deployment enum for `deployment_type`.
enum FsxOntapFileSystemDeploymentType implements TerraformEnum {
  multiAz1('MULTI_AZ_1'),
  singleAz1('SINGLE_AZ_1'),
  singleAz2('SINGLE_AZ_2'),
  multiAz2('MULTI_AZ_2');

  const FsxOntapFileSystemDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Ontap File System Network enum for `network_type`.
enum FsxOntapFileSystemNetworkType implements TerraformEnum {
  ipv4('IPV4'),
  dual('DUAL');

  const FsxOntapFileSystemNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Ontap File System Storage enum for `storage_type`.
enum FsxOntapFileSystemStorageType implements TerraformEnum {
  ssd('SSD'),
  hdd('HDD'),
  intelligentTiering('INTELLIGENT_TIERING');

  const FsxOntapFileSystemStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `throughput_capacity`, `throughput_capacity_per_ha_pair` on `aws_fsx_ontap_file_system`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.throughputCapacity(...)`.
sealed class FsxOntapFileSystemThroughputCapacity {
  const FsxOntapFileSystemThroughputCapacity();

  /// Sets `throughput_capacity`.
  const factory FsxOntapFileSystemThroughputCapacity.throughputCapacity(
    TfArg<num> throughputCapacity,
  ) = FsxOntapFileSystemThroughputCapacityThroughputCapacity;

  /// Sets `throughput_capacity_per_ha_pair`.
  const factory FsxOntapFileSystemThroughputCapacity.throughputCapacityPerHaPair(
    TfArg<num> throughputCapacityPerHaPair,
  ) = FsxOntapFileSystemThroughputCapacityThroughputCapacityPerHaPair;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FsxOntapFileSystemThroughputCapacity.throughputCapacity] choice: sets `throughput_capacity`.
final class FsxOntapFileSystemThroughputCapacityThroughputCapacity
    extends FsxOntapFileSystemThroughputCapacity {
  const FsxOntapFileSystemThroughputCapacityThroughputCapacity(
    this.throughputCapacity,
  );

  final TfArg<num> throughputCapacity;

  @override
  String get blockKey => 'throughput_capacity';

  @override
  Map<String, Object?> encode() => {
    'throughput_capacity': throughputCapacity.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'throughput_capacity': throughputCapacity,
  };
}

/// The [FsxOntapFileSystemThroughputCapacity.throughputCapacityPerHaPair] choice: sets `throughput_capacity_per_ha_pair`.
final class FsxOntapFileSystemThroughputCapacityThroughputCapacityPerHaPair
    extends FsxOntapFileSystemThroughputCapacity {
  const FsxOntapFileSystemThroughputCapacityThroughputCapacityPerHaPair(
    this.throughputCapacityPerHaPair,
  );

  final TfArg<num> throughputCapacityPerHaPair;

  @override
  String get blockKey => 'throughput_capacity_per_ha_pair';

  @override
  Map<String, Object?> encode() => {
    'throughput_capacity_per_ha_pair': throughputCapacityPerHaPair.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'throughput_capacity_per_ha_pair': throughputCapacityPerHaPair,
  };
}

/// Typed helper for the `disk_iops_configuration` block of
/// `aws_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class FsxOntapFileSystemDiskIopsConfiguration {
  const FsxOntapFileSystemDiskIopsConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final TfArg<FsxOntapFileSystemDiskIopsConfigurationMode>? mode;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum FsxOntapFileSystemDiskIopsConfigurationMode implements TerraformEnum {
  automatic('AUTOMATIC'),
  userProvisioned('USER_PROVISIONED');

  const FsxOntapFileSystemDiskIopsConfigurationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_fsx_ontap_file_system`.
final class AwsFsxOntapFileSystem extends Resource {
  static const String tfType = 'aws_fsx_ontap_file_system';

  AwsFsxOntapFileSystem({
    required super.localName,
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? dailyAutomaticBackupStartTime,
    required TfArg<FsxOntapFileSystemDeploymentType> deploymentType,
    TfArg<String>? endpointIpAddressRange,
    TfArg<String>? fsxAdminPassword,
    TfArg<num>? haPairs,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<FsxOntapFileSystemNetworkType>? networkType,
    required TfArg<String> preferredSubnetId,
    TfArg<String>? region,
    TfArg<List<String>>? routeTableIds,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    required TfArg<num> storageCapacity,
    TfArg<FsxOntapFileSystemStorageType>? storageType,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
    TfArg<Map<String, String>>? tags,
    required FsxOntapFileSystemThroughputCapacity throughputCapacity,
    TfArg<String>? weeklyMaintenanceStartTime,
    FsxOntapFileSystemDiskIopsConfiguration? diskIopsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (automaticBackupRetentionDays != null)
             'automatic_backup_retention_days': automaticBackupRetentionDays,
           if (dailyAutomaticBackupStartTime != null)
             'daily_automatic_backup_start_time': dailyAutomaticBackupStartTime,
           'deployment_type': deploymentType,
           if (endpointIpAddressRange != null)
             'endpoint_ip_address_range': endpointIpAddressRange,
           if (fsxAdminPassword != null) 'fsx_admin_password': fsxAdminPassword,
           if (haPairs != null) 'ha_pairs': haPairs,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId.encodeAs('arn'),
           if (networkType != null) 'network_type': networkType,
           'preferred_subnet_id': preferredSubnetId,
           if (region != null) 'region': region,
           if (routeTableIds != null) 'route_table_ids': routeTableIds,
           if (securityGroupIds != null)
             'security_group_ids': securityGroupIds.encodeAs('id'),
           'storage_capacity': storageCapacity,
           if (storageType != null) 'storage_type': storageType,
           'subnet_ids': subnetIds.encodeAs('id'),
           if (tags != null) 'tags': tags,
           ...throughputCapacity.argMap,
           if (weeklyMaintenanceStartTime != null)
             'weekly_maintenance_start_time': weeklyMaintenanceStartTime,
           if (diskIopsConfiguration != null)
             'disk_iops_configuration': TfArg.literal(
               diskIopsConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOntapFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxOntapFileSystem>`.
  RefTo<AwsFsxOntapFileSystem> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `endpoints` attribute.
  TfRef<List<Map<String, Object?>>> get endpoints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoints');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
