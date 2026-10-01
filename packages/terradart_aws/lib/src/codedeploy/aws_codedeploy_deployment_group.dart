// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_codedeploy_deployment_group`.
const Set<String> _awsCodedeployDeploymentGroupSensitive = <String>{};

/// Codedeploy Deployment Group Outdated Instances enum for `outdated_instances_strategy`.
extension type const CodedeployDeploymentGroupOutdatedInstancesStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  CodedeployDeploymentGroupOutdatedInstancesStrategy.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentGroupOutdatedInstancesStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentGroupOutdatedInstancesStrategy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const update = CodedeployDeploymentGroupOutdatedInstancesStrategy._(
    TfArgLiteral('UPDATE'),
  );
  static const ignore = CodedeployDeploymentGroupOutdatedInstancesStrategy._(
    TfArgLiteral('IGNORE'),
  );

  static const List<CodedeployDeploymentGroupOutdatedInstancesStrategy> values =
      [update, ignore];
}

/// Typed helper for the `alarm_configuration` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupAlarmConfiguration {
  const CodedeployDeploymentGroupAlarmConfiguration({
    this.alarms,
    this.enabled,
    this.ignorePollAlarmFailure,
  });

  final TfArg<List<String>>? alarms;

  final TfArg<bool>? enabled;

  final TfArg<bool>? ignorePollAlarmFailure;

  @internal
  Map<String, Object?> encode() => {
    'alarms': ?alarms?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'ignore_poll_alarm_failure': ?ignorePollAlarmFailure?.toTfJson(),
  };
}

/// Typed helper for the `auto_rollback_configuration` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupAutoRollbackConfiguration {
  const CodedeployDeploymentGroupAutoRollbackConfiguration({
    this.enabled,
    this.events,
  });

  final TfArg<bool>? enabled;

  final TfArg<List<String>>? events;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'events': ?events?.toTfJson(),
  };
}

/// Typed helper for the `blue_green_deployment_config` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupBlueGreenDeploymentConfig {
  const CodedeployDeploymentGroupBlueGreenDeploymentConfig({
    this.deploymentReadyOption,
    this.greenFleetProvisioningOption,
    this.terminateBlueInstancesOnDeploymentSuccess,
  });

  final CodedeployDeploymentGroupDeploymentReadyOption? deploymentReadyOption;

  final CodedeployDeploymentGroupGreenFleetProvisioningOption?
  greenFleetProvisioningOption;

  final CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccess?
  terminateBlueInstancesOnDeploymentSuccess;

  @internal
  Map<String, Object?> encode() => {
    'deployment_ready_option': ?deploymentReadyOption?.encode(),
    'green_fleet_provisioning_option': ?greenFleetProvisioningOption?.encode(),
    'terminate_blue_instances_on_deployment_success':
        ?terminateBlueInstancesOnDeploymentSuccess?.encode(),
  };
}

/// Typed helper for the `blue_green_deployment_config.deployment_ready_option` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupDeploymentReadyOption {
  const CodedeployDeploymentGroupDeploymentReadyOption({
    this.actionOnTimeout,
    this.waitTimeInMinutes,
  });

  final CodedeployDeploymentGroupActionOnTimeout? actionOnTimeout;

  final TfArg<num>? waitTimeInMinutes;

  @internal
  Map<String, Object?> encode() => {
    'action_on_timeout': ?actionOnTimeout?.toTfJson(),
    'wait_time_in_minutes': ?waitTimeInMinutes?.toTfJson(),
  };
}

/// `action_on_timeout` — derived from the provider schema description.
extension type const CodedeployDeploymentGroupActionOnTimeout._(TfArg<String> _)
    implements TfArg<String> {
  CodedeployDeploymentGroupActionOnTimeout.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentGroupActionOnTimeout.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentGroupActionOnTimeout.arg(TfArg<String> arg)
    : this._(arg);

  static const continueDeployment = CodedeployDeploymentGroupActionOnTimeout._(
    TfArgLiteral('CONTINUE_DEPLOYMENT'),
  );
  static const stopDeployment = CodedeployDeploymentGroupActionOnTimeout._(
    TfArgLiteral('STOP_DEPLOYMENT'),
  );

  static const List<CodedeployDeploymentGroupActionOnTimeout> values = [
    continueDeployment,
    stopDeployment,
  ];
}

