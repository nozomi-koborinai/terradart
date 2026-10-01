// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_eks_node_group`.
const Set<String> _awsEksNodeGroupSensitive = <String>{};

/// Eks Node Group Ami enum for `ami_type`.
extension type const EksNodeGroupAmiType._(TfArg<String> _)
    implements TfArg<String> {
  EksNodeGroupAmiType.variable(String name) : this._(TfArg.variable(name));
  EksNodeGroupAmiType.expression(String template)
    : this._(TfArg.expression(template));
  const EksNodeGroupAmiType.arg(TfArg<String> arg) : this._(arg);

  static const al2X8664 = EksNodeGroupAmiType._(TfArgLiteral('AL2_x86_64'));
  static const al2X8664Gpu = EksNodeGroupAmiType._(
    TfArgLiteral('AL2_x86_64_GPU'),
  );
  static const al2Arm64 = EksNodeGroupAmiType._(TfArgLiteral('AL2_ARM_64'));
  static const custom = EksNodeGroupAmiType._(TfArgLiteral('CUSTOM'));
  static const bottlerocketArm64 = EksNodeGroupAmiType._(
    TfArgLiteral('BOTTLEROCKET_ARM_64'),
  );
  static const bottlerocketX8664 = EksNodeGroupAmiType._(
    TfArgLiteral('BOTTLEROCKET_x86_64'),
  );
  static const bottlerocketArm64Fips = EksNodeGroupAmiType._(
    TfArgLiteral('BOTTLEROCKET_ARM_64_FIPS'),
  );
  static const bottlerocketX8664Fips = EksNodeGroupAmiType._(
    TfArgLiteral('BOTTLEROCKET_x86_64_FIPS'),
  );
  static const bottlerocketArm64Nvidia = EksNodeGroupAmiType._(
    TfArgLiteral('BOTTLEROCKET_ARM_64_NVIDIA'),
  );
  static const bottlerocketX8664Nvidia = EksNodeGroupAmiType._(
    TfArgLiteral('BOTTLEROCKET_x86_64_NVIDIA'),
  );
  static const bottlerocketArm64NvidiaFips = EksNodeGroupAmiType._(
    TfArgLiteral('BOTTLEROCKET_ARM_64_NVIDIA_FIPS'),
  );
  static const bottlerocketX8664NvidiaFips = EksNodeGroupAmiType._(
    TfArgLiteral('BOTTLEROCKET_x86_64_NVIDIA_FIPS'),
  );
  static const windowsCore2019X8664 = EksNodeGroupAmiType._(
    TfArgLiteral('WINDOWS_CORE_2019_x86_64'),
  );
  static const windowsFull2019X8664 = EksNodeGroupAmiType._(
    TfArgLiteral('WINDOWS_FULL_2019_x86_64'),
  );
  static const windowsCore2022X8664 = EksNodeGroupAmiType._(
    TfArgLiteral('WINDOWS_CORE_2022_x86_64'),
  );
  static const windowsFull2022X8664 = EksNodeGroupAmiType._(
    TfArgLiteral('WINDOWS_FULL_2022_x86_64'),
  );
  static const windowsCore2025X8664 = EksNodeGroupAmiType._(
    TfArgLiteral('WINDOWS_CORE_2025_x86_64'),
  );
  static const windowsFull2025X8664 = EksNodeGroupAmiType._(
    TfArgLiteral('WINDOWS_FULL_2025_x86_64'),
  );
  static const al2023X8664Standard = EksNodeGroupAmiType._(
    TfArgLiteral('AL2023_x86_64_STANDARD'),
  );
  static const al2023Arm64Standard = EksNodeGroupAmiType._(
    TfArgLiteral('AL2023_ARM_64_STANDARD'),
  );
  static const al2023X8664Neuron = EksNodeGroupAmiType._(
    TfArgLiteral('AL2023_x86_64_NEURON'),
  );
  static const al2023X8664Nvidia = EksNodeGroupAmiType._(
    TfArgLiteral('AL2023_x86_64_NVIDIA'),
  );
  static const al2023Arm64Nvidia = EksNodeGroupAmiType._(
    TfArgLiteral('AL2023_ARM_64_NVIDIA'),
  );

  static const List<EksNodeGroupAmiType> values = [
    al2X8664,
    al2X8664Gpu,
    al2Arm64,
    custom,
    bottlerocketArm64,
    bottlerocketX8664,
    bottlerocketArm64Fips,
    bottlerocketX8664Fips,
    bottlerocketArm64Nvidia,
    bottlerocketX8664Nvidia,
    bottlerocketArm64NvidiaFips,
    bottlerocketX8664NvidiaFips,
    windowsCore2019X8664,
    windowsFull2019X8664,
    windowsCore2022X8664,
    windowsFull2022X8664,
    windowsCore2025X8664,
    windowsFull2025X8664,
    al2023X8664Standard,
    al2023Arm64Standard,
    al2023X8664Neuron,
    al2023X8664Nvidia,
    al2023Arm64Nvidia,
  ];
}

