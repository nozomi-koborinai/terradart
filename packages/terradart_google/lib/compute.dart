// packages/terradart_google/lib/compute.dart
/// Compute Engine resources: instances, addresses, firewalls, networks,
/// subnetworks.
library;

export 'src/compute/google_compute_address.dart'
    show
        AddressType,
        GoogleComputeAddress,
        IpVersion,
        Ipv6EndpointType,
        NetworkTier;
export 'src/compute/google_compute_autoscaler.dart'
    show
        ComputeAutoscalerAutoscalerAutoscalingPolicy,
        AutoscalerCpuPredictiveMethod,
        ComputeAutoscalerAutoscalerCpuUtilization,
        ComputeAutoscalerAutoscalerLoadBalancingUtilization,
        ComputeAutoscalerAutoscalerMetric,
        AutoscalerMetricType,
        AutoscalerMode,
        ComputeAutoscalerAutoscalerScaleInControl,
        ComputeAutoscalerAutoscalerScaleInReplicas,
        ComputeAutoscalerAutoscalerScalingSchedule,
        GoogleComputeAutoscaler;
export 'src/compute/google_compute_backend_bucket.dart'
    show
        BackendBucketCacheMode,
        ComputeBackendBucketBackendBucketCdnBypassCacheOnRequestHeader,
        ComputeBackendBucketBackendBucketCdnCacheKeyPolicy,
        ComputeBackendBucketBackendBucketCdnNegativeCachingPolicy,
        ComputeBackendBucketBackendBucketCdnPolicy,
        BackendBucketCompressionMode,
        BackendBucketLoadBalancingScheme,
        ComputeBackendBucketBackendBucketParams,
        GoogleComputeBackendBucket;
export 'src/compute/google_compute_backend_service.dart'
    show
        ComputeBackendServiceBackendServiceAwsV4Authentication,
        ComputeBackendServiceBackendServiceBackend,
        ComputeBackendServiceBackendServiceBackendCustomMetric,
        BackendServiceBalancingMode,
        BackendServiceCacheMode,
        ComputeBackendServiceBackendServiceCdnBypassCacheOnRequestHeader,
        ComputeBackendServiceBackendServiceCdnCacheKeyPolicy,
        ComputeBackendServiceBackendServiceCdnNegativeCachingPolicy,
        ComputeBackendServiceBackendServiceCdnPolicy,
        ComputeBackendServiceBackendServiceCircuitBreakers,
        BackendServiceCompressionMode,
        ComputeBackendServiceBackendServiceConsistentHash,
        ComputeBackendServiceBackendServiceConsistentHashHttpCookie,
        ComputeBackendServiceBackendServiceCustomMetric,
        ComputeBackendServiceBackendServiceDuration,
        ComputeBackendServiceBackendServiceIap,
        ComputeBackendServiceBackendServiceLocalityLbBuiltinPolicy,
        ComputeBackendServiceBackendServiceLocalityLbCustomPolicy,
        ComputeBackendServiceBackendServiceLocalityLbPolicyEntry,
        ComputeBackendServiceBackendServiceLogConfig,
        BackendServiceLogOptionalMode,
        ComputeBackendServiceBackendServiceMaxStreamDuration,
        ComputeBackendServiceBackendServiceOutlierDetection,
        ComputeBackendServiceBackendServiceParams,
        BackendServicePreference,
        BackendServiceProtocol,
        ComputeBackendServiceBackendServiceSecuritySettings,
        ComputeBackendServiceBackendServiceStrongSessionAffinityCookie,
        ComputeBackendServiceBackendServiceTlsSettings,
        ComputeBackendServiceBackendServiceTlsSubjectAltName,
        ExternalManagedMigrationState,
        GoogleComputeBackendService,
        IpAddressSelectionPolicy,
        LoadBalancingScheme,
        LocalityLbPolicy,
        SessionAffinity;
export 'src/compute/google_compute_disk.dart'
    show
        ComputeDiskGuestOsFeature,
        ComputeDiskGuestOsFeatureType,
        GoogleComputeDisk;
