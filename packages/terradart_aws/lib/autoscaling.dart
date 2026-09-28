// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS EC2 Auto Scaling and launch configurations.
library;

export 'src/autoscaling/aws_autoscaling_attachment.dart'
    show
        AutoscalingAttachmentElbOption,
        AutoscalingAttachmentElbOrLbTargetGroupArn,
        AutoscalingAttachmentLbTargetGroupArnOption,
        AwsAutoscalingAttachment;
export 'src/autoscaling/aws_autoscaling_group.dart'
    show
        AutoscalingGroupAvailabilityZoneDistribution,
        AutoscalingGroupAvailabilityZoneDistributionCapacityDistributionStrategy,
        AutoscalingGroupCapacityReservationSpecification,
        AutoscalingGroupCapacityReservationSpecificationCapacityReservationPreference,
        AutoscalingGroupCapacityReservationSpecificationCapacityReservationTarget,
        AutoscalingGroupDesiredCapacityType,
        AutoscalingGroupInitialLifecycleHook,
        AutoscalingGroupInitialLifecycleHookDefaultResult,
        AutoscalingGroupInitialLifecycleHookLifecycleTransition,
        AutoscalingGroupInstanceLifecyclePolicy,
        AutoscalingGroupInstanceLifecyclePolicyRetentionTriggers,
        AutoscalingGroupInstanceLifecyclePolicyRetentionTriggersTerminateHookAbandon,
        AutoscalingGroupInstanceMaintenancePolicy,
        AutoscalingGroupInstanceRefresh,
        AutoscalingGroupInstanceRefreshPreferences,
        AutoscalingGroupInstanceRefreshPreferencesAlarmSpecification,
        AutoscalingGroupInstanceRefreshPreferencesScaleInProtectedInstances,
        AutoscalingGroupInstanceRefreshPreferencesStandbyInstances,
        AutoscalingGroupInstanceRefreshStrategy,
        AutoscalingGroupLaunchConfigurationOption,
        AutoscalingGroupLaunchConfigurationOrLaunchTemplateOrMixedInstancesPolicy,
        AutoscalingGroupLaunchTemplate,
        AutoscalingGroupLaunchTemplateOption,
        AutoscalingGroupMixedInstancesPolicy,
        AutoscalingGroupMixedInstancesPolicyInstancesDistribution,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplate,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverride,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorManufacturers,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorNames,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTypes,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBareMetal,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBurstablePerformance,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsCpuManufacturers,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsInstanceGenerations,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsLocalStorage,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsLocalStorageTypes,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification,
        AutoscalingGroupMixedInstancesPolicyOption,
        AutoscalingGroupTag,
        AutoscalingGroupTrafficSource,
        AutoscalingGroupWarmPool,
        AutoscalingGroupWarmPoolInstanceReusePolicy,
        AutoscalingGroupWarmPoolPoolState,
        AwsAutoscalingGroup;
export 'src/autoscaling/aws_autoscaling_group_tag.dart'
    show AutoscalingGroupTagTag, AwsAutoscalingGroupTag;
export 'src/autoscaling/aws_autoscaling_lifecycle_hook.dart'
    show
        AutoscalingLifecycleHookDefaultResult,
        AutoscalingLifecycleHookLifecycleTransition,
        AwsAutoscalingLifecycleHook;
export 'src/autoscaling/aws_autoscaling_notification.dart'
    show AwsAutoscalingNotification;
export 'src/autoscaling/aws_autoscaling_policy.dart'
    show
        AutoscalingPolicyPolicyType,
        AutoscalingPolicyPredictiveScalingConfiguration,
        AutoscalingPolicyPredictiveScalingConfigurationMaxCapacityBreachBehavior,
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
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecificationPredefinedMetricType,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecificationPredefinedMetricType,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecificationPredefinedMetricType,
        AutoscalingPolicyPredictiveScalingConfigurationMode,
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
        LaunchConfigurationMetadataOptionsHttpEndpoint,
        LaunchConfigurationMetadataOptionsHttpTokens,
        LaunchConfigurationRootBlockDevice;
