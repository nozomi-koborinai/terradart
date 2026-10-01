// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_autoscaling_group`.
const Set<String> _awsAutoscalingGroupSensitive = <String>{};

/// Autoscaling Group Desired Capacity enum for `desired_capacity_type`.
extension type const AutoscalingGroupDesiredCapacityType._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupDesiredCapacityType.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupDesiredCapacityType.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupDesiredCapacityType.arg(TfArg<String> arg)
    : this._(arg);

  static const memoryMib = AutoscalingGroupDesiredCapacityType._(
    TfArgLiteral('memory-mib'),
  );
  static const units = AutoscalingGroupDesiredCapacityType._(
    TfArgLiteral('units'),
  );
  static const vcpu = AutoscalingGroupDesiredCapacityType._(
    TfArgLiteral('vcpu'),
  );

  static const List<AutoscalingGroupDesiredCapacityType> values = [
    memoryMib,
    units,
    vcpu,
  ];
}

/// Exactly one of `launch_configuration`, `launch_template`, `mixed_instances_policy` on `aws_autoscaling_group`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.launchConfiguration(...)`.
sealed class AutoscalingGroupInstanceSource {
  const AutoscalingGroupInstanceSource();

  /// Sets `launch_configuration`.
  const factory AutoscalingGroupInstanceSource.launchConfiguration(
    TfArg<String> launchConfiguration,
  ) = AutoscalingGroupInstanceSourceLaunchConfiguration;

  /// Sets `launch_template`.
  const factory AutoscalingGroupInstanceSource.launchTemplate(
    AutoscalingGroupLaunchTemplate launchTemplate,
  ) = AutoscalingGroupInstanceSourceLaunchTemplate;