export 'src/compute/google_compute_disk_iam_member.dart'
    show GoogleComputeDiskIamMember;
export 'src/compute/google_compute_firewall.dart'
    show
        ComputeFirewallAllowPolicy,
        ComputeFirewallDenyPolicy,
        ComputeFirewallFirewallAllowRule,
        ComputeFirewallFirewallDenyRule,
        ComputeFirewallRulePolicy,
        FirewallDirection,
        ComputeFirewallFirewallLogConfig,
        FirewallLogMetadata,
        GoogleComputeFirewall;
export 'src/compute/google_compute_forwarding_rule.dart'
    show
        ForwardingRuleIpProtocol,
        ForwardingRuleIpVersion,
        ForwardingRuleLoadBalancingScheme,
        ForwardingRuleNetworkTier,
        ComputeForwardingRuleForwardingRuleServiceDirectoryRegistration,
        GoogleComputeForwardingRule;
export 'src/compute/google_compute_global_address.dart'
    show
        GlobalAddressIpVersion,
        GlobalAddressPurpose,
        GlobalAddressType,
        GoogleComputeGlobalAddress;
export 'src/compute/google_compute_global_forwarding_rule.dart'
    show
        GlobalForwardingRuleIpProtocol,
        GlobalForwardingRuleIpVersion,
        GlobalForwardingRuleLoadBalancingScheme,
        ComputeGlobalForwardingRuleGlobalForwardingRuleMetadataFilter,
        ComputeGlobalForwardingRuleGlobalForwardingRuleMetadataFilterLabel,
        GlobalForwardingRuleMetadataFilterMatchCriteria,
        GlobalForwardingRuleMigrationState,
        GlobalForwardingRuleNetworkTier,
        ComputeGlobalForwardingRuleGlobalForwardingRuleServiceDirectoryRegistration,
        GoogleComputeGlobalForwardingRule;
export 'src/compute/google_compute_global_network_endpoint.dart'
    show GoogleComputeGlobalNetworkEndpoint;
export 'src/compute/google_compute_global_network_endpoint_group.dart'
    show
        GlobalNetworkEndpointGroupType,
        GoogleComputeGlobalNetworkEndpointGroup;
export 'src/compute/google_compute_health_check.dart'
    show
        GoogleComputeHealthCheck,
        ComputeHealthCheckProtocol,
        ComputeHealthCheckGrpcHealthCheckConfig,
        ComputeHealthCheckHealthCheckLogConfig,
        HealthCheckPortSpecification,
        HealthCheckProxyHeader,
        HealthCheckType,
        ComputeHealthCheckHttp2HealthCheckConfig,
        ComputeHealthCheckHttpHealthCheckConfig,
        ComputeHealthCheckHttpsHealthCheckConfig,
        ComputeHealthCheckSslHealthCheckConfig,
        ComputeHealthCheckTcpHealthCheckConfig;
export 'src/compute/google_compute_instance.dart'
    show
        ComputeInstanceAccessConfig,
        AccessConfigNetworkTier,
        ComputeInstanceAdvancedMachineFeatures,
        ComputeInstanceAliasIpRange,
        ComputeInstanceAttachedDisk,
        ComputeInstanceBootDisk,
        ComputeInstanceConfidentialInstanceConfig,
        ConfidentialInstanceType,
        GoogleComputeInstance,
        ComputeInstanceGuestAccelerator,
        ComputeInstanceInitializeParams,
        ComputeInstanceInstanceParams,
        InstanceTerminationAction,
        ComputeInstanceIpv6AccessConfig,
        ComputeInstanceNetworkInterface,
        ComputeInstanceNetworkPerformanceConfig,
        ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier,
        NicType,
        ComputeInstanceNodeAffinity,
        OnHostMaintenance,
        PerformanceMonitoringUnit,
        ProvisioningModel,
        ComputeInstanceReservationAffinity,
        ReservationAffinityType,
        ComputeInstanceScheduling,
        ComputeInstanceSchedulingDuration,
        ComputeInstanceScratchDisk,
        ScratchDiskInterface,
        ComputeInstanceServiceAccount,
        ComputeInstanceShieldedInstanceConfig,
        ComputeInstanceSpecificReservation;
