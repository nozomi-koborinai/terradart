// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Compute Engine beta-only types: machine images, future
/// reservations, region backend buckets, network policies, and
/// backend IAM adjuncts.
library;

export 'package:terradart_core/terradart_core.dart';
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
        ComputeFutureReservationAccelerator,
        ComputeFutureReservationAggregateReservation,
        ComputeFutureReservationAutoCreatedReservationsDuration,
        ComputeFutureReservationCommitmentInfo,
        ComputeFutureReservationCommitmentPlan,
        ComputeFutureReservationDeploymentType,
        ComputeFutureReservationDuration,
        ComputeFutureReservationGuestAccelerators,
        ComputeFutureReservationInstanceProperties,
        ComputeFutureReservationInterface,
        ComputeFutureReservationLocalSsds,
        ComputeFutureReservationMaintenanceInterval,
        ComputeFutureReservationMode,
        ComputeFutureReservationParams,
        ComputeFutureReservationPlanningStatus,
        ComputeFutureReservationPreviousCommitmentTerms,
        ComputeFutureReservationProjectMap,
        ComputeFutureReservationReservedResources,
        ComputeFutureReservationSchedulingType,
        ComputeFutureReservationShareSettings,
        ComputeFutureReservationShareType,
        ComputeFutureReservationSpecificSkuProperties,
        ComputeFutureReservationTimeWindow,
        ComputeFutureReservationVmFamily,
        ComputeFutureReservationWorkloadType,
        GoogleComputeFutureReservation;
export 'src/compute/google_compute_instance_from_machine_image.dart'
    show
        ComputeInstanceFromMachineImageAccessConfig,
        ComputeInstanceFromMachineImageAdvancedMachineFeatures,
        ComputeInstanceFromMachineImageAliasIpRange,
        ComputeInstanceFromMachineImageAliasIpv6Range,
        ComputeInstanceFromMachineImageConfidentialInstanceConfig,
        ComputeInstanceFromMachineImageGracefulShutdown,
        ComputeInstanceFromMachineImageGuestAccelerator,
        ComputeInstanceFromMachineImageInstanceEncryptionKey,
        ComputeInstanceFromMachineImageIpv6AccessConfig,
        ComputeInstanceFromMachineImageLocalSsdRecoveryTimeout,
        ComputeInstanceFromMachineImageMaxDuration,
        ComputeInstanceFromMachineImageMaxRunDuration,
        ComputeInstanceFromMachineImageNetworkInterface,
        ComputeInstanceFromMachineImageNetworkPerformanceConfig,
        ComputeInstanceFromMachineImageNicType,
        ComputeInstanceFromMachineImageNodeAffinities,
        ComputeInstanceFromMachineImageOnInstanceStopAction,
        ComputeInstanceFromMachineImageParams,
        ComputeInstanceFromMachineImagePreemptionNoticeDuration,
        ComputeInstanceFromMachineImageReservationAffinity,
        ComputeInstanceFromMachineImageScheduling,
        ComputeInstanceFromMachineImageServiceAccount,
        ComputeInstanceFromMachineImageShieldedInstanceConfig,
        ComputeInstanceFromMachineImageSourceMachineImageEncryptionKey,
        ComputeInstanceFromMachineImageSpecificReservation,
        ComputeInstanceFromMachineImageTotalEgressBandwidthTier,
        ComputeInstanceFromMachineImageWorkloadIdentityConfig,
        GoogleComputeInstanceFromMachineImage;
export 'src/compute/google_compute_machine_image.dart'
    show
        ComputeMachineImageEncryptionKey,
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
        ComputeNetworkFirewallPolicyPacketMirroringRuleLayer4Configs,
        ComputeNetworkFirewallPolicyPacketMirroringRuleMatch,
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
        ComputeRegionNetworkPolicyTrafficClassificationRuleDscpMode,
        ComputeRegionNetworkPolicyTrafficClassificationRuleLayer4Configs,
        ComputeRegionNetworkPolicyTrafficClassificationRuleMatch,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTarget,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTags,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTargetSecureTagsChoice,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTargetServiceAccounts,
        ComputeRegionNetworkPolicyTrafficClassificationRuleTrafficClass,
        ComputeRegionNetworkPolicyTrafficClassificationRuleType,
        GoogleComputeRegionNetworkPolicyTrafficClassificationRule;