  /// Sets `mixed_instances_policy`.
  const factory AutoscalingGroupInstanceSource.mixedInstancesPolicy(
    AutoscalingGroupMixedInstancesPolicy mixedInstancesPolicy,
  ) = AutoscalingGroupInstanceSourceMixedInstancesPolicy;

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

/// The [AutoscalingGroupInstanceSource.launchConfiguration] choice: sets `launch_configuration`.
final class AutoscalingGroupInstanceSourceLaunchConfiguration
    extends AutoscalingGroupInstanceSource {
  const AutoscalingGroupInstanceSourceLaunchConfiguration(
    this.launchConfiguration,
  );

  final TfArg<String> launchConfiguration;

  @internal
  @override
  String get blockKey => 'launch_configuration';

  @internal
  @override
  Map<String, Object?> encode() => {
    'launch_configuration': launchConfiguration.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'launch_configuration': launchConfiguration,
  };
}

/// The [AutoscalingGroupInstanceSource.launchTemplate] choice: sets `launch_template`.
final class AutoscalingGroupInstanceSourceLaunchTemplate
    extends AutoscalingGroupInstanceSource {
  const AutoscalingGroupInstanceSourceLaunchTemplate(this.launchTemplate);

  final AutoscalingGroupLaunchTemplate launchTemplate;

  @internal
  @override
  String get blockKey => 'launch_template';

  @internal
  @override
  Map<String, Object?> encode() => {'launch_template': launchTemplate.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'launch_template': TfArg.literal(launchTemplate.encode()),
  };
}

/// The [AutoscalingGroupInstanceSource.mixedInstancesPolicy] choice: sets `mixed_instances_policy`.
final class AutoscalingGroupInstanceSourceMixedInstancesPolicy
    extends AutoscalingGroupInstanceSource {
  const AutoscalingGroupInstanceSourceMixedInstancesPolicy(
    this.mixedInstancesPolicy,
  );

  final AutoscalingGroupMixedInstancesPolicy mixedInstancesPolicy;

  @internal
  @override
  String get blockKey => 'mixed_instances_policy';

  @internal
  @override
  Map<String, Object?> encode() => {
    'mixed_instances_policy': mixedInstancesPolicy.encode(),
  };

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AutoscalingGroupPlacement.availabilityZones] choice: sets `availability_zones`.
final class AutoscalingGroupPlacementAvailabilityZones
    extends AutoscalingGroupPlacement {
  const AutoscalingGroupPlacementAvailabilityZones(this.availabilityZones);

  final TfArg<List<String>> availabilityZones;

  @internal
  @override
  String get blockKey => 'availability_zones';

  @internal
  @override
  Map<String, Object?> encode() => {
    'availability_zones': availabilityZones.toTfJson(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'vpc_zone_identifier';

  @internal
  @override
  Map<String, Object?> encode() => {
    'vpc_zone_identifier': vpcZoneIdentifier.toTfJson(),
  };

  @internal
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
      AutoscalingGroupNameChoice;

  /// Sets `name_prefix`.
  const factory AutoscalingGroupName.namePrefix(TfArg<String> namePrefix) =
      AutoscalingGroupNamePrefix;

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

/// The [AutoscalingGroupName.name] choice: sets `name`.
final class AutoscalingGroupNameChoice extends AutoscalingGroupName {
  const AutoscalingGroupNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [AutoscalingGroupName.namePrefix] choice: sets `name_prefix`.
final class AutoscalingGroupNamePrefix extends AutoscalingGroupName {
  const AutoscalingGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
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

  final AutoscalingGroupCapacityDistributionStrategy?
  capacityDistributionStrategy;

  @internal
  Map<String, Object?> encode() => {
    'capacity_distribution_strategy': ?capacityDistributionStrategy?.toTfJson(),
  };
}

/// `capacity_distribution_strategy` — derived from the provider schema description.
extension type const AutoscalingGroupCapacityDistributionStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingGroupCapacityDistributionStrategy.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupCapacityDistributionStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupCapacityDistributionStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const balancedOnly = AutoscalingGroupCapacityDistributionStrategy._(
    TfArgLiteral('balanced-only'),
  );
  static const balancedBestEffort =
      AutoscalingGroupCapacityDistributionStrategy._(
        TfArgLiteral('balanced-best-effort'),
      );
  static const reservationsThenBalanced =
      AutoscalingGroupCapacityDistributionStrategy._(
        TfArgLiteral('reservations-then-balanced'),
      );

  static const List<AutoscalingGroupCapacityDistributionStrategy> values = [
    balancedOnly,
    balancedBestEffort,
    reservationsThenBalanced,
  ];
}

/// Typed helper for the `capacity_reservation_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupCapacityReservationSpecification {
  const AutoscalingGroupCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  final AutoscalingGroupCapacityReservationPreference?
  capacityReservationPreference;

  final AutoscalingGroupCapacityReservationTarget? capacityReservationTarget;

  @internal
  Map<String, Object?> encode() => {
    'capacity_reservation_preference': ?capacityReservationPreference
        ?.toTfJson(),
    'capacity_reservation_target': ?capacityReservationTarget?.encode(),
  };
}

/// `capacity_reservation_preference` — derived from the provider schema description.
extension type const AutoscalingGroupCapacityReservationPreference._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingGroupCapacityReservationPreference.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupCapacityReservationPreference.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupCapacityReservationPreference.arg(TfArg<String> arg)
    : this._(arg);

  static const capacityReservationsOnly =
      AutoscalingGroupCapacityReservationPreference._(
        TfArgLiteral('capacity-reservations-only'),
      );
  static const capacityReservationsFirst =
      AutoscalingGroupCapacityReservationPreference._(
        TfArgLiteral('capacity-reservations-first'),
      );
  static const none = AutoscalingGroupCapacityReservationPreference._(
    TfArgLiteral('none'),
  );
  static const defaultCase = AutoscalingGroupCapacityReservationPreference._(
    TfArgLiteral('default'),
  );

  static const List<AutoscalingGroupCapacityReservationPreference> values = [
    capacityReservationsOnly,
    capacityReservationsFirst,
    none,
    defaultCase,
  ];
}

/// At most one of `capacity_reservation_ids`, `capacity_reservation_resource_group_arns` on the `capacity_reservation_specification.capacity_reservation_target` block of `aws_autoscaling_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.capacityReservationIds(...)`.
sealed class AutoscalingGroupCapacityReservationTarget {
  const AutoscalingGroupCapacityReservationTarget();

  /// Sets `capacity_reservation_ids`.
  const factory AutoscalingGroupCapacityReservationTarget.capacityReservationIds(
    TfArg<List<String>> capacityReservationIds,
  ) = AutoscalingGroupCapacityReservationTargetCapacityReservationIds;

  /// Sets `capacity_reservation_resource_group_arns`.
  const factory AutoscalingGroupCapacityReservationTarget.capacityReservationResourceGroupArns(
    TfArg<List<String>> capacityReservationResourceGroupArns,
  ) = AutoscalingGroupCapacityReservationTargetCapacityReservationResourceGroupArns;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AutoscalingGroupCapacityReservationTarget.capacityReservationIds] choice: sets `capacity_reservation_ids`.
final class AutoscalingGroupCapacityReservationTargetCapacityReservationIds
    extends AutoscalingGroupCapacityReservationTarget {
  const AutoscalingGroupCapacityReservationTargetCapacityReservationIds(
    this.capacityReservationIds,
  );

  final TfArg<List<String>> capacityReservationIds;

  @internal
  @override
  String get blockKey => 'capacity_reservation_ids';

  @internal
  @override
  Map<String, Object?> encode() => {
    'capacity_reservation_ids': capacityReservationIds.toTfJson(),
  };
}

/// The [AutoscalingGroupCapacityReservationTarget.capacityReservationResourceGroupArns] choice: sets `capacity_reservation_resource_group_arns`.
final class AutoscalingGroupCapacityReservationTargetCapacityReservationResourceGroupArns
    extends AutoscalingGroupCapacityReservationTarget {
  const AutoscalingGroupCapacityReservationTargetCapacityReservationResourceGroupArns(
    this.capacityReservationResourceGroupArns,
  );

  final TfArg<List<String>> capacityReservationResourceGroupArns;

  @internal
  @override
  String get blockKey => 'capacity_reservation_resource_group_arns';

  @internal
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

  final AutoscalingGroupDefaultResult? defaultResult;

  final TfArg<num>? heartbeatTimeout;

  final AutoscalingGroupLifecycleTransition lifecycleTransition;

  final TfArg<String> name;

  final TfArg<String>? notificationMetadata;

  final TfArg<String>? notificationTargetArn;

  final RefTo<AwsIamRole>? roleArn;

  @internal
  Map<String, Object?> encode() => {
    'default_result': ?defaultResult?.toTfJson(),
    'heartbeat_timeout': ?heartbeatTimeout?.toTfJson(),
    'lifecycle_transition': lifecycleTransition.toTfJson(),
    'name': name.toTfJson(),
    'notification_metadata': ?notificationMetadata?.toTfJson(),
    'notification_target_arn': ?notificationTargetArn?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
  };
}

/// `default_result` — derived from the provider schema description.
extension type const AutoscalingGroupDefaultResult._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupDefaultResult.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupDefaultResult.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupDefaultResult.arg(TfArg<String> arg) : this._(arg);

  static const abandon = AutoscalingGroupDefaultResult._(
    TfArgLiteral('ABANDON'),
  );
  static const continueCase = AutoscalingGroupDefaultResult._(
    TfArgLiteral('CONTINUE'),
  );

  static const List<AutoscalingGroupDefaultResult> values = [
    abandon,
    continueCase,
  ];
}

/// `lifecycle_transition` — derived from the provider schema description.
extension type const AutoscalingGroupLifecycleTransition._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupLifecycleTransition.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupLifecycleTransition.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupLifecycleTransition.arg(TfArg<String> arg)
    : this._(arg);

