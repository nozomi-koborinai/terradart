// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arcregionswitch_plan`.
const Set<String> _awsArcregionswitchPlanSensitive = <String>{};

/// Arcregionswitch Plan Recovery enum for `recovery_approach`.
enum ArcregionswitchPlanRecoveryApproach implements TerraformEnum {
  activeactive('activeActive'),
  activepassive('activePassive');

  const ArcregionswitchPlanRecoveryApproach(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `associated_alarms` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanAssociatedAlarms {
  const ArcregionswitchPlanAssociatedAlarms({
    required this.alarmType,
    this.crossAccountRole,
    this.externalId,
    required this.mapBlockKey,
    required this.resourceIdentifier,
  });

  final TfArg<ArcregionswitchPlanAlarmType> alarmType;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> mapBlockKey;

  final TfArg<String> resourceIdentifier;

  Map<String, Object?> encode() => {
    'alarm_type': alarmType.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'map_block_key': mapBlockKey.toTfJson(),
    'resource_identifier': resourceIdentifier.toTfJson(),
  };
}

/// `alarm_type` — derived from the provider schema description.
enum ArcregionswitchPlanAlarmType implements TerraformEnum {
  applicationhealth('applicationHealth'),
  trigger('trigger');

  const ArcregionswitchPlanAlarmType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `report_configuration` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanReportConfiguration {
  const ArcregionswitchPlanReportConfiguration({this.reportOutput});

  final List<ArcregionswitchPlanReportOutput>? reportOutput;

  Map<String, Object?> encode() => {
    if (reportOutput != null)
      'report_output': [for (final e in reportOutput!) e.encode()],
  };
}

/// Typed helper for the `report_configuration.report_output` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanReportOutput {
  const ArcregionswitchPlanReportOutput({this.s3Configuration});

  final List<ArcregionswitchPlanS3Configuration>? s3Configuration;

  Map<String, Object?> encode() => {
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
  };
}

/// Typed helper for the `report_configuration.report_output.s3_configuration` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanS3Configuration {
  const ArcregionswitchPlanS3Configuration({
    required this.bucketOwner,
    required this.bucketPath,
  });

  final TfArg<String> bucketOwner;

  final TfArg<String> bucketPath;

  Map<String, Object?> encode() => {
    'bucket_owner': bucketOwner.toTfJson(),
    'bucket_path': bucketPath.toTfJson(),
  };
}

/// Typed helper for the `triggers` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanTriggers {
  const ArcregionswitchPlanTriggers({
    required this.action,
    this.description,
    required this.minDelayMinutesBetweenExecutions,
    required this.targetRegion,
    this.conditions,
  });

  final TfArg<ArcregionswitchPlanAction> action;

  final TfArg<String>? description;

  final TfArg<num> minDelayMinutesBetweenExecutions;

  final TfArg<String> targetRegion;

