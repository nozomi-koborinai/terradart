// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_ontap_file_system`.
const Set<String> _awsFsxOntapFileSystemSensitive = <String>{
  'fsx_admin_password',
};

/// Typed helper for the `disk_iops_configuration` block of
/// `aws_fsx_ontap_file_system` (derived from provider schema).
@immutable
final class FsxOntapFileSystemDiskIopsConfiguration {
  const FsxOntapFileSystemDiskIopsConfiguration({this.iops, this.mode});

  final TfArg<num>? iops;

  final TfArg<String>? mode;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_ontap_file_system`.
final class AwsFsxOntapFileSystem extends Resource {
  static const String tfType = 'aws_fsx_ontap_file_system';

  AwsFsxOntapFileSystem({
    required super.localName,
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? dailyAutomaticBackupStartTime,
    required TfArg<String> deploymentType,
    TfArg<String>? endpointIpAddressRange,
    TfArg<String>? fsxAdminPassword,
    TfArg<num>? haPairs,
    TfArg<String>? kmsKeyId,
    TfArg<String>? networkType,
    required TfArg<String> preferredSubnetId,
    TfArg<String>? region,
    TfArg<List<String>>? routeTableIds,
    TfArg<List<String>>? securityGroupIds,
    required TfArg<num> storageCapacity,
    TfArg<String>? storageType,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? throughputCapacity,
    TfArg<num>? throughputCapacityPerHaPair,
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
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (networkType != null) 'network_type': networkType,
           'preferred_subnet_id': preferredSubnetId,
           if (region != null) 'region': region,
           if (routeTableIds != null) 'route_table_ids': routeTableIds,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           'storage_capacity': storageCapacity,
           if (storageType != null) 'storage_type': storageType,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (throughputCapacity != null)
             'throughput_capacity': throughputCapacity,
           if (throughputCapacityPerHaPair != null)
             'throughput_capacity_per_ha_pair': throughputCapacityPerHaPair,
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
