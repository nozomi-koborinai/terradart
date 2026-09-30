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
  ) = FsxOntapFileSystemThroughputCapacityChoice;

  /// Sets `throughput_capacity_per_ha_pair`.
  const factory FsxOntapFileSystemThroughputCapacity.throughputCapacityPerHaPair(
    TfArg<num> throughputCapacityPerHaPair,
  ) = FsxOntapFileSystemThroughputCapacityPerHaPair;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FsxOntapFileSystemThroughputCapacity.throughputCapacity] choice: sets `throughput_capacity`.
final class FsxOntapFileSystemThroughputCapacityChoice
    extends FsxOntapFileSystemThroughputCapacity {
  const FsxOntapFileSystemThroughputCapacityChoice(this.throughputCapacity);

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
final class FsxOntapFileSystemThroughputCapacityPerHaPair
    extends FsxOntapFileSystemThroughputCapacity {
  const FsxOntapFileSystemThroughputCapacityPerHaPair(
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
    'iops': ?iops?.toTfJson(),
    'mode': ?mode?.toTfJson(),
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
           'automatic_backup_retention_days': ?automaticBackupRetentionDays,
           'daily_automatic_backup_start_time': ?dailyAutomaticBackupStartTime,
           'deployment_type': deploymentType,
           'endpoint_ip_address_range': ?endpointIpAddressRange,
           'fsx_admin_password': ?fsxAdminPassword,
           'ha_pairs': ?haPairs,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'network_type': ?networkType,
           'preferred_subnet_id': preferredSubnetId,
           'region': ?region,
           'route_table_ids': ?routeTableIds,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'storage_capacity': storageCapacity,
           'storage_type': ?storageType,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           ...throughputCapacity.argMap,
           'weekly_maintenance_start_time': ?weeklyMaintenanceStartTime,
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

  /// Reference to `automatic_backup_retention_days` attribute.
  TfRef<num> get automaticBackupRetentionDaysRef =>
      TfRef.attribute<num>(this, 'automatic_backup_retention_days');

  /// Reference to `daily_automatic_backup_start_time` attribute.
  TfRef<String> get dailyAutomaticBackupStartTimeRef =>
      TfRef.attribute<String>(this, 'daily_automatic_backup_start_time');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentTypeRef =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `endpoint_ip_address_range` attribute.
  TfRef<String> get endpointIpAddressRangeRef =>
      TfRef.attribute<String>(this, 'endpoint_ip_address_range');

  /// Reference to `fsx_admin_password` attribute.
  TfRef<String> get fsxAdminPasswordRef =>
      TfRef.attribute<String>(this, 'fsx_admin_password');

  /// Reference to `ha_pairs` attribute.
  TfRef<num> get haPairsRef => TfRef.attribute<num>(this, 'ha_pairs');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkTypeRef =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `preferred_subnet_id` attribute.
  TfRef<String> get preferredSubnetIdRef =>
      TfRef.attribute<String>(this, 'preferred_subnet_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `route_table_ids` attribute.
  TfRef<List<String>> get routeTableIdsRef =>
      TfRef.attribute<List<String>>(this, 'route_table_ids');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIdsRef =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

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

  /// Reference to `throughput_capacity_per_ha_pair` attribute.
  TfRef<num> get throughputCapacityPerHaPairRef =>
      TfRef.attribute<num>(this, 'throughput_capacity_per_ha_pair');

  /// Reference to `weekly_maintenance_start_time` attribute.
  TfRef<String> get weeklyMaintenanceStartTimeRef =>
      TfRef.attribute<String>(this, 'weekly_maintenance_start_time');
}