  static const autoscalingEc2InstanceLaunching =
      AutoscalingGroupLifecycleTransition._(
        TfArgLiteral('autoscaling:EC2_INSTANCE_LAUNCHING'),
      );
  static const autoscalingEc2InstanceTerminating =
      AutoscalingGroupLifecycleTransition._(
        TfArgLiteral('autoscaling:EC2_INSTANCE_TERMINATING'),
      );

  static const List<AutoscalingGroupLifecycleTransition> values = [
    autoscalingEc2InstanceLaunching,
    autoscalingEc2InstanceTerminating,
  ];
}

/// Typed helper for the `instance_lifecycle_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceLifecyclePolicy {
  const AutoscalingGroupInstanceLifecyclePolicy({this.retentionTriggers});

  final AutoscalingGroupRetentionTriggers? retentionTriggers;

  @internal
  Map<String, Object?> encode() => {
    'retention_triggers': ?retentionTriggers?.encode(),
  };
}

/// Typed helper for the `instance_lifecycle_policy.retention_triggers` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupRetentionTriggers {
  const AutoscalingGroupRetentionTriggers({this.terminateHookAbandon});

  final AutoscalingGroupTerminateHookAbandon? terminateHookAbandon;

  @internal
  Map<String, Object?> encode() => {
    'terminate_hook_abandon': ?terminateHookAbandon?.toTfJson(),
  };
}

/// `terminate_hook_abandon` — derived from the provider schema description.
extension type const AutoscalingGroupTerminateHookAbandon._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupTerminateHookAbandon.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupTerminateHookAbandon.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupTerminateHookAbandon.arg(TfArg<String> arg)
    : this._(arg);

  static const retain = AutoscalingGroupTerminateHookAbandon._(
    TfArgLiteral('retain'),
  );
  static const terminate = AutoscalingGroupTerminateHookAbandon._(
    TfArgLiteral('terminate'),
  );

  static const List<AutoscalingGroupTerminateHookAbandon> values = [
    retain,
    terminate,
  ];
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

  @internal
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

  final AutoscalingGroupStrategy strategy;

  final TfArg<List<String>>? triggers;

  final AutoscalingGroupPreferences? preferences;

  @internal
  Map<String, Object?> encode() => {
    'strategy': strategy.toTfJson(),
    'triggers': ?triggers?.toTfJson(),
    'preferences': ?preferences?.encode(),
  };
}

/// `strategy` — derived from the provider schema description.
extension type const AutoscalingGroupStrategy._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupStrategy.variable(String name) : this._(TfArg.variable(name));
  AutoscalingGroupStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupStrategy.arg(TfArg<String> arg) : this._(arg);

  static const rolling = AutoscalingGroupStrategy._(TfArgLiteral('Rolling'));
  static const replacerootvolume = AutoscalingGroupStrategy._(
    TfArgLiteral('ReplaceRootVolume'),
  );

  static const List<AutoscalingGroupStrategy> values = [
    rolling,
    replacerootvolume,
  ];
}

/// Typed helper for the `instance_refresh.preferences` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupPreferences {
  const AutoscalingGroupPreferences({
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

  final TfArg<List<num>>? checkpointPercentages;

  final TfArg<String>? instanceWarmup;

  final TfArg<num>? maxHealthyPercentage;

  final TfArg<num>? minHealthyPercentage;

  final AutoscalingGroupScaleInProtectedInstances? scaleInProtectedInstances;

  final TfArg<bool>? skipMatching;

  final AutoscalingGroupStandbyInstances? standbyInstances;

  final AutoscalingGroupAlarmSpecification? alarmSpecification;

  @internal
  Map<String, Object?> encode() => {
    'auto_rollback': ?autoRollback?.toTfJson(),
    'checkpoint_delay': ?checkpointDelay?.toTfJson(),
    'checkpoint_percentages': ?checkpointPercentages?.toTfJson(),
    'instance_warmup': ?instanceWarmup?.toTfJson(),
    'max_healthy_percentage': ?maxHealthyPercentage?.toTfJson(),
    'min_healthy_percentage': ?minHealthyPercentage?.toTfJson(),
    'scale_in_protected_instances': ?scaleInProtectedInstances?.toTfJson(),
    'skip_matching': ?skipMatching?.toTfJson(),
    'standby_instances': ?standbyInstances?.toTfJson(),
    'alarm_specification': ?alarmSpecification?.encode(),
  };
}

/// `scale_in_protected_instances` — derived from the provider schema description.
extension type const AutoscalingGroupScaleInProtectedInstances._(
  TfArg<String> _
) implements TfArg<String> {
  AutoscalingGroupScaleInProtectedInstances.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupScaleInProtectedInstances.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupScaleInProtectedInstances.arg(TfArg<String> arg)
    : this._(arg);

  static const refresh = AutoscalingGroupScaleInProtectedInstances._(
    TfArgLiteral('Refresh'),
  );
  static const ignore = AutoscalingGroupScaleInProtectedInstances._(
    TfArgLiteral('Ignore'),
  );
  static const wait = AutoscalingGroupScaleInProtectedInstances._(
    TfArgLiteral('Wait'),
  );

  static const List<AutoscalingGroupScaleInProtectedInstances> values = [
    refresh,
    ignore,
    wait,
  ];
}

/// `standby_instances` — derived from the provider schema description.
extension type const AutoscalingGroupStandbyInstances._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupStandbyInstances.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupStandbyInstances.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupStandbyInstances.arg(TfArg<String> arg) : this._(arg);

  static const terminate = AutoscalingGroupStandbyInstances._(
    TfArgLiteral('Terminate'),
  );
  static const ignore = AutoscalingGroupStandbyInstances._(
    TfArgLiteral('Ignore'),
  );
  static const wait = AutoscalingGroupStandbyInstances._(TfArgLiteral('Wait'));

  static const List<AutoscalingGroupStandbyInstances> values = [
    terminate,
    ignore,
    wait,
  ];
}