export 'src/compute/google_compute_instance_group_manager.dart'
    show
        GoogleComputeInstanceGroupManager,
        ComputeInstanceGroupManagerInstanceGroupManagerAllInstancesConfig,
        ComputeInstanceGroupManagerInstanceGroupManagerAutoHealingPolicy,
        ComputeInstanceGroupManagerInstanceGroupManagerInstanceLifecyclePolicy,
        ComputeInstanceGroupManagerInstanceGroupManagerNamedPort,
        ComputeInstanceGroupManagerInstanceGroupManagerResourcePolicies,
        ComputeInstanceGroupManagerInstanceGroupManagerStandbyPolicy,
        ComputeInstanceGroupManagerInstanceGroupManagerStatefulDisk,
        ComputeInstanceGroupManagerInstanceGroupManagerStatefulIp,
        ComputeInstanceGroupManagerInstanceGroupManagerTargetSizePolicy,
        ComputeInstanceGroupManagerInstanceGroupManagerUpdatePolicy,
        InstanceGroupManagerListManagedInstancesResults,
        InstanceGroupManagerUpdatePolicyAction,
        InstanceGroupManagerUpdatePolicyReplacementMethod,
        InstanceGroupManagerUpdatePolicyType,
        ComputeInstanceGroupManagerInstanceGroupManagerVersion,
        ComputeInstanceGroupManagerInstanceGroupManagerVersionTargetSize;
export 'src/compute/google_compute_instance_iam_member.dart'
    show GoogleComputeInstanceIamMember;
export 'src/compute/google_compute_instance_template.dart'
    show
        GoogleComputeInstanceTemplate,
        ComputeInstanceTemplateInstanceTemplateAccessConfig,
        InstanceTemplateAccessConfigNetworkTier,
        ComputeInstanceTemplateInstanceTemplateAdvancedMachineFeatures,
        ComputeInstanceTemplateInstanceTemplateAliasIpRange,
        ComputeInstanceTemplateInstanceTemplateConfidentialInstanceConfig,
        InstanceTemplateConfidentialInstanceType,
        ComputeInstanceTemplateInstanceTemplateDisk,
        ComputeInstanceTemplateInstanceTemplateDiskEncryptionKey,
        InstanceTemplateDiskMode,
        ComputeInstanceTemplateInstanceTemplateGuestAccelerator,
        InstanceTemplateInstanceTerminationAction,
        ComputeInstanceTemplateInstanceTemplateIpv6AccessConfig,
        ComputeInstanceTemplateInstanceTemplateNetworkInterface,
        ComputeInstanceTemplateInstanceTemplateNetworkPerformanceConfig,
        InstanceTemplateNicType,
        ComputeInstanceTemplateInstanceTemplateNodeAffinity,
        InstanceTemplateOnHostMaintenance,
        ComputeInstanceTemplateInstanceTemplateOnInstanceStopAction,
        InstanceTemplatePerformanceMonitoringUnit,
        InstanceTemplateProvisioningModel,
        ComputeInstanceTemplateInstanceTemplateReservationAffinity,
        InstanceTemplateReservationAffinityType,
        ComputeInstanceTemplateInstanceTemplateScheduling,
        ComputeInstanceTemplateInstanceTemplateSchedulingDuration,
        ComputeInstanceTemplateInstanceTemplateServiceAccount,
        ComputeInstanceTemplateInstanceTemplateShieldedInstanceConfig,
        ComputeInstanceTemplateInstanceTemplateSourceImageEncryptionKey,
        ComputeInstanceTemplateInstanceTemplateSourceSnapshotEncryptionKey,
        ComputeInstanceTemplateInstanceTemplateSpecificReservation;
export 'src/compute/google_compute_managed_ssl_certificate.dart'
    show
        GoogleComputeManagedSslCertificate,
        ComputeManagedSslCertificateManagedSslCertificateConfig,
        ManagedSslCertificateType;
