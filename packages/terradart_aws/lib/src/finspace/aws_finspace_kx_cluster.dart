// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_finspace_kx_cluster`.
const Set<String> _awsFinspaceKxClusterSensitive = <String>{};

/// Finspace Kx Cluster Az enum for `az_mode`.
extension type const FinspaceKxClusterAzMode._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxClusterAzMode.variable(String name) : this._(TfArg.variable(name));
  FinspaceKxClusterAzMode.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxClusterAzMode.arg(TfArg<String> arg) : this._(arg);

  static const single = FinspaceKxClusterAzMode._(TfArgLiteral('SINGLE'));
  static const multi = FinspaceKxClusterAzMode._(TfArgLiteral('MULTI'));

  static const List<FinspaceKxClusterAzMode> values = [single, multi];
}

/// Finspace Kx Cluster enum for `type`.
extension type const FinspaceKxClusterType._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxClusterType.variable(String name) : this._(TfArg.variable(name));
  FinspaceKxClusterType.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxClusterType.arg(TfArg<String> arg) : this._(arg);

  static const hdb = FinspaceKxClusterType._(TfArgLiteral('HDB'));
  static const rdb = FinspaceKxClusterType._(TfArgLiteral('RDB'));
  static const gateway = FinspaceKxClusterType._(TfArgLiteral('GATEWAY'));
  static const gp = FinspaceKxClusterType._(TfArgLiteral('GP'));
  static const tickerplant = FinspaceKxClusterType._(
    TfArgLiteral('TICKERPLANT'),
  );

  static const List<FinspaceKxClusterType> values = [
    hdb,
    rdb,
    gateway,
    gp,
    tickerplant,
  ];
}

/// Typed helper for the `auto_scaling_configuration` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterAutoScalingConfiguration {
  const FinspaceKxClusterAutoScalingConfiguration({
    required this.autoScalingMetric,
    required this.maxNodeCount,
    required this.metricTarget,
    required this.minNodeCount,
    required this.scaleInCooldownSeconds,
    required this.scaleOutCooldownSeconds,
  });

  final FinspaceKxClusterAutoScalingMetric autoScalingMetric;

  final TfArg<num> maxNodeCount;

  final TfArg<num> metricTarget;

  final TfArg<num> minNodeCount;

  final TfArg<num> scaleInCooldownSeconds;

  final TfArg<num> scaleOutCooldownSeconds;

  Map<String, Object?> encode() => {
    'auto_scaling_metric': autoScalingMetric.toTfJson(),
    'max_node_count': maxNodeCount.toTfJson(),
    'metric_target': metricTarget.toTfJson(),
    'min_node_count': minNodeCount.toTfJson(),
    'scale_in_cooldown_seconds': scaleInCooldownSeconds.toTfJson(),
    'scale_out_cooldown_seconds': scaleOutCooldownSeconds.toTfJson(),
  };
}

/// `auto_scaling_metric` — derived from the provider schema description.
extension type const FinspaceKxClusterAutoScalingMetric._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxClusterAutoScalingMetric.variable(String name)
    : this._(TfArg.variable(name));
  FinspaceKxClusterAutoScalingMetric.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxClusterAutoScalingMetric.arg(TfArg<String> arg) : this._(arg);

  static const cpuUtilizationPercentage = FinspaceKxClusterAutoScalingMetric._(
    TfArgLiteral('CPU_UTILIZATION_PERCENTAGE'),
  );

  static const List<FinspaceKxClusterAutoScalingMetric> values = [
    cpuUtilizationPercentage,
  ];
}

/// Typed helper for the `cache_storage_configurations` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterCacheStorageConfigurations {
  const FinspaceKxClusterCacheStorageConfigurations({
    required this.size,
    required this.type,
  });

  final TfArg<num> size;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'size': size.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `capacity_configuration` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterCapacityConfiguration {
  const FinspaceKxClusterCapacityConfiguration({
    required this.nodeCount,
    required this.nodeType,
  });

  final TfArg<num> nodeCount;

  final TfArg<String> nodeType;

  Map<String, Object?> encode() => {
    'node_count': nodeCount.toTfJson(),
    'node_type': nodeType.toTfJson(),
  };
}

