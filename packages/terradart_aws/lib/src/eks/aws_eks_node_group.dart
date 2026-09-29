// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_node_group`.
const Set<String> _awsEksNodeGroupSensitive = <String>{};

/// Eks Node Group Ami enum for `ami_type`.
enum EksNodeGroupAmiType implements TerraformEnum {
  al2X8664('AL2_x86_64'),
  al2X8664Gpu('AL2_x86_64_GPU'),
  al2Arm64('AL2_ARM_64'),
  custom('CUSTOM'),
  bottlerocketArm64('BOTTLEROCKET_ARM_64'),
  bottlerocketX8664('BOTTLEROCKET_x86_64'),
  bottlerocketArm64Fips('BOTTLEROCKET_ARM_64_FIPS'),
  bottlerocketX8664Fips('BOTTLEROCKET_x86_64_FIPS'),
  bottlerocketArm64Nvidia('BOTTLEROCKET_ARM_64_NVIDIA'),
  bottlerocketX8664Nvidia('BOTTLEROCKET_x86_64_NVIDIA'),
  bottlerocketArm64NvidiaFips('BOTTLEROCKET_ARM_64_NVIDIA_FIPS'),
  bottlerocketX8664NvidiaFips('BOTTLEROCKET_x86_64_NVIDIA_FIPS'),
  windowsCore2019X8664('WINDOWS_CORE_2019_x86_64'),
  windowsFull2019X8664('WINDOWS_FULL_2019_x86_64'),
  windowsCore2022X8664('WINDOWS_CORE_2022_x86_64'),
  windowsFull2022X8664('WINDOWS_FULL_2022_x86_64'),
  windowsCore2025X8664('WINDOWS_CORE_2025_x86_64'),
  windowsFull2025X8664('WINDOWS_FULL_2025_x86_64'),
  al2023X8664Standard('AL2023_x86_64_STANDARD'),
  al2023Arm64Standard('AL2023_ARM_64_STANDARD'),
  al2023X8664Neuron('AL2023_x86_64_NEURON'),
  al2023X8664Nvidia('AL2023_x86_64_NVIDIA'),
  al2023Arm64Nvidia('AL2023_ARM_64_NVIDIA');

  const EksNodeGroupAmiType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Eks Node Group Capacity enum for `capacity_type`.
enum EksNodeGroupCapacityType implements TerraformEnum {
  onDemand('ON_DEMAND'),
  spot('SPOT'),
  capacityBlock('CAPACITY_BLOCK');

  const EksNodeGroupCapacityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `node_group_name`, `node_group_name_prefix` on `aws_eks_node_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.nodeGroupName(...)`.
sealed class EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix {
  const EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix();

  /// Sets `node_group_name`.
  const factory EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix.nodeGroupName(
    TfArg<String> nodeGroupName,
  ) = EksNodeGroupNodeGroupNameOrNodeGroupNamePrefixNodeGroupName;

  /// Sets `node_group_name_prefix`.
  const factory EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix.nodeGroupNamePrefix(
    TfArg<String> nodeGroupNamePrefix,
  ) = EksNodeGroupNodeGroupNameOrNodeGroupNamePrefixNodeGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix.nodeGroupName] choice: sets `node_group_name`.
final class EksNodeGroupNodeGroupNameOrNodeGroupNamePrefixNodeGroupName
    extends EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix {
  const EksNodeGroupNodeGroupNameOrNodeGroupNamePrefixNodeGroupName(
    this.nodeGroupName,
  );

  final TfArg<String> nodeGroupName;

  @override
  String get blockKey => 'node_group_name';

  @override
  Map<String, Object?> encode() => {
    'node_group_name': nodeGroupName.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'node_group_name': nodeGroupName};
}

/// The [EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix.nodeGroupNamePrefix] choice: sets `node_group_name_prefix`.
final class EksNodeGroupNodeGroupNameOrNodeGroupNamePrefixNodeGroupNamePrefix
    extends EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix {
  const EksNodeGroupNodeGroupNameOrNodeGroupNamePrefixNodeGroupNamePrefix(
    this.nodeGroupNamePrefix,
  );

  final TfArg<String> nodeGroupNamePrefix;

  @override
  String get blockKey => 'node_group_name_prefix';

  @override
  Map<String, Object?> encode() => {
    'node_group_name_prefix': nodeGroupNamePrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'node_group_name_prefix': nodeGroupNamePrefix,
  };
}

/// Typed helper for the `launch_template` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupLaunchTemplate {
  const EksNodeGroupLaunchTemplate({this.idOrName, required this.version});