export 'src/compute/google_compute_network.dart'
    show
        BgpBestPathSelectionMode,
        BgpInterRegionCost,
        GoogleComputeNetwork,
        NetworkFirewallPolicyEnforcementOrder,
        RoutingMode;
export 'src/compute/google_compute_network_endpoint.dart'
    show GoogleComputeNetworkEndpoint;
export 'src/compute/google_compute_network_endpoint_group.dart'
    show GoogleComputeNetworkEndpointGroup, NetworkEndpointGroupType;
export 'src/compute/google_compute_region_autoscaler.dart'
    show
        GoogleComputeRegionAutoscaler,
        ComputeRegionAutoscalerRegionAutoscalerAutoscalingPolicy,
        RegionAutoscalerCpuPredictiveMethod,
        ComputeRegionAutoscalerRegionAutoscalerCpuUtilization,
        ComputeRegionAutoscalerRegionAutoscalerLoadBalancingUtilization,
        ComputeRegionAutoscalerRegionAutoscalerMetric,
        RegionAutoscalerMetricType,
        RegionAutoscalerMode,
        ComputeRegionAutoscalerRegionAutoscalerScaleInControl,
        ComputeRegionAutoscalerRegionAutoscalerScaleInReplicas,
        ComputeRegionAutoscalerRegionAutoscalerScalingSchedule;
export 'src/compute/google_compute_region_backend_service.dart'
    show
        GoogleComputeRegionBackendService,
        ComputeRegionBackendServiceRegionBackendServiceBackend,
        ComputeRegionBackendServiceRegionBackendServiceBackendCustomMetric,
        RegionBackendServiceBalancingMode,
        RegionBackendServiceCacheMode,
        ComputeRegionBackendServiceRegionBackendServiceCdnCacheKeyPolicy,
        ComputeRegionBackendServiceRegionBackendServiceCdnNegativeCachingPolicy,
        ComputeRegionBackendServiceRegionBackendServiceCdnPolicy,
        ComputeRegionBackendServiceRegionBackendServiceCircuitBreakers,
        ComputeRegionBackendServiceRegionBackendServiceConnectionTrackingPolicy,
        RegionBackendServiceConnectionPersistence,
        ComputeRegionBackendServiceRegionBackendServiceConsistentHash,
        ComputeRegionBackendServiceRegionBackendServiceConsistentHashHttpCookie,
        ComputeRegionBackendServiceRegionBackendServiceCustomMetric,
        ComputeRegionBackendServiceRegionBackendServiceDuration,
        ComputeRegionBackendServiceRegionBackendServiceFailoverPolicy,
        RegionBackendServiceFastIpMove,
        ComputeRegionBackendServiceRegionBackendServiceHaPolicy,
        ComputeRegionBackendServiceRegionBackendServiceHaPolicyLeader,
        ComputeRegionBackendServiceRegionBackendServiceHaPolicyLeaderNetworkEndpoint,
        ComputeRegionBackendServiceRegionBackendServiceIap,
        RegionBackendServiceIpAddressSelectionPolicy,
        RegionBackendServiceLoadBalancingScheme,
        RegionBackendServiceLocalityLbPolicy,
        ComputeRegionBackendServiceRegionBackendServiceLogConfig,
        RegionBackendServiceLogOptionalMode,
        ComputeRegionBackendServiceRegionBackendServiceNetworkPassThroughLbTrafficPolicy,
        ComputeRegionBackendServiceRegionBackendServiceOutlierDetection,
        ComputeRegionBackendServiceRegionBackendServiceParams,
        RegionBackendServiceProtocol,
        RegionBackendServiceSessionAffinity,
        ComputeRegionBackendServiceRegionBackendServiceStrongSessionAffinityCookie,
        ComputeRegionBackendServiceRegionBackendServiceTlsSettings,
        ComputeRegionBackendServiceRegionBackendServiceTlsSubjectAltName,
        ComputeRegionBackendServiceRegionBackendServiceZonalAffinity,
        RegionBackendServiceTrackingMode,
        RegionBackendServiceZonalAffinitySpillover;
