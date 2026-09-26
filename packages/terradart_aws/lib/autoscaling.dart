// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS EC2 Auto Scaling and launch configurations.
library;

export 'src/autoscaling/aws_autoscaling_attachment.dart'
    show AwsAutoscalingAttachment;
export 'src/autoscaling/aws_autoscaling_group.dart'
    show
        AutoscalingGroupAvailabilityZoneDistribution,
        AutoscalingGroupCapacityReservationSpecification,
        AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget,
        AutoscalingGroupInitialLifecycleHook,
        AutoscalingGroupInstanceLifecyclePolicy,
        AutoscalingGroupInstanceLifecyclePolicyRetentionTriggers,
        AutoscalingGroupInstanceMaintenancePolicy,
        AutoscalingGroupInstanceRefresh,
        AutoscalingGroupInstanceRefreshPreferences,
        AutoscalingGroupInstanceRefreshPreferencesAlarmSpecification,
        AutoscalingGroupLaunchTemplate,
        AutoscalingGroupMixedInstancesPolicy,
        AutoscalingGroupMixedInstancesPolicyInstancesDistribution,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplate,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverride,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification,
        AutoscalingGroupTag,
        AutoscalingGroupTrafficSource,
        AutoscalingGroupWarmPool,
        AutoscalingGroupWarmPoolInstanceReusePolicy,
        AwsAutoscalingGroup;
export 'src/autoscaling/aws_autoscaling_group_tag.dart'
    show AutoscalingGroupTagTag, AwsAutoscalingGroupTag;
export 'src/autoscaling/aws_autoscaling_lifecycle_hook.dart'
    show AwsAutoscalingLifecycleHook;
export 'src/autoscaling/aws_autoscaling_notification.dart'
    show AwsAutoscalingNotification;
export 'src/autoscaling/aws_autoscaling_policy.dart'
    show
        AutoscalingPolicyPredictiveScalingConfiguration,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueries,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStat,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStatMetric,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueriesMetricStatMetricDimensions,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueries,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStat,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStatMetric,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueriesMetricStatMetricDimensions,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueries,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStat,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStatMetric,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueriesMetricStatMetricDimensions,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification,
        AutoscalingPolicyStepAdjustment,
        AutoscalingPolicyTargetTrackingConfiguration,
        AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecification,
        AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension,
        AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetrics,
        AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStat,
        AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStatMetric,
        AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricsMetricStatMetricDimensions,
        AutoscalingPolicyTargetTrackingConfigurationPredefinedMetricSpecification,
        AwsAutoscalingPolicy;
export 'src/autoscaling/aws_autoscaling_schedule.dart'
    show AwsAutoscalingSchedule;
export 'src/autoscaling/aws_autoscaling_traffic_source_attachment.dart'
    show
        AutoscalingTrafficSourceAttachmentTrafficSource,
        AwsAutoscalingTrafficSourceAttachment;
export 'src/autoscaling/aws_launch_configuration.dart'
    show
        AwsLaunchConfiguration,
        LaunchConfigurationEbsBlockDevice,
        LaunchConfigurationEphemeralBlockDevice,
        LaunchConfigurationMetadataOptions,
        LaunchConfigurationRootBlockDevice;
