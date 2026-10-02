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
extension type const FsxOntapFileSystemDeploymentType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapFileSystemDeploymentType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapFileSystemDeploymentType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapFileSystemDeploymentType.arg(TfArg<String> arg) : this._(arg);

  static const multiAz1 = FsxOntapFileSystemDeploymentType._(
    TfArgLiteral('MULTI_AZ_1'),
  );
  static const singleAz1 = FsxOntapFileSystemDeploymentType._(
    TfArgLiteral('SINGLE_AZ_1'),
  );
  static const singleAz2 = FsxOntapFileSystemDeploymentType._(
    TfArgLiteral('SINGLE_AZ_2'),
  );
  static const multiAz2 = FsxOntapFileSystemDeploymentType._(
    TfArgLiteral('MULTI_AZ_2'),
  );

  static const List<FsxOntapFileSystemDeploymentType> values = [
    multiAz1,
    singleAz1,
    singleAz2,
    multiAz2,
  ];
}

/// Fsx Ontap File System Network enum for `network_type`.
extension type const FsxOntapFileSystemNetworkType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapFileSystemNetworkType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapFileSystemNetworkType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapFileSystemNetworkType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = FsxOntapFileSystemNetworkType._(TfArgLiteral('IPV4'));
  static const dual = FsxOntapFileSystemNetworkType._(TfArgLiteral('DUAL'));

  static const List<FsxOntapFileSystemNetworkType> values = [ipv4, dual];
}

/// Fsx Ontap File System Storage enum for `storage_type`.
extension type const FsxOntapFileSystemStorageType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapFileSystemStorageType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapFileSystemStorageType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapFileSystemStorageType.arg(TfArg<String> arg) : this._(arg);

  static const ssd = FsxOntapFileSystemStorageType._(TfArgLiteral('SSD'));
  static const hdd = FsxOntapFileSystemStorageType._(TfArgLiteral('HDD'));
  static const intelligentTiering = FsxOntapFileSystemStorageType._(
    TfArgLiteral('INTELLIGENT_TIERING'),
  );

  static const List<FsxOntapFileSystemStorageType> values = [
    ssd,
    hdd,
    intelligentTiering,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FsxOntapFileSystemThroughputCapacity.throughputCapacity] choice: sets `throughput_capacity`.
final class FsxOntapFileSystemThroughputCapacityChoice
    extends FsxOntapFileSystemThroughputCapacity {
  const FsxOntapFileSystemThroughputCapacityChoice(this.throughputCapacity);

  final TfArg<num> throughputCapacity;

  @internal
  @override
  String get blockKey => 'throughput_capacity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'throughput_capacity': throughputCapacity.toTfJson(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'throughput_capacity_per_ha_pair';

  @internal
  @override
  Map<String, Object?> encode() => {
    'throughput_capacity_per_ha_pair': throughputCapacityPerHaPair.toTfJson(),
  };

  @internal
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

  final FsxOntapFileSystemMode? mode;

  @internal
  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const FsxOntapFileSystemMode._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapFileSystemMode.variable(String name) : this._(TfArg.variable(name));
  FsxOntapFileSystemMode.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapFileSystemMode.arg(TfArg<String> arg) : this._(arg);

  static const automatic = FsxOntapFileSystemMode._(TfArgLiteral('AUTOMATIC'));
  static const userProvisioned = FsxOntapFileSystemMode._(
    TfArgLiteral('USER_PROVISIONED'),
  );

  static const List<FsxOntapFileSystemMode> values = [
    automatic,
    userProvisioned,
  ];
}

/// Factory wrapper for `aws_fsx_ontap_file_system`.
final class AwsFsxOntapFileSystem extends Resource {
  static const String tfType = 'aws_fsx_ontap_file_system';

  AwsFsxOntapFileSystem(
    super.localName, {
    TfArg<num>? automaticBackupRetentionDays,
    TfArg<String>? dailyAutomaticBackupStartTime,
    required FsxOntapFileSystemDeploymentType deploymentType,
    TfArg<String>? endpointIpAddressRange,
    Sensitive<String>? fsxAdminPassword,
    TfArg<num>? haPairs,
    RefTo<AwsKmsKey>? kmsKeyId,
    FsxOntapFileSystemNetworkType? networkType,
    required TfArg<String> preferredSubnetId,
    TfArg<String>? region,
    TfArg<List<String>>? routeTableIds,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    required TfArg<num> storageCapacity,
    FsxOntapFileSystemStorageType? storageType,
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
  TfRef<num> get automaticBackupRetentionDays =>
      TfRef.attribute<num>(this, 'automatic_backup_retention_days');

  /// Reference to `daily_automatic_backup_start_time` attribute.
  TfRef<String> get dailyAutomaticBackupStartTime =>
      TfRef.attribute<String>(this, 'daily_automatic_backup_start_time');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentType =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `endpoint_ip_address_range` attribute.
  TfRef<String> get endpointIpAddressRange =>
      TfRef.attribute<String>(this, 'endpoint_ip_address_range');

  /// Reference to `fsx_admin_password` attribute.
  TfRef<String> get fsxAdminPassword =>
      TfRef.attribute<String>(this, 'fsx_admin_password');

  /// Reference to `ha_pairs` attribute.
  TfRef<num> get haPairs => TfRef.attribute<num>(this, 'ha_pairs');

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

  /// Reference to `throughput_capacity_per_ha_pair` attribute.
  TfRef<num> get throughputCapacityPerHaPair =>
      TfRef.attribute<num>(this, 'throughput_capacity_per_ha_pair');

  /// Reference to `weekly_maintenance_start_time` attribute.
  TfRef<String> get weeklyMaintenanceStartTime =>
      TfRef.attribute<String>(this, 'weekly_maintenance_start_time');
}