export 'src/compute/google_compute_region_health_check.dart'
    show
        GoogleComputeRegionHealthCheck,
        ComputeRegionHealthCheckProtocol,
        ComputeRegionHealthCheckRegionHealthCheckGrpcConfig,
        ComputeRegionHealthCheckRegionHealthCheckHttp2Config,
        ComputeRegionHealthCheckRegionHealthCheckHttpConfig,
        ComputeRegionHealthCheckRegionHealthCheckHttpsConfig,
        ComputeRegionHealthCheckRegionHealthCheckLogConfig,
        RegionHealthCheckPortSpecification,
        RegionHealthCheckProxyHeader,
        ComputeRegionHealthCheckRegionHealthCheckSslConfig,
        ComputeRegionHealthCheckRegionHealthCheckTcpConfig,
        RegionHealthCheckType;
export 'src/compute/google_compute_region_disk.dart'
    show
        ComputeRegionDiskGuestOsFeature,
        ComputeRegionDiskGuestOsFeatureType,
        GoogleComputeRegionDisk;
export 'src/compute/google_compute_region_instant_snapshot.dart'
    show
        ComputeRegionInstantSnapshotDeletionPolicy,
        ComputeRegionInstantSnapshotParams,
        GoogleComputeRegionInstantSnapshot;
export 'src/compute/google_compute_region_instant_snapshot_iam_member.dart'
    show GoogleComputeRegionInstantSnapshotIamMember;
export 'src/compute/google_compute_region_instant_snapshot_iam_binding.dart'
    show GoogleComputeRegionInstantSnapshotIamBinding;
export 'src/compute/google_compute_region_instant_snapshot_iam_policy.dart'
    show GoogleComputeRegionInstantSnapshotIamPolicy;
export 'src/compute/google_compute_region_instance_group_manager.dart'
    show
        GoogleComputeRegionInstanceGroupManager,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerAllInstancesConfig,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerAutoHealingPolicy,
        RegionInstanceGroupManagerDistributionPolicyTargetShape,
        RegionInstanceGroupManagerListManagedInstancesResults,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerInstanceFlexibilityPolicy,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerInstanceLifecyclePolicy,
        RegionInstanceGroupManagerInstanceRedistributionType,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerInstanceSelection,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerNamedPort,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerResourcePolicies,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerStandbyPolicy,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerStatefulDisk,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerStatefulIp,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerTargetSizePolicy,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerUpdatePolicy,
        RegionInstanceGroupManagerUpdatePolicyAction,
        RegionInstanceGroupManagerUpdatePolicyReplacementMethod,
        RegionInstanceGroupManagerUpdatePolicyType,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerVersion,
        ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerVersionTargetSize;
export 'src/compute/google_compute_region_network_endpoint.dart'
    show GoogleComputeRegionNetworkEndpoint;
export 'src/compute/google_compute_region_network_endpoint_group.dart'
    show
        GoogleComputeRegionNetworkEndpointGroup,
        ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupAppEngine,
        ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudFunction,
        ComputeRegionNetworkEndpointGroupRegionNetworkEndpointGroupCloudRun,
        RegionNetworkEndpointGroupType;
export 'src/compute/google_compute_region_security_policy.dart'
    show
        ComputeRegionSecurityPolicyRegionSecurityPolicyAdvancedOptionsConfig,
        ComputeRegionSecurityPolicyRegionSecurityPolicyDdosProtectionConfig,
        ComputeRegionSecurityPolicyRegionSecurityPolicyJsonCustomConfig,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRule,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRuleEnforceOnKeyConfig,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchConfig,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchExpr,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafConfig,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusion,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusionMatch,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitOptions,
        ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitThreshold,
        ComputeRegionSecurityPolicyRegionSecurityPolicyUserDefinedField,
        GoogleComputeRegionSecurityPolicy,
        RegionSecurityPolicyDdosProtection,
        RegionSecurityPolicyJsonParsing,
        RegionSecurityPolicyType,
        RegionSecurityPolicyUserDefinedFieldBase;