/// Typed helper for the `code` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterCode {
  const FinspaceKxClusterCode({
    required this.s3Bucket,
    required this.s3Key,
    this.s3ObjectVersion,
  });

  final RefTo<AwsS3Bucket> s3Bucket;

  final TfArg<String> s3Key;

  final TfArg<String>? s3ObjectVersion;

  Map<String, Object?> encode() => {
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    's3_key': s3Key.toTfJson(),
    's3_object_version': ?s3ObjectVersion?.toTfJson(),
  };
}

/// Typed helper for the `database` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterDatabase {
  const FinspaceKxClusterDatabase({
    this.changesetId,
    required this.databaseName,
    this.dataviewName,
    this.cacheConfigurations,
  });

  final TfArg<String>? changesetId;

  final TfArg<String> databaseName;

  final TfArg<String>? dataviewName;

  final List<FinspaceKxClusterCacheConfigurations>? cacheConfigurations;

  Map<String, Object?> encode() => {
    'changeset_id': ?changesetId?.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'dataview_name': ?dataviewName?.toTfJson(),
    if (cacheConfigurations != null)
      'cache_configurations': [
        for (final e in cacheConfigurations!) e.encode(),
      ],
  };
}

/// Typed helper for the `database.cache_configurations` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterCacheConfigurations {
  const FinspaceKxClusterCacheConfigurations({
    required this.cacheType,
    this.dbPaths,
  });

  final TfArg<String> cacheType;

  final TfArg<List<String>>? dbPaths;

  Map<String, Object?> encode() => {
    'cache_type': cacheType.toTfJson(),
    'db_paths': ?dbPaths?.toTfJson(),
  };
}

/// Typed helper for the `savedown_storage_configuration` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterSavedownStorageConfiguration {
  const FinspaceKxClusterSavedownStorageConfiguration({
    this.size,
    this.type,
    this.volumeName,
  });

  final TfArg<num>? size;

  final FinspaceKxClusterSavedownStorageConfigurationType? type;

  final TfArg<String>? volumeName;

  Map<String, Object?> encode() => {
    'size': ?size?.toTfJson(),
    'type': ?type?.toTfJson(),
    'volume_name': ?volumeName?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const FinspaceKxClusterSavedownStorageConfigurationType._(
  TfArg<String> _
) implements TfArg<String> {
  FinspaceKxClusterSavedownStorageConfigurationType.variable(String name)
    : this._(TfArg.variable(name));
  FinspaceKxClusterSavedownStorageConfigurationType.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxClusterSavedownStorageConfigurationType.arg(TfArg<String> arg)
    : this._(arg);

  static const sds01 = FinspaceKxClusterSavedownStorageConfigurationType._(
    TfArgLiteral('SDS01'),
  );

  static const List<FinspaceKxClusterSavedownStorageConfigurationType> values =
      [sds01];
}

/// Typed helper for the `scaling_group_configuration` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterScalingGroupConfiguration {
  const FinspaceKxClusterScalingGroupConfiguration({
    this.cpu,
    this.memoryLimit,
    required this.memoryReservation,
    required this.nodeCount,
    required this.scalingGroupName,
  });

  final TfArg<num>? cpu;

  final TfArg<num>? memoryLimit;

  final TfArg<num> memoryReservation;

  final TfArg<num> nodeCount;

  final TfArg<String> scalingGroupName;

  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'memory_limit': ?memoryLimit?.toTfJson(),
    'memory_reservation': memoryReservation.toTfJson(),
    'node_count': nodeCount.toTfJson(),
    'scaling_group_name': scalingGroupName.toTfJson(),
  };
}

/// Typed helper for the `tickerplant_log_configuration` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterTickerplantLogConfiguration {
  const FinspaceKxClusterTickerplantLogConfiguration({
    required this.tickerplantLogVolumes,
  });

  final TfArg<List<String>> tickerplantLogVolumes;

  Map<String, Object?> encode() => {
    'tickerplant_log_volumes': tickerplantLogVolumes.toTfJson(),
  };
}

/// Typed helper for the `vpc_configuration` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterVpcConfiguration {
  const FinspaceKxClusterVpcConfiguration({
    required this.ipAddressType,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  final FinspaceKxClusterIpAddressType ipAddressType;

  final TfArg<List<RefTo<AwsSecurityGroup>>> securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final RefTo<AwsVpc> vpcId;

  Map<String, Object?> encode() => {
    'ip_address_type': ipAddressType.toTfJson(),
    'security_group_ids': securityGroupIds.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'vpc_id': vpcId.encodeAs('id').toTfJson(),
  };
}

/// `ip_address_type` — derived from the provider schema description.
extension type const FinspaceKxClusterIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  FinspaceKxClusterIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  FinspaceKxClusterIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const FinspaceKxClusterIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipV4 = FinspaceKxClusterIpAddressType._(TfArgLiteral('IP_V4'));

  static const List<FinspaceKxClusterIpAddressType> values = [ipV4];
}