/// Eks Node Group Capacity enum for `capacity_type`.
extension type const EksNodeGroupCapacityType._(TfArg<String> _)
    implements TfArg<String> {
  EksNodeGroupCapacityType.variable(String name) : this._(TfArg.variable(name));
  EksNodeGroupCapacityType.expression(String template)
    : this._(TfArg.expression(template));
  const EksNodeGroupCapacityType.arg(TfArg<String> arg) : this._(arg);

  static const onDemand = EksNodeGroupCapacityType._(TfArgLiteral('ON_DEMAND'));
  static const spot = EksNodeGroupCapacityType._(TfArgLiteral('SPOT'));
  static const capacityBlock = EksNodeGroupCapacityType._(
    TfArgLiteral('CAPACITY_BLOCK'),
  );

  static const List<EksNodeGroupCapacityType> values = [
    onDemand,
    spot,
    capacityBlock,
  ];
}

/// At most one of `node_group_name`, `node_group_name_prefix` on `aws_eks_node_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.nodeGroupName(...)`.
sealed class EksNodeGroupName {
  const EksNodeGroupName();

  /// Sets `node_group_name`.
  const factory EksNodeGroupName.nodeGroupName(TfArg<String> nodeGroupName) =
      EksNodeGroupNameChoice;

  /// Sets `node_group_name_prefix`.
  const factory EksNodeGroupName.nodeGroupNamePrefix(
    TfArg<String> nodeGroupNamePrefix,
  ) = EksNodeGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EksNodeGroupName.nodeGroupName] choice: sets `node_group_name`.
final class EksNodeGroupNameChoice extends EksNodeGroupName {
  const EksNodeGroupNameChoice(this.nodeGroupName);

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

/// The [EksNodeGroupName.nodeGroupNamePrefix] choice: sets `node_group_name_prefix`.
final class EksNodeGroupNamePrefix extends EksNodeGroupName {
  const EksNodeGroupNamePrefix(this.nodeGroupNamePrefix);

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
  const EksNodeGroupLaunchTemplate({this.identifier, required this.version});

  final EksNodeGroupIdentifier? identifier;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    ...?identifier?.encode(),
    'version': version.toTfJson(),
  };
}

/// At most one of `id`, `name` on the `launch_template` block of `aws_eks_node_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class EksNodeGroupIdentifier {
  const EksNodeGroupIdentifier();

  /// Sets `id`.
  const factory EksNodeGroupIdentifier.id(TfArg<String> id) =
      EksNodeGroupIdentifierId;

  /// Sets `name`.
  const factory EksNodeGroupIdentifier.name(TfArg<String> name) =
      EksNodeGroupIdentifierName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EksNodeGroupIdentifier.id] choice: sets `id`.
final class EksNodeGroupIdentifierId extends EksNodeGroupIdentifier {
  const EksNodeGroupIdentifierId(this.id);

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [EksNodeGroupIdentifier.name] choice: sets `name`.
final class EksNodeGroupIdentifierName extends EksNodeGroupIdentifier {
  const EksNodeGroupIdentifierName(this.name);

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
    this.maxParallelNodesRepaired,
    this.maxUnhealthyNodeThreshold,
    this.nodeRepairConfigOverrides,
  });

  final TfArg<bool>? enabled;

  final EksNodeGroupMaxParallelNodesRepaired? maxParallelNodesRepaired;

  final EksNodeGroupMaxUnhealthyNodeThreshold? maxUnhealthyNodeThreshold;

  final List<EksNodeGroupNodeRepairConfigOverrides>? nodeRepairConfigOverrides;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    ...?maxParallelNodesRepaired?.encode(),
    ...?maxUnhealthyNodeThreshold?.encode(),
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
sealed class EksNodeGroupMaxParallelNodesRepaired {
  const EksNodeGroupMaxParallelNodesRepaired();