export 'src/compute/google_compute_region_security_policy_rule.dart'
    show
        ComputeRegionSecurityPolicyRuleMatch,
        ComputeRegionSecurityPolicyRuleMatchConfig,
        ComputeRegionSecurityPolicyRulePreconfiguredWafConfig,
        ComputeRegionSecurityPolicyRulePreconfiguredWafExclusion,
        ComputeRegionSecurityPolicyRulePreconfiguredWafExclusionMatch,
        ComputeRegionSecurityPolicyRuleRateLimitEnforceOnKeyConfig,
        ComputeRegionSecurityPolicyRuleRateLimitOptions,
        GoogleComputeRegionSecurityPolicyRule;
export 'src/compute/google_compute_region_ssl_policy.dart'
    show
        GoogleComputeRegionSslPolicy,
        RegionSslPolicyMinTlsVersion,
        RegionSslPolicyProfile;
export 'src/compute/google_compute_region_target_http_proxy.dart'
    show GoogleComputeRegionTargetHttpProxy;
export 'src/compute/google_compute_region_target_tcp_proxy.dart'
    show GoogleComputeRegionTargetTcpProxy, RegionTargetTcpProxyProxyHeader;
export 'src/compute/google_compute_region_ssl_certificate.dart'
    show GoogleComputeRegionSslCertificate;
export 'src/compute/google_compute_region_target_https_proxy.dart'
    show GoogleComputeRegionTargetHttpsProxy;
export 'src/compute/google_compute_router.dart'
    show
        ComputeRouterBgp,
        ComputeRouterBgpAdvertiseMode,
        GoogleComputeRouter;
export 'src/compute/google_compute_router_nat.dart'
    show
        GoogleComputeRouterNat,
        ComputeRouterNatNatIpAllocateOption,
        ComputeRouterNatSourceSubnetworkIpRangesToNat,
        ComputeRouterNatSourceSubnetworkIpRangesToNat64,
        ComputeRouterNatAutoNetworkTier,
        ComputeRouterNatType;
export 'src/compute/google_compute_network_peering.dart'
    show GoogleComputeNetworkPeering;
export 'src/compute/google_compute_network_peering_routes_config.dart'
    show GoogleComputeNetworkPeeringRoutesConfig;
export 'src/compute/google_compute_external_vpn_gateway.dart'
    show
        GoogleComputeExternalVpnGateway,
        ComputeExternalVpnGatewayRedundancyType;
export 'src/compute/google_compute_router_interface.dart'
    show GoogleComputeRouterInterface;
export 'src/compute/google_compute_router_peer.dart'
    show GoogleComputeRouterPeer;
export 'src/compute/google_compute_interconnect.dart'
    show
        GoogleComputeInterconnect,
        ComputeInterconnectInterconnectType,
        ComputeInterconnectLinkType,
        ComputeInterconnectOperationalStatus,
        ComputeInterconnectState;
export 'src/compute/google_compute_interconnect_attachment.dart'
    show
        GoogleComputeInterconnectAttachment,
        ComputeInterconnectAttachmentType,
        ComputeInterconnectAttachmentBandwidth,
        ComputeInterconnectAttachmentEncryption,
        ComputeInterconnectAttachmentStackType,
        ComputeInterconnectAttachmentState;
export 'src/compute/google_compute_vpn_gateway.dart'
    show GoogleComputeVpnGateway;
export 'src/compute/google_compute_ha_vpn_gateway.dart'
    show
        GoogleComputeHaVpnGateway,
        ComputeHaVpnGatewayGatewayIpVersion,
        ComputeHaVpnGatewayStackType;
export 'src/compute/google_compute_vpn_tunnel.dart'
    show GoogleComputeVpnTunnel;
export 'src/compute/google_compute_shared_vpc_host_project.dart'
    show GoogleComputeSharedVpcHostProject;
export 'src/compute/google_compute_shared_vpc_service_project.dart'
    show GoogleComputeSharedVpcServiceProject;
