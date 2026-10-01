// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS EC2 Auto Scaling and launch configurations.
library;

export 'src/autoscaling/aws_autoscaling_attachment.dart'
    show
        AutoscalingAttachmentTarget,
        AutoscalingAttachmentTargetElb,
        AutoscalingAttachmentTargetLbTargetGroupArn,
        AwsAutoscalingAttachment;
export 'src/autoscaling/aws_autoscaling_group.dart'
    show
        AutoscalingGroupAcceleratorCount,
        AutoscalingGroupAcceleratorManufacturers,
        AutoscalingGroupAcceleratorNames,
        AutoscalingGroupAcceleratorTotalMemoryMib,
        AutoscalingGroupAcceleratorTypes,
        AutoscalingGroupAlarmSpecification,
        AutoscalingGroupAvailabilityZoneDistribution,
        AutoscalingGroupBareMetal,
        AutoscalingGroupBaselineEbsBandwidthMbps,
        AutoscalingGroupBurstablePerformance,
        AutoscalingGroupCapacityDistributionStrategy,
        AutoscalingGroupCapacityReservationPreference,
        AutoscalingGroupCapacityReservationSpecification,
        AutoscalingGroupCapacityReservationTarget,
        AutoscalingGroupCapacityReservationTargetCapacityReservationIds,
        AutoscalingGroupCapacityReservationTargetCapacityReservationResourceGroupArns,
        AutoscalingGroupCpuManufacturers,
        AutoscalingGroupDefaultResult,
        AutoscalingGroupDesiredCapacityType,
        AutoscalingGroupIdentifier,
        AutoscalingGroupIdentifierId,
        AutoscalingGroupIdentifierName,
        AutoscalingGroupInitialLifecycleHook,
        AutoscalingGroupInstanceGenerations,
        AutoscalingGroupInstanceLifecyclePolicy,
        AutoscalingGroupInstanceMaintenancePolicy,
        AutoscalingGroupInstanceRefresh,
        AutoscalingGroupInstanceRequirements,
        AutoscalingGroupInstanceReusePolicy,
        AutoscalingGroupInstanceSource,
        AutoscalingGroupInstanceSourceLaunchConfiguration,
        AutoscalingGroupInstanceSourceLaunchTemplate,
        AutoscalingGroupInstanceSourceMixedInstancesPolicy,
        AutoscalingGroupInstancesDistribution,
        AutoscalingGroupLaunchTemplate,
        AutoscalingGroupLaunchTemplateSpecification,
        AutoscalingGroupLifecycleTransition,
        AutoscalingGroupLocalStorage,
        AutoscalingGroupLocalStorageTypes,
        AutoscalingGroupMemoryGibPerVcpu,
        AutoscalingGroupMemoryMib,
        AutoscalingGroupMixedInstancesPolicy,
        AutoscalingGroupMixedInstancesPolicyLaunchTemplate,
        AutoscalingGroupName,
        AutoscalingGroupNameChoice,
        AutoscalingGroupNamePrefix,
        AutoscalingGroupNetworkBandwidthGbps,
        AutoscalingGroupNetworkInterfaceCount,
        AutoscalingGroupOverride,
        AutoscalingGroupPlacement,
        AutoscalingGroupPlacementAvailabilityZones,
        AutoscalingGroupPlacementVpcZoneIdentifier,
        AutoscalingGroupPoolState,
        AutoscalingGroupPreferences,
        AutoscalingGroupRetentionTriggers,
        AutoscalingGroupScaleInProtectedInstances,
        AutoscalingGroupStandbyInstances,
        AutoscalingGroupStrategy,
        AutoscalingGroupTag,
        AutoscalingGroupTerminateHookAbandon,
        AutoscalingGroupTotalLocalStorageGb,
        AutoscalingGroupTrafficSource,
        AutoscalingGroupVcpuCount,
        AutoscalingGroupWarmPool,
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
        AutoscalingPolicyAdjustment,
        AutoscalingPolicyCustomizedCapacityMetricSpecification,
        AutoscalingPolicyCustomizedLoadMetricSpecification,
        AutoscalingPolicyCustomizedMetricSpecification,
        AutoscalingPolicyCustomizedScalingMetricSpecification,
        AutoscalingPolicyCustomizedScalingMetricSpecificationChoice,
        AutoscalingPolicyDimensions,
        AutoscalingPolicyMaxCapacityBreachBehavior,
        AutoscalingPolicyMetric,
        AutoscalingPolicyMetricDataQueries,
        AutoscalingPolicyMetricDataQueriesMetricStat,
        AutoscalingPolicyMetricDimension,
        AutoscalingPolicyMetricStat,
        AutoscalingPolicyMetrics,
        AutoscalingPolicyMode,
        AutoscalingPolicyPredefinedLoadMetricSpecification,
        AutoscalingPolicyPredefinedLoadMetricSpecificationPredefinedMetricType,
        AutoscalingPolicyPredefinedMetricPairSpecification,
        AutoscalingPolicyPredefinedMetricPairSpecificationPredefinedMetricType,
        AutoscalingPolicyPredefinedMetricSpecification,
        AutoscalingPolicyPredefinedScalingMetricSpecification,
        AutoscalingPolicyPredefinedScalingMetricSpecificationChoice,
        AutoscalingPolicyPredefinedScalingMetricSpecificationPredefinedMetricType,
        AutoscalingPolicyPredictiveScalingConfiguration,
        AutoscalingPolicyPredictiveScalingConfigurationMetricSpecification,
        AutoscalingPolicyScalingAdjustment,
        AutoscalingPolicyScalingMetricSpecification,
        AutoscalingPolicyStepAdjustment,
        AutoscalingPolicyStepAdjustmentChoice,
        AutoscalingPolicyTargetTrackingConfiguration,
        AutoscalingPolicyTargetTrackingConfigurationCustomizedMetricSpecification,
        AutoscalingPolicyTargetTrackingConfigurationMetricSpecification,
        AutoscalingPolicyTargetTrackingConfigurationPredefinedMetricSpecification,
        AutoscalingPolicyType,
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
        LaunchConfigurationHttpEndpoint,
        LaunchConfigurationHttpTokens,
        LaunchConfigurationMetadataOptions,
        LaunchConfigurationName,
        LaunchConfigurationNameChoice,
        LaunchConfigurationNamePrefix,
        LaunchConfigurationRootBlockDevice,
        LaunchConfigurationUserData,
        LaunchConfigurationUserDataBase64,
        LaunchConfigurationUserDataChoice;