  final List<ArcregionswitchPlanConditions>? conditions;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': ?description?.toTfJson(),
    'min_delay_minutes_between_executions': minDelayMinutesBetweenExecutions
        .toTfJson(),
    'target_region': targetRegion.toTfJson(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
enum ArcregionswitchPlanAction implements TerraformEnum {
  activate('activate'),
  deactivate('deactivate'),
  postrecovery('postRecovery');

  const ArcregionswitchPlanAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `triggers.conditions` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanConditions {
  const ArcregionswitchPlanConditions({
    required this.associatedAlarmName,
    required this.condition,
  });

  final TfArg<String> associatedAlarmName;

  final TfArg<ArcregionswitchPlanCondition> condition;

  Map<String, Object?> encode() => {
    'associated_alarm_name': associatedAlarmName.toTfJson(),
    'condition': condition.toTfJson(),
  };
}

/// `condition` — derived from the provider schema description.
enum ArcregionswitchPlanCondition implements TerraformEnum {
  red('red'),
  green('green');

  const ArcregionswitchPlanCondition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflow {
  const ArcregionswitchPlanWorkflow({
    this.workflowDescription,
    required this.workflowTargetAction,
    this.workflowTargetRegion,
    this.step,
  });

  final TfArg<String>? workflowDescription;

  final TfArg<ArcregionswitchPlanWorkflowTargetAction> workflowTargetAction;

  final TfArg<String>? workflowTargetRegion;

  final List<ArcregionswitchPlanStep>? step;

  Map<String, Object?> encode() => {
    'workflow_description': ?workflowDescription?.toTfJson(),
    'workflow_target_action': workflowTargetAction.toTfJson(),
    'workflow_target_region': ?workflowTargetRegion?.toTfJson(),
    if (step != null) 'step': [for (final e in step!) e.encode()],
  };
}

/// `workflow_target_action` — derived from the provider schema description.
enum ArcregionswitchPlanWorkflowTargetAction implements TerraformEnum {
  activate('activate'),
  deactivate('deactivate'),
  postrecovery('postRecovery');

  const ArcregionswitchPlanWorkflowTargetAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanStep {
  const ArcregionswitchPlanStep({
    this.description,
    required this.executionBlockType,
    required this.name,
    this.arcRoutingControlConfig,
    this.auroraProvisionedScalingConfig,
    this.auroraServerlessScalingConfig,
    this.customActionLambdaConfig,
    this.documentDbConfig,
    this.ec2AsgCapacityIncreaseConfig,
    this.ecsCapacityIncreaseConfig,
    this.eksResourceScalingConfig,
    this.executionApprovalConfig,
    this.globalAuroraConfig,
    this.lambdaEventSourceMappingConfig,
    this.neptuneGlobalDatabaseConfig,
    this.parallelConfig,
    this.rdsCreateCrossRegionReadReplicaConfig,
    this.rdsPromoteReadReplicaConfig,
    this.regionSwitchPlanConfig,
    this.route53HealthCheckConfig,
  });

  final TfArg<String>? description;

  final TfArg<ArcregionswitchPlanExecutionBlockType> executionBlockType;

  final TfArg<String> name;

  final List<ArcregionswitchPlanArcRoutingControlConfig>?
  arcRoutingControlConfig;

  final List<ArcregionswitchPlanAuroraProvisionedScalingConfig>?
  auroraProvisionedScalingConfig;

  final List<ArcregionswitchPlanAuroraServerlessScalingConfig>?
  auroraServerlessScalingConfig;

  final List<ArcregionswitchPlanCustomActionLambdaConfig>?
  customActionLambdaConfig;

  final List<ArcregionswitchPlanDocumentDbConfig>? documentDbConfig;

  final List<ArcregionswitchPlanEc2AsgCapacityIncreaseConfig>?
  ec2AsgCapacityIncreaseConfig;

  final List<ArcregionswitchPlanEcsCapacityIncreaseConfig>?
  ecsCapacityIncreaseConfig;

  final List<ArcregionswitchPlanEksResourceScalingConfig>?
  eksResourceScalingConfig;

  final List<ArcregionswitchPlanExecutionApprovalConfig>?
  executionApprovalConfig;

  final List<ArcregionswitchPlanGlobalAuroraConfig>? globalAuroraConfig;

  final List<ArcregionswitchPlanLambdaEventSourceMappingConfig>?
  lambdaEventSourceMappingConfig;

  final List<ArcregionswitchPlanNeptuneGlobalDatabaseConfig>?
  neptuneGlobalDatabaseConfig;

  final List<ArcregionswitchPlanParallelConfig>? parallelConfig;

  final List<ArcregionswitchPlanRdsCreateCrossRegionReadReplicaConfig>?
  rdsCreateCrossRegionReadReplicaConfig;

  final List<ArcregionswitchPlanRdsPromoteReadReplicaConfig>?
  rdsPromoteReadReplicaConfig;

  final List<ArcregionswitchPlanRegionSwitchPlanConfig>? regionSwitchPlanConfig;

  final List<ArcregionswitchPlanRoute53HealthCheckConfig>?
  route53HealthCheckConfig;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'execution_block_type': executionBlockType.toTfJson(),
    'name': name.toTfJson(),
    if (arcRoutingControlConfig != null)
      'arc_routing_control_config': [
        for (final e in arcRoutingControlConfig!) e.encode(),
      ],
    if (auroraProvisionedScalingConfig != null)
      'aurora_provisioned_scaling_config': [
        for (final e in auroraProvisionedScalingConfig!) e.encode(),
      ],
    if (auroraServerlessScalingConfig != null)
      'aurora_serverless_scaling_config': [
        for (final e in auroraServerlessScalingConfig!) e.encode(),
      ],
    if (customActionLambdaConfig != null)
      'custom_action_lambda_config': [
        for (final e in customActionLambdaConfig!) e.encode(),
      ],
    if (documentDbConfig != null)
      'document_db_config': [for (final e in documentDbConfig!) e.encode()],
    if (ec2AsgCapacityIncreaseConfig != null)
      'ec2_asg_capacity_increase_config': [
        for (final e in ec2AsgCapacityIncreaseConfig!) e.encode(),
      ],
    if (ecsCapacityIncreaseConfig != null)
      'ecs_capacity_increase_config': [
        for (final e in ecsCapacityIncreaseConfig!) e.encode(),
      ],
    if (eksResourceScalingConfig != null)
      'eks_resource_scaling_config': [
        for (final e in eksResourceScalingConfig!) e.encode(),
      ],
    if (executionApprovalConfig != null)
      'execution_approval_config': [
        for (final e in executionApprovalConfig!) e.encode(),
      ],
    if (globalAuroraConfig != null)
      'global_aurora_config': [for (final e in globalAuroraConfig!) e.encode()],
    if (lambdaEventSourceMappingConfig != null)
      'lambda_event_source_mapping_config': [
        for (final e in lambdaEventSourceMappingConfig!) e.encode(),
      ],
    if (neptuneGlobalDatabaseConfig != null)
      'neptune_global_database_config': [
        for (final e in neptuneGlobalDatabaseConfig!) e.encode(),
      ],
    if (parallelConfig != null)
      'parallel_config': [for (final e in parallelConfig!) e.encode()],
    if (rdsCreateCrossRegionReadReplicaConfig != null)
      'rds_create_cross_region_read_replica_config': [
        for (final e in rdsCreateCrossRegionReadReplicaConfig!) e.encode(),
      ],
    if (rdsPromoteReadReplicaConfig != null)
      'rds_promote_read_replica_config': [
        for (final e in rdsPromoteReadReplicaConfig!) e.encode(),
      ],
    if (regionSwitchPlanConfig != null)
      'region_switch_plan_config': [
        for (final e in regionSwitchPlanConfig!) e.encode(),
      ],
    if (route53HealthCheckConfig != null)
      'route53_health_check_config': [
        for (final e in route53HealthCheckConfig!) e.encode(),
      ],
  };
}

/// `execution_block_type` — derived from the provider schema description.
enum ArcregionswitchPlanExecutionBlockType implements TerraformEnum {
  customactionlambda('CustomActionLambda'),
  manualapproval('ManualApproval'),
  auroraglobaldatabase('AuroraGlobalDatabase'),
  ec2autoscaling('EC2AutoScaling'),
  arcroutingcontrol('ARCRoutingControl'),
  arcregionswitchplan('ARCRegionSwitchPlan'),
  parallel('Parallel'),
  ecsservicescaling('ECSServiceScaling'),
  eksresourcescaling('EKSResourceScaling'),
  route53healthcheck('Route53HealthCheck'),
  documentdb('DocumentDb'),
  rdspromotereadreplica('RdsPromoteReadReplica'),
  rdscreatecrossregionreplica('RdsCreateCrossRegionReplica'),
  lambdaeventsourcemapping('LambdaEventSourceMapping'),
  auroraserverlessscaling('AuroraServerlessScaling'),
  auroraprovisionedscaling('AuroraProvisionedScaling'),
  neptuneglobaldatabase('NeptuneGlobalDatabase'),
  rdsswitchoverreadreplica('RdsSwitchoverReadReplica');

  const ArcregionswitchPlanExecutionBlockType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.arc_routing_control_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanArcRoutingControlConfig {
  const ArcregionswitchPlanArcRoutingControlConfig({
    this.crossAccountRole,
    this.externalId,
    this.timeoutMinutes,
    this.regionAndRoutingControls,
  });

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanRegionAndRoutingControls>?
  regionAndRoutingControls;

  Map<String, Object?> encode() => {
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (regionAndRoutingControls != null)
      'region_and_routing_controls': [
        for (final e in regionAndRoutingControls!) e.encode(),
      ],
  };
}

/// Typed helper for the `workflow.step.arc_routing_control_config.region_and_routing_controls` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanRegionAndRoutingControls {
  const ArcregionswitchPlanRegionAndRoutingControls({
    required this.region,
    this.routingControl,
  });

  final TfArg<String> region;

  final List<ArcregionswitchPlanRoutingControl>? routingControl;

  Map<String, Object?> encode() => {
    'region': region.toTfJson(),
    if (routingControl != null)
      'routing_control': [for (final e in routingControl!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.arc_routing_control_config.region_and_routing_controls.routing_control` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanRoutingControl {
  const ArcregionswitchPlanRoutingControl({
    required this.routingControlArn,
    required this.state,
  });

  final TfArg<String> routingControlArn;

  final TfArg<ArcregionswitchPlanState> state;

  Map<String, Object?> encode() => {
    'routing_control_arn': routingControlArn.toTfJson(),
    'state': state.toTfJson(),
  };
}

/// `state` — derived from the provider schema description.
enum ArcregionswitchPlanState implements TerraformEnum {
  on('On'),
  off('Off');

  const ArcregionswitchPlanState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.aurora_provisioned_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanAuroraProvisionedScalingConfig {
  const ArcregionswitchPlanAuroraProvisionedScalingConfig({
    this.crossAccountRole,
    this.externalId,
    required this.globalClusterIdentifier,
    required this.instanceArns,
    required this.regionDatabaseClusterArns,
    this.timeoutMinutes,
  });

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<Map<String, String>> instanceArns;

  final TfArg<Map<String, String>> regionDatabaseClusterArns;

  final TfArg<num>? timeoutMinutes;

  Map<String, Object?> encode() => {
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'instance_arns': instanceArns.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.aurora_serverless_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanAuroraServerlessScalingConfig {
  const ArcregionswitchPlanAuroraServerlessScalingConfig({
    this.crossAccountRole,
    this.externalId,
    required this.globalClusterIdentifier,
    required this.regionDatabaseClusterArns,
    this.targetPercent,
    this.timeoutMinutes,
  });

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<Map<String, String>> regionDatabaseClusterArns;

  final TfArg<num>? targetPercent;

  final TfArg<num>? timeoutMinutes;

  Map<String, Object?> encode() => {
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    'target_percent': ?targetPercent?.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.custom_action_lambda_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanCustomActionLambdaConfig {
  const ArcregionswitchPlanCustomActionLambdaConfig({
    required this.regionToRun,
    required this.retryIntervalMinutes,
    this.timeoutMinutes,
    this.lambda,
    this.ungraceful,
  });

  final TfArg<ArcregionswitchPlanRegionToRun> regionToRun;

  final TfArg<num> retryIntervalMinutes;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanLambda>? lambda;

  final List<ArcregionswitchPlanCustomActionLambdaConfigUngraceful>? ungraceful;

  Map<String, Object?> encode() => {
    'region_to_run': regionToRun.toTfJson(),
    'retry_interval_minutes': retryIntervalMinutes.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (lambda != null) 'lambda': [for (final e in lambda!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// `region_to_run` — derived from the provider schema description.
enum ArcregionswitchPlanRegionToRun implements TerraformEnum {
  activatingregion('activatingRegion'),
  deactivatingregion('deactivatingRegion'),
  activeregion('activeRegion'),
  inactiveregion('inactiveRegion');

  const ArcregionswitchPlanRegionToRun(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.custom_action_lambda_config.lambda` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanLambda {
  const ArcregionswitchPlanLambda({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.custom_action_lambda_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanCustomActionLambdaConfigUngraceful {
  const ArcregionswitchPlanCustomActionLambdaConfigUngraceful({
    required this.behavior,
  });

  final TfArg<ArcregionswitchPlanUngracefulBehavior> behavior;

  Map<String, Object?> encode() => {'behavior': behavior.toTfJson()};
}

/// `behavior` — derived from the provider schema description.
enum ArcregionswitchPlanUngracefulBehavior implements TerraformEnum {
  skip('skip');

  const ArcregionswitchPlanUngracefulBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.document_db_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanDocumentDbConfig {
  const ArcregionswitchPlanDocumentDbConfig({
    required this.behavior,
    this.crossAccountRole,
    required this.databaseClusterArns,
    this.externalId,
    required this.globalClusterIdentifier,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<ArcregionswitchPlanBehavior> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<List<String>> databaseClusterArns;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanDocumentDbConfigUngraceful>? ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'database_cluster_arns': databaseClusterArns.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// `behavior` — derived from the provider schema description.
enum ArcregionswitchPlanBehavior implements TerraformEnum {
  switchoveronly('switchoverOnly'),
  failover('failover');

  const ArcregionswitchPlanBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.document_db_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanDocumentDbConfigUngraceful {
  const ArcregionswitchPlanDocumentDbConfigUngraceful({
    required this.ungraceful,
  });

  final TfArg<ArcregionswitchPlanUngracefulUngraceful> ungraceful;

  Map<String, Object?> encode() => {'ungraceful': ungraceful.toTfJson()};
}

/// `ungraceful` — derived from the provider schema description.
enum ArcregionswitchPlanUngracefulUngraceful implements TerraformEnum {
  failover('failover');

  const ArcregionswitchPlanUngracefulUngraceful(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.ec2_asg_capacity_increase_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanEc2AsgCapacityIncreaseConfig {
  const ArcregionswitchPlanEc2AsgCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.targetPercent,
    this.timeoutMinutes,
    this.asg,
    this.ungraceful,
  });

  final TfArg<
    ArcregionswitchPlanEc2AsgCapacityIncreaseConfigCapacityMonitoringApproach
  >
  capacityMonitoringApproach;

  final TfArg<num>? targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanAsg>? asg;

  final List<ArcregionswitchPlanEc2AsgCapacityIncreaseConfigUngraceful>?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    'target_percent': ?targetPercent?.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (asg != null) 'asg': [for (final e in asg!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// `capacity_monitoring_approach` — derived from the provider schema description.
enum ArcregionswitchPlanEc2AsgCapacityIncreaseConfigCapacityMonitoringApproach
    implements TerraformEnum {
  sampledmaxinlast24hours('sampledMaxInLast24Hours'),
  autoscalingmaxinlast24hours('autoscalingMaxInLast24Hours');

  const ArcregionswitchPlanEc2AsgCapacityIncreaseConfigCapacityMonitoringApproach(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.ec2_asg_capacity_increase_config.asg` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanAsg {
  const ArcregionswitchPlanAsg({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.ec2_asg_capacity_increase_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanEc2AsgCapacityIncreaseConfigUngraceful {
  const ArcregionswitchPlanEc2AsgCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  final TfArg<num> minimumSuccessPercentage;

  Map<String, Object?> encode() => {
    'minimum_success_percentage': minimumSuccessPercentage.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.ecs_capacity_increase_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanEcsCapacityIncreaseConfig {
  const ArcregionswitchPlanEcsCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.targetPercent,
    this.timeoutMinutes,
    this.service,
    this.ungraceful,
  });

  final TfArg<
    ArcregionswitchPlanEcsCapacityIncreaseConfigCapacityMonitoringApproach
  >
  capacityMonitoringApproach;

  final TfArg<num>? targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanService>? service;

  final List<ArcregionswitchPlanEc2AsgCapacityIncreaseConfigUngraceful>?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    'target_percent': ?targetPercent?.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (service != null) 'service': [for (final e in service!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// `capacity_monitoring_approach` — derived from the provider schema description.
enum ArcregionswitchPlanEcsCapacityIncreaseConfigCapacityMonitoringApproach
    implements TerraformEnum {
  sampledmaxinlast24hours('sampledMaxInLast24Hours'),
  containerinsightsmaxinlast24hours('containerInsightsMaxInLast24Hours');

  const ArcregionswitchPlanEcsCapacityIncreaseConfigCapacityMonitoringApproach(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.ecs_capacity_increase_config.service` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanService {
  const ArcregionswitchPlanService({
    required this.clusterArn,
    this.crossAccountRole,
    this.externalId,
    required this.serviceArn,
  });

  final TfArg<String> clusterArn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> serviceArn;

  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'service_arn': serviceArn.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanEksResourceScalingConfig {
  const ArcregionswitchPlanEksResourceScalingConfig({
    required this.capacityMonitoringApproach,
    required this.targetPercent,
    this.timeoutMinutes,
    this.eksClusters,
    this.kubernetesResourceType,
    this.scalingResources,
    this.ungraceful,
  });

  final TfArg<
    ArcregionswitchPlanEksResourceScalingConfigCapacityMonitoringApproach
  >
  capacityMonitoringApproach;

  final TfArg<num> targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanEksClusters>? eksClusters;

  final List<ArcregionswitchPlanKubernetesResourceType>? kubernetesResourceType;

  final List<ArcregionswitchPlanScalingResources>? scalingResources;

  final List<ArcregionswitchPlanEc2AsgCapacityIncreaseConfigUngraceful>?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    'target_percent': targetPercent.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (eksClusters != null)
      'eks_clusters': [for (final e in eksClusters!) e.encode()],
    if (kubernetesResourceType != null)
      'kubernetes_resource_type': [
        for (final e in kubernetesResourceType!) e.encode(),
      ],
    if (scalingResources != null)
      'scaling_resources': [for (final e in scalingResources!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// `capacity_monitoring_approach` — derived from the provider schema description.
enum ArcregionswitchPlanEksResourceScalingConfigCapacityMonitoringApproach
    implements TerraformEnum {
  sampledmaxinlast24hours('sampledMaxInLast24Hours');

  const ArcregionswitchPlanEksResourceScalingConfigCapacityMonitoringApproach(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config.eks_clusters` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanEksClusters {
  const ArcregionswitchPlanEksClusters({
    required this.clusterArn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> clusterArn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config.kubernetes_resource_type` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanKubernetesResourceType {
  const ArcregionswitchPlanKubernetesResourceType({
    required this.apiVersion,
    required this.kind,
  });

  final TfArg<String> apiVersion;

  final TfArg<String> kind;

  Map<String, Object?> encode() => {
    'api_version': apiVersion.toTfJson(),
    'kind': kind.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config.scaling_resources` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanScalingResources {
  const ArcregionswitchPlanScalingResources({
    required this.namespace,
    this.resources,
  });

  final TfArg<String> namespace;

  final List<ArcregionswitchPlanResources>? resources;

  Map<String, Object?> encode() => {
    'namespace': namespace.toTfJson(),
    if (resources != null)
      'resources': [for (final e in resources!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config.scaling_resources.resources` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanResources {
  const ArcregionswitchPlanResources({
    this.hpaName,
    required this.name,
    required this.namespace,
    required this.resourceName,
  });

  final TfArg<String>? hpaName;

  final TfArg<String> name;

  final TfArg<String> namespace;

  final TfArg<String> resourceName;

  Map<String, Object?> encode() => {
    'hpa_name': ?hpaName?.toTfJson(),
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    'resource_name': resourceName.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.execution_approval_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanExecutionApprovalConfig {
  const ArcregionswitchPlanExecutionApprovalConfig({
    required this.approvalRole,
    this.timeoutMinutes,
  });

  final TfArg<String> approvalRole;

  final TfArg<num>? timeoutMinutes;

  Map<String, Object?> encode() => {
    'approval_role': approvalRole.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.global_aurora_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanGlobalAuroraConfig {
  const ArcregionswitchPlanGlobalAuroraConfig({
    required this.behavior,
    this.crossAccountRole,
    required this.databaseClusterArns,
    this.externalId,
    required this.globalClusterIdentifier,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<ArcregionswitchPlanBehavior> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<List<String>> databaseClusterArns;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanDocumentDbConfigUngraceful>? ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'database_cluster_arns': databaseClusterArns.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.lambda_event_source_mapping_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanLambdaEventSourceMappingConfig {
  const ArcregionswitchPlanLambdaEventSourceMappingConfig({
    required this.action,
    this.timeoutMinutes,
    this.regionEventSourceMapping,
    this.ungraceful,
  });

  final TfArg<ArcregionswitchPlanLambdaEventSourceMappingConfigAction> action;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanRegionEventSourceMapping>?
  regionEventSourceMapping;

  final List<ArcregionswitchPlanCustomActionLambdaConfigUngraceful>? ungraceful;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (regionEventSourceMapping != null)
      'region_event_source_mapping': [
        for (final e in regionEventSourceMapping!) e.encode(),
      ],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
enum ArcregionswitchPlanLambdaEventSourceMappingConfigAction
    implements TerraformEnum {
  enable('enable'),
  disable('disable');

  const ArcregionswitchPlanLambdaEventSourceMappingConfigAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `workflow.step.lambda_event_source_mapping_config.region_event_source_mapping` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanRegionEventSourceMapping {
  const ArcregionswitchPlanRegionEventSourceMapping({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
    required this.region,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> region;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'region': region.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.neptune_global_database_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanNeptuneGlobalDatabaseConfig {
  const ArcregionswitchPlanNeptuneGlobalDatabaseConfig({
    required this.behavior,
    this.crossAccountRole,
    this.externalId,
    required this.globalClusterIdentifier,
    required this.regionDatabaseClusterArns,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<ArcregionswitchPlanBehavior> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<Map<String, String>> regionDatabaseClusterArns;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanDocumentDbConfigUngraceful>? ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanParallelConfig {
  const ArcregionswitchPlanParallelConfig({this.step});

  final List<ArcregionswitchPlanParallelConfigStep>? step;

  Map<String, Object?> encode() => {
    if (step != null) 'step': [for (final e in step!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanParallelConfigStep {
  const ArcregionswitchPlanParallelConfigStep({
    this.description,
    required this.executionBlockType,
    required this.name,
    this.arcRoutingControlConfig,
    this.auroraProvisionedScalingConfig,
    this.auroraServerlessScalingConfig,
    this.customActionLambdaConfig,
    this.documentDbConfig,
    this.ec2AsgCapacityIncreaseConfig,
    this.ecsCapacityIncreaseConfig,
    this.eksResourceScalingConfig,
    this.executionApprovalConfig,
    this.globalAuroraConfig,
    this.lambdaEventSourceMappingConfig,
    this.neptuneGlobalDatabaseConfig,
    this.rdsCreateCrossRegionReadReplicaConfig,
    this.rdsPromoteReadReplicaConfig,
    this.regionSwitchPlanConfig,
    this.route53HealthCheckConfig,
  });

  final TfArg<String>? description;

  final TfArg<ArcregionswitchPlanExecutionBlockType> executionBlockType;

  final TfArg<String> name;

  final List<ArcregionswitchPlanArcRoutingControlConfig>?
  arcRoutingControlConfig;

  final List<ArcregionswitchPlanAuroraProvisionedScalingConfig>?
  auroraProvisionedScalingConfig;

  final List<ArcregionswitchPlanAuroraServerlessScalingConfig>?
  auroraServerlessScalingConfig;

  final List<ArcregionswitchPlanCustomActionLambdaConfig>?
  customActionLambdaConfig;

  final List<ArcregionswitchPlanDocumentDbConfig>? documentDbConfig;

  final List<ArcregionswitchPlanEc2AsgCapacityIncreaseConfig>?
  ec2AsgCapacityIncreaseConfig;

  final List<ArcregionswitchPlanEcsCapacityIncreaseConfig>?
  ecsCapacityIncreaseConfig;

  final List<ArcregionswitchPlanEksResourceScalingConfig>?
  eksResourceScalingConfig;

  final List<ArcregionswitchPlanExecutionApprovalConfig>?
  executionApprovalConfig;

  final List<ArcregionswitchPlanGlobalAuroraConfig>? globalAuroraConfig;

  final List<ArcregionswitchPlanLambdaEventSourceMappingConfig>?
  lambdaEventSourceMappingConfig;

  final List<ArcregionswitchPlanNeptuneGlobalDatabaseConfig>?
  neptuneGlobalDatabaseConfig;

  final List<ArcregionswitchPlanRdsCreateCrossRegionReadReplicaConfig>?
  rdsCreateCrossRegionReadReplicaConfig;

  final List<ArcregionswitchPlanRdsPromoteReadReplicaConfig>?
  rdsPromoteReadReplicaConfig;

  final List<ArcregionswitchPlanRegionSwitchPlanConfig>? regionSwitchPlanConfig;

  final List<ArcregionswitchPlanRoute53HealthCheckConfig>?
  route53HealthCheckConfig;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'execution_block_type': executionBlockType.toTfJson(),
    'name': name.toTfJson(),
    if (arcRoutingControlConfig != null)
      'arc_routing_control_config': [
        for (final e in arcRoutingControlConfig!) e.encode(),
      ],
    if (auroraProvisionedScalingConfig != null)
      'aurora_provisioned_scaling_config': [
        for (final e in auroraProvisionedScalingConfig!) e.encode(),
      ],
    if (auroraServerlessScalingConfig != null)
      'aurora_serverless_scaling_config': [
        for (final e in auroraServerlessScalingConfig!) e.encode(),
      ],
    if (customActionLambdaConfig != null)
      'custom_action_lambda_config': [
        for (final e in customActionLambdaConfig!) e.encode(),
      ],
    if (documentDbConfig != null)
      'document_db_config': [for (final e in documentDbConfig!) e.encode()],
    if (ec2AsgCapacityIncreaseConfig != null)
      'ec2_asg_capacity_increase_config': [
        for (final e in ec2AsgCapacityIncreaseConfig!) e.encode(),
      ],
    if (ecsCapacityIncreaseConfig != null)
      'ecs_capacity_increase_config': [
        for (final e in ecsCapacityIncreaseConfig!) e.encode(),
      ],
    if (eksResourceScalingConfig != null)
      'eks_resource_scaling_config': [
        for (final e in eksResourceScalingConfig!) e.encode(),
      ],
    if (executionApprovalConfig != null)
      'execution_approval_config': [
        for (final e in executionApprovalConfig!) e.encode(),
      ],
    if (globalAuroraConfig != null)
      'global_aurora_config': [for (final e in globalAuroraConfig!) e.encode()],
    if (lambdaEventSourceMappingConfig != null)
      'lambda_event_source_mapping_config': [
        for (final e in lambdaEventSourceMappingConfig!) e.encode(),
      ],
    if (neptuneGlobalDatabaseConfig != null)
      'neptune_global_database_config': [
        for (final e in neptuneGlobalDatabaseConfig!) e.encode(),
      ],
    if (rdsCreateCrossRegionReadReplicaConfig != null)
      'rds_create_cross_region_read_replica_config': [
        for (final e in rdsCreateCrossRegionReadReplicaConfig!) e.encode(),
      ],
    if (rdsPromoteReadReplicaConfig != null)
      'rds_promote_read_replica_config': [
        for (final e in rdsPromoteReadReplicaConfig!) e.encode(),
      ],
    if (regionSwitchPlanConfig != null)
      'region_switch_plan_config': [
        for (final e in regionSwitchPlanConfig!) e.encode(),
      ],
    if (route53HealthCheckConfig != null)
      'route53_health_check_config': [
        for (final e in route53HealthCheckConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `workflow.step.rds_create_cross_region_read_replica_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanRdsCreateCrossRegionReadReplicaConfig {
  const ArcregionswitchPlanRdsCreateCrossRegionReadReplicaConfig({
    this.crossAccountRole,
    required this.dbInstanceArnMap,
    this.externalId,
    this.timeoutMinutes,
  });

  final TfArg<String>? crossAccountRole;

  final TfArg<Map<String, String>> dbInstanceArnMap;

  final TfArg<String>? externalId;

  final TfArg<num>? timeoutMinutes;

  Map<String, Object?> encode() => {
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'db_instance_arn_map': dbInstanceArnMap.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.rds_promote_read_replica_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanRdsPromoteReadReplicaConfig {
  const ArcregionswitchPlanRdsPromoteReadReplicaConfig({
    this.crossAccountRole,
    required this.dbInstanceArnMap,
    this.externalId,
    this.timeoutMinutes,
  });

  final TfArg<String>? crossAccountRole;

  final TfArg<Map<String, String>> dbInstanceArnMap;

  final TfArg<String>? externalId;

  final TfArg<num>? timeoutMinutes;

  Map<String, Object?> encode() => {
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'db_instance_arn_map': dbInstanceArnMap.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.region_switch_plan_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanRegionSwitchPlanConfig {
  const ArcregionswitchPlanRegionSwitchPlanConfig({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.route53_health_check_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanRoute53HealthCheckConfig {
  const ArcregionswitchPlanRoute53HealthCheckConfig({
    this.crossAccountRole,
    this.externalId,
    required this.hostedZoneId,
    required this.recordName,
    this.timeoutMinutes,
    this.recordSet,
  });

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> hostedZoneId;

  final TfArg<String> recordName;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanRecordSet>? recordSet;

  Map<String, Object?> encode() => {
    'cross_account_role': ?crossAccountRole?.toTfJson(),
    'external_id': ?externalId?.toTfJson(),
    'hosted_zone_id': hostedZoneId.toTfJson(),
    'record_name': recordName.toTfJson(),
    'timeout_minutes': ?timeoutMinutes?.toTfJson(),
    if (recordSet != null)
      'record_set': [for (final e in recordSet!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.route53_health_check_config.record_set` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ArcregionswitchPlanRecordSet {
  const ArcregionswitchPlanRecordSet({
    required this.recordSetIdentifier,
    required this.region,
  });

  final TfArg<String> recordSetIdentifier;

  final TfArg<String> region;

  Map<String, Object?> encode() => {
    'record_set_identifier': recordSetIdentifier.toTfJson(),
    'region': region.toTfJson(),
  };
}

/// Factory wrapper for `aws_arcregionswitch_plan`.
final class AwsArcregionswitchPlan extends Resource {
  static const String tfType = 'aws_arcregionswitch_plan';

  AwsArcregionswitchPlan({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> executionRole,
    required TfArg<String> name,
    TfArg<String>? primaryRegion,
    required TfArg<ArcregionswitchPlanRecoveryApproach> recoveryApproach,
    TfArg<num>? recoveryTimeObjectiveMinutes,
    TfArg<String>? region,
    required TfArg<List<String>> regions,
    TfArg<Map<String, String>>? tags,
    List<ArcregionswitchPlanAssociatedAlarms>? associatedAlarms,
    List<ArcregionswitchPlanReportConfiguration>? reportConfiguration,
    List<ArcregionswitchPlanTriggers>? triggers,
    List<ArcregionswitchPlanWorkflow>? workflow,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'execution_role': executionRole,
           'name': name,
           'primary_region': ?primaryRegion,
           'recovery_approach': recoveryApproach,
           'recovery_time_objective_minutes': ?recoveryTimeObjectiveMinutes,
           'region': ?region,
           'regions': regions,
           'tags': ?tags,
           if (associatedAlarms != null)
             'associated_alarms': TfArg.literal([
               for (final e in associatedAlarms) e.encode(),
             ]),
           if (reportConfiguration != null)
             'report_configuration': TfArg.literal([
               for (final e in reportConfiguration) e.encode(),
             ]),
           if (triggers != null)
             'triggers': TfArg.literal([for (final e in triggers) e.encode()]),
           if (workflow != null)
             'workflow': TfArg.literal([for (final e in workflow) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsArcregionswitchPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsArcregionswitchPlan>`.
  RefTo<AwsArcregionswitchPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_role` attribute.
  TfRef<String> get executionRoleRef =>
      TfRef.attribute<String>(this, 'execution_role');

  /// Reference to `primary_region` attribute.
  TfRef<String> get primaryRegionRef =>
      TfRef.attribute<String>(this, 'primary_region');

  /// Reference to `recovery_approach` attribute.
  TfRef<String> get recoveryApproachRef =>
      TfRef.attribute<String>(this, 'recovery_approach');

  /// Reference to `recovery_time_objective_minutes` attribute.
  TfRef<num> get recoveryTimeObjectiveMinutesRef =>
      TfRef.attribute<num>(this, 'recovery_time_objective_minutes');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regionsRef =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