export 'src/compute/google_compute_route.dart'
    show
        ComputeRouteGatewayNextHop,
        ComputeRouteIlbNextHop,
        ComputeRouteInstanceNextHop,
        ComputeRouteIpNextHop,
        ComputeRouteNextHop,
        ComputeRouteVpnTunnelNextHop,
        GoogleComputeRoute;
export 'src/compute/google_compute_network_firewall_policy.dart'
    show GoogleComputeNetworkFirewallPolicy;
export 'src/compute/google_compute_disk_resource_policy_attachment.dart'
    show GoogleComputeDiskResourcePolicyAttachment;
export 'src/compute/google_compute_resource_policy.dart'
    show
        ComputeResourcePolicyDailySchedule,
        ComputeResourcePolicyDayOfWeek,
        ComputeResourcePolicyHourlySchedule,
        ComputeResourcePolicyMaxTopologyDistance,
        ComputeResourcePolicyOnSourceDiskDelete,
        ComputeResourcePolicyRetentionPolicy,
        ComputeResourcePolicySnapshotDayOfWeek,
        ComputeResourcePolicySnapshotProperties,
        ComputeResourcePolicySnapshotSchedule,
        ComputeResourcePolicySnapshotSchedulePolicy,
        ComputeResourcePolicyWeeklySchedule,
        ComputeResourcePolicyWorkloadPolicy,
        ComputeResourcePolicyWorkloadType,
        GoogleComputeResourcePolicy;
export 'src/compute/google_compute_project_metadata_item.dart'
    show GoogleComputeProjectMetadataItem;
export 'src/compute/google_compute_region_url_map.dart'
    show
        ComputeRegionUrlMapRegionUrlMapCachePolicy,
        ComputeRegionUrlMapRegionUrlMapHeaderAction,
        ComputeRegionUrlMapRegionUrlMapHeaderMatch,
        ComputeRegionUrlMapRegionUrlMapHeaderMatchRange,
        ComputeRegionUrlMapRegionUrlMapHeaderToAdd,
        ComputeRegionUrlMapRegionUrlMapHostRule,
        ComputeRegionUrlMapRegionUrlMapMetadataFilter,
        ComputeRegionUrlMapRegionUrlMapPathMatcher,
        ComputeRegionUrlMapRegionUrlMapPathRule,
        ComputeRegionUrlMapRegionUrlMapQueryParameterMatch,
        ComputeRegionUrlMapRegionUrlMapRouteAction,
        ComputeRegionUrlMapRegionUrlMapRouteRule,
        ComputeRegionUrlMapRegionUrlMapRouteRuleMatch,
        ComputeRegionUrlMapRegionUrlMapTest,
        ComputeRegionUrlMapRegionUrlMapTestHeader,
        ComputeRegionUrlMapRegionUrlMapUrlRedirect,
        GoogleComputeRegionUrlMap,
        RegionUrlMapCacheMode,
        RegionUrlMapMetadataFilterMatchCriteria,
        RegionUrlMapRedirectResponseCode;
export 'src/compute/google_compute_security_policy_rule.dart'
    show
        ComputeSecurityPolicyRuleMatch,
        ComputeSecurityPolicyRuleMatchConfig,
        ComputeSecurityPolicyRulePreconfiguredWafConfig,
        ComputeSecurityPolicyRulePreconfiguredWafExclusion,
        ComputeSecurityPolicyRulePreconfiguredWafExclusionMatch,
        ComputeSecurityPolicyRuleRateLimitEnforceOnKeyConfig,
        ComputeSecurityPolicyRuleRateLimitOptions,
        GoogleComputeSecurityPolicyRule;
export 'src/compute/google_compute_service_attachment.dart'
    show
        GoogleComputeServiceAttachment,
        ServiceAttachmentConnectionPreference;
