// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codedeploy_deployment_group`.
const Set<String> _awsCodedeployDeploymentGroupSensitive = <String>{};

/// Typed helper for the `alarm_configuration` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupAlarmConfiguration {
  const CodedeployDeploymentGroupAlarmConfiguration({
    this.alarms,
    this.enabled,
    this.ignorePollAlarmFailure,
  });

  final TfArg<List<Object?>>? alarms;

  final TfArg<bool>? enabled;

  final TfArg<bool>? ignorePollAlarmFailure;

  Map<String, Object?> encode() => {
    if (alarms != null) 'alarms': alarms!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (ignorePollAlarmFailure != null)
      'ignore_poll_alarm_failure': ignorePollAlarmFailure!.toTfJson(),
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

  final TfArg<List<Object?>>? events;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (events != null) 'events': events!.toTfJson(),
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

  final CodedeployDeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption?
  deploymentReadyOption;

  final CodedeployDeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption?
  greenFleetProvisioningOption;

  final CodedeployDeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess?
  terminateBlueInstancesOnDeploymentSuccess;

  Map<String, Object?> encode() => {
    if (deploymentReadyOption != null)
      'deployment_ready_option': deploymentReadyOption!.encode(),
    if (greenFleetProvisioningOption != null)
      'green_fleet_provisioning_option': greenFleetProvisioningOption!.encode(),
    if (terminateBlueInstancesOnDeploymentSuccess != null)
      'terminate_blue_instances_on_deployment_success':
          terminateBlueInstancesOnDeploymentSuccess!.encode(),
  };
}

/// Typed helper for the `blue_green_deployment_config.deployment_ready_option` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption {
  const CodedeployDeploymentGroupBlueGreenDeploymentConfigDeploymentReadyOption({
    this.actionOnTimeout,
    this.waitTimeInMinutes,
  });

  final TfArg<String>? actionOnTimeout;

  final TfArg<num>? waitTimeInMinutes;

  Map<String, Object?> encode() => {
    if (actionOnTimeout != null)
      'action_on_timeout': actionOnTimeout!.toTfJson(),
    if (waitTimeInMinutes != null)
      'wait_time_in_minutes': waitTimeInMinutes!.toTfJson(),
  };
}

/// Typed helper for the `blue_green_deployment_config.green_fleet_provisioning_option` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption {
  const CodedeployDeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption({
    this.action,
  });

  final TfArg<String>? action;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
  };
}

/// Typed helper for the `blue_green_deployment_config.terminate_blue_instances_on_deployment_success` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess {
  const CodedeployDeploymentGroupBlueGreenDeploymentConfigTerminateBlueInstancesOnDeploymentSuccess({
    this.action,
    this.terminationWaitTimeInMinutes,
  });

  final TfArg<String>? action;

  final TfArg<num>? terminationWaitTimeInMinutes;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
    if (terminationWaitTimeInMinutes != null)
      'termination_wait_time_in_minutes': terminationWaitTimeInMinutes!
          .toTfJson(),
  };
}

/// Typed helper for the `deployment_style` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupDeploymentStyle {
  const CodedeployDeploymentGroupDeploymentStyle({
    this.deploymentOption,
    this.deploymentType,
  });

  final TfArg<String>? deploymentOption;

  final TfArg<String>? deploymentType;

  Map<String, Object?> encode() => {
    if (deploymentOption != null)
      'deployment_option': deploymentOption!.toTfJson(),
    if (deploymentType != null) 'deployment_type': deploymentType!.toTfJson(),
  };
}