/// Typed helper for the `blue_green_deployment_config.green_fleet_provisioning_option` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupGreenFleetProvisioningOption {
  const CodedeployDeploymentGroupGreenFleetProvisioningOption({this.action});

  final CodedeployDeploymentGroupGreenFleetProvisioningOptionAction? action;

  @internal
  Map<String, Object?> encode() => {'action': ?action?.toTfJson()};
}

/// `action` — derived from the provider schema description.
extension type const CodedeployDeploymentGroupGreenFleetProvisioningOptionAction._(
  TfArg<String> _
) implements TfArg<String> {
  CodedeployDeploymentGroupGreenFleetProvisioningOptionAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  CodedeployDeploymentGroupGreenFleetProvisioningOptionAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CodedeployDeploymentGroupGreenFleetProvisioningOptionAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const discoverExisting =
      CodedeployDeploymentGroupGreenFleetProvisioningOptionAction._(
        TfArgLiteral('DISCOVER_EXISTING'),
      );
  static const copyAutoScalingGroup =
      CodedeployDeploymentGroupGreenFleetProvisioningOptionAction._(
        TfArgLiteral('COPY_AUTO_SCALING_GROUP'),
      );

  static const List<CodedeployDeploymentGroupGreenFleetProvisioningOptionAction>
  values = [discoverExisting, copyAutoScalingGroup];
}

/// Typed helper for the `blue_green_deployment_config.terminate_blue_instances_on_deployment_success` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccess {
  const CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccess({
    this.action,
    this.terminationWaitTimeInMinutes,
  });

  final CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction?
  action;

  final TfArg<num>? terminationWaitTimeInMinutes;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'termination_wait_time_in_minutes': ?terminationWaitTimeInMinutes
        ?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction._(
  TfArg<String> _
) implements TfArg<String> {
  CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const terminate =
      CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction._(
        TfArgLiteral('TERMINATE'),
      );
  static const keepAlive =
      CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction._(
        TfArgLiteral('KEEP_ALIVE'),
      );

  static const List<
    CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction
  >
  values = [terminate, keepAlive];
}

/// Typed helper for the `deployment_style` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupDeploymentStyle {
  const CodedeployDeploymentGroupDeploymentStyle({
    this.deploymentOption,
    this.deploymentType,
  });

  final CodedeployDeploymentGroupDeploymentOption? deploymentOption;

  final CodedeployDeploymentGroupDeploymentType? deploymentType;

  @internal
  Map<String, Object?> encode() => {
    'deployment_option': ?deploymentOption?.toTfJson(),
    'deployment_type': ?deploymentType?.toTfJson(),
  };
}

/// `deployment_option` — derived from the provider schema description.
extension type const CodedeployDeploymentGroupDeploymentOption._(
  TfArg<String> _
) implements TfArg<String> {
  CodedeployDeploymentGroupDeploymentOption.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentGroupDeploymentOption.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentGroupDeploymentOption.arg(TfArg<String> arg)
    : this._(arg);

  static const withTrafficControl = CodedeployDeploymentGroupDeploymentOption._(
    TfArgLiteral('WITH_TRAFFIC_CONTROL'),
  );
  static const withoutTrafficControl =
      CodedeployDeploymentGroupDeploymentOption._(
        TfArgLiteral('WITHOUT_TRAFFIC_CONTROL'),
      );

  static const List<CodedeployDeploymentGroupDeploymentOption> values = [
    withTrafficControl,
    withoutTrafficControl,
  ];
}

/// `deployment_type` — derived from the provider schema description.
extension type const CodedeployDeploymentGroupDeploymentType._(TfArg<String> _)
    implements TfArg<String> {
  CodedeployDeploymentGroupDeploymentType.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentGroupDeploymentType.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentGroupDeploymentType.arg(TfArg<String> arg)
    : this._(arg);

  static const inPlace = CodedeployDeploymentGroupDeploymentType._(
    TfArgLiteral('IN_PLACE'),
  );
  static const blueGreen = CodedeployDeploymentGroupDeploymentType._(
    TfArgLiteral('BLUE_GREEN'),
  );

  static const List<CodedeployDeploymentGroupDeploymentType> values = [
    inPlace,
    blueGreen,
  ];
}

