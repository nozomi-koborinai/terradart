// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_node_group`.
const Set<String> _awsEksNodeGroupSensitive = <String>{};

/// Typed helper for the `launch_template` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupLaunchTemplate {
  const EksNodeGroupLaunchTemplate({this.id, this.name, required this.version});

  final TfArg<String>? id;

  final TfArg<String>? name;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `node_repair_config` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupNodeRepairConfig {
  const EksNodeGroupNodeRepairConfig({
    this.enabled,
    this.maxParallelNodesRepairedCount,
    this.maxParallelNodesRepairedPercentage,
    this.maxUnhealthyNodeThresholdCount,
    this.maxUnhealthyNodeThresholdPercentage,
    this.nodeRepairConfigOverrides,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? maxParallelNodesRepairedCount;

  final TfArg<num>? maxParallelNodesRepairedPercentage;

  final TfArg<num>? maxUnhealthyNodeThresholdCount;

  final TfArg<num>? maxUnhealthyNodeThresholdPercentage;

  final List<EksNodeGroupNodeRepairConfigNodeRepairConfigOverrides>?
  nodeRepairConfigOverrides;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (maxParallelNodesRepairedCount != null)
      'max_parallel_nodes_repaired_count': maxParallelNodesRepairedCount!
          .toTfJson(),
    if (maxParallelNodesRepairedPercentage != null)
      'max_parallel_nodes_repaired_percentage':
          maxParallelNodesRepairedPercentage!.toTfJson(),
    if (maxUnhealthyNodeThresholdCount != null)
      'max_unhealthy_node_threshold_count': maxUnhealthyNodeThresholdCount!
          .toTfJson(),
    if (maxUnhealthyNodeThresholdPercentage != null)
      'max_unhealthy_node_threshold_percentage':
          maxUnhealthyNodeThresholdPercentage!.toTfJson(),
    if (nodeRepairConfigOverrides != null)
      'node_repair_config_overrides': [
        for (final e in nodeRepairConfigOverrides!) e.encode(),
      ],
  };
}

/// Typed helper for the `node_repair_config.node_repair_config_overrides` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupNodeRepairConfigNodeRepairConfigOverrides {
  const EksNodeGroupNodeRepairConfigNodeRepairConfigOverrides({
    required this.minRepairWaitTimeMins,
    required this.nodeMonitoringCondition,
    required this.nodeUnhealthyReason,
    required this.repairAction,
  });

  final TfArg<num> minRepairWaitTimeMins;

  final TfArg<String> nodeMonitoringCondition;

  final TfArg<String> nodeUnhealthyReason;

  final TfArg<String> repairAction;

  Map<String, Object?> encode() => {
    'min_repair_wait_time_mins': minRepairWaitTimeMins.toTfJson(),
    'node_monitoring_condition': nodeMonitoringCondition.toTfJson(),
    'node_unhealthy_reason': nodeUnhealthyReason.toTfJson(),
    'repair_action': repairAction.toTfJson(),
  };
}

/// Typed helper for the `remote_access` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupRemoteAccess {
  const EksNodeGroupRemoteAccess({this.ec2SshKey, this.sourceSecurityGroupIds});

  final TfArg<String>? ec2SshKey;

  final TfArg<List<Object?>>? sourceSecurityGroupIds;

  Map<String, Object?> encode() => {
    if (ec2SshKey != null) 'ec2_ssh_key': ec2SshKey!.toTfJson(),
    if (sourceSecurityGroupIds != null)
      'source_security_group_ids': sourceSecurityGroupIds!.toTfJson(),
  };
}

/// Typed helper for the `scaling_config` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupScalingConfig {
  const EksNodeGroupScalingConfig({
    required this.desiredSize,
    required this.maxSize,
    required this.minSize,
  });

  final TfArg<num> desiredSize;

  final TfArg<num> maxSize;

  final TfArg<num> minSize;

  Map<String, Object?> encode() => {
    'desired_size': desiredSize.toTfJson(),
    'max_size': maxSize.toTfJson(),
    'min_size': minSize.toTfJson(),
  };
}

