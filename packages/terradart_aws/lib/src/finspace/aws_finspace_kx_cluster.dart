// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_cluster`.
const Set<String> _awsFinspaceKxClusterSensitive = <String>{};

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

  final TfArg<String> autoScalingMetric;

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

  final TfArg<String> s3Bucket;

  final TfArg<String> s3Key;

  final TfArg<String>? s3ObjectVersion;

  Map<String, Object?> encode() => {
    's3_bucket': s3Bucket.toTfJson(),
    's3_key': s3Key.toTfJson(),
    if (s3ObjectVersion != null)
      's3_object_version': s3ObjectVersion!.toTfJson(),
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

  final List<FinspaceKxClusterDatabaseCacheConfigurations>? cacheConfigurations;

  Map<String, Object?> encode() => {
    if (changesetId != null) 'changeset_id': changesetId!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    if (dataviewName != null) 'dataview_name': dataviewName!.toTfJson(),
    if (cacheConfigurations != null)
      'cache_configurations': [
        for (final e in cacheConfigurations!) e.encode(),
      ],
  };
}

/// Typed helper for the `database.cache_configurations` block of
/// `aws_finspace_kx_cluster` (derived from provider schema).
@immutable
final class FinspaceKxClusterDatabaseCacheConfigurations {
  const FinspaceKxClusterDatabaseCacheConfigurations({
    required this.cacheType,
    this.dbPaths,
  });

  final TfArg<String> cacheType;

  final TfArg<List<Object?>>? dbPaths;

  Map<String, Object?> encode() => {
    'cache_type': cacheType.toTfJson(),
    if (dbPaths != null) 'db_paths': dbPaths!.toTfJson(),
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

  final TfArg<String>? type;

  final TfArg<String>? volumeName;

  Map<String, Object?> encode() => {
    if (size != null) 'size': size!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (volumeName != null) 'volume_name': volumeName!.toTfJson(),
  };
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
    if (cpu != null) 'cpu': cpu!.toTfJson(),
    if (memoryLimit != null) 'memory_limit': memoryLimit!.toTfJson(),
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

  final TfArg<List<Object?>> tickerplantLogVolumes;

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

  final TfArg<String> ipAddressType;

  final TfArg<List<Object?>> securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<String> vpcId;

  Map<String, Object?> encode() => {
    'ip_address_type': ipAddressType.toTfJson(),
    'security_group_ids': securityGroupIds.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    'vpc_id': vpcId.toTfJson(),
  };
}

/// Factory wrapper for `aws_finspace_kx_cluster`.
final class AwsFinspaceKxCluster extends Resource {
  static const String tfType = 'aws_finspace_kx_cluster';

  AwsFinspaceKxCluster({
    required super.localName,
    TfArg<String>? availabilityZoneId,
    required TfArg<String> azMode,
    TfArg<Map<String, String>>? commandLineArguments,
    TfArg<String>? description,
    required TfArg<String> environmentId,
    TfArg<String>? executionRole,
    TfArg<String>? initializationScript,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> releaseLabel,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
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
           if (availabilityZoneId != null)
             'availability_zone_id': availabilityZoneId,
           'az_mode': azMode,
           if (commandLineArguments != null)
             'command_line_arguments': commandLineArguments,
           if (description != null) 'description': description,
           'environment_id': environmentId,
           if (executionRole != null) 'execution_role': executionRole,
           if (initializationScript != null)
             'initialization_script': initializationScript,
           'name': name,
           if (region != null) 'region': region,
           'release_label': releaseLabel,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