/// Typed helper for the `ec2_tag_filter` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CodedeployDeploymentGroupEc2TagFilter {
  const CodedeployDeploymentGroupEc2TagFilter({
    this.key,
    this.type,
    this.value,
  });

  final TfArg<String>? key;

  final CodedeployDeploymentGroupType? type;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CodedeployDeploymentGroupType._(TfArg<String> _)
    implements TfArg<String> {
  CodedeployDeploymentGroupType.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentGroupType.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentGroupType.arg(TfArg<String> arg) : this._(arg);

  static const keyOnly = CodedeployDeploymentGroupType._(
    TfArgLiteral('KEY_ONLY'),
  );
  static const valueOnly = CodedeployDeploymentGroupType._(
    TfArgLiteral('VALUE_ONLY'),
  );
  static const keyAndValue = CodedeployDeploymentGroupType._(
    TfArgLiteral('KEY_AND_VALUE'),
  );

  static const List<CodedeployDeploymentGroupType> values = [
    keyOnly,
    valueOnly,
    keyAndValue,
  ];
}

/// Typed helper for the `ec2_tag_set` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupEc2TagSet {
  const CodedeployDeploymentGroupEc2TagSet({this.ec2TagFilter});

  final List<CodedeployDeploymentGroupEc2TagFilter>? ec2TagFilter;

  @internal
  Map<String, Object?> encode() => {
    if (ec2TagFilter != null)
      'ec2_tag_filter': [for (final e in ec2TagFilter!) e.encode()],
  };
}

/// Typed helper for the `ecs_service` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupEcsService {
  const CodedeployDeploymentGroupEcsService({
    required this.clusterName,
    required this.serviceName,
  });

  final TfArg<String> clusterName;

  final TfArg<String> serviceName;

  @internal
  Map<String, Object?> encode() => {
    'cluster_name': clusterName.toTfJson(),
    'service_name': serviceName.toTfJson(),
  };
}

/// Typed helper for the `load_balancer_info` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupLoadBalancerInfo {
  const CodedeployDeploymentGroupLoadBalancerInfo({
    this.elbInfo,
    this.targetGroupInfo,
    this.targetGroupPairInfo,
  });

  final List<CodedeployDeploymentGroupElbInfo>? elbInfo;

  final List<CodedeployDeploymentGroupTargetGroupInfo>? targetGroupInfo;

  final CodedeployDeploymentGroupTargetGroupPairInfo? targetGroupPairInfo;

  @internal
  Map<String, Object?> encode() => {
    if (elbInfo != null) 'elb_info': [for (final e in elbInfo!) e.encode()],
    if (targetGroupInfo != null)
      'target_group_info': [for (final e in targetGroupInfo!) e.encode()],
    'target_group_pair_info': ?targetGroupPairInfo?.encode(),
  };
}