/// Typed helper for the `taint` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupTaint {
  const EksNodeGroupTaint({
    required this.effect,
    required this.key,
    this.value,
  });

  final TfArg<String> effect;

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'key': key.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `update_config` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupUpdateConfig {
  const EksNodeGroupUpdateConfig({
    this.maxUnavailable,
    this.maxUnavailablePercentage,
    this.updateStrategy,
  });

  final TfArg<num>? maxUnavailable;

  final TfArg<num>? maxUnavailablePercentage;

  final TfArg<String>? updateStrategy;

  Map<String, Object?> encode() => {
    if (maxUnavailable != null) 'max_unavailable': maxUnavailable!.toTfJson(),
    if (maxUnavailablePercentage != null)
      'max_unavailable_percentage': maxUnavailablePercentage!.toTfJson(),
    if (updateStrategy != null) 'update_strategy': updateStrategy!.toTfJson(),
  };
}

/// Typed helper for the `warm_pool_config` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupWarmPoolConfig {
  const EksNodeGroupWarmPoolConfig({
    this.maxGroupPreparedCapacity,
    this.minSize,
    this.poolState,
    this.reuseOnScaleIn,
  });

  final TfArg<num>? maxGroupPreparedCapacity;

  final TfArg<num>? minSize;

  final TfArg<String>? poolState;

  final TfArg<bool>? reuseOnScaleIn;

  Map<String, Object?> encode() => {
    if (maxGroupPreparedCapacity != null)
      'max_group_prepared_capacity': maxGroupPreparedCapacity!.toTfJson(),
    if (minSize != null) 'min_size': minSize!.toTfJson(),
    if (poolState != null) 'pool_state': poolState!.toTfJson(),
    if (reuseOnScaleIn != null) 'reuse_on_scale_in': reuseOnScaleIn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_node_group`.
final class AwsEksNodeGroup extends Resource {
  static const String tfType = 'aws_eks_node_group';

  AwsEksNodeGroup({
    required super.localName,
    TfArg<String>? amiType,
    TfArg<String>? capacityType,
    required TfArg<String> clusterName,
    TfArg<num>? diskSize,
    TfArg<bool>? forceUpdateVersion,
    TfArg<List<String>>? instanceTypes,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? nodeGroupName,
    TfArg<String>? nodeGroupNamePrefix,
    required TfArg<String> nodeRoleArn,
    TfArg<String>? region,
    TfArg<String>? releaseVersion,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? version,
    EksNodeGroupLaunchTemplate? launchTemplate,
    EksNodeGroupNodeRepairConfig? nodeRepairConfig,
    EksNodeGroupRemoteAccess? remoteAccess,
    required EksNodeGroupScalingConfig scalingConfig,
    List<EksNodeGroupTaint>? taint,
    EksNodeGroupUpdateConfig? updateConfig,
    EksNodeGroupWarmPoolConfig? warmPoolConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (amiType != null) 'ami_type': amiType,
           if (capacityType != null) 'capacity_type': capacityType,
           'cluster_name': clusterName,
           if (diskSize != null) 'disk_size': diskSize,
           if (forceUpdateVersion != null)
             'force_update_version': forceUpdateVersion,
           if (instanceTypes != null) 'instance_types': instanceTypes,
           if (labels != null) 'labels': labels,
           if (nodeGroupName != null) 'node_group_name': nodeGroupName,
           if (nodeGroupNamePrefix != null)
             'node_group_name_prefix': nodeGroupNamePrefix,
           'node_role_arn': nodeRoleArn,
           if (region != null) 'region': region,
           if (releaseVersion != null) 'release_version': releaseVersion,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (version != null) 'version': version,
           if (launchTemplate != null)
             'launch_template': TfArg.literal(launchTemplate.encode()),
           if (nodeRepairConfig != null)
             'node_repair_config': TfArg.literal(nodeRepairConfig.encode()),
           if (remoteAccess != null)
             'remote_access': TfArg.literal(remoteAccess.encode()),
           'scaling_config': TfArg.literal(scalingConfig.encode()),
           if (taint != null)
             'taint': TfArg.literal([for (final e in taint) e.encode()]),
           if (updateConfig != null)
             'update_config': TfArg.literal(updateConfig.encode()),
           if (warmPoolConfig != null)
             'warm_pool_config': TfArg.literal(warmPoolConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksNodeGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `resources` attribute.
  TfRef<List<Map<String, Object?>>> get resources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resources');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