/// Factory wrapper for `aws_finspace_kx_cluster`.
final class AwsFinspaceKxCluster extends Resource {
  static const String tfType = 'aws_finspace_kx_cluster';

  AwsFinspaceKxCluster(
    super.localName, {
    TfArg<String>? availabilityZoneId,
    required FinspaceKxClusterAzMode azMode,
    TfArg<Map<String, String>>? commandLineArguments,
    TfArg<String>? description,
    required TfArg<String> environmentId,
    TfArg<String>? executionRole,
    TfArg<String>? initializationScript,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> releaseLabel,
    TfArg<Map<String, String>>? tags,
    required FinspaceKxClusterType type,
    FinspaceKxClusterAutoScalingConfiguration? autoScalingConfiguration,
    List<FinspaceKxClusterCacheStorageConfigurations>?
    cacheStorageConfigurations,
    FinspaceKxClusterCapacityConfiguration? capacityConfiguration,
    FinspaceKxClusterCode? code,
    List<FinspaceKxClusterDatabase>? database,
    FinspaceKxClusterSavedownStorageConfiguration? savedownStorageConfiguration,
    FinspaceKxClusterScalingGroupConfiguration? scalingGroupConfiguration,
    List<FinspaceKxClusterTickerplantLogConfiguration>?
    tickerplantLogConfiguration,
    required FinspaceKxClusterVpcConfiguration vpcConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone_id': ?availabilityZoneId,
           'az_mode': azMode,
           'command_line_arguments': ?commandLineArguments,
           'description': ?description,
           'environment_id': environmentId,
           'execution_role': ?executionRole,
           'initialization_script': ?initializationScript,
           'name': name,
           'region': ?region,
           'release_label': releaseLabel,
           'tags': ?tags,
           'type': type,
           if (autoScalingConfiguration != null)
             'auto_scaling_configuration': TfArg.literal(
               autoScalingConfiguration.encode(),
             ),
           if (cacheStorageConfigurations != null)
             'cache_storage_configurations': TfArg.literal([
               for (final e in cacheStorageConfigurations) e.encode(),
             ]),
           if (capacityConfiguration != null)
             'capacity_configuration': TfArg.literal(
               capacityConfiguration.encode(),
             ),
           if (code != null) 'code': TfArg.literal(code.encode()),
           if (database != null)
             'database': TfArg.literal([for (final e in database) e.encode()]),
           if (savedownStorageConfiguration != null)
             'savedown_storage_configuration': TfArg.literal(
               savedownStorageConfiguration.encode(),
             ),
           if (scalingGroupConfiguration != null)
             'scaling_group_configuration': TfArg.literal(
               scalingGroupConfiguration.encode(),
             ),
           if (tickerplantLogConfiguration != null)
             'tickerplant_log_configuration': TfArg.literal([
               for (final e in tickerplantLogConfiguration) e.encode(),
             ]),
           'vpc_configuration': TfArg.literal(vpcConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFinspaceKxClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFinspaceKxCluster>`.
  RefTo<AwsFinspaceKxCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_modified_timestamp` attribute.
  TfRef<String> get lastModifiedTimestamp =>
      TfRef.attribute<String>(this, 'last_modified_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `az_mode` attribute.
  TfRef<String> get azMode => TfRef.attribute<String>(this, 'az_mode');

  /// Reference to `command_line_arguments` attribute.
  TfRef<Map<String, String>> get commandLineArguments =>
      TfRef.attribute<Map<String, String>>(this, 'command_line_arguments');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `execution_role` attribute.
  TfRef<String> get executionRole =>
      TfRef.attribute<String>(this, 'execution_role');

  /// Reference to `initialization_script` attribute.
  TfRef<String> get initializationScript =>
      TfRef.attribute<String>(this, 'initialization_script');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `release_label` attribute.
  TfRef<String> get releaseLabel =>
      TfRef.attribute<String>(this, 'release_label');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