/// Typed helper for the `load_balancer_info.elb_info` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupElbInfo {
  const CodedeployDeploymentGroupElbInfo({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_info` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTargetGroupInfo {
  const CodedeployDeploymentGroupTargetGroupInfo({this.name});

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_pair_info` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTargetGroupPairInfo {
  const CodedeployDeploymentGroupTargetGroupPairInfo({
    required this.prodTrafficRoute,
    required this.targetGroup,
    this.testTrafficRoute,
  });

  final CodedeployDeploymentGroupProdTrafficRoute prodTrafficRoute;

  final List<CodedeployDeploymentGroupTargetGroup> targetGroup;

  final CodedeployDeploymentGroupTestTrafficRoute? testTrafficRoute;

  @internal
  Map<String, Object?> encode() => {
    'prod_traffic_route': prodTrafficRoute.encode(),
    'target_group': [for (final e in targetGroup) e.encode()],
    'test_traffic_route': ?testTrafficRoute?.encode(),
  };
}

/// Typed helper for the `load_balancer_info.target_group_pair_info.prod_traffic_route` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupProdTrafficRoute {
  const CodedeployDeploymentGroupProdTrafficRoute({required this.listenerArns});

  final TfArg<List<String>> listenerArns;

  @internal
  Map<String, Object?> encode() => {'listener_arns': listenerArns.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_pair_info.target_group` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTargetGroup {
  const CodedeployDeploymentGroupTargetGroup({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_pair_info.test_traffic_route` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTestTrafficRoute {
  const CodedeployDeploymentGroupTestTrafficRoute({required this.listenerArns});

  final TfArg<List<String>> listenerArns;

  @internal
  Map<String, Object?> encode() => {'listener_arns': listenerArns.toTfJson()};
}

/// Typed helper for the `on_premises_instance_tag_filter` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupOnPremisesInstanceTagFilter {
  const CodedeployDeploymentGroupOnPremisesInstanceTagFilter({
    this.key,
    this.type,
    this.value,
  });

  final TfArg<String>? key;

  final CodedeployDeploymentGroupType? type;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `trigger_configuration` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTriggerConfiguration {
  const CodedeployDeploymentGroupTriggerConfiguration({
    required this.triggerEvents,
    required this.triggerName,
    required this.triggerTargetArn,
  });

  final List<CodedeployDeploymentGroupTriggerEvents> triggerEvents;

  final TfArg<String> triggerName;

  final TfArg<String> triggerTargetArn;

  @internal
  Map<String, Object?> encode() => {
    'trigger_events': [for (final e in triggerEvents) e.toTfJson()],
    'trigger_name': triggerName.toTfJson(),
    'trigger_target_arn': triggerTargetArn.toTfJson(),
  };
}

/// `trigger_events` — derived from the provider schema description.
extension type const CodedeployDeploymentGroupTriggerEvents._(TfArg<String> _)
    implements TfArg<String> {
  CodedeployDeploymentGroupTriggerEvents.variable(String name)
    : this._(TfArg.variable(name));
  CodedeployDeploymentGroupTriggerEvents.expression(String template)
    : this._(TfArg.expression(template));
  const CodedeployDeploymentGroupTriggerEvents.arg(TfArg<String> arg)
    : this._(arg);

  static const deploymentstart = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('DeploymentStart'),
  );
  static const deploymentsuccess = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('DeploymentSuccess'),
  );
  static const deploymentfailure = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('DeploymentFailure'),
  );
  static const deploymentstop = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('DeploymentStop'),
  );
  static const deploymentrollback = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('DeploymentRollback'),
  );
  static const deploymentready = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('DeploymentReady'),
  );
  static const instancestart = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('InstanceStart'),
  );
  static const instancesuccess = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('InstanceSuccess'),
  );
  static const instancefailure = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('InstanceFailure'),
  );
  static const instanceready = CodedeployDeploymentGroupTriggerEvents._(
    TfArgLiteral('InstanceReady'),
  );

  static const List<CodedeployDeploymentGroupTriggerEvents> values = [
    deploymentstart,
    deploymentsuccess,
    deploymentfailure,
    deploymentstop,
    deploymentrollback,
    deploymentready,
    instancestart,
    instancesuccess,
    instancefailure,
    instanceready,
  ];
}

/// Factory wrapper for `aws_codedeploy_deployment_group`.
final class AwsCodedeployDeploymentGroup extends Resource {
  static const String tfType = 'aws_codedeploy_deployment_group';

