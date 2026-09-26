// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_arcregionswitch_plan`.
const Set<String> _awsArcregionswitchPlanSensitive = <String>{};

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

  final TfArg<String> alarmType;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> mapBlockKey;

  final TfArg<String> resourceIdentifier;

  Map<String, Object?> encode() => {
    'alarm_type': alarmType.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'map_block_key': mapBlockKey.toTfJson(),
    'resource_identifier': resourceIdentifier.toTfJson(),
  };
}

/// Typed helper for the `report_configuration` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanReportConfiguration {
  const ArcregionswitchPlanReportConfiguration({this.reportOutput});

  final List<ArcregionswitchPlanReportConfigurationReportOutput>? reportOutput;

  Map<String, Object?> encode() => {
    if (reportOutput != null)
      'report_output': [for (final e in reportOutput!) e.encode()],
  };
}

/// Typed helper for the `report_configuration.report_output` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanReportConfigurationReportOutput {
  const ArcregionswitchPlanReportConfigurationReportOutput({
    this.s3Configuration,
  });

  final List<ArcregionswitchPlanReportConfigurationReportOutputS3Configuration>?
  s3Configuration;

  Map<String, Object?> encode() => {
    if (s3Configuration != null)
      's3_configuration': [for (final e in s3Configuration!) e.encode()],
  };
}

