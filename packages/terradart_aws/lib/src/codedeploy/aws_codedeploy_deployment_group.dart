// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_codedeploy_deployment_group`.
const Set<String> _awsCodedeployDeploymentGroupSensitive = <String>{};

/// Codedeploy Deployment Group Outdated Instances enum for `outdated_instances_strategy`.
enum CodedeployDeploymentGroupOutdatedInstancesStrategy
    implements TerraformEnum {
  update('UPDATE'),
  ignore('IGNORE');

  const CodedeployDeploymentGroupOutdatedInstancesStrategy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<CodedeployDeploymentGroupActionOnTimeout>? actionOnTimeout;

  final TfArg<num>? waitTimeInMinutes;

  Map<String, Object?> encode() => {
    'action_on_timeout': ?actionOnTimeout?.toTfJson(),
    'wait_time_in_minutes': ?waitTimeInMinutes?.toTfJson(),
  };
}

/// `action_on_timeout` — derived from the provider schema description.
enum CodedeployDeploymentGroupActionOnTimeout implements TerraformEnum {
  continueDeployment('CONTINUE_DEPLOYMENT'),
  stopDeployment('STOP_DEPLOYMENT');

  const CodedeployDeploymentGroupActionOnTimeout(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `blue_green_deployment_config.green_fleet_provisioning_option` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupGreenFleetProvisioningOption {
  const CodedeployDeploymentGroupGreenFleetProvisioningOption({this.action});

  final TfArg<CodedeployDeploymentGroupGreenFleetProvisioningOptionAction>?
  action;

  Map<String, Object?> encode() => {'action': ?action?.toTfJson()};
}

/// `action` — derived from the provider schema description.
enum CodedeployDeploymentGroupGreenFleetProvisioningOptionAction
    implements TerraformEnum {
  discoverExisting('DISCOVER_EXISTING'),
  copyAutoScalingGroup('COPY_AUTO_SCALING_GROUP');

  const CodedeployDeploymentGroupGreenFleetProvisioningOptionAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `blue_green_deployment_config.terminate_blue_instances_on_deployment_success` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccess {
  const CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccess({
    this.action,
    this.terminationWaitTimeInMinutes,
  });

  final TfArg<
    CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction
  >?
  action;

  final TfArg<num>? terminationWaitTimeInMinutes;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'termination_wait_time_in_minutes': ?terminationWaitTimeInMinutes
        ?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction
    implements TerraformEnum {
  terminate('TERMINATE'),
  keepAlive('KEEP_ALIVE');

  const CodedeployDeploymentGroupTerminateBlueInstancesOnDeploymentSuccessAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `deployment_style` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupDeploymentStyle {
  const CodedeployDeploymentGroupDeploymentStyle({
    this.deploymentOption,
    this.deploymentType,
  });

  final TfArg<CodedeployDeploymentGroupDeploymentOption>? deploymentOption;

  final TfArg<CodedeployDeploymentGroupDeploymentType>? deploymentType;

  Map<String, Object?> encode() => {
    'deployment_option': ?deploymentOption?.toTfJson(),
    'deployment_type': ?deploymentType?.toTfJson(),
  };
}

/// `deployment_option` — derived from the provider schema description.
enum CodedeployDeploymentGroupDeploymentOption implements TerraformEnum {
  withTrafficControl('WITH_TRAFFIC_CONTROL'),
  withoutTrafficControl('WITHOUT_TRAFFIC_CONTROL');

  const CodedeployDeploymentGroupDeploymentOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// `deployment_type` — derived from the provider schema description.
enum CodedeployDeploymentGroupDeploymentType implements TerraformEnum {
  inPlace('IN_PLACE'),
  blueGreen('BLUE_GREEN');

  const CodedeployDeploymentGroupDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<CodedeployDeploymentGroupType>? type;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CodedeployDeploymentGroupType implements TerraformEnum {
  keyOnly('KEY_ONLY'),
  valueOnly('VALUE_ONLY'),
  keyAndValue('KEY_AND_VALUE');

  const CodedeployDeploymentGroupType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `ec2_tag_set` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupEc2TagSet {
  const CodedeployDeploymentGroupEc2TagSet({this.ec2TagFilter});

  final List<CodedeployDeploymentGroupEc2TagFilter>? ec2TagFilter;

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

  Map<String, Object?> encode() => {'name': ?name?.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_info` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTargetGroupInfo {
  const CodedeployDeploymentGroupTargetGroupInfo({this.name});

  final TfArg<String>? name;

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

  Map<String, Object?> encode() => {'listener_arns': listenerArns.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_pair_info.target_group` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTargetGroup {
  const CodedeployDeploymentGroupTargetGroup({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `load_balancer_info.target_group_pair_info.test_traffic_route` block of
/// `aws_codedeploy_deployment_group` (derived from provider schema).
@immutable
final class CodedeployDeploymentGroupTestTrafficRoute {
  const CodedeployDeploymentGroupTestTrafficRoute({required this.listenerArns});

  final TfArg<List<String>> listenerArns;

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

  final TfArg<CodedeployDeploymentGroupType>? type;

  final TfArg<String>? value;

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

  final List<TfArg<CodedeployDeploymentGroupTriggerEvents>> triggerEvents;

  final TfArg<String> triggerName;

  final TfArg<String> triggerTargetArn;

  Map<String, Object?> encode() => {
    'trigger_events': [for (final e in triggerEvents) e.toTfJson()],
    'trigger_name': triggerName.toTfJson(),
    'trigger_target_arn': triggerTargetArn.toTfJson(),
  };
}

/// `trigger_events` — derived from the provider schema description.
enum CodedeployDeploymentGroupTriggerEvents implements TerraformEnum {
  deploymentstart('DeploymentStart'),
  deploymentsuccess('DeploymentSuccess'),
  deploymentfailure('DeploymentFailure'),
  deploymentstop('DeploymentStop'),
  deploymentrollback('DeploymentRollback'),
  deploymentready('DeploymentReady'),
  instancestart('InstanceStart'),
  instancesuccess('InstanceSuccess'),
  instancefailure('InstanceFailure'),
  instanceready('InstanceReady');

  const CodedeployDeploymentGroupTriggerEvents(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<CodedeployDeploymentGroupOutdatedInstancesStrategy>?
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