  AwsCodedeployDeploymentGroup(
    super.localName, {
    required TfArg<String> appName,
    TfArg<List<String>>? autoscalingGroups,
    TfArg<String>? deploymentConfigName,
    required TfArg<String> deploymentGroupName,
    CodedeployDeploymentGroupOutdatedInstancesStrategy?
    outdatedInstancesStrategy,
    TfArg<String>? region,
    required RefTo<AwsIamRole> serviceRoleArn,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? terminationHookEnabled,
    CodedeployDeploymentGroupAlarmConfiguration? alarmConfiguration,
    CodedeployDeploymentGroupAutoRollbackConfiguration?
    autoRollbackConfiguration,
    CodedeployDeploymentGroupBlueGreenDeploymentConfig?
    blueGreenDeploymentConfig,
    CodedeployDeploymentGroupDeploymentStyle? deploymentStyle,
    List<CodedeployDeploymentGroupEc2TagFilter>? ec2TagFilter,
    List<CodedeployDeploymentGroupEc2TagSet>? ec2TagSet,
    CodedeployDeploymentGroupEcsService? ecsService,
    CodedeployDeploymentGroupLoadBalancerInfo? loadBalancerInfo,
    List<CodedeployDeploymentGroupOnPremisesInstanceTagFilter>?
    onPremisesInstanceTagFilter,
    List<CodedeployDeploymentGroupTriggerConfiguration>? triggerConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_name': appName,
           'autoscaling_groups': ?autoscalingGroups,
           'deployment_config_name': ?deploymentConfigName,
           'deployment_group_name': deploymentGroupName,
           'outdated_instances_strategy': ?outdatedInstancesStrategy,
           'region': ?region,
           'service_role_arn': serviceRoleArn.encodeAs('arn'),
           'tags': ?tags,
           'termination_hook_enabled': ?terminationHookEnabled,
           if (alarmConfiguration != null)
             'alarm_configuration': TfArg.literal(alarmConfiguration.encode()),
           if (autoRollbackConfiguration != null)
             'auto_rollback_configuration': TfArg.literal(
               autoRollbackConfiguration.encode(),
             ),
           if (blueGreenDeploymentConfig != null)
             'blue_green_deployment_config': TfArg.literal(
               blueGreenDeploymentConfig.encode(),
             ),
           if (deploymentStyle != null)
             'deployment_style': TfArg.literal(deploymentStyle.encode()),
           if (ec2TagFilter != null)
             'ec2_tag_filter': TfArg.literal([
               for (final e in ec2TagFilter) e.encode(),
             ]),
           if (ec2TagSet != null)
             'ec2_tag_set': TfArg.literal([
               for (final e in ec2TagSet) e.encode(),
             ]),
           if (ecsService != null)
             'ecs_service': TfArg.literal(ecsService.encode()),
           if (loadBalancerInfo != null)
             'load_balancer_info': TfArg.literal(loadBalancerInfo.encode()),
           if (onPremisesInstanceTagFilter != null)
             'on_premises_instance_tag_filter': TfArg.literal([
               for (final e in onPremisesInstanceTagFilter) e.encode(),
             ]),
           if (triggerConfiguration != null)
             'trigger_configuration': TfArg.literal([
               for (final e in triggerConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodedeployDeploymentGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodedeployDeploymentGroup>`.
  RefTo<AwsCodedeployDeploymentGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `compute_platform` attribute.
  TfRef<String> get computePlatform =>
      TfRef.attribute<String>(this, 'compute_platform');

  /// Reference to `deployment_group_id` attribute.
  TfRef<String> get deploymentGroupId =>
      TfRef.attribute<String>(this, 'deployment_group_id');

  /// Reference to `app_name` attribute.
  TfRef<String> get appName => TfRef.attribute<String>(this, 'app_name');

  /// Reference to `autoscaling_groups` attribute.
  TfRef<List<String>> get autoscalingGroups =>
      TfRef.attribute<List<String>>(this, 'autoscaling_groups');

  /// Reference to `deployment_config_name` attribute.
  TfRef<String> get deploymentConfigName =>
      TfRef.attribute<String>(this, 'deployment_config_name');

  /// Reference to `deployment_group_name` attribute.
  TfRef<String> get deploymentGroupName =>
      TfRef.attribute<String>(this, 'deployment_group_name');

  /// Reference to `outdated_instances_strategy` attribute.
  TfRef<String> get outdatedInstancesStrategy =>
      TfRef.attribute<String>(this, 'outdated_instances_strategy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_role_arn` attribute.
  TfRef<String> get serviceRoleArn =>
      TfRef.attribute<String>(this, 'service_role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `termination_hook_enabled` attribute.
  TfRef<bool> get terminationHookEnabled =>
      TfRef.attribute<bool>(this, 'termination_hook_enabled');
}