/// Typed helper for the `instance_refresh.preferences.alarm_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupAlarmSpecification {
  const AutoscalingGroupAlarmSpecification({this.alarms});

  final TfArg<List<String>>? alarms;

  @internal
  Map<String, Object?> encode() => {'alarms': ?alarms?.toTfJson()};
}

/// Typed helper for the `launch_template` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupLaunchTemplate {
  const AutoscalingGroupLaunchTemplate({this.identifier, this.version});

  final AutoscalingGroupIdentifier? identifier;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    ...?identifier?.encode(),
    'version': ?version?.toTfJson(),
  };
}

/// At most one of `id`, `name` on the `launch_template` block of `aws_autoscaling_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.id(...)`.
sealed class AutoscalingGroupIdentifier {
  const AutoscalingGroupIdentifier();

  /// Sets `id`.
  const factory AutoscalingGroupIdentifier.id(TfArg<String> id) =
      AutoscalingGroupIdentifierId;

  /// Sets `name`.
  const factory AutoscalingGroupIdentifier.name(TfArg<String> name) =
      AutoscalingGroupIdentifierName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AutoscalingGroupIdentifier.id] choice: sets `id`.
final class AutoscalingGroupIdentifierId extends AutoscalingGroupIdentifier {
  const AutoscalingGroupIdentifierId(this.id);

  final TfArg<String> id;

  @internal
  @override
  String get blockKey => 'id';

  @internal
  @override
  Map<String, Object?> encode() => {'id': id.toTfJson()};
}