/// Typed helper for the `report_configuration.report_output.s3_configuration` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanReportConfigurationReportOutputS3Configuration {
  const ArcregionswitchPlanReportConfigurationReportOutputS3Configuration({
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

  final TfArg<String> action;

  final TfArg<String>? description;

  final TfArg<num> minDelayMinutesBetweenExecutions;

  final TfArg<String> targetRegion;

  final List<ArcregionswitchPlanTriggersConditions>? conditions;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'min_delay_minutes_between_executions': minDelayMinutesBetweenExecutions
        .toTfJson(),
    'target_region': targetRegion.toTfJson(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// Typed helper for the `triggers.conditions` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanTriggersConditions {
  const ArcregionswitchPlanTriggersConditions({
    required this.associatedAlarmName,
    required this.condition,
  });

  final TfArg<String> associatedAlarmName;

  final TfArg<String> condition;

  Map<String, Object?> encode() => {
    'associated_alarm_name': associatedAlarmName.toTfJson(),
    'condition': condition.toTfJson(),
  };
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

  final TfArg<String> workflowTargetAction;

  final TfArg<String>? workflowTargetRegion;

  final List<ArcregionswitchPlanWorkflowStep>? step;

  Map<String, Object?> encode() => {
    if (workflowDescription != null)
      'workflow_description': workflowDescription!.toTfJson(),
    'workflow_target_action': workflowTargetAction.toTfJson(),
    if (workflowTargetRegion != null)
      'workflow_target_region': workflowTargetRegion!.toTfJson(),
    if (step != null) 'step': [for (final e in step!) e.encode()],
  };
}

/// Typed helper for the `workflow.step` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStep {
  const ArcregionswitchPlanWorkflowStep({
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

  final TfArg<String> executionBlockType;

  final TfArg<String> name;

  final List<ArcregionswitchPlanWorkflowStepArcRoutingControlConfig>?
  arcRoutingControlConfig;

  final List<ArcregionswitchPlanWorkflowStepAuroraProvisionedScalingConfig>?
  auroraProvisionedScalingConfig;

  final List<ArcregionswitchPlanWorkflowStepAuroraServerlessScalingConfig>?
  auroraServerlessScalingConfig;

  final List<ArcregionswitchPlanWorkflowStepCustomActionLambdaConfig>?
  customActionLambdaConfig;

  final List<ArcregionswitchPlanWorkflowStepDocumentDbConfig>? documentDbConfig;

  final List<ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfig>?
  ec2AsgCapacityIncreaseConfig;

  final List<ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfig>?
  ecsCapacityIncreaseConfig;

  final List<ArcregionswitchPlanWorkflowStepEksResourceScalingConfig>?
  eksResourceScalingConfig;

  final List<ArcregionswitchPlanWorkflowStepExecutionApprovalConfig>?
  executionApprovalConfig;

  final List<ArcregionswitchPlanWorkflowStepGlobalAuroraConfig>?
  globalAuroraConfig;

  final List<ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfig>?
  lambdaEventSourceMappingConfig;

  final List<ArcregionswitchPlanWorkflowStepNeptuneGlobalDatabaseConfig>?
  neptuneGlobalDatabaseConfig;

  final List<ArcregionswitchPlanWorkflowStepParallelConfig>? parallelConfig;

  final List<
    ArcregionswitchPlanWorkflowStepRdsCreateCrossRegionReadReplicaConfig
  >?
  rdsCreateCrossRegionReadReplicaConfig;

  final List<ArcregionswitchPlanWorkflowStepRdsPromoteReadReplicaConfig>?
  rdsPromoteReadReplicaConfig;

  final List<ArcregionswitchPlanWorkflowStepRegionSwitchPlanConfig>?
  regionSwitchPlanConfig;

  final List<ArcregionswitchPlanWorkflowStepRoute53HealthCheckConfig>?
  route53HealthCheckConfig;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
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

/// Typed helper for the `workflow.step.arc_routing_control_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepArcRoutingControlConfig {
  const ArcregionswitchPlanWorkflowStepArcRoutingControlConfig({
    this.crossAccountRole,
    this.externalId,
    this.timeoutMinutes,
    this.regionAndRoutingControls,
  });

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControls
  >?
  regionAndRoutingControls;

  Map<String, Object?> encode() => {
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (regionAndRoutingControls != null)
      'region_and_routing_controls': [
        for (final e in regionAndRoutingControls!) e.encode(),
      ],
  };
}

/// Typed helper for the `workflow.step.arc_routing_control_config.region_and_routing_controls` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControls {
  const ArcregionswitchPlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControls({
    required this.region,
    this.routingControl,
  });

  final TfArg<String> region;

  final List<
    ArcregionswitchPlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlsRoutingControl
  >?
  routingControl;

  Map<String, Object?> encode() => {
    'region': region.toTfJson(),
    if (routingControl != null)
      'routing_control': [for (final e in routingControl!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.arc_routing_control_config.region_and_routing_controls.routing_control` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlsRoutingControl {
  const ArcregionswitchPlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControlsRoutingControl({
    required this.routingControlArn,
    required this.state,
  });

  final TfArg<String> routingControlArn;

  final TfArg<String> state;

  Map<String, Object?> encode() => {
    'routing_control_arn': routingControlArn.toTfJson(),
    'state': state.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.aurora_provisioned_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepAuroraProvisionedScalingConfig {
  const ArcregionswitchPlanWorkflowStepAuroraProvisionedScalingConfig({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'instance_arns': instanceArns.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.aurora_serverless_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepAuroraServerlessScalingConfig {
  const ArcregionswitchPlanWorkflowStepAuroraServerlessScalingConfig({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    if (targetPercent != null) 'target_percent': targetPercent!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.custom_action_lambda_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepCustomActionLambdaConfig {
  const ArcregionswitchPlanWorkflowStepCustomActionLambdaConfig({
    required this.regionToRun,
    required this.retryIntervalMinutes,
    this.timeoutMinutes,
    this.lambda,
    this.ungraceful,
  });

  final TfArg<String> regionToRun;

  final TfArg<num> retryIntervalMinutes;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanWorkflowStepCustomActionLambdaConfigLambda>?
  lambda;

  final List<ArcregionswitchPlanWorkflowStepCustomActionLambdaConfigUngraceful>?
  ungraceful;

  Map<String, Object?> encode() => {
    'region_to_run': regionToRun.toTfJson(),
    'retry_interval_minutes': retryIntervalMinutes.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (lambda != null) 'lambda': [for (final e in lambda!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.custom_action_lambda_config.lambda` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepCustomActionLambdaConfigLambda {
  const ArcregionswitchPlanWorkflowStepCustomActionLambdaConfigLambda({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.custom_action_lambda_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepCustomActionLambdaConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepCustomActionLambdaConfigUngraceful({
    required this.behavior,
  });

  final TfArg<String> behavior;

  Map<String, Object?> encode() => {'behavior': behavior.toTfJson()};
}

/// Typed helper for the `workflow.step.document_db_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepDocumentDbConfig {
  const ArcregionswitchPlanWorkflowStepDocumentDbConfig({
    required this.behavior,
    this.crossAccountRole,
    required this.databaseClusterArns,
    this.externalId,
    required this.globalClusterIdentifier,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<String> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<List<Object?>> databaseClusterArns;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanWorkflowStepDocumentDbConfigUngraceful>?
  ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    'database_cluster_arns': databaseClusterArns.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.document_db_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepDocumentDbConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepDocumentDbConfigUngraceful({
    required this.ungraceful,
  });

  final TfArg<String> ungraceful;

  Map<String, Object?> encode() => {'ungraceful': ungraceful.toTfJson()};
}

/// Typed helper for the `workflow.step.ec2_asg_capacity_increase_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfig {
  const ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.targetPercent,
    this.timeoutMinutes,
    this.asg,
    this.ungraceful,
  });

  final TfArg<String> capacityMonitoringApproach;

  final TfArg<num>? targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg>?
  asg;

  final List<
    ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    if (targetPercent != null) 'target_percent': targetPercent!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (asg != null) 'asg': [for (final e in asg!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.ec2_asg_capacity_increase_config.asg` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg {
  const ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.ec2_asg_capacity_increase_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  final TfArg<num> minimumSuccessPercentage;

  Map<String, Object?> encode() => {
    'minimum_success_percentage': minimumSuccessPercentage.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.ecs_capacity_increase_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfig {
  const ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.targetPercent,
    this.timeoutMinutes,
    this.service,
    this.ungraceful,
  });

  final TfArg<String> capacityMonitoringApproach;

  final TfArg<num>? targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfigService>?
  service;

  final List<
    ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    if (targetPercent != null) 'target_percent': targetPercent!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (service != null) 'service': [for (final e in service!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.ecs_capacity_increase_config.service` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfigService {
  const ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfigService({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'service_arn': serviceArn.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.ecs_capacity_increase_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepEcsCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  final TfArg<num> minimumSuccessPercentage;

  Map<String, Object?> encode() => {
    'minimum_success_percentage': minimumSuccessPercentage.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEksResourceScalingConfig {
  const ArcregionswitchPlanWorkflowStepEksResourceScalingConfig({
    required this.capacityMonitoringApproach,
    required this.targetPercent,
    this.timeoutMinutes,
    this.eksClusters,
    this.kubernetesResourceType,
    this.scalingResources,
    this.ungraceful,
  });

  final TfArg<String> capacityMonitoringApproach;

  final TfArg<num> targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepEksResourceScalingConfigEksClusters
  >?
  eksClusters;

  final List<
    ArcregionswitchPlanWorkflowStepEksResourceScalingConfigKubernetesResourceType
  >?
  kubernetesResourceType;

  final List<
    ArcregionswitchPlanWorkflowStepEksResourceScalingConfigScalingResources
  >?
  scalingResources;

  final List<ArcregionswitchPlanWorkflowStepEksResourceScalingConfigUngraceful>?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    'target_percent': targetPercent.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
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

/// Typed helper for the `workflow.step.eks_resource_scaling_config.eks_clusters` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEksResourceScalingConfigEksClusters {
  const ArcregionswitchPlanWorkflowStepEksResourceScalingConfigEksClusters({
    required this.clusterArn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> clusterArn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config.kubernetes_resource_type` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEksResourceScalingConfigKubernetesResourceType {
  const ArcregionswitchPlanWorkflowStepEksResourceScalingConfigKubernetesResourceType({
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
@immutable
final class ArcregionswitchPlanWorkflowStepEksResourceScalingConfigScalingResources {
  const ArcregionswitchPlanWorkflowStepEksResourceScalingConfigScalingResources({
    required this.namespace,
    this.resources,
  });

  final TfArg<String> namespace;

  final List<
    ArcregionswitchPlanWorkflowStepEksResourceScalingConfigScalingResourcesResources
  >?
  resources;

  Map<String, Object?> encode() => {
    'namespace': namespace.toTfJson(),
    if (resources != null)
      'resources': [for (final e in resources!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config.scaling_resources.resources` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEksResourceScalingConfigScalingResourcesResources {
  const ArcregionswitchPlanWorkflowStepEksResourceScalingConfigScalingResourcesResources({
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
    if (hpaName != null) 'hpa_name': hpaName!.toTfJson(),
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    'resource_name': resourceName.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.eks_resource_scaling_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepEksResourceScalingConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepEksResourceScalingConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  final TfArg<num> minimumSuccessPercentage;

  Map<String, Object?> encode() => {
    'minimum_success_percentage': minimumSuccessPercentage.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.execution_approval_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepExecutionApprovalConfig {
  const ArcregionswitchPlanWorkflowStepExecutionApprovalConfig({
    required this.approvalRole,
    this.timeoutMinutes,
  });

  final TfArg<String> approvalRole;

  final TfArg<num>? timeoutMinutes;

  Map<String, Object?> encode() => {
    'approval_role': approvalRole.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.global_aurora_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepGlobalAuroraConfig {
  const ArcregionswitchPlanWorkflowStepGlobalAuroraConfig({
    required this.behavior,
    this.crossAccountRole,
    required this.databaseClusterArns,
    this.externalId,
    required this.globalClusterIdentifier,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<String> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<List<Object?>> databaseClusterArns;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<num>? timeoutMinutes;

  final List<ArcregionswitchPlanWorkflowStepGlobalAuroraConfigUngraceful>?
  ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    'database_cluster_arns': databaseClusterArns.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.global_aurora_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepGlobalAuroraConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepGlobalAuroraConfigUngraceful({
    required this.ungraceful,
  });

  final TfArg<String> ungraceful;

  Map<String, Object?> encode() => {'ungraceful': ungraceful.toTfJson()};
}

/// Typed helper for the `workflow.step.lambda_event_source_mapping_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfig {
  const ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfig({
    required this.action,
    this.timeoutMinutes,
    this.regionEventSourceMapping,
    this.ungraceful,
  });

  final TfArg<String> action;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping
  >?
  regionEventSourceMapping;

  final List<
    ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (regionEventSourceMapping != null)
      'region_event_source_mapping': [
        for (final e in regionEventSourceMapping!) e.encode(),
      ],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.lambda_event_source_mapping_config.region_event_source_mapping` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping {
  const ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'region': region.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.lambda_event_source_mapping_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepLambdaEventSourceMappingConfigUngraceful({
    required this.behavior,
  });

  final TfArg<String> behavior;

  Map<String, Object?> encode() => {'behavior': behavior.toTfJson()};
}

/// Typed helper for the `workflow.step.neptune_global_database_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepNeptuneGlobalDatabaseConfig {
  const ArcregionswitchPlanWorkflowStepNeptuneGlobalDatabaseConfig({
    required this.behavior,
    this.crossAccountRole,
    this.externalId,
    required this.globalClusterIdentifier,
    required this.regionDatabaseClusterArns,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<String> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<Map<String, String>> regionDatabaseClusterArns;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.neptune_global_database_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful({
    required this.ungraceful,
  });

  final TfArg<String> ungraceful;

  Map<String, Object?> encode() => {'ungraceful': ungraceful.toTfJson()};
}

/// Typed helper for the `workflow.step.parallel_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfig({this.step});

  final List<ArcregionswitchPlanWorkflowStepParallelConfigStep>? step;

  Map<String, Object?> encode() => {
    if (step != null) 'step': [for (final e in step!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStep {
  const ArcregionswitchPlanWorkflowStepParallelConfigStep({
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

  final TfArg<String> executionBlockType;

  final TfArg<String> name;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfig
  >?
  arcRoutingControlConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepAuroraProvisionedScalingConfig
  >?
  auroraProvisionedScalingConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepAuroraServerlessScalingConfig
  >?
  auroraServerlessScalingConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfig
  >?
  customActionLambdaConfig;

  final List<ArcregionswitchPlanWorkflowStepParallelConfigStepDocumentDbConfig>?
  documentDbConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig
  >?
  ec2AsgCapacityIncreaseConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig
  >?
  ecsCapacityIncreaseConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfig
  >?
  eksResourceScalingConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepExecutionApprovalConfig
  >?
  executionApprovalConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepGlobalAuroraConfig
  >?
  globalAuroraConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfig
  >?
  lambdaEventSourceMappingConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfig
  >?
  neptuneGlobalDatabaseConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepRdsCreateCrossRegionReadReplicaConfig
  >?
  rdsCreateCrossRegionReadReplicaConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig
  >?
  rdsPromoteReadReplicaConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig
  >?
  regionSwitchPlanConfig;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig
  >?
  route53HealthCheckConfig;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
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

/// Typed helper for the `workflow.step.parallel_config.step.arc_routing_control_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfig({
    this.crossAccountRole,
    this.externalId,
    this.timeoutMinutes,
    this.regionAndRoutingControls,
  });

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControls
  >?
  regionAndRoutingControls;

  Map<String, Object?> encode() => {
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (regionAndRoutingControls != null)
      'region_and_routing_controls': [
        for (final e in regionAndRoutingControls!) e.encode(),
      ],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.arc_routing_control_config.region_and_routing_controls` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControls {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControls({
    required this.region,
    this.routingControl,
  });

  final TfArg<String> region;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlsRoutingControl
  >?
  routingControl;

  Map<String, Object?> encode() => {
    'region': region.toTfJson(),
    if (routingControl != null)
      'routing_control': [for (final e in routingControl!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.arc_routing_control_config.region_and_routing_controls.routing_control` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlsRoutingControl {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControlsRoutingControl({
    required this.routingControlArn,
    required this.state,
  });

  final TfArg<String> routingControlArn;

  final TfArg<String> state;

  Map<String, Object?> encode() => {
    'routing_control_arn': routingControlArn.toTfJson(),
    'state': state.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.aurora_provisioned_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepAuroraProvisionedScalingConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepAuroraProvisionedScalingConfig({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'instance_arns': instanceArns.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.aurora_serverless_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepAuroraServerlessScalingConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepAuroraServerlessScalingConfig({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    if (targetPercent != null) 'target_percent': targetPercent!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.custom_action_lambda_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfig({
    required this.regionToRun,
    required this.retryIntervalMinutes,
    this.timeoutMinutes,
    this.lambda,
    this.ungraceful,
  });

  final TfArg<String> regionToRun;

  final TfArg<num> retryIntervalMinutes;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda
  >?
  lambda;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'region_to_run': regionToRun.toTfJson(),
    'retry_interval_minutes': retryIntervalMinutes.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (lambda != null) 'lambda': [for (final e in lambda!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.custom_action_lambda_config.lambda` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfigLambda({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.custom_action_lambda_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful({
    required this.behavior,
  });

  final TfArg<String> behavior;

  Map<String, Object?> encode() => {'behavior': behavior.toTfJson()};
}

/// Typed helper for the `workflow.step.parallel_config.step.document_db_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepDocumentDbConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepDocumentDbConfig({
    required this.behavior,
    this.crossAccountRole,
    required this.databaseClusterArns,
    this.externalId,
    required this.globalClusterIdentifier,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<String> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<List<Object?>> databaseClusterArns;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    'database_cluster_arns': databaseClusterArns.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.document_db_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepDocumentDbConfigUngraceful({
    required this.ungraceful,
  });

  final TfArg<String> ungraceful;

  Map<String, Object?> encode() => {'ungraceful': ungraceful.toTfJson()};
}

/// Typed helper for the `workflow.step.parallel_config.step.ec2_asg_capacity_increase_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.targetPercent,
    this.timeoutMinutes,
    this.asg,
    this.ungraceful,
  });

  final TfArg<String> capacityMonitoringApproach;

  final TfArg<num>? targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg
  >?
  asg;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    if (targetPercent != null) 'target_percent': targetPercent!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (asg != null) 'asg': [for (final e in asg!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.ec2_asg_capacity_increase_config.asg` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.ec2_asg_capacity_increase_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  final TfArg<num> minimumSuccessPercentage;

  Map<String, Object?> encode() => {
    'minimum_success_percentage': minimumSuccessPercentage.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.ecs_capacity_increase_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig({
    required this.capacityMonitoringApproach,
    this.targetPercent,
    this.timeoutMinutes,
    this.service,
    this.ungraceful,
  });

  final TfArg<String> capacityMonitoringApproach;

  final TfArg<num>? targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService
  >?
  service;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    if (targetPercent != null) 'target_percent': targetPercent!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (service != null) 'service': [for (final e in service!) e.encode()],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.ecs_capacity_increase_config.service` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'service_arn': serviceArn.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.ecs_capacity_increase_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  final TfArg<num> minimumSuccessPercentage;

  Map<String, Object?> encode() => {
    'minimum_success_percentage': minimumSuccessPercentage.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.eks_resource_scaling_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfig({
    required this.capacityMonitoringApproach,
    required this.targetPercent,
    this.timeoutMinutes,
    this.eksClusters,
    this.kubernetesResourceType,
    this.scalingResources,
    this.ungraceful,
  });

  final TfArg<String> capacityMonitoringApproach;

  final TfArg<num> targetPercent;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksClusters
  >?
  eksClusters;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType
  >?
  kubernetesResourceType;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResources
  >?
  scalingResources;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'capacity_monitoring_approach': capacityMonitoringApproach.toTfJson(),
    'target_percent': targetPercent.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
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

/// Typed helper for the `workflow.step.parallel_config.step.eks_resource_scaling_config.eks_clusters` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksClusters {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksClusters({
    required this.clusterArn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> clusterArn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.eks_resource_scaling_config.kubernetes_resource_type` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigKubernetesResourceType({
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

/// Typed helper for the `workflow.step.parallel_config.step.eks_resource_scaling_config.scaling_resources` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResources {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResources({
    required this.namespace,
    this.resources,
  });

  final TfArg<String> namespace;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourcesResources
  >?
  resources;

  Map<String, Object?> encode() => {
    'namespace': namespace.toTfJson(),
    if (resources != null)
      'resources': [for (final e in resources!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.eks_resource_scaling_config.scaling_resources.resources` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourcesResources {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigScalingResourcesResources({
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
    if (hpaName != null) 'hpa_name': hpaName!.toTfJson(),
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    'resource_name': resourceName.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.eks_resource_scaling_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  final TfArg<num> minimumSuccessPercentage;

  Map<String, Object?> encode() => {
    'minimum_success_percentage': minimumSuccessPercentage.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.execution_approval_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepExecutionApprovalConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepExecutionApprovalConfig({
    required this.approvalRole,
    this.timeoutMinutes,
  });

  final TfArg<String> approvalRole;

  final TfArg<num>? timeoutMinutes;

  Map<String, Object?> encode() => {
    'approval_role': approvalRole.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.global_aurora_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepGlobalAuroraConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepGlobalAuroraConfig({
    required this.behavior,
    this.crossAccountRole,
    required this.databaseClusterArns,
    this.externalId,
    required this.globalClusterIdentifier,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<String> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<List<Object?>> databaseClusterArns;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    'database_cluster_arns': databaseClusterArns.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.global_aurora_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful({
    required this.ungraceful,
  });

  final TfArg<String> ungraceful;

  Map<String, Object?> encode() => {'ungraceful': ungraceful.toTfJson()};
}

/// Typed helper for the `workflow.step.parallel_config.step.lambda_event_source_mapping_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfig({
    required this.action,
    this.timeoutMinutes,
    this.regionEventSourceMapping,
    this.ungraceful,
  });

  final TfArg<String> action;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigRegionEventSourceMapping
  >?
  regionEventSourceMapping;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (regionEventSourceMapping != null)
      'region_event_source_mapping': [
        for (final e in regionEventSourceMapping!) e.encode(),
      ],
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.lambda_event_source_mapping_config.region_event_source_mapping` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigRegionEventSourceMapping {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigRegionEventSourceMapping({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'region': region.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.lambda_event_source_mapping_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigUngraceful({
    required this.behavior,
  });

  final TfArg<String> behavior;

  Map<String, Object?> encode() => {'behavior': behavior.toTfJson()};
}

/// Typed helper for the `workflow.step.parallel_config.step.neptune_global_database_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfig({
    required this.behavior,
    this.crossAccountRole,
    this.externalId,
    required this.globalClusterIdentifier,
    required this.regionDatabaseClusterArns,
    this.timeoutMinutes,
    this.ungraceful,
  });

  final TfArg<String> behavior;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  final TfArg<String> globalClusterIdentifier;

  final TfArg<Map<String, String>> regionDatabaseClusterArns;

  final TfArg<num>? timeoutMinutes;

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfigUngraceful
  >?
  ungraceful;

  Map<String, Object?> encode() => {
    'behavior': behavior.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'global_cluster_identifier': globalClusterIdentifier.toTfJson(),
    'region_database_cluster_arns': regionDatabaseClusterArns.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (ungraceful != null)
      'ungraceful': [for (final e in ungraceful!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.neptune_global_database_config.ungraceful` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfigUngraceful {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfigUngraceful({
    required this.ungraceful,
  });

  final TfArg<String> ungraceful;

  Map<String, Object?> encode() => {'ungraceful': ungraceful.toTfJson()};
}

/// Typed helper for the `workflow.step.parallel_config.step.rds_create_cross_region_read_replica_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepRdsCreateCrossRegionReadReplicaConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepRdsCreateCrossRegionReadReplicaConfig({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    'db_instance_arn_map': dbInstanceArnMap.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.rds_promote_read_replica_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    'db_instance_arn_map': dbInstanceArnMap.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.region_switch_plan_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.route53_health_check_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig({
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

  final List<
    ArcregionswitchPlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet
  >?
  recordSet;

  Map<String, Object?> encode() => {
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'hosted_zone_id': hostedZoneId.toTfJson(),
    'record_name': recordName.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (recordSet != null)
      'record_set': [for (final e in recordSet!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.parallel_config.step.route53_health_check_config.record_set` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet {
  const ArcregionswitchPlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet({
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

/// Typed helper for the `workflow.step.rds_create_cross_region_read_replica_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepRdsCreateCrossRegionReadReplicaConfig {
  const ArcregionswitchPlanWorkflowStepRdsCreateCrossRegionReadReplicaConfig({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    'db_instance_arn_map': dbInstanceArnMap.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.rds_promote_read_replica_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepRdsPromoteReadReplicaConfig {
  const ArcregionswitchPlanWorkflowStepRdsPromoteReadReplicaConfig({
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
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    'db_instance_arn_map': dbInstanceArnMap.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.region_switch_plan_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepRegionSwitchPlanConfig {
  const ArcregionswitchPlanWorkflowStepRegionSwitchPlanConfig({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  final TfArg<String> arn;

  final TfArg<String>? crossAccountRole;

  final TfArg<String>? externalId;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
  };
}

/// Typed helper for the `workflow.step.route53_health_check_config` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepRoute53HealthCheckConfig {
  const ArcregionswitchPlanWorkflowStepRoute53HealthCheckConfig({
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

  final List<ArcregionswitchPlanWorkflowStepRoute53HealthCheckConfigRecordSet>?
  recordSet;

  Map<String, Object?> encode() => {
    if (crossAccountRole != null)
      'cross_account_role': crossAccountRole!.toTfJson(),
    if (externalId != null) 'external_id': externalId!.toTfJson(),
    'hosted_zone_id': hostedZoneId.toTfJson(),
    'record_name': recordName.toTfJson(),
    if (timeoutMinutes != null) 'timeout_minutes': timeoutMinutes!.toTfJson(),
    if (recordSet != null)
      'record_set': [for (final e in recordSet!) e.encode()],
  };
}

/// Typed helper for the `workflow.step.route53_health_check_config.record_set` block of
/// `aws_arcregionswitch_plan` (derived from provider schema).
@immutable
final class ArcregionswitchPlanWorkflowStepRoute53HealthCheckConfigRecordSet {
  const ArcregionswitchPlanWorkflowStepRoute53HealthCheckConfigRecordSet({
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
    required TfArg<String> recoveryApproach,
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
           if (description != null) 'description': description,
           'execution_role': executionRole,
           'name': name,
           if (primaryRegion != null) 'primary_region': primaryRegion,
           'recovery_approach': recoveryApproach,
           if (recoveryTimeObjectiveMinutes != null)
             'recovery_time_objective_minutes': recoveryTimeObjectiveMinutes,
           if (region != null) 'region': region,
           'regions': regions,
           if (tags != null) 'tags': tags,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