  final EksNodeGroupLaunchTemplateIdOrName? idOrName;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    ...?idOrName?.encode(),
    'version': version.toTfJson(),
  };
}

/// At most one of `id`, `name` on the `launch_template` block of `aws_eks_node_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class EksNodeGroupLaunchTemplateIdOrName {
  const EksNodeGroupLaunchTemplateIdOrName();

  /// Sets `id`.
  const factory EksNodeGroupLaunchTemplateIdOrName.id(TfArg<String> id) =
      EksNodeGroupLaunchTemplateIdOrNameId;

  /// Sets `name`.
  const factory EksNodeGroupLaunchTemplateIdOrName.name(TfArg<String> name) =
      EksNodeGroupLaunchTemplateIdOrNameName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EksNodeGroupLaunchTemplateIdOrName.id] choice: sets `id`.
final class EksNodeGroupLaunchTemplateIdOrNameId
    extends EksNodeGroupLaunchTemplateIdOrName {
  const EksNodeGroupLaunchTemplateIdOrNameId(this.id);

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [EksNodeGroupLaunchTemplateIdOrName.name] choice: sets `name`.
final class EksNodeGroupLaunchTemplateIdOrNameName
    extends EksNodeGroupLaunchTemplateIdOrName {
  const EksNodeGroupLaunchTemplateIdOrNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `node_repair_config` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupNodeRepairConfig {
  const EksNodeGroupNodeRepairConfig({
    this.enabled,
    this.maxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage,
    this.maxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage,
    this.nodeRepairConfigOverrides,
  });

  final TfArg<bool>? enabled;

  final EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage?
  maxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage;

  final EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage?
  maxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage;

  final List<EksNodeGroupNodeRepairConfigNodeRepairConfigOverrides>?
  nodeRepairConfigOverrides;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    ...?maxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage
        ?.encode(),
    ...?maxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage
        ?.encode(),
    if (nodeRepairConfigOverrides != null)
      'node_repair_config_overrides': [
        for (final e in nodeRepairConfigOverrides!) e.encode(),
      ],
  };
}

/// At most one of `max_parallel_nodes_repaired_count`, `max_parallel_nodes_repaired_percentage` on the `node_repair_config` block of `aws_eks_node_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxParallelNodesRepairedCount(...)`.
sealed class EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage {
  const EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage();

  /// Sets `max_parallel_nodes_repaired_count`.
  const factory EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage.maxParallelNodesRepairedCount(
    TfArg<num> maxParallelNodesRepairedCount,
  ) = EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentageMaxParallelNodesRepairedCount;

  /// Sets `max_parallel_nodes_repaired_percentage`.
  const factory EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage.maxParallelNodesRepairedPercentage(
    TfArg<num> maxParallelNodesRepairedPercentage,
  ) = EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentageMaxParallelNodesRepairedPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage.maxParallelNodesRepairedCount] choice: sets `max_parallel_nodes_repaired_count`.
final class EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentageMaxParallelNodesRepairedCount
    extends
        EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage {
  const EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentageMaxParallelNodesRepairedCount(
    this.maxParallelNodesRepairedCount,
  );

  final TfArg<num> maxParallelNodesRepairedCount;

  @override
  String get blockKey => 'max_parallel_nodes_repaired_count';

  @override
  Map<String, Object?> encode() => {
    'max_parallel_nodes_repaired_count': maxParallelNodesRepairedCount
        .toTfJson(),
  };
}

/// The [EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage.maxParallelNodesRepairedPercentage] choice: sets `max_parallel_nodes_repaired_percentage`.
final class EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentageMaxParallelNodesRepairedPercentage
    extends
        EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentage {
  const EksNodeGroupNodeRepairConfigMaxParallelNodesRepairedCountOrMaxParallelNodesRepairedPercentageMaxParallelNodesRepairedPercentage(
    this.maxParallelNodesRepairedPercentage,
  );

  final TfArg<num> maxParallelNodesRepairedPercentage;

  @override
  String get blockKey => 'max_parallel_nodes_repaired_percentage';

  @override
  Map<String, Object?> encode() => {
    'max_parallel_nodes_repaired_percentage': maxParallelNodesRepairedPercentage
        .toTfJson(),
  };
}

/// At most one of `max_unhealthy_node_threshold_count`, `max_unhealthy_node_threshold_percentage` on the `node_repair_config` block of `aws_eks_node_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxUnhealthyNodeThresholdCount(...)`.
sealed class EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage {
  const EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage();

  /// Sets `max_unhealthy_node_threshold_count`.
  const factory EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage.maxUnhealthyNodeThresholdCount(
    TfArg<num> maxUnhealthyNodeThresholdCount,
  ) = EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentageMaxUnhealthyNodeThresholdCount;

  /// Sets `max_unhealthy_node_threshold_percentage`.
  const factory EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage.maxUnhealthyNodeThresholdPercentage(
    TfArg<num> maxUnhealthyNodeThresholdPercentage,
  ) = EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentageMaxUnhealthyNodeThresholdPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage.maxUnhealthyNodeThresholdCount] choice: sets `max_unhealthy_node_threshold_count`.
final class EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentageMaxUnhealthyNodeThresholdCount
    extends
        EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage {
  const EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentageMaxUnhealthyNodeThresholdCount(
    this.maxUnhealthyNodeThresholdCount,
  );

  final TfArg<num> maxUnhealthyNodeThresholdCount;

  @override
  String get blockKey => 'max_unhealthy_node_threshold_count';

  @override
  Map<String, Object?> encode() => {
    'max_unhealthy_node_threshold_count': maxUnhealthyNodeThresholdCount
        .toTfJson(),
  };
}

/// The [EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage.maxUnhealthyNodeThresholdPercentage] choice: sets `max_unhealthy_node_threshold_percentage`.
final class EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentageMaxUnhealthyNodeThresholdPercentage
    extends
        EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentage {
  const EksNodeGroupNodeRepairConfigMaxUnhealthyNodeThresholdCountOrMaxUnhealthyNodeThresholdPercentageMaxUnhealthyNodeThresholdPercentage(
    this.maxUnhealthyNodeThresholdPercentage,
  );

  final TfArg<num> maxUnhealthyNodeThresholdPercentage;

  @override
  String get blockKey => 'max_unhealthy_node_threshold_percentage';

  @override
  Map<String, Object?> encode() => {
    'max_unhealthy_node_threshold_percentage':
        maxUnhealthyNodeThresholdPercentage.toTfJson(),
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

  final TfArg<EksNodeGroupNodeRepairConfigNodeRepairConfigOverridesRepairAction>
  repairAction;

  Map<String, Object?> encode() => {
    'min_repair_wait_time_mins': minRepairWaitTimeMins.toTfJson(),
    'node_monitoring_condition': nodeMonitoringCondition.toTfJson(),
    'node_unhealthy_reason': nodeUnhealthyReason.toTfJson(),
    'repair_action': repairAction.toTfJson(),
  };
}

/// `repair_action` — derived from the provider schema description.
enum EksNodeGroupNodeRepairConfigNodeRepairConfigOverridesRepairAction
    implements TerraformEnum {
  replace('Replace'),
  reboot('Reboot'),
  noaction('NoAction');

  const EksNodeGroupNodeRepairConfigNodeRepairConfigOverridesRepairAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<EksNodeGroupTaintEffect> effect;

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'key': key.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
enum EksNodeGroupTaintEffect implements TerraformEnum {
  noSchedule('NO_SCHEDULE'),
  noExecute('NO_EXECUTE'),
  preferNoSchedule('PREFER_NO_SCHEDULE');

  const EksNodeGroupTaintEffect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `update_config` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupUpdateConfig {
  const EksNodeGroupUpdateConfig({
    required this.maxUnavailableOrMaxUnavailablePercentage,
    this.updateStrategy,
  });

  final EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage
  maxUnavailableOrMaxUnavailablePercentage;

  final TfArg<EksNodeGroupUpdateConfigUpdateStrategy>? updateStrategy;

  Map<String, Object?> encode() => {
    ...maxUnavailableOrMaxUnavailablePercentage.encode(),
    if (updateStrategy != null) 'update_strategy': updateStrategy!.toTfJson(),
  };
}

/// Exactly one of `max_unavailable`, `max_unavailable_percentage` on the `update_config` block of `aws_eks_node_group`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.maxUnavailable(...)`.
sealed class EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage {
  const EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage();

  /// Sets `max_unavailable`.
  const factory EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage.maxUnavailable(
    TfArg<num> maxUnavailable,
  ) = EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentageMaxUnavailable;

  /// Sets `max_unavailable_percentage`.
  const factory EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage.maxUnavailablePercentage(
    TfArg<num> maxUnavailablePercentage,
  ) = EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentageMaxUnavailablePercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage.maxUnavailable] choice: sets `max_unavailable`.
final class EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentageMaxUnavailable
    extends EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage {
  const EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentageMaxUnavailable(
    this.maxUnavailable,
  );

  final TfArg<num> maxUnavailable;

  @override
  String get blockKey => 'max_unavailable';

  @override
  Map<String, Object?> encode() => {
    'max_unavailable': maxUnavailable.toTfJson(),
  };
}

/// The [EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage.maxUnavailablePercentage] choice: sets `max_unavailable_percentage`.
final class EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentageMaxUnavailablePercentage
    extends EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentage {
  const EksNodeGroupUpdateConfigMaxUnavailableOrMaxUnavailablePercentageMaxUnavailablePercentage(
    this.maxUnavailablePercentage,
  );

  final TfArg<num> maxUnavailablePercentage;

  @override
  String get blockKey => 'max_unavailable_percentage';

  @override
  Map<String, Object?> encode() => {
    'max_unavailable_percentage': maxUnavailablePercentage.toTfJson(),
  };
}

/// `update_strategy` — derived from the provider schema description.
enum EksNodeGroupUpdateConfigUpdateStrategy implements TerraformEnum {
  defaultCase('DEFAULT'),
  minimal('MINIMAL');

  const EksNodeGroupUpdateConfigUpdateStrategy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<EksNodeGroupWarmPoolConfigPoolState>? poolState;

  final TfArg<bool>? reuseOnScaleIn;

  Map<String, Object?> encode() => {
    if (maxGroupPreparedCapacity != null)
      'max_group_prepared_capacity': maxGroupPreparedCapacity!.toTfJson(),
    if (minSize != null) 'min_size': minSize!.toTfJson(),
    if (poolState != null) 'pool_state': poolState!.toTfJson(),
    if (reuseOnScaleIn != null) 'reuse_on_scale_in': reuseOnScaleIn!.toTfJson(),
  };
}

/// `pool_state` — derived from the provider schema description.
enum EksNodeGroupWarmPoolConfigPoolState implements TerraformEnum {
  stopped('STOPPED'),
  running('RUNNING'),
  hibernated('HIBERNATED');

  const EksNodeGroupWarmPoolConfigPoolState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_eks_node_group`.
final class AwsEksNodeGroup extends Resource {
  static const String tfType = 'aws_eks_node_group';

  AwsEksNodeGroup({
    required super.localName,
    TfArg<EksNodeGroupAmiType>? amiType,
    TfArg<EksNodeGroupCapacityType>? capacityType,
    required TfArg<String> clusterName,
    TfArg<num>? diskSize,
    TfArg<bool>? forceUpdateVersion,
    TfArg<List<String>>? instanceTypes,
    TfArg<Map<String, String>>? labels,
    EksNodeGroupNodeGroupNameOrNodeGroupNamePrefix?
    nodeGroupNameOrNodeGroupNamePrefix,
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
           ...?nodeGroupNameOrNodeGroupNamePrefix?.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksNodeGroup>`.
  RefTo<AwsEksNodeGroup> get ref => RefTo.of(this);

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