/// Typed helper for the `ec2_tag_filter` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupEc2TagFilter {
  const CodedeployDeploymentGroupEc2TagFilter({
    this.key,
    this.type,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `ec2_tag_set` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupEc2TagSet {
  const CodedeployDeploymentGroupEc2TagSet({this.ec2TagFilter});

  final List<CodedeployDeploymentGroupEc2TagSetEc2TagFilter>? ec2TagFilter;

  Map<String, Object?> encode() => {
    if (ec2TagFilter != null)
      'ec2_tag_filter': [for (final e in ec2TagFilter!) e.encode()],
  };
}

/// Typed helper for the `ec2_tag_set.ec2_tag_filter` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupEc2TagSetEc2TagFilter {
  const CodedeployDeploymentGroupEc2TagSetEc2TagFilter({
    this.key,
    this.type,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  final List<CodedeployDeploymentGroupLoadBalancerInfoElbInfo>? elbInfo;

  final List<CodedeployDeploymentGroupLoadBalancerInfoTargetGroupInfo>?
  targetGroupInfo;

  final CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfo?
  targetGroupPairInfo;

  Map<String, Object?> encode() => {
    if (elbInfo != null) 'elb_info': [for (final e in elbInfo!) e.encode()],
    if (targetGroupInfo != null)
      'target_group_info': [for (final e in targetGroupInfo!) e.encode()],
    if (targetGroupPairInfo != null)
      'target_group_pair_info': targetGroupPairInfo!.encode(),
  };
}

/// Typed helper for the `load_balancer_info.elb_info` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupLoadBalancerInfoElbInfo {
  const CodedeployDeploymentGroupLoadBalancerInfoElbInfo({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_info` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupLoadBalancerInfoTargetGroupInfo {
  const CodedeployDeploymentGroupLoadBalancerInfoTargetGroupInfo({this.name});

  final TfArg<String>? name;

  Map<String, Object?> encode() => {if (name != null) 'name': name!.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_pair_info` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfo {
  const CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfo({
    required this.prodTrafficRoute,
    required this.targetGroup,
    this.testTrafficRoute,
  });

  final CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute
  prodTrafficRoute;

  final List<
    CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup
  >
  targetGroup;

  final CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute?
  testTrafficRoute;

  Map<String, Object?> encode() => {
    'prod_traffic_route': prodTrafficRoute.encode(),
    'target_group': [for (final e in targetGroup) e.encode()],
    if (testTrafficRoute != null)
      'test_traffic_route': testTrafficRoute!.encode(),
  };
}

/// Typed helper for the `load_balancer_info.target_group_pair_info.prod_traffic_route` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute {
  const CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute({
    required this.listenerArns,
  });

  final TfArg<List<Object?>> listenerArns;

  Map<String, Object?> encode() => {'listener_arns': listenerArns.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_pair_info.target_group` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup {
  const CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_pair_info.test_traffic_route` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute {
  const CodedeployDeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute({
    required this.listenerArns,
  });

  final TfArg<List<Object?>> listenerArns;

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

  final TfArg<String>? type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (key != null) 'key': key!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  final TfArg<List<Object?>> triggerEvents;

  final TfArg<String> triggerName;

  final TfArg<String> triggerTargetArn;

  Map<String, Object?> encode() => {
    'trigger_events': triggerEvents.toTfJson(),
    'trigger_name': triggerName.toTfJson(),
    'trigger_target_arn': triggerTargetArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_codedeploy_deployment_group`.
final class AwsCodedeployDeploymentGroup extends Resource {
  static const String tfType = 'aws_codedeploy_deployment_group';

  AwsCodedeployDeploymentGroup({
    required super.localName,
    required TfArg<String> appName,
    TfArg<List<String>>? autoscalingGroups,
    TfArg<String>? deploymentConfigName,
    required TfArg<String> deploymentGroupName,
    TfArg<String>? outdatedInstancesStrategy,
    TfArg<String>? region,
    required TfArg<String> serviceRoleArn,
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
           if (autoscalingGroups != null)
             'autoscaling_groups': autoscalingGroups,
           if (deploymentConfigName != null)
             'deployment_config_name': deploymentConfigName,
           'deployment_group_name': deploymentGroupName,
           if (outdatedInstancesStrategy != null)
             'outdated_instances_strategy': outdatedInstancesStrategy,
           if (region != null) 'region': region,
           'service_role_arn': serviceRoleArn,
           if (tags != null) 'tags': tags,
           if (terminationHookEnabled != null)
             'termination_hook_enabled': terminationHookEnabled,
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
}
