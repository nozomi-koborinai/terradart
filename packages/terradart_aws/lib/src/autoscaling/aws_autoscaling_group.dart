// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_group`.
const Set<String> _awsAutoscalingGroupSensitive = <String>{};

/// Autoscaling Group Desired Capacity enum for `desired_capacity_type`.
enum AutoscalingGroupDesiredCapacityType implements TerraformEnum {
  memoryMib('memory-mib'),
  units('units'),
  vcpu('vcpu');

  const AutoscalingGroupDesiredCapacityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `launch_configuration`, `launch_template`, `mixed_instances_policy` on `aws_autoscaling_group`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.launchConfiguration(...)`.
sealed class AutoscalingGroupLaunch {
  const AutoscalingGroupLaunch();

  /// Sets `launch_configuration`.
  const factory AutoscalingGroupLaunch.launchConfiguration(
    TfArg<String> launchConfiguration,
  ) = AutoscalingGroupLaunchLaunchConfiguration;

  /// Sets `launch_template`.
  const factory AutoscalingGroupLaunch.launchTemplate(
    AutoscalingGroupLaunchTemplate launchTemplate,
  ) = AutoscalingGroupLaunchLaunchTemplate;

  /// Sets `mixed_instances_policy`.
  const factory AutoscalingGroupLaunch.mixedInstancesPolicy(
    AutoscalingGroupMixedInstancesPolicy mixedInstancesPolicy,
  ) = AutoscalingGroupLaunchMixedInstancesPolicy;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AutoscalingGroupLaunch.launchConfiguration] choice: sets `launch_configuration`.
final class AutoscalingGroupLaunchLaunchConfiguration
    extends AutoscalingGroupLaunch {
  const AutoscalingGroupLaunchLaunchConfiguration(this.launchConfiguration);

  final TfArg<String> launchConfiguration;

  @override
  String get blockKey => 'launch_configuration';

  @override
  Map<String, Object?> encode() => {
    'launch_configuration': launchConfiguration.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'launch_configuration': launchConfiguration,
  };
}

/// The [AutoscalingGroupLaunch.launchTemplate] choice: sets `launch_template`.
final class AutoscalingGroupLaunchLaunchTemplate
    extends AutoscalingGroupLaunch {
  const AutoscalingGroupLaunchLaunchTemplate(this.launchTemplate);

  final AutoscalingGroupLaunchTemplate launchTemplate;

  @override
  String get blockKey => 'launch_template';

  @override
  Map<String, Object?> encode() => {'launch_template': launchTemplate.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'launch_template': TfArg.literal(launchTemplate.encode()),
  };
}

/// The [AutoscalingGroupLaunch.mixedInstancesPolicy] choice: sets `mixed_instances_policy`.
final class AutoscalingGroupLaunchMixedInstancesPolicy
    extends AutoscalingGroupLaunch {
  const AutoscalingGroupLaunchMixedInstancesPolicy(this.mixedInstancesPolicy);

  final AutoscalingGroupMixedInstancesPolicy mixedInstancesPolicy;

  @override
  String get blockKey => 'mixed_instances_policy';

  @override
  Map<String, Object?> encode() => {
    'mixed_instances_policy': mixedInstancesPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'mixed_instances_policy': TfArg.literal(mixedInstancesPolicy.encode()),
  };
}

/// At most one of `availability_zones`, `vpc_zone_identifier` on `aws_autoscaling_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.availabilityZones(...)`.
sealed class AutoscalingGroupPlacement {
  const AutoscalingGroupPlacement();

  /// Sets `availability_zones`.
  const factory AutoscalingGroupPlacement.availabilityZones(
    TfArg<List<String>> availabilityZones,
  ) = AutoscalingGroupPlacementAvailabilityZones;

  /// Sets `vpc_zone_identifier`.
  const factory AutoscalingGroupPlacement.vpcZoneIdentifier(
    TfArg<List<String>> vpcZoneIdentifier,
  ) = AutoscalingGroupPlacementVpcZoneIdentifier;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AutoscalingGroupPlacement.availabilityZones] choice: sets `availability_zones`.
final class AutoscalingGroupPlacementAvailabilityZones
    extends AutoscalingGroupPlacement {
  const AutoscalingGroupPlacementAvailabilityZones(this.availabilityZones);

  final TfArg<List<String>> availabilityZones;

  @override
  String get blockKey => 'availability_zones';

  @override
  Map<String, Object?> encode() => {
    'availability_zones': availabilityZones.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'availability_zones': availabilityZones,
  };
}

/// The [AutoscalingGroupPlacement.vpcZoneIdentifier] choice: sets `vpc_zone_identifier`.
final class AutoscalingGroupPlacementVpcZoneIdentifier
    extends AutoscalingGroupPlacement {
  const AutoscalingGroupPlacementVpcZoneIdentifier(this.vpcZoneIdentifier);

  final TfArg<List<String>> vpcZoneIdentifier;

  @override
  String get blockKey => 'vpc_zone_identifier';

  @override
  Map<String, Object?> encode() => {
    'vpc_zone_identifier': vpcZoneIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'vpc_zone_identifier': vpcZoneIdentifier,
  };
}

/// At most one of `name`, `name_prefix` on `aws_autoscaling_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class AutoscalingGroupName {
  const AutoscalingGroupName();

  /// Sets `name`.
  const factory AutoscalingGroupName.name(TfArg<String> name) =
      AutoscalingGroupNameName;

  /// Sets `name_prefix`.
  const factory AutoscalingGroupName.namePrefix(TfArg<String> namePrefix) =
      AutoscalingGroupNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AutoscalingGroupName.name] choice: sets `name`.
final class AutoscalingGroupNameName extends AutoscalingGroupName {
  const AutoscalingGroupNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [AutoscalingGroupName.namePrefix] choice: sets `name_prefix`.
final class AutoscalingGroupNameNamePrefix extends AutoscalingGroupName {
  const AutoscalingGroupNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `availability_zone_distribution` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupAvailabilityZoneDistribution {
  const AutoscalingGroupAvailabilityZoneDistribution({
    this.capacityDistributionStrategy,
  });

  final TfArg<
    AutoscalingGroupAvailabilityZoneDistributionCapacityDistributionStrategy
  >?
  capacityDistributionStrategy;

  Map<String, Object?> encode() => {
    if (capacityDistributionStrategy != null)
      'capacity_distribution_strategy': capacityDistributionStrategy!
          .toTfJson(),
  };
}

/// `capacity_distribution_strategy` — derived from the provider schema description.
enum AutoscalingGroupAvailabilityZoneDistributionCapacityDistributionStrategy
    implements TerraformEnum {
  balancedOnly('balanced-only'),
  balancedBestEffort('balanced-best-effort'),
  reservationsThenBalanced('reservations-then-balanced');

  const AutoscalingGroupAvailabilityZoneDistributionCapacityDistributionStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `capacity_reservation_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupCapacityReservationSpecification {
  const AutoscalingGroupCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  final TfArg<
    AutoscalingGroupCapacityReservationSpecificationCapacityReservationPreference
  >?
  capacityReservationPreference;

  final AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget?
  capacityReservationTarget;

  Map<String, Object?> encode() => {
    if (capacityReservationPreference != null)
      'capacity_reservation_preference': capacityReservationPreference!
          .toTfJson(),
    if (capacityReservationTarget != null)
      'capacity_reservation_target': capacityReservationTarget!.encode(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
enum AutoscalingGroupCapacityReservationSpecificationCapacityReservationPreference
    implements TerraformEnum {
  capacityReservationsOnly('capacity-reservations-only'),
  capacityReservationsFirst('capacity-reservations-first'),
  none('none'),
  defaultCase('default');

  const AutoscalingGroupCapacityReservationSpecificationCapacityReservationPreference(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `capacity_reservation_specification.capacity_reservation_target` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget {
  const AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget({
    this.capacityReservation,
  });

  final AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation?
  capacityReservation;

  Map<String, Object?> encode() => {...?capacityReservation?.encode()};
}

/// At most one of `capacity_reservation_ids`, `capacity_reservation_resource_group_arns` on the `capacity_reservation_specification.capacity_reservation_target` block of `aws_autoscaling_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationIds(...)`.
sealed class AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation {
  const AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation();

  /// Sets `capacity_reservation_ids`.
  const factory AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation.capacityReservationIds(
    TfArg<List<Object?>> capacityReservationIds,
  ) = AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationIds;

  /// Sets `capacity_reservation_resource_group_arns`.
  const factory AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation.capacityReservationResourceGroupArns(
    TfArg<List<Object?>> capacityReservationResourceGroupArns,
  ) = AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationResourceGroupArns;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation.capacityReservationIds] choice: sets `capacity_reservation_ids`.
final class AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationIds
    extends
        AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation {
  const AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationIds(
    this.capacityReservationIds,
  );

  final TfArg<List<Object?>> capacityReservationIds;

  @override
  String get blockKey => 'capacity_reservation_ids';

  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_ids': capacityReservationIds.toTfJson(),
  };
}

/// The [AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation.capacityReservationResourceGroupArns] choice: sets `capacity_reservation_resource_group_arns`.
final class AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationResourceGroupArns
    extends
        AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservation {
  const AutoscalingGroupCapacityReservationSpecificationCapacityReservationTargetCapacityReservationCapacityReservationResourceGroupArns(
    this.capacityReservationResourceGroupArns,
  );

  final TfArg<List<Object?>> capacityReservationResourceGroupArns;

  @override
  String get blockKey => 'capacity_reservation_resource_group_arns';

  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_resource_group_arns':
        capacityReservationResourceGroupArns.toTfJson(),
  };
}

/// Typed helper for the `initial_lifecycle_hook` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInitialLifecycleHook {
  const AutoscalingGroupInitialLifecycleHook({
    this.defaultResult,
    this.heartbeatTimeout,
    required this.lifecycleTransition,
    required this.name,
    this.notificationMetadata,
    this.notificationTargetArn,
    this.roleArn,
  });

  final TfArg<AutoscalingGroupInitialLifecycleHookDefaultResult>? defaultResult;

  final TfArg<num>? heartbeatTimeout;

  final TfArg<AutoscalingGroupInitialLifecycleHookLifecycleTransition>
  lifecycleTransition;

  final TfArg<String> name;

  final TfArg<String>? notificationMetadata;

  final TfArg<String>? notificationTargetArn;

  final TfArg<String>? roleArn;

  Map<String, Object?> encode() => {
    if (defaultResult != null) 'default_result': defaultResult!.toTfJson(),
    if (heartbeatTimeout != null)
      'heartbeat_timeout': heartbeatTimeout!.toTfJson(),
    'lifecycle_transition': lifecycleTransition.toTfJson(),
    'name': name.toTfJson(),
    if (notificationMetadata != null)
      'notification_metadata': notificationMetadata!.toTfJson(),
    if (notificationTargetArn != null)
      'notification_target_arn': notificationTargetArn!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
  };
}

/// `default_result` — derived from the provider schema description.
enum AutoscalingGroupInitialLifecycleHookDefaultResult
    implements TerraformEnum {
  abandon('ABANDON'),
  continueCase('CONTINUE');

  const AutoscalingGroupInitialLifecycleHookDefaultResult(this.terraformValue);
  @override
  final String terraformValue;
}

/// `lifecycle_transition` — derived from the provider schema description.
enum AutoscalingGroupInitialLifecycleHookLifecycleTransition
    implements TerraformEnum {
  autoscalingEc2InstanceLaunching('autoscaling:EC2_INSTANCE_LAUNCHING'),
  autoscalingEc2InstanceTerminating('autoscaling:EC2_INSTANCE_TERMINATING');

  const AutoscalingGroupInitialLifecycleHookLifecycleTransition(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_lifecycle_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceLifecyclePolicy {
  const AutoscalingGroupInstanceLifecyclePolicy({this.retentionTriggers});

  final AutoscalingGroupInstanceLifecyclePolicyRetentionTriggers?
  retentionTriggers;

  Map<String, Object?> encode() => {
    if (retentionTriggers != null)
      'retention_triggers': retentionTriggers!.encode(),
  };
}

/// Typed helper for the `instance_lifecycle_policy.retention_triggers` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceLifecyclePolicyRetentionTriggers {
  const AutoscalingGroupInstanceLifecyclePolicyRetentionTriggers({
    this.terminateHookAbandon,
  });

  final TfArg<
    AutoscalingGroupInstanceLifecyclePolicyRetentionTriggersTerminateHookAbandon
  >?
  terminateHookAbandon;

  Map<String, Object?> encode() => {
    if (terminateHookAbandon != null)
      'terminate_hook_abandon': terminateHookAbandon!.toTfJson(),
  };
}

/// `terminate_hook_abandon` — derived from the provider schema description.
enum AutoscalingGroupInstanceLifecyclePolicyRetentionTriggersTerminateHookAbandon
    implements TerraformEnum {
  retain('retain'),
  terminate('terminate');

  const AutoscalingGroupInstanceLifecyclePolicyRetentionTriggersTerminateHookAbandon(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_maintenance_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceMaintenancePolicy {
  const AutoscalingGroupInstanceMaintenancePolicy({
    required this.maxHealthyPercentage,
    required this.minHealthyPercentage,
  });

  final TfArg<num> maxHealthyPercentage;

  final TfArg<num> minHealthyPercentage;

  Map<String, Object?> encode() => {
    'max_healthy_percentage': maxHealthyPercentage.toTfJson(),
    'min_healthy_percentage': minHealthyPercentage.toTfJson(),
  };
}

/// Typed helper for the `instance_refresh` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceRefresh {
  const AutoscalingGroupInstanceRefresh({
    required this.strategy,
    this.triggers,
    this.preferences,
  });

  final TfArg<AutoscalingGroupInstanceRefreshStrategy> strategy;

  final TfArg<List<Object?>>? triggers;

  final AutoscalingGroupInstanceRefreshPreferences? preferences;

  Map<String, Object?> encode() => {
    'strategy': strategy.toTfJson(),
    if (triggers != null) 'triggers': triggers!.toTfJson(),
    if (preferences != null) 'preferences': preferences!.encode(),
  };
}

/// `strategy` — derived from the provider schema description.
enum AutoscalingGroupInstanceRefreshStrategy implements TerraformEnum {
  rolling('Rolling'),
  replacerootvolume('ReplaceRootVolume');

  const AutoscalingGroupInstanceRefreshStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_refresh.preferences` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceRefreshPreferences {
  const AutoscalingGroupInstanceRefreshPreferences({
    this.autoRollback,
    this.checkpointDelay,
    this.checkpointPercentages,
    this.instanceWarmup,
    this.maxHealthyPercentage,
    this.minHealthyPercentage,
    this.scaleInProtectedInstances,
    this.skipMatching,
    this.standbyInstances,
    this.alarmSpecification,
  });

  final TfArg<bool>? autoRollback;

  final TfArg<String>? checkpointDelay;

  final TfArg<List<Object?>>? checkpointPercentages;

  final TfArg<String>? instanceWarmup;

  final TfArg<num>? maxHealthyPercentage;

  final TfArg<num>? minHealthyPercentage;

  final TfArg<
    AutoscalingGroupInstanceRefreshPreferencesScaleInProtectedInstances
  >?
  scaleInProtectedInstances;

  final TfArg<bool>? skipMatching;

  final TfArg<AutoscalingGroupInstanceRefreshPreferencesStandbyInstances>?
  standbyInstances;

  final AutoscalingGroupInstanceRefreshPreferencesAlarmSpecification?
  alarmSpecification;

  Map<String, Object?> encode() => {
    if (autoRollback != null) 'auto_rollback': autoRollback!.toTfJson(),
    if (checkpointDelay != null)
      'checkpoint_delay': checkpointDelay!.toTfJson(),
    if (checkpointPercentages != null)
      'checkpoint_percentages': checkpointPercentages!.toTfJson(),
    if (instanceWarmup != null) 'instance_warmup': instanceWarmup!.toTfJson(),
    if (maxHealthyPercentage != null)
      'max_healthy_percentage': maxHealthyPercentage!.toTfJson(),
    if (minHealthyPercentage != null)
      'min_healthy_percentage': minHealthyPercentage!.toTfJson(),
    if (scaleInProtectedInstances != null)
      'scale_in_protected_instances': scaleInProtectedInstances!.toTfJson(),
    if (skipMatching != null) 'skip_matching': skipMatching!.toTfJson(),
    if (standbyInstances != null)
      'standby_instances': standbyInstances!.toTfJson(),
    if (alarmSpecification != null)
      'alarm_specification': alarmSpecification!.encode(),
  };
}

/// `scale_in_protected_instances` — derived from the provider schema description.
enum AutoscalingGroupInstanceRefreshPreferencesScaleInProtectedInstances
    implements TerraformEnum {
  refresh('Refresh'),
  ignore('Ignore'),
  wait('Wait');

  const AutoscalingGroupInstanceRefreshPreferencesScaleInProtectedInstances(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `standby_instances` — derived from the provider schema description.
enum AutoscalingGroupInstanceRefreshPreferencesStandbyInstances
    implements TerraformEnum {
  terminate('Terminate'),
  ignore('Ignore'),
  wait('Wait');

  const AutoscalingGroupInstanceRefreshPreferencesStandbyInstances(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_refresh.preferences.alarm_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceRefreshPreferencesAlarmSpecification {
  const AutoscalingGroupInstanceRefreshPreferencesAlarmSpecification({
    this.alarms,
  });

  final TfArg<List<Object?>>? alarms;

  Map<String, Object?> encode() => {
    if (alarms != null) 'alarms': alarms!.toTfJson(),
  };
}

/// Typed helper for the `launch_template` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupLaunchTemplate {
  const AutoscalingGroupLaunchTemplate({this.template, this.version});

  final AutoscalingGroupLaunchTemplateTemplate? template;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    ...?template?.encode(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// At most one of `id`, `name` on the `launch_template` block of `aws_autoscaling_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class AutoscalingGroupLaunchTemplateTemplate {
  const AutoscalingGroupLaunchTemplateTemplate();

  /// Sets `id`.
  const factory AutoscalingGroupLaunchTemplateTemplate.id(TfArg<String> id) =
      AutoscalingGroupLaunchTemplateTemplateId;

  /// Sets `name`.
  const factory AutoscalingGroupLaunchTemplateTemplate.name(
    TfArg<String> name,
  ) = AutoscalingGroupLaunchTemplateTemplateName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AutoscalingGroupLaunchTemplateTemplate.id] choice: sets `id`.
final class AutoscalingGroupLaunchTemplateTemplateId
    extends AutoscalingGroupLaunchTemplateTemplate {
  const AutoscalingGroupLaunchTemplateTemplateId(this.id);

  final TfArg<String> id;

  @override
  String get blockKey => 'id';

  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [AutoscalingGroupLaunchTemplateTemplate.name] choice: sets `name`.
final class AutoscalingGroupLaunchTemplateTemplateName
    extends AutoscalingGroupLaunchTemplateTemplate {
  const AutoscalingGroupLaunchTemplateTemplateName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `mixed_instances_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicy {
  const AutoscalingGroupMixedInstancesPolicy({
    this.instancesDistribution,
    required this.launchTemplate,
  });

  final AutoscalingGroupMixedInstancesPolicyInstancesDistribution?
  instancesDistribution;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplate launchTemplate;

  Map<String, Object?> encode() => {
    if (instancesDistribution != null)
      'instances_distribution': instancesDistribution!.encode(),
    'launch_template': launchTemplate.encode(),
  };
}

/// Typed helper for the `mixed_instances_policy.instances_distribution` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyInstancesDistribution {
  const AutoscalingGroupMixedInstancesPolicyInstancesDistribution({
    this.onDemandAllocationStrategy,
    this.onDemandBaseCapacity,
    this.onDemandPercentageAboveBaseCapacity,
    this.spotAllocationStrategy,
    this.spotInstancePools,
    this.spotMaxPrice,
  });

  final TfArg<String>? onDemandAllocationStrategy;

  final TfArg<num>? onDemandBaseCapacity;

  final TfArg<num>? onDemandPercentageAboveBaseCapacity;

  final TfArg<String>? spotAllocationStrategy;

  final TfArg<num>? spotInstancePools;

  final TfArg<String>? spotMaxPrice;

  Map<String, Object?> encode() => {
    if (onDemandAllocationStrategy != null)
      'on_demand_allocation_strategy': onDemandAllocationStrategy!.toTfJson(),
    if (onDemandBaseCapacity != null)
      'on_demand_base_capacity': onDemandBaseCapacity!.toTfJson(),
    if (onDemandPercentageAboveBaseCapacity != null)
      'on_demand_percentage_above_base_capacity':
          onDemandPercentageAboveBaseCapacity!.toTfJson(),
    if (spotAllocationStrategy != null)
      'spot_allocation_strategy': spotAllocationStrategy!.toTfJson(),
    if (spotInstancePools != null)
      'spot_instance_pools': spotInstancePools!.toTfJson(),
    if (spotMaxPrice != null) 'spot_max_price': spotMaxPrice!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplate {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplate({
    required this.launchTemplateSpecification,
    this.override,
  });

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
  launchTemplateSpecification;

  final List<AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverride>?
  override;

  Map<String, Object?> encode() => {
    'launch_template_specification': launchTemplateSpecification.encode(),
    if (override != null) 'override': [for (final e in override!) e.encode()],
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.launch_template_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    this.version,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (launchTemplateId != null)
      'launch_template_id': launchTemplateId!.toTfJson(),
    if (launchTemplateName != null)
      'launch_template_name': launchTemplateName!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverride {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverride({
    this.instanceType,
    this.weightedCapacity,
    this.instanceRequirements,
    this.launchTemplateSpecification,
  });

  final TfArg<String>? instanceType;

  final TfArg<String>? weightedCapacity;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements?
  instanceRequirements;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification?
  launchTemplateSpecification;

  Map<String, Object?> encode() => {
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (weightedCapacity != null)
      'weighted_capacity': weightedCapacity!.toTfJson(),
    if (instanceRequirements != null)
      'instance_requirements': instanceRequirements!.encode(),
    if (launchTemplateSpecification != null)
      'launch_template_specification': launchTemplateSpecification!.encode(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements({
    this.acceleratorManufacturers,
    this.acceleratorNames,
    this.acceleratorTypes,
    this.allowedInstanceTypes,
    this.bareMetal,
    this.burstablePerformance,
    this.cpuManufacturers,
    this.excludedInstanceTypes,
    this.instanceGenerations,
    this.localStorage,
    this.localStorageTypes,
    this.maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
    this.onDemandMaxPricePercentageOverLowestPrice,
    this.requireHibernateSupport,
    this.spotMaxPricePercentageOverLowestPrice,
    this.acceleratorCount,
    this.acceleratorTotalMemoryMib,
    this.baselineEbsBandwidthMbps,
    this.memoryGibPerVcpu,
    this.memoryMib,
    this.networkBandwidthGbps,
    this.networkInterfaceCount,
    this.totalLocalStorageGb,
    this.vcpuCount,
  });

  final List<
    TfArg<
      AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorManufacturers
    >
  >?
  acceleratorManufacturers;

  final List<
    TfArg<
      AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorNames
    >
  >?
  acceleratorNames;

  final List<
    TfArg<
      AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTypes
    >
  >?
  acceleratorTypes;

  final TfArg<List<Object?>>? allowedInstanceTypes;

  final TfArg<
    AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBareMetal
  >?
  bareMetal;

  final TfArg<
    AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBurstablePerformance
  >?
  burstablePerformance;

  final List<
    TfArg<
      AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsCpuManufacturers
    >
  >?
  cpuManufacturers;

  final TfArg<List<Object?>>? excludedInstanceTypes;

  final List<
    TfArg<
      AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsInstanceGenerations
    >
  >?
  instanceGenerations;

  final TfArg<
    AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsLocalStorage
  >?
  localStorage;

  final List<
    TfArg<
      AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsLocalStorageTypes
    >
  >?
  localStorageTypes;

  final TfArg<num>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  final TfArg<num>? onDemandMaxPricePercentageOverLowestPrice;

  final TfArg<bool>? requireHibernateSupport;

  final TfArg<num>? spotMaxPricePercentageOverLowestPrice;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount?
  acceleratorCount;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib?
  acceleratorTotalMemoryMib;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps?
  baselineEbsBandwidthMbps;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu?
  memoryGibPerVcpu;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib?
  memoryMib;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps?
  networkBandwidthGbps;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount?
  networkInterfaceCount;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb?
  totalLocalStorageGb;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount?
  vcpuCount;

  Map<String, Object?> encode() => {
    if (acceleratorManufacturers != null)
      'accelerator_manufacturers': [
        for (final e in acceleratorManufacturers!) e.toTfJson(),
      ],
    if (acceleratorNames != null)
      'accelerator_names': [for (final e in acceleratorNames!) e.toTfJson()],
    if (acceleratorTypes != null)
      'accelerator_types': [for (final e in acceleratorTypes!) e.toTfJson()],
    if (allowedInstanceTypes != null)
      'allowed_instance_types': allowedInstanceTypes!.toTfJson(),
    if (bareMetal != null) 'bare_metal': bareMetal!.toTfJson(),
    if (burstablePerformance != null)
      'burstable_performance': burstablePerformance!.toTfJson(),
    if (cpuManufacturers != null)
      'cpu_manufacturers': [for (final e in cpuManufacturers!) e.toTfJson()],
    if (excludedInstanceTypes != null)
      'excluded_instance_types': excludedInstanceTypes!.toTfJson(),
    if (instanceGenerations != null)
      'instance_generations': [
        for (final e in instanceGenerations!) e.toTfJson(),
      ],
    if (localStorage != null) 'local_storage': localStorage!.toTfJson(),
    if (localStorageTypes != null)
      'local_storage_types': [for (final e in localStorageTypes!) e.toTfJson()],
    if (maxSpotPriceAsPercentageOfOptimalOnDemandPrice != null)
      'max_spot_price_as_percentage_of_optimal_on_demand_price':
          maxSpotPriceAsPercentageOfOptimalOnDemandPrice!.toTfJson(),
    if (onDemandMaxPricePercentageOverLowestPrice != null)
      'on_demand_max_price_percentage_over_lowest_price':
          onDemandMaxPricePercentageOverLowestPrice!.toTfJson(),
    if (requireHibernateSupport != null)
      'require_hibernate_support': requireHibernateSupport!.toTfJson(),
    if (spotMaxPricePercentageOverLowestPrice != null)
      'spot_max_price_percentage_over_lowest_price':
          spotMaxPricePercentageOverLowestPrice!.toTfJson(),
    if (acceleratorCount != null)
      'accelerator_count': acceleratorCount!.encode(),
    if (acceleratorTotalMemoryMib != null)
      'accelerator_total_memory_mib': acceleratorTotalMemoryMib!.encode(),
    if (baselineEbsBandwidthMbps != null)
      'baseline_ebs_bandwidth_mbps': baselineEbsBandwidthMbps!.encode(),
    if (memoryGibPerVcpu != null)
      'memory_gib_per_vcpu': memoryGibPerVcpu!.encode(),
    if (memoryMib != null) 'memory_mib': memoryMib!.encode(),
    if (networkBandwidthGbps != null)
      'network_bandwidth_gbps': networkBandwidthGbps!.encode(),
    if (networkInterfaceCount != null)
      'network_interface_count': networkInterfaceCount!.encode(),
    if (totalLocalStorageGb != null)
      'total_local_storage_gb': totalLocalStorageGb!.encode(),
    if (vcpuCount != null) 'vcpu_count': vcpuCount!.encode(),
  };
}

/// `accelerator_manufacturers` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorManufacturers
    implements TerraformEnum {
  nvidia('nvidia'),
  amd('amd'),
  amazonWebServices('amazon-web-services'),
  xilinx('xilinx');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorManufacturers(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `accelerator_names` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorNames
    implements TerraformEnum {
  a100('a100'),
  v100('v100'),
  k80('k80'),
  t4('t4'),
  m60('m60'),
  radeonProV520('radeon-pro-v520'),
  vu9p('vu9p');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorNames(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `accelerator_types` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTypes
    implements TerraformEnum {
  gpu('gpu'),
  fpga('fpga'),
  inference('inference');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `bare_metal` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBareMetal
    implements TerraformEnum {
  included('included'),
  excluded('excluded'),
  required('required');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBareMetal(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `burstable_performance` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBurstablePerformance
    implements TerraformEnum {
  included('included'),
  excluded('excluded'),
  required('required');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBurstablePerformance(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `cpu_manufacturers` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsCpuManufacturers
    implements TerraformEnum {
  intel('intel'),
  amd('amd'),
  amazonWebServices('amazon-web-services'),
  apple('apple');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsCpuManufacturers(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `instance_generations` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsInstanceGenerations
    implements TerraformEnum {
  current('current'),
  previous('previous');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsInstanceGenerations(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `local_storage` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsLocalStorage
    implements TerraformEnum {
  included('included'),
  excluded('excluded'),
  required('required');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsLocalStorage(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `local_storage_types` — derived from the provider schema description.
enum AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsLocalStorageTypes
    implements TerraformEnum {
  hdd('hdd'),
  ssd('ssd');

  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsLocalStorageTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.accelerator_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.memory_mib` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.network_bandwidth_gbps` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.network_interface_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.total_local_storage_gb` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.vcpu_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount({
    this.max,
    this.min,
  });

  final TfArg<num>? max;

  final TfArg<num>? min;

  Map<String, Object?> encode() => {
    if (max != null) 'max': max!.toTfJson(),
    if (min != null) 'min': min!.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.launch_template_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification {
  const AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    this.version,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (launchTemplateId != null)
      'launch_template_id': launchTemplateId!.toTfJson(),
    if (launchTemplateName != null)
      'launch_template_name': launchTemplateName!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `tag` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupTag {
  const AutoscalingGroupTag({
    required this.key,
    required this.propagateAtLaunch,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<bool> propagateAtLaunch;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'propagate_at_launch': propagateAtLaunch.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `traffic_source` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupTrafficSource {
  const AutoscalingGroupTrafficSource({required this.identifier, this.type});

  final TfArg<String> identifier;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `warm_pool` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupWarmPool {
  const AutoscalingGroupWarmPool({
    this.maxGroupPreparedCapacity,
    this.minSize,
    this.poolState,
    this.instanceReusePolicy,
  });

  final TfArg<num>? maxGroupPreparedCapacity;

  final TfArg<num>? minSize;

  final TfArg<AutoscalingGroupWarmPoolPoolState>? poolState;

  final AutoscalingGroupWarmPoolInstanceReusePolicy? instanceReusePolicy;

  Map<String, Object?> encode() => {
    if (maxGroupPreparedCapacity != null)
      'max_group_prepared_capacity': maxGroupPreparedCapacity!.toTfJson(),
    if (minSize != null) 'min_size': minSize!.toTfJson(),
    if (poolState != null) 'pool_state': poolState!.toTfJson(),
    if (instanceReusePolicy != null)
      'instance_reuse_policy': instanceReusePolicy!.encode(),
  };
}

/// `pool_state` — derived from the provider schema description.
enum AutoscalingGroupWarmPoolPoolState implements TerraformEnum {
  stopped('Stopped'),
  running('Running'),
  hibernated('Hibernated');

  const AutoscalingGroupWarmPoolPoolState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `warm_pool.instance_reuse_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupWarmPoolInstanceReusePolicy {
  const AutoscalingGroupWarmPoolInstanceReusePolicy({this.reuseOnScaleIn});

  final TfArg<bool>? reuseOnScaleIn;

  Map<String, Object?> encode() => {
    if (reuseOnScaleIn != null) 'reuse_on_scale_in': reuseOnScaleIn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_autoscaling_group`.
final class AwsAutoscalingGroup extends Resource {
  static const String tfType = 'aws_autoscaling_group';

  AwsAutoscalingGroup({
    required super.localName,
    AutoscalingGroupPlacement? placement,
    TfArg<bool>? capacityRebalance,
    TfArg<String>? context,
    TfArg<num>? defaultCooldown,
    TfArg<num>? defaultInstanceWarmup,
    TfArg<num>? desiredCapacity,
    TfArg<AutoscalingGroupDesiredCapacityType>? desiredCapacityType,
    TfArg<List<String>>? enabledMetrics,
    TfArg<bool>? forceDelete,
    TfArg<bool>? forceDeleteWarmPool,
    TfArg<num>? healthCheckGracePeriod,
    TfArg<String>? healthCheckType,
    TfArg<bool>? ignoreFailedScalingActivities,
    required AutoscalingGroupLaunch launch,
    TfArg<List<String>>? loadBalancers,
    TfArg<num>? maxInstanceLifetime,
    required TfArg<num> maxSize,
    TfArg<String>? metricsGranularity,
    TfArg<num>? minElbCapacity,
    required TfArg<num> minSize,
    AutoscalingGroupName? name,
    TfArg<String>? placementGroup,
    TfArg<bool>? protectFromScaleIn,
    TfArg<String>? region,
    TfArg<String>? serviceLinkedRoleArn,
    TfArg<List<String>>? suspendedProcesses,
    TfArg<List<String>>? targetGroupArns,
    TfArg<List<String>>? terminationPolicies,
    TfArg<String>? waitForCapacityTimeout,
    TfArg<num>? waitForElbCapacity,
    AutoscalingGroupAvailabilityZoneDistribution? availabilityZoneDistribution,
    AutoscalingGroupCapacityReservationSpecification?
    capacityReservationSpecification,
    List<AutoscalingGroupInitialLifecycleHook>? initialLifecycleHook,
    AutoscalingGroupInstanceLifecyclePolicy? instanceLifecyclePolicy,
    AutoscalingGroupInstanceMaintenancePolicy? instanceMaintenancePolicy,
    AutoscalingGroupInstanceRefresh? instanceRefresh,
    List<AutoscalingGroupTag>? tag,
    List<AutoscalingGroupTrafficSource>? trafficSource,
    AutoscalingGroupWarmPool? warmPool,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?placement?.argMap,
           if (capacityRebalance != null)
             'capacity_rebalance': capacityRebalance,
           if (context != null) 'context': context,
           if (defaultCooldown != null) 'default_cooldown': defaultCooldown,
           if (defaultInstanceWarmup != null)
             'default_instance_warmup': defaultInstanceWarmup,
           if (desiredCapacity != null) 'desired_capacity': desiredCapacity,
           if (desiredCapacityType != null)
             'desired_capacity_type': desiredCapacityType,
           if (enabledMetrics != null) 'enabled_metrics': enabledMetrics,
           if (forceDelete != null) 'force_delete': forceDelete,
           if (forceDeleteWarmPool != null)
             'force_delete_warm_pool': forceDeleteWarmPool,
           if (healthCheckGracePeriod != null)
             'health_check_grace_period': healthCheckGracePeriod,
           if (healthCheckType != null) 'health_check_type': healthCheckType,
           if (ignoreFailedScalingActivities != null)
             'ignore_failed_scaling_activities': ignoreFailedScalingActivities,
           ...launch.argMap,
           if (loadBalancers != null) 'load_balancers': loadBalancers,
           if (maxInstanceLifetime != null)
             'max_instance_lifetime': maxInstanceLifetime,
           'max_size': maxSize,
           if (metricsGranularity != null)
             'metrics_granularity': metricsGranularity,
           if (minElbCapacity != null) 'min_elb_capacity': minElbCapacity,
           'min_size': minSize,
           ...?name?.argMap,
           if (placementGroup != null) 'placement_group': placementGroup,
           if (protectFromScaleIn != null)
             'protect_from_scale_in': protectFromScaleIn,
           if (region != null) 'region': region,
           if (serviceLinkedRoleArn != null)
             'service_linked_role_arn': serviceLinkedRoleArn,
           if (suspendedProcesses != null)
             'suspended_processes': suspendedProcesses,
           if (targetGroupArns != null) 'target_group_arns': targetGroupArns,
           if (terminationPolicies != null)
             'termination_policies': terminationPolicies,
           if (waitForCapacityTimeout != null)
             'wait_for_capacity_timeout': waitForCapacityTimeout,
           if (waitForElbCapacity != null)
             'wait_for_elb_capacity': waitForElbCapacity,
           if (availabilityZoneDistribution != null)
             'availability_zone_distribution': TfArg.literal(
               availabilityZoneDistribution.encode(),
             ),
           if (capacityReservationSpecification != null)
             'capacity_reservation_specification': TfArg.literal(
               capacityReservationSpecification.encode(),
             ),
           if (initialLifecycleHook != null)
             'initial_lifecycle_hook': TfArg.literal([
               for (final e in initialLifecycleHook) e.encode(),
             ]),
           if (instanceLifecyclePolicy != null)
             'instance_lifecycle_policy': TfArg.literal(
               instanceLifecyclePolicy.encode(),
             ),
           if (instanceMaintenancePolicy != null)
             'instance_maintenance_policy': TfArg.literal(
               instanceMaintenancePolicy.encode(),
             ),
           if (instanceRefresh != null)
             'instance_refresh': TfArg.literal(instanceRefresh.encode()),
           if (tag != null)
             'tag': TfArg.literal([for (final e in tag) e.encode()]),
           if (trafficSource != null)
             'traffic_source': TfArg.literal([
               for (final e in trafficSource) e.encode(),
             ]),
           if (warmPool != null) 'warm_pool': TfArg.literal(warmPool.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingGroup>`.
  RefTo<AwsAutoscalingGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `predicted_capacity` attribute.
  TfRef<num> get predictedCapacity =>
      TfRef.attribute<num>(this, 'predicted_capacity');

  /// Reference to `warm_pool_size` attribute.
  TfRef<num> get warmPoolSize => TfRef.attribute<num>(this, 'warm_pool_size');
}