/// The [AutoscalingGroupIdentifier.name] choice: sets `name`.
final class AutoscalingGroupIdentifierName extends AutoscalingGroupIdentifier {
  const AutoscalingGroupIdentifierName(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
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

  final AutoscalingGroupInstancesDistribution? instancesDistribution;

  final AutoscalingGroupMixedInstancesPolicyLaunchTemplate launchTemplate;

  @internal
  Map<String, Object?> encode() => {
    'instances_distribution': ?instancesDistribution?.encode(),
    'launch_template': launchTemplate.encode(),
  };
}

/// Typed helper for the `mixed_instances_policy.instances_distribution` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstancesDistribution {
  const AutoscalingGroupInstancesDistribution({
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

  @internal
  Map<String, Object?> encode() => {
    'on_demand_allocation_strategy': ?onDemandAllocationStrategy?.toTfJson(),
    'on_demand_base_capacity': ?onDemandBaseCapacity?.toTfJson(),
    'on_demand_percentage_above_base_capacity':
        ?onDemandPercentageAboveBaseCapacity?.toTfJson(),
    'spot_allocation_strategy': ?spotAllocationStrategy?.toTfJson(),
    'spot_instance_pools': ?spotInstancePools?.toTfJson(),
    'spot_max_price': ?spotMaxPrice?.toTfJson(),
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

  final AutoscalingGroupLaunchTemplateSpecification launchTemplateSpecification;

  final List<AutoscalingGroupOverride>? override;

  @internal
  Map<String, Object?> encode() => {
    'launch_template_specification': launchTemplateSpecification.encode(),
    if (override != null) 'override': [for (final e in override!) e.encode()],
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.launch_template_specification` block of
/// `aws_autoscaling_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AutoscalingGroupLaunchTemplateSpecification {
  const AutoscalingGroupLaunchTemplateSpecification({
    this.launchTemplateId,
    this.launchTemplateName,
    this.version,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String>? version;

  @internal
  Map<String, Object?> encode() => {
    'launch_template_id': ?launchTemplateId?.toTfJson(),
    'launch_template_name': ?launchTemplateName?.toTfJson(),
    'version': ?version?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupOverride {
  const AutoscalingGroupOverride({
    this.instanceType,
    this.weightedCapacity,
    this.instanceRequirements,
    this.launchTemplateSpecification,
  });

  final TfArg<String>? instanceType;

  final TfArg<String>? weightedCapacity;

  final AutoscalingGroupInstanceRequirements? instanceRequirements;

  final AutoscalingGroupLaunchTemplateSpecification?
  launchTemplateSpecification;

  @internal
  Map<String, Object?> encode() => {
    'instance_type': ?instanceType?.toTfJson(),
    'weighted_capacity': ?weightedCapacity?.toTfJson(),
    'instance_requirements': ?instanceRequirements?.encode(),
    'launch_template_specification': ?launchTemplateSpecification?.encode(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceRequirements {
  const AutoscalingGroupInstanceRequirements({
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

  final List<AutoscalingGroupAcceleratorManufacturers>?
  acceleratorManufacturers;

  final List<AutoscalingGroupAcceleratorNames>? acceleratorNames;

  final List<AutoscalingGroupAcceleratorTypes>? acceleratorTypes;

  final TfArg<List<String>>? allowedInstanceTypes;

  final AutoscalingGroupBareMetal? bareMetal;

  final AutoscalingGroupBurstablePerformance? burstablePerformance;

  final List<AutoscalingGroupCpuManufacturers>? cpuManufacturers;

  final TfArg<List<String>>? excludedInstanceTypes;

  final List<AutoscalingGroupInstanceGenerations>? instanceGenerations;

  final AutoscalingGroupLocalStorage? localStorage;

  final List<AutoscalingGroupLocalStorageTypes>? localStorageTypes;

  final TfArg<num>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  final TfArg<num>? onDemandMaxPricePercentageOverLowestPrice;

  final TfArg<bool>? requireHibernateSupport;

  final TfArg<num>? spotMaxPricePercentageOverLowestPrice;

  final AutoscalingGroupAcceleratorCount? acceleratorCount;

  final AutoscalingGroupAcceleratorTotalMemoryMib? acceleratorTotalMemoryMib;

  final AutoscalingGroupBaselineEbsBandwidthMbps? baselineEbsBandwidthMbps;

  final AutoscalingGroupMemoryGibPerVcpu? memoryGibPerVcpu;

  final AutoscalingGroupMemoryMib? memoryMib;

  final AutoscalingGroupNetworkBandwidthGbps? networkBandwidthGbps;

  final AutoscalingGroupNetworkInterfaceCount? networkInterfaceCount;

  final AutoscalingGroupTotalLocalStorageGb? totalLocalStorageGb;

  final AutoscalingGroupVcpuCount? vcpuCount;

  @internal
  Map<String, Object?> encode() => {
    if (acceleratorManufacturers != null)
      'accelerator_manufacturers': [
        for (final e in acceleratorManufacturers!) e.toTfJson(),
      ],
    if (acceleratorNames != null)
      'accelerator_names': [for (final e in acceleratorNames!) e.toTfJson()],
    if (acceleratorTypes != null)
      'accelerator_types': [for (final e in acceleratorTypes!) e.toTfJson()],
    'allowed_instance_types': ?allowedInstanceTypes?.toTfJson(),
    'bare_metal': ?bareMetal?.toTfJson(),
    'burstable_performance': ?burstablePerformance?.toTfJson(),
    if (cpuManufacturers != null)
      'cpu_manufacturers': [for (final e in cpuManufacturers!) e.toTfJson()],
    'excluded_instance_types': ?excludedInstanceTypes?.toTfJson(),
    if (instanceGenerations != null)
      'instance_generations': [
        for (final e in instanceGenerations!) e.toTfJson(),
      ],
    'local_storage': ?localStorage?.toTfJson(),
    if (localStorageTypes != null)
      'local_storage_types': [for (final e in localStorageTypes!) e.toTfJson()],
    'max_spot_price_as_percentage_of_optimal_on_demand_price':
        ?maxSpotPriceAsPercentageOfOptimalOnDemandPrice?.toTfJson(),
    'on_demand_max_price_percentage_over_lowest_price':
        ?onDemandMaxPricePercentageOverLowestPrice?.toTfJson(),
    'require_hibernate_support': ?requireHibernateSupport?.toTfJson(),
    'spot_max_price_percentage_over_lowest_price':
        ?spotMaxPricePercentageOverLowestPrice?.toTfJson(),
    'accelerator_count': ?acceleratorCount?.encode(),
    'accelerator_total_memory_mib': ?acceleratorTotalMemoryMib?.encode(),
    'baseline_ebs_bandwidth_mbps': ?baselineEbsBandwidthMbps?.encode(),
    'memory_gib_per_vcpu': ?memoryGibPerVcpu?.encode(),
    'memory_mib': ?memoryMib?.encode(),
    'network_bandwidth_gbps': ?networkBandwidthGbps?.encode(),
    'network_interface_count': ?networkInterfaceCount?.encode(),
    'total_local_storage_gb': ?totalLocalStorageGb?.encode(),
    'vcpu_count': ?vcpuCount?.encode(),
  };
}

/// `accelerator_manufacturers` — derived from the provider schema description.
extension type const AutoscalingGroupAcceleratorManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupAcceleratorManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupAcceleratorManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupAcceleratorManufacturers.arg(TfArg<String> arg)
    : this._(arg);

  static const nvidia = AutoscalingGroupAcceleratorManufacturers._(
    TfArgLiteral('nvidia'),
  );
  static const amd = AutoscalingGroupAcceleratorManufacturers._(
    TfArgLiteral('amd'),
  );
  static const amazonWebServices = AutoscalingGroupAcceleratorManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );
  static const xilinx = AutoscalingGroupAcceleratorManufacturers._(
    TfArgLiteral('xilinx'),
  );

  static const List<AutoscalingGroupAcceleratorManufacturers> values = [
    nvidia,
    amd,
    amazonWebServices,
    xilinx,
  ];
}

/// `accelerator_names` — derived from the provider schema description.
extension type const AutoscalingGroupAcceleratorNames._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupAcceleratorNames.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupAcceleratorNames.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupAcceleratorNames.arg(TfArg<String> arg) : this._(arg);

  static const a100 = AutoscalingGroupAcceleratorNames._(TfArgLiteral('a100'));
  static const v100 = AutoscalingGroupAcceleratorNames._(TfArgLiteral('v100'));
  static const k80 = AutoscalingGroupAcceleratorNames._(TfArgLiteral('k80'));
  static const t4 = AutoscalingGroupAcceleratorNames._(TfArgLiteral('t4'));
  static const m60 = AutoscalingGroupAcceleratorNames._(TfArgLiteral('m60'));
  static const radeonProV520 = AutoscalingGroupAcceleratorNames._(
    TfArgLiteral('radeon-pro-v520'),
  );
  static const vu9p = AutoscalingGroupAcceleratorNames._(TfArgLiteral('vu9p'));

  static const List<AutoscalingGroupAcceleratorNames> values = [
    a100,
    v100,
    k80,
    t4,
    m60,
    radeonProV520,
    vu9p,
  ];
}

/// `accelerator_types` — derived from the provider schema description.
extension type const AutoscalingGroupAcceleratorTypes._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupAcceleratorTypes.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupAcceleratorTypes.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupAcceleratorTypes.arg(TfArg<String> arg) : this._(arg);

  static const gpu = AutoscalingGroupAcceleratorTypes._(TfArgLiteral('gpu'));
  static const fpga = AutoscalingGroupAcceleratorTypes._(TfArgLiteral('fpga'));
  static const inference = AutoscalingGroupAcceleratorTypes._(
    TfArgLiteral('inference'),
  );

  static const List<AutoscalingGroupAcceleratorTypes> values = [
    gpu,
    fpga,
    inference,
  ];
}

/// `bare_metal` — derived from the provider schema description.
extension type const AutoscalingGroupBareMetal._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupBareMetal.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupBareMetal.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupBareMetal.arg(TfArg<String> arg) : this._(arg);

  static const included = AutoscalingGroupBareMetal._(TfArgLiteral('included'));
  static const excluded = AutoscalingGroupBareMetal._(TfArgLiteral('excluded'));
  static const required = AutoscalingGroupBareMetal._(TfArgLiteral('required'));

  static const List<AutoscalingGroupBareMetal> values = [
    included,
    excluded,
    required,
  ];
}

/// `burstable_performance` — derived from the provider schema description.
extension type const AutoscalingGroupBurstablePerformance._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupBurstablePerformance.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupBurstablePerformance.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupBurstablePerformance.arg(TfArg<String> arg)
    : this._(arg);

  static const included = AutoscalingGroupBurstablePerformance._(
    TfArgLiteral('included'),
  );
  static const excluded = AutoscalingGroupBurstablePerformance._(
    TfArgLiteral('excluded'),
  );
  static const required = AutoscalingGroupBurstablePerformance._(
    TfArgLiteral('required'),
  );

  static const List<AutoscalingGroupBurstablePerformance> values = [
    included,
    excluded,
    required,
  ];
}

/// `cpu_manufacturers` — derived from the provider schema description.
extension type const AutoscalingGroupCpuManufacturers._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupCpuManufacturers.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupCpuManufacturers.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupCpuManufacturers.arg(TfArg<String> arg) : this._(arg);

  static const intel = AutoscalingGroupCpuManufacturers._(
    TfArgLiteral('intel'),
  );
  static const amd = AutoscalingGroupCpuManufacturers._(TfArgLiteral('amd'));
  static const amazonWebServices = AutoscalingGroupCpuManufacturers._(
    TfArgLiteral('amazon-web-services'),
  );
  static const apple = AutoscalingGroupCpuManufacturers._(
    TfArgLiteral('apple'),
  );

  static const List<AutoscalingGroupCpuManufacturers> values = [
    intel,
    amd,
    amazonWebServices,
    apple,
  ];
}

/// `instance_generations` — derived from the provider schema description.
extension type const AutoscalingGroupInstanceGenerations._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupInstanceGenerations.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupInstanceGenerations.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupInstanceGenerations.arg(TfArg<String> arg)
    : this._(arg);

  static const current = AutoscalingGroupInstanceGenerations._(
    TfArgLiteral('current'),
  );
  static const previous = AutoscalingGroupInstanceGenerations._(
    TfArgLiteral('previous'),
  );

  static const List<AutoscalingGroupInstanceGenerations> values = [
    current,
    previous,
  ];
}

/// `local_storage` — derived from the provider schema description.
extension type const AutoscalingGroupLocalStorage._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupLocalStorage.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupLocalStorage.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupLocalStorage.arg(TfArg<String> arg) : this._(arg);

  static const included = AutoscalingGroupLocalStorage._(
    TfArgLiteral('included'),
  );
  static const excluded = AutoscalingGroupLocalStorage._(
    TfArgLiteral('excluded'),
  );
  static const required = AutoscalingGroupLocalStorage._(
    TfArgLiteral('required'),
  );

  static const List<AutoscalingGroupLocalStorage> values = [
    included,
    excluded,
    required,
  ];
}

/// `local_storage_types` — derived from the provider schema description.
extension type const AutoscalingGroupLocalStorageTypes._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupLocalStorageTypes.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupLocalStorageTypes.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupLocalStorageTypes.arg(TfArg<String> arg) : this._(arg);

  static const hdd = AutoscalingGroupLocalStorageTypes._(TfArgLiteral('hdd'));
  static const ssd = AutoscalingGroupLocalStorageTypes._(TfArgLiteral('ssd'));

  static const List<AutoscalingGroupLocalStorageTypes> values = [hdd, ssd];
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.accelerator_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupAcceleratorCount {
  const AutoscalingGroupAcceleratorCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.accelerator_total_memory_mib` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupAcceleratorTotalMemoryMib {
  const AutoscalingGroupAcceleratorTotalMemoryMib({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.baseline_ebs_bandwidth_mbps` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupBaselineEbsBandwidthMbps {
  const AutoscalingGroupBaselineEbsBandwidthMbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.memory_gib_per_vcpu` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMemoryGibPerVcpu {
  const AutoscalingGroupMemoryGibPerVcpu({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.memory_mib` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupMemoryMib {
  const AutoscalingGroupMemoryMib({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.network_bandwidth_gbps` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupNetworkBandwidthGbps {
  const AutoscalingGroupNetworkBandwidthGbps({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.network_interface_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupNetworkInterfaceCount {
  const AutoscalingGroupNetworkInterfaceCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.total_local_storage_gb` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupTotalLocalStorageGb {
  const AutoscalingGroupTotalLocalStorageGb({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
  };
}

/// Typed helper for the `mixed_instances_policy.launch_template.override.instance_requirements.vcpu_count` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupVcpuCount {
  const AutoscalingGroupVcpuCount({this.max, this.min});

  final TfArg<num>? max;

  final TfArg<num>? min;

  @internal
  Map<String, Object?> encode() => {
    'max': ?max?.toTfJson(),
    'min': ?min?.toTfJson(),
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': ?type?.toTfJson(),
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

  final AutoscalingGroupPoolState? poolState;

  final AutoscalingGroupInstanceReusePolicy? instanceReusePolicy;

  @internal
  Map<String, Object?> encode() => {
    'max_group_prepared_capacity': ?maxGroupPreparedCapacity?.toTfJson(),
    'min_size': ?minSize?.toTfJson(),
    'pool_state': ?poolState?.toTfJson(),
    'instance_reuse_policy': ?instanceReusePolicy?.encode(),
  };
}

/// `pool_state` — derived from the provider schema description.
extension type const AutoscalingGroupPoolState._(TfArg<String> _)
    implements TfArg<String> {
  AutoscalingGroupPoolState.variable(String name)
    : this._(TfArg.variable(name));
  AutoscalingGroupPoolState.expression(String template)
    : this._(TfArg.expression(template));
  const AutoscalingGroupPoolState.arg(TfArg<String> arg) : this._(arg);

  static const stopped = AutoscalingGroupPoolState._(TfArgLiteral('Stopped'));
  static const running = AutoscalingGroupPoolState._(TfArgLiteral('Running'));
  static const hibernated = AutoscalingGroupPoolState._(
    TfArgLiteral('Hibernated'),
  );

  static const List<AutoscalingGroupPoolState> values = [
    stopped,
    running,
    hibernated,
  ];
}

/// Typed helper for the `warm_pool.instance_reuse_policy` block of
/// `aws_autoscaling_group` (derived from provider schema).
@immutable
final class AutoscalingGroupInstanceReusePolicy {
  const AutoscalingGroupInstanceReusePolicy({this.reuseOnScaleIn});

  final TfArg<bool>? reuseOnScaleIn;

  @internal
  Map<String, Object?> encode() => {
    'reuse_on_scale_in': ?reuseOnScaleIn?.toTfJson(),
  };
}

/// Factory wrapper for `aws_autoscaling_group`.
final class AwsAutoscalingGroup extends Resource {
  static const String tfType = 'aws_autoscaling_group';

  AwsAutoscalingGroup(
    super.localName, {
    AutoscalingGroupPlacement? placement,
    TfArg<bool>? capacityRebalance,
    TfArg<String>? context,
    TfArg<num>? defaultCooldown,
    TfArg<num>? defaultInstanceWarmup,
    TfArg<num>? desiredCapacity,
    AutoscalingGroupDesiredCapacityType? desiredCapacityType,
    TfArg<List<String>>? enabledMetrics,
    TfArg<bool>? forceDelete,
    TfArg<bool>? forceDeleteWarmPool,
    TfArg<num>? healthCheckGracePeriod,
    TfArg<String>? healthCheckType,
    TfArg<bool>? ignoreFailedScalingActivities,
    required AutoscalingGroupInstanceSource instanceSource,
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
           'capacity_rebalance': ?capacityRebalance,
           'context': ?context,
           'default_cooldown': ?defaultCooldown,
           'default_instance_warmup': ?defaultInstanceWarmup,
           'desired_capacity': ?desiredCapacity,
           'desired_capacity_type': ?desiredCapacityType,
           'enabled_metrics': ?enabledMetrics,
           'force_delete': ?forceDelete,
           'force_delete_warm_pool': ?forceDeleteWarmPool,
           'health_check_grace_period': ?healthCheckGracePeriod,
           'health_check_type': ?healthCheckType,
           'ignore_failed_scaling_activities': ?ignoreFailedScalingActivities,
           ...instanceSource.argMap,
           'load_balancers': ?loadBalancers,
           'max_instance_lifetime': ?maxInstanceLifetime,
           'max_size': maxSize,
           'metrics_granularity': ?metricsGranularity,
           'min_elb_capacity': ?minElbCapacity,
           'min_size': minSize,
           ...?name?.argMap,
           'placement_group': ?placementGroup,
           'protect_from_scale_in': ?protectFromScaleIn,
           'region': ?region,
           'service_linked_role_arn': ?serviceLinkedRoleArn,
           'suspended_processes': ?suspendedProcesses,
           'target_group_arns': ?targetGroupArns,
           'termination_policies': ?terminationPolicies,
           'wait_for_capacity_timeout': ?waitForCapacityTimeout,
           'wait_for_elb_capacity': ?waitForElbCapacity,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `predicted_capacity` attribute.
  TfRef<num> get predictedCapacity =>
      TfRef.attribute<num>(this, 'predicted_capacity');

  /// Reference to `warm_pool_size` attribute.
  TfRef<num> get warmPoolSize => TfRef.attribute<num>(this, 'warm_pool_size');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `capacity_rebalance` attribute.
  TfRef<bool> get capacityRebalance =>
      TfRef.attribute<bool>(this, 'capacity_rebalance');

  /// Reference to `context` attribute.
  TfRef<String> get context => TfRef.attribute<String>(this, 'context');

  /// Reference to `default_cooldown` attribute.
  TfRef<num> get defaultCooldown =>
      TfRef.attribute<num>(this, 'default_cooldown');

  /// Reference to `default_instance_warmup` attribute.
  TfRef<num> get defaultInstanceWarmup =>
      TfRef.attribute<num>(this, 'default_instance_warmup');

  /// Reference to `desired_capacity` attribute.
  TfRef<num> get desiredCapacity =>
      TfRef.attribute<num>(this, 'desired_capacity');

  /// Reference to `desired_capacity_type` attribute.
  TfRef<String> get desiredCapacityType =>
      TfRef.attribute<String>(this, 'desired_capacity_type');

  /// Reference to `enabled_metrics` attribute.
  TfRef<List<String>> get enabledMetrics =>
      TfRef.attribute<List<String>>(this, 'enabled_metrics');

  /// Reference to `force_delete` attribute.
  TfRef<bool> get forceDelete => TfRef.attribute<bool>(this, 'force_delete');

  /// Reference to `force_delete_warm_pool` attribute.
  TfRef<bool> get forceDeleteWarmPool =>
      TfRef.attribute<bool>(this, 'force_delete_warm_pool');

  /// Reference to `health_check_grace_period` attribute.
  TfRef<num> get healthCheckGracePeriod =>
      TfRef.attribute<num>(this, 'health_check_grace_period');

  /// Reference to `health_check_type` attribute.
  TfRef<String> get healthCheckType =>
      TfRef.attribute<String>(this, 'health_check_type');

  /// Reference to `ignore_failed_scaling_activities` attribute.
  TfRef<bool> get ignoreFailedScalingActivities =>
      TfRef.attribute<bool>(this, 'ignore_failed_scaling_activities');

  /// Reference to `launch_configuration` attribute.
  TfRef<String> get launchConfiguration =>
      TfRef.attribute<String>(this, 'launch_configuration');

  /// Reference to `load_balancers` attribute.
  TfRef<List<String>> get loadBalancers =>
      TfRef.attribute<List<String>>(this, 'load_balancers');

  /// Reference to `max_instance_lifetime` attribute.
  TfRef<num> get maxInstanceLifetime =>
      TfRef.attribute<num>(this, 'max_instance_lifetime');

  /// Reference to `max_size` attribute.
  TfRef<num> get maxSize => TfRef.attribute<num>(this, 'max_size');

  /// Reference to `metrics_granularity` attribute.
  TfRef<String> get metricsGranularity =>
      TfRef.attribute<String>(this, 'metrics_granularity');

  /// Reference to `min_elb_capacity` attribute.
  TfRef<num> get minElbCapacity =>
      TfRef.attribute<num>(this, 'min_elb_capacity');

  /// Reference to `min_size` attribute.
  TfRef<num> get minSize => TfRef.attribute<num>(this, 'min_size');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `placement_group` attribute.
  TfRef<String> get placementGroup =>
      TfRef.attribute<String>(this, 'placement_group');

  /// Reference to `protect_from_scale_in` attribute.
  TfRef<bool> get protectFromScaleIn =>
      TfRef.attribute<bool>(this, 'protect_from_scale_in');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_linked_role_arn` attribute.
  TfRef<String> get serviceLinkedRoleArn =>
      TfRef.attribute<String>(this, 'service_linked_role_arn');

  /// Reference to `suspended_processes` attribute.
  TfRef<List<String>> get suspendedProcesses =>
      TfRef.attribute<List<String>>(this, 'suspended_processes');

  /// Reference to `target_group_arns` attribute.
  TfRef<List<String>> get targetGroupArns =>
      TfRef.attribute<List<String>>(this, 'target_group_arns');

  /// Reference to `termination_policies` attribute.
  TfRef<List<String>> get terminationPolicies =>
      TfRef.attribute<List<String>>(this, 'termination_policies');

  /// Reference to `vpc_zone_identifier` attribute.
  TfRef<List<String>> get vpcZoneIdentifier =>
      TfRef.attribute<List<String>>(this, 'vpc_zone_identifier');

  /// Reference to `wait_for_capacity_timeout` attribute.
  TfRef<String> get waitForCapacityTimeout =>
      TfRef.attribute<String>(this, 'wait_for_capacity_timeout');

  /// Reference to `wait_for_elb_capacity` attribute.
  TfRef<num> get waitForElbCapacity =>
      TfRef.attribute<num>(this, 'wait_for_elb_capacity');
}