  /// Sets `max_parallel_nodes_repaired_count`.
  const factory EksNodeGroupMaxParallelNodesRepaired.maxParallelNodesRepairedCount(
    TfArg<num> maxParallelNodesRepairedCount,
  ) = EksNodeGroupMaxParallelNodesRepairedCount;

  /// Sets `max_parallel_nodes_repaired_percentage`.
  const factory EksNodeGroupMaxParallelNodesRepaired.maxParallelNodesRepairedPercentage(
    TfArg<num> maxParallelNodesRepairedPercentage,
  ) = EksNodeGroupMaxParallelNodesRepairedPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EksNodeGroupMaxParallelNodesRepaired.maxParallelNodesRepairedCount] choice: sets `max_parallel_nodes_repaired_count`.
final class EksNodeGroupMaxParallelNodesRepairedCount
    extends EksNodeGroupMaxParallelNodesRepaired {
  const EksNodeGroupMaxParallelNodesRepairedCount(
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

/// The [EksNodeGroupMaxParallelNodesRepaired.maxParallelNodesRepairedPercentage] choice: sets `max_parallel_nodes_repaired_percentage`.
final class EksNodeGroupMaxParallelNodesRepairedPercentage
    extends EksNodeGroupMaxParallelNodesRepaired {
  const EksNodeGroupMaxParallelNodesRepairedPercentage(
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
sealed class EksNodeGroupMaxUnhealthyNodeThreshold {
  const EksNodeGroupMaxUnhealthyNodeThreshold();

  /// Sets `max_unhealthy_node_threshold_count`.
  const factory EksNodeGroupMaxUnhealthyNodeThreshold.maxUnhealthyNodeThresholdCount(
    TfArg<num> maxUnhealthyNodeThresholdCount,
  ) = EksNodeGroupMaxUnhealthyNodeThresholdCount;

  /// Sets `max_unhealthy_node_threshold_percentage`.
  const factory EksNodeGroupMaxUnhealthyNodeThreshold.maxUnhealthyNodeThresholdPercentage(
    TfArg<num> maxUnhealthyNodeThresholdPercentage,
  ) = EksNodeGroupMaxUnhealthyNodeThresholdPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EksNodeGroupMaxUnhealthyNodeThreshold.maxUnhealthyNodeThresholdCount] choice: sets `max_unhealthy_node_threshold_count`.
final class EksNodeGroupMaxUnhealthyNodeThresholdCount
    extends EksNodeGroupMaxUnhealthyNodeThreshold {
  const EksNodeGroupMaxUnhealthyNodeThresholdCount(
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

/// The [EksNodeGroupMaxUnhealthyNodeThreshold.maxUnhealthyNodeThresholdPercentage] choice: sets `max_unhealthy_node_threshold_percentage`.
final class EksNodeGroupMaxUnhealthyNodeThresholdPercentage
    extends EksNodeGroupMaxUnhealthyNodeThreshold {
  const EksNodeGroupMaxUnhealthyNodeThresholdPercentage(
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
final class EksNodeGroupNodeRepairConfigOverrides {
  const EksNodeGroupNodeRepairConfigOverrides({
    required this.minRepairWaitTimeMins,
    required this.nodeMonitoringCondition,
    required this.nodeUnhealthyReason,
    required this.repairAction,
  });

  final TfArg<num> minRepairWaitTimeMins;

  final TfArg<String> nodeMonitoringCondition;

  final TfArg<String> nodeUnhealthyReason;

  final EksNodeGroupRepairAction repairAction;

  Map<String, Object?> encode() => {
    'min_repair_wait_time_mins': minRepairWaitTimeMins.toTfJson(),
    'node_monitoring_condition': nodeMonitoringCondition.toTfJson(),
    'node_unhealthy_reason': nodeUnhealthyReason.toTfJson(),
    'repair_action': repairAction.toTfJson(),
  };
}

/// `repair_action` — derived from the provider schema description.
extension type const EksNodeGroupRepairAction._(TfArg<String> _)
    implements TfArg<String> {
  EksNodeGroupRepairAction.variable(String name) : this._(TfArg.variable(name));
  EksNodeGroupRepairAction.expression(String template)
    : this._(TfArg.expression(template));
  const EksNodeGroupRepairAction.arg(TfArg<String> arg) : this._(arg);

  static const replace = EksNodeGroupRepairAction._(TfArgLiteral('Replace'));
  static const reboot = EksNodeGroupRepairAction._(TfArgLiteral('Reboot'));
  static const noaction = EksNodeGroupRepairAction._(TfArgLiteral('NoAction'));

  static const List<EksNodeGroupRepairAction> values = [
    replace,
    reboot,
    noaction,
  ];
}

/// Typed helper for the `remote_access` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupRemoteAccess {
  const EksNodeGroupRemoteAccess({this.ec2SshKey, this.sourceSecurityGroupIds});

  final TfArg<String>? ec2SshKey;

  final TfArg<List<String>>? sourceSecurityGroupIds;

  Map<String, Object?> encode() => {
    'ec2_ssh_key': ?ec2SshKey?.toTfJson(),
    'source_security_group_ids': ?sourceSecurityGroupIds?.toTfJson(),
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

  final EksNodeGroupEffect effect;

  final TfArg<String> key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
extension type const EksNodeGroupEffect._(TfArg<String> _)
    implements TfArg<String> {
  EksNodeGroupEffect.variable(String name) : this._(TfArg.variable(name));
  EksNodeGroupEffect.expression(String template)
    : this._(TfArg.expression(template));
  const EksNodeGroupEffect.arg(TfArg<String> arg) : this._(arg);

  static const noSchedule = EksNodeGroupEffect._(TfArgLiteral('NO_SCHEDULE'));
  static const noExecute = EksNodeGroupEffect._(TfArgLiteral('NO_EXECUTE'));
  static const preferNoSchedule = EksNodeGroupEffect._(
    TfArgLiteral('PREFER_NO_SCHEDULE'),
  );

  static const List<EksNodeGroupEffect> values = [
    noSchedule,
    noExecute,
    preferNoSchedule,
  ];
}

/// Typed helper for the `update_config` block of
/// `aws_eks_node_group` (derived from provider schema).
@immutable
final class EksNodeGroupUpdateConfig {
  const EksNodeGroupUpdateConfig({
    required this.maxUnavailable,
    this.updateStrategy,
  });

  final EksNodeGroupMaxUnavailable maxUnavailable;

  final EksNodeGroupUpdateStrategy? updateStrategy;

  Map<String, Object?> encode() => {
    ...maxUnavailable.encode(),
    'update_strategy': ?updateStrategy?.toTfJson(),
  };
}

/// Exactly one of `max_unavailable`, `max_unavailable_percentage` on the `update_config` block of `aws_eks_node_group`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.maxUnavailable(...)`.
sealed class EksNodeGroupMaxUnavailable {
  const EksNodeGroupMaxUnavailable();

  /// Sets `max_unavailable`.
  const factory EksNodeGroupMaxUnavailable.maxUnavailable(
    TfArg<num> maxUnavailable,
  ) = EksNodeGroupMaxUnavailableChoice;

  /// Sets `max_unavailable_percentage`.
  const factory EksNodeGroupMaxUnavailable.maxUnavailablePercentage(
    TfArg<num> maxUnavailablePercentage,
  ) = EksNodeGroupMaxUnavailablePercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EksNodeGroupMaxUnavailable.maxUnavailable] choice: sets `max_unavailable`.
final class EksNodeGroupMaxUnavailableChoice
    extends EksNodeGroupMaxUnavailable {
  const EksNodeGroupMaxUnavailableChoice(this.maxUnavailable);

  final TfArg<num> maxUnavailable;

  @override
  String get blockKey => 'max_unavailable';

  @override
  Map<String, Object?> encode() => {
    'max_unavailable': maxUnavailable.toTfJson(),
  };
}

/// The [EksNodeGroupMaxUnavailable.maxUnavailablePercentage] choice: sets `max_unavailable_percentage`.
final class EksNodeGroupMaxUnavailablePercentage
    extends EksNodeGroupMaxUnavailable {
  const EksNodeGroupMaxUnavailablePercentage(this.maxUnavailablePercentage);

  final TfArg<num> maxUnavailablePercentage;

  @override
  String get blockKey => 'max_unavailable_percentage';

  @override
  Map<String, Object?> encode() => {
    'max_unavailable_percentage': maxUnavailablePercentage.toTfJson(),
  };
}

/// `update_strategy` — derived from the provider schema description.
extension type const EksNodeGroupUpdateStrategy._(TfArg<String> _)
    implements TfArg<String> {
  EksNodeGroupUpdateStrategy.variable(String name)
    : this._(TfArg.variable(name));
  EksNodeGroupUpdateStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const EksNodeGroupUpdateStrategy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = EksNodeGroupUpdateStrategy._(
    TfArgLiteral('DEFAULT'),
  );
  static const minimal = EksNodeGroupUpdateStrategy._(TfArgLiteral('MINIMAL'));

  static const List<EksNodeGroupUpdateStrategy> values = [defaultCase, minimal];
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

  final EksNodeGroupPoolState? poolState;

  final TfArg<bool>? reuseOnScaleIn;

  Map<String, Object?> encode() => {
    'max_group_prepared_capacity': ?maxGroupPreparedCapacity?.toTfJson(),
    'min_size': ?minSize?.toTfJson(),
    'pool_state': ?poolState?.toTfJson(),
    'reuse_on_scale_in': ?reuseOnScaleIn?.toTfJson(),
  };
}

/// `pool_state` — derived from the provider schema description.
extension type const EksNodeGroupPoolState._(TfArg<String> _)
    implements TfArg<String> {
  EksNodeGroupPoolState.variable(String name) : this._(TfArg.variable(name));
  EksNodeGroupPoolState.expression(String template)
    : this._(TfArg.expression(template));
  const EksNodeGroupPoolState.arg(TfArg<String> arg) : this._(arg);

  static const stopped = EksNodeGroupPoolState._(TfArgLiteral('STOPPED'));
  static const running = EksNodeGroupPoolState._(TfArgLiteral('RUNNING'));
  static const hibernated = EksNodeGroupPoolState._(TfArgLiteral('HIBERNATED'));

  static const List<EksNodeGroupPoolState> values = [
    stopped,
    running,
    hibernated,
  ];
}

/// Factory wrapper for `aws_eks_node_group`.
final class AwsEksNodeGroup extends Resource {
  static const String tfType = 'aws_eks_node_group';

  AwsEksNodeGroup(
    super.localName, {
    EksNodeGroupAmiType? amiType,
    EksNodeGroupCapacityType? capacityType,
    required TfArg<String> clusterName,
    TfArg<num>? diskSize,
    TfArg<bool>? forceUpdateVersion,
    TfArg<List<String>>? instanceTypes,
    TfArg<Map<String, String>>? labels,
    EksNodeGroupName? nodeGroupName,
    required TfArg<String> nodeRoleArn,
    TfArg<String>? region,
    TfArg<String>? releaseVersion,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
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
           'ami_type': ?amiType,
           'capacity_type': ?capacityType,
           'cluster_name': clusterName,
           'disk_size': ?diskSize,
           'force_update_version': ?forceUpdateVersion,
           'instance_types': ?instanceTypes,
           'labels': ?labels,
           ...?nodeGroupName?.argMap,
           'node_role_arn': nodeRoleArn,
           'region': ?region,
           'release_version': ?releaseVersion,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
           'version': ?version,
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

  /// Reference to `ami_type` attribute.
  TfRef<String> get amiType => TfRef.attribute<String>(this, 'ami_type');

  /// Reference to `capacity_type` attribute.
  TfRef<String> get capacityType =>
      TfRef.attribute<String>(this, 'capacity_type');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `disk_size` attribute.
  TfRef<num> get diskSize => TfRef.attribute<num>(this, 'disk_size');

  /// Reference to `force_update_version` attribute.
  TfRef<bool> get forceUpdateVersion =>
      TfRef.attribute<bool>(this, 'force_update_version');

  /// Reference to `instance_types` attribute.
  TfRef<List<String>> get instanceTypes =>
      TfRef.attribute<List<String>>(this, 'instance_types');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `node_group_name` attribute.
  TfRef<String> get nodeGroupName =>
      TfRef.attribute<String>(this, 'node_group_name');

  /// Reference to `node_group_name_prefix` attribute.
  TfRef<String> get nodeGroupNamePrefix =>
      TfRef.attribute<String>(this, 'node_group_name_prefix');

  /// Reference to `node_role_arn` attribute.
  TfRef<String> get nodeRoleArn =>
      TfRef.attribute<String>(this, 'node_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `release_version` attribute.
  TfRef<String> get releaseVersion =>
      TfRef.attribute<String>(this, 'release_version');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
