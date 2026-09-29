// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Compute Engine beta-only types: machine images, future
/// reservations, region backend buckets, network policies, and
/// backend IAM adjuncts.
library;

export 'src/compute/google_compute_backend_bucket_iam_binding.dart'
    show
        ComputeBackendBucketIamBindingCondition,
        GoogleComputeBackendBucketIamBinding;
export 'src/compute/google_compute_backend_bucket_iam_member.dart'
    show
        ComputeBackendBucketIamMemberCondition,
        GoogleComputeBackendBucketIamMember;
export 'src/compute/google_compute_backend_bucket_iam_policy.dart'
    show GoogleComputeBackendBucketIamPolicy;
export 'src/compute/google_compute_backend_service_iam_binding.dart'
    show
        ComputeBackendServiceIamBindingCondition,
        GoogleComputeBackendServiceIamBinding;
export 'src/compute/google_compute_backend_service_iam_member.dart'
    show
        ComputeBackendServiceIamMemberCondition,
        GoogleComputeBackendServiceIamMember;
export 'src/compute/google_compute_backend_service_iam_policy.dart'
    show GoogleComputeBackendServiceIamPolicy;
export 'src/compute/google_compute_future_reservation.dart'
    show
        ComputeFutureReservationAggregateReservation,
        ComputeFutureReservationAggregateReservationReservedResources,
        ComputeFutureReservationAggregateReservationReservedResourcesAccelerator,
        ComputeFutureReservationAggregateReservationVmFamily,
        ComputeFutureReservationAggregateReservationWorkloadType,
        ComputeFutureReservationAutoCreatedReservationsDuration,
        ComputeFutureReservationCommitmentInfo,
        ComputeFutureReservationCommitmentInfoCommitmentPlan,
        ComputeFutureReservationCommitmentInfoPreviousCommitmentTerms,
        ComputeFutureReservationDeploymentType,
        ComputeFutureReservationParams,
        ComputeFutureReservationPlanningStatus,
        ComputeFutureReservationReservationMode,
        ComputeFutureReservationSchedulingType,
        ComputeFutureReservationShareSettings,
        ComputeFutureReservationShareSettingsProjectMap,
        ComputeFutureReservationShareSettingsShareType,
        ComputeFutureReservationSpecificSkuProperties,
        ComputeFutureReservationSpecificSkuPropertiesInstanceProperties,
        ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerators,
        ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsds,
        ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsdsInterface,
        ComputeFutureReservationSpecificSkuPropertiesInstancePropertiesMaintenanceInterval,
        ComputeFutureReservationTimeWindow,
        ComputeFutureReservationTimeWindowDuration,
        GoogleComputeFutureReservation;
export 'src/compute/google_compute_instance_from_machine_image.dart'
    show
        ComputeInstanceFromMachineImageAdvancedMachineFeatures,
        ComputeInstanceFromMachineImageConfidentialInstanceConfig,
        ComputeInstanceFromMachineImageGuestAccelerator,
        ComputeInstanceFromMachineImageInstanceEncryptionKey,
        ComputeInstanceFromMachineImageNetworkInterface,
        ComputeInstanceFromMachineImageNetworkInterfaceAccessConfig,
        ComputeInstanceFromMachineImageNetworkInterfaceAliasIpRange,
        ComputeInstanceFromMachineImageNetworkInterfaceAliasIpv6Range,
        ComputeInstanceFromMachineImageNetworkInterfaceIpv6AccessConfig,
        ComputeInstanceFromMachineImageNetworkInterfaceNicType,
        ComputeInstanceFromMachineImageNetworkPerformanceConfig,
        ComputeInstanceFromMachineImageNetworkPerformanceConfigTotalEgressBandwidthTier,
        ComputeInstanceFromMachineImageParams,
        ComputeInstanceFromMachineImageReservationAffinity,
        ComputeInstanceFromMachineImageReservationAffinitySpecificReservation,
        ComputeInstanceFromMachineImageScheduling,
        ComputeInstanceFromMachineImageSchedulingGracefulShutdown,
        ComputeInstanceFromMachineImageSchedulingGracefulShutdownMaxDuration,
        ComputeInstanceFromMachineImageSchedulingLocalSsdRecoveryTimeout,
        ComputeInstanceFromMachineImageSchedulingMaxRunDuration,
        ComputeInstanceFromMachineImageSchedulingNodeAffinities,
        ComputeInstanceFromMachineImageSchedulingOnInstanceStopAction,
        ComputeInstanceFromMachineImageSchedulingPreemptionNoticeDuration,
        ComputeInstanceFromMachineImageServiceAccount,
        ComputeInstanceFromMachineImageShieldedInstanceConfig,
        ComputeInstanceFromMachineImageSourceMachineImageEncryptionKey,
        ComputeInstanceFromMachineImageWorkloadIdentityConfig,
        GoogleComputeInstanceFromMachineImage;