export 'src/compute/google_compute_security_policy.dart'
    show
        GoogleComputeSecurityPolicy,
        ComputeSecurityPolicySecurityPolicyAdaptiveProtectionConfig,
        ComputeSecurityPolicySecurityPolicyAdaptiveProtectionThresholdConfig,
        ComputeSecurityPolicySecurityPolicyAdvancedOptionsConfig,
        ComputeSecurityPolicySecurityPolicyJsonCustomConfig,
        SecurityPolicyJsonParsing,
        ComputeSecurityPolicySecurityPolicyLayer7DdosDefenseConfig,
        SecurityPolicyLogLevel,
        ComputeSecurityPolicySecurityPolicyRecaptchaOptionsConfig,
        ComputeSecurityPolicySecurityPolicyRule,
        SecurityPolicyRuleAction,
        ComputeSecurityPolicySecurityPolicyRuleEnforceOnKeyConfig,
        ComputeSecurityPolicySecurityPolicyRuleHeaderAction,
        ComputeSecurityPolicySecurityPolicyRuleHeaderAdd,
        ComputeSecurityPolicySecurityPolicyRuleMatch,
        ComputeSecurityPolicySecurityPolicyRuleMatchConfig,
        ComputeSecurityPolicySecurityPolicyRuleMatchExpr,
        SecurityPolicyRuleMatchVersionedExpr,
        ComputeSecurityPolicySecurityPolicyRuleRateLimitOptions,
        ComputeSecurityPolicySecurityPolicyRuleRateLimitThreshold,
        ComputeSecurityPolicySecurityPolicyRuleRedirectOptions,
        ComputeSecurityPolicySecurityPolicyTrafficGranularityConfig,
        SecurityPolicyRuleRateLimitEnforceOnKey,
        SecurityPolicyType,
        SecurityPolicyWafExclusionOperator;
export 'src/compute/google_compute_ssl_certificate.dart'
    show GoogleComputeSslCertificate;
export 'src/compute/google_compute_ssl_policy.dart'
    show GoogleComputeSslPolicy, SslPolicyMinTlsVersion, SslPolicyProfile;
export 'src/compute/google_compute_subnetwork.dart'
    show
        GoogleComputeSubnetwork,
        ComputeSubnetworkSecondaryIpRange,
        SubnetworkIpv6AccessType,
        ComputeSubnetworkSubnetworkLogConfig,
        SubnetworkLogConfigAggregationInterval,
        SubnetworkLogConfigMetadata,
        SubnetworkPurpose,
        SubnetworkResolveSubnetMask,
        SubnetworkRole,
        SubnetworkStackType;
export 'src/compute/google_compute_subnetwork_iam_member.dart'
    show GoogleComputeSubnetworkIamMember;
export 'src/compute/google_compute_target_http_proxy.dart'
    show GoogleComputeTargetHttpProxy;
export 'src/compute/google_compute_target_https_proxy.dart'
    show GoogleComputeTargetHttpsProxy, QuicOverride, TlsEarlyData;
export 'src/compute/google_compute_target_ssl_proxy.dart'
    show GoogleComputeTargetSslProxy, TargetSslProxyProxyHeader;
export 'src/compute/google_compute_target_tcp_proxy.dart'
    show GoogleComputeTargetTcpProxy, TargetTcpProxyProxyHeader;
export 'src/compute/google_compute_url_map.dart'
    show
        ComputeUrlMapUrlMapCachePolicy,
        ComputeUrlMapUrlMapHeaderAction,
        ComputeUrlMapUrlMapHeaderMatch,
        ComputeUrlMapUrlMapHeaderMatchRange,
        ComputeUrlMapUrlMapHeaderToAdd,
        ComputeUrlMapUrlMapHostRule,
        ComputeUrlMapUrlMapMetadataFilter,
        ComputeUrlMapUrlMapPathMatcher,
        ComputeUrlMapUrlMapPathRule,
        ComputeUrlMapUrlMapQueryParameterMatch,
        ComputeUrlMapUrlMapRouteAction,
        ComputeUrlMapUrlMapRouteRule,
        ComputeUrlMapUrlMapRouteRuleMatch,
        ComputeUrlMapUrlMapTest,
        ComputeUrlMapUrlMapTestHeader,
        ComputeUrlMapUrlMapUrlRedirect,
        GoogleComputeUrlMap,
        UrlMapCacheMode,
        UrlMapMetadataFilterMatchCriteria,
        UrlMapRedirectResponseCode;