export 'src/compute/google_compute_machine_image.dart'
    show
        ComputeMachineImageMachineImageEncryptionKey,
        ComputeMachineImageParams,
        GoogleComputeMachineImage;
export 'src/compute/google_compute_machine_image_iam_binding.dart'
    show
        ComputeMachineImageIamBindingCondition,
        GoogleComputeMachineImageIamBinding;
export 'src/compute/google_compute_machine_image_iam_member.dart'
    show
        ComputeMachineImageIamMemberCondition,
        GoogleComputeMachineImageIamMember;
export 'src/compute/google_compute_machine_image_iam_policy.dart'
    show GoogleComputeMachineImageIamPolicy;
export 'src/compute/google_compute_network_firewall_policy_packet_mirroring_rule.dart'
    show
        ComputeNetworkFirewallPolicyPacketMirroringRuleDirection,
        ComputeNetworkFirewallPolicyPacketMirroringRuleMatch,
        ComputeNetworkFirewallPolicyPacketMirroringRuleMatchLayer4Configs,
        ComputeNetworkFirewallPolicyPacketMirroringRuleTargetSecureTags,
        GoogleComputeNetworkFirewallPolicyPacketMirroringRule;
export 'src/compute/google_compute_region_backend_bucket.dart'
    show
        ComputeRegionBackendBucketLoadBalancingScheme,
        GoogleComputeRegionBackendBucket;
export 'src/compute/google_compute_region_backend_bucket_iam_binding.dart'
    show
        ComputeRegionBackendBucketIamBindingCondition,
        GoogleComputeRegionBackendBucketIamBinding;
export 'src/compute/google_compute_region_backend_bucket_iam_member.dart'
    show
        ComputeRegionBackendBucketIamMemberCondition,
        GoogleComputeRegionBackendBucketIamMember;
export 'src/compute/google_compute_region_backend_bucket_iam_policy.dart'
    show GoogleComputeRegionBackendBucketIamPolicy;
export 'src/compute/google_compute_region_backend_service_iam_binding.dart'
    show
        ComputeRegionBackendServiceIamBindingCondition,
        GoogleComputeRegionBackendServiceIamBinding;
export 'src/compute/google_compute_region_backend_service_iam_member.dart'
    show
        ComputeRegionBackendServiceIamMemberCondition,
        GoogleComputeRegionBackendServiceIamMember;
export 'src/compute/google_compute_region_backend_service_iam_policy.dart'
    show GoogleComputeRegionBackendServiceIamPolicy;
export 'src/compute/google_compute_region_network_policy.dart'
    show GoogleComputeRegionNetworkPolicy;
export 'src/compute/google_compute_region_network_policy_traffic_classification_rule.dart'
    show
        ComputeRegionNetworkPolicyTrafficClassificationRuleAction,
        ComputeRegionNetworkPolicyTrafficClassificationRuleActionDscpMode,
        ComputeRegionNetworkPolicyTrafficClassificationRuleActionTrafficClass,
        ComputeRegionNetworkPolicyTrafficClassificationRuleActionType,
        ComputeRegionNetworkPolicyTrafficClassificationRuleMatch,
        ComputeRegionNetworkPolicyTrafficClassificationRuleMatchLayer4Configs,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTags,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTargetServiceAccountsOrTargetSecureTags,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTargetServiceAccountsOrTargetSecureTagsTargetSecureTags,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTargetServiceAccountsOrTargetSecureTagsTargetServiceAccounts,
        GoogleComputeRegionNetworkPolicyTrafficClassificationRule;
