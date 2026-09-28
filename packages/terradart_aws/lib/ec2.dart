// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS EC2 and VPC (instances, networking, EBS, and transit gateways).
library;

export 'src/ec2/aws_ami.dart'
    show
        AmiArchitecture,
        AmiBootMode,
        AmiEbsBlockDevice,
        AmiEbsBlockDeviceVolumeType,
        AmiEphemeralBlockDevice,
        AmiImdsSupport,
        AmiTpmSupport,
        AmiVirtualizationType,
        AwsAmi;
export 'src/ec2/aws_ami_copy.dart'
    show AmiCopyEbsBlockDevice, AmiCopyEphemeralBlockDevice, AwsAmiCopy;
export 'src/ec2/aws_ami_from_instance.dart'
    show
        AmiFromInstanceEbsBlockDevice,
        AmiFromInstanceEphemeralBlockDevice,
        AwsAmiFromInstance;
export 'src/ec2/aws_ami_launch_permission.dart'
    show AmiLaunchPermissionGroup, AwsAmiLaunchPermission;
export 'src/ec2/aws_customer_gateway.dart'
    show AwsCustomerGateway, CustomerGatewayType;
export 'src/ec2/aws_default_network_acl.dart'
    show
        AwsDefaultNetworkAcl,
        DefaultNetworkAclEgress,
        DefaultNetworkAclIngress;
export 'src/ec2/aws_default_route_table.dart' show AwsDefaultRouteTable;
export 'src/ec2/aws_default_security_group.dart' show AwsDefaultSecurityGroup;
export 'src/ec2/aws_default_subnet.dart'
    show AwsDefaultSubnet, DefaultSubnetPrivateDnsHostnameTypeOnLaunch;
export 'src/ec2/aws_default_vpc.dart' show AwsDefaultVpc;
export 'src/ec2/aws_default_vpc_dhcp_options.dart'
    show AwsDefaultVpcDhcpOptions;
export 'src/ec2/aws_ebs_default_kms_key.dart' show AwsEbsDefaultKmsKey;
export 'src/ec2/aws_ebs_encryption_by_default.dart'
    show AwsEbsEncryptionByDefault;
export 'src/ec2/aws_ebs_fast_snapshot_restore.dart'
    show AwsEbsFastSnapshotRestore;
export 'src/ec2/aws_ebs_snapshot.dart' show AwsEbsSnapshot;
export 'src/ec2/aws_ebs_snapshot_block_public_access.dart'
    show AwsEbsSnapshotBlockPublicAccess, EbsSnapshotBlockPublicAccessState;
export 'src/ec2/aws_ebs_snapshot_copy.dart' show AwsEbsSnapshotCopy;
export 'src/ec2/aws_ebs_snapshot_import.dart'
    show
        AwsEbsSnapshotImport,
        EbsSnapshotImportClientData,
        EbsSnapshotImportDiskContainer,
        EbsSnapshotImportDiskContainerFormat,
        EbsSnapshotImportDiskContainerUserBucket;
export 'src/ec2/aws_ebs_volume.dart' show AwsEbsVolume;
export 'src/ec2/aws_ebs_volume_copy.dart'
    show AwsEbsVolumeCopy, EbsVolumeCopyVolumeType;
export 'src/ec2/aws_ec2_allowed_images_settings.dart'
    show
        AwsEc2AllowedImagesSettings,
        Ec2AllowedImagesSettingsImageCriterion,
        Ec2AllowedImagesSettingsImageCriterionCreationDateCondition,
        Ec2AllowedImagesSettingsImageCriterionDeprecationTimeCondition,
        Ec2AllowedImagesSettingsImageCriterionImageProviders,
        Ec2AllowedImagesSettingsState;
export 'src/ec2/aws_ec2_availability_zone_group.dart'
    show AwsEc2AvailabilityZoneGroup, Ec2AvailabilityZoneGroupOptInStatus;
export 'src/ec2/aws_ec2_capacity_block_reservation.dart'
    show
        AwsEc2CapacityBlockReservation,
        Ec2CapacityBlockReservationInstancePlatform;
export 'src/ec2/aws_ec2_capacity_reservation.dart'
    show
        AwsEc2CapacityReservation,
        Ec2CapacityReservationEndDateType,
        Ec2CapacityReservationInstanceMatchCriteria,
        Ec2CapacityReservationInstancePlatform,
        Ec2CapacityReservationTenancy;
export 'src/ec2/aws_ec2_carrier_gateway.dart' show AwsEc2CarrierGateway;
export 'src/ec2/aws_ec2_client_vpn_authorization_rule.dart'
    show AwsEc2ClientVpnAuthorizationRule;
export 'src/ec2/aws_ec2_client_vpn_endpoint.dart'
    show
        AwsEc2ClientVpnEndpoint,
        Ec2ClientVpnEndpointAuthenticationOptions,
        Ec2ClientVpnEndpointAuthenticationOptionsType,
        Ec2ClientVpnEndpointClientConnectOptions,
        Ec2ClientVpnEndpointClientLoginBannerOptions,
        Ec2ClientVpnEndpointClientRouteEnforcementOptions,
        Ec2ClientVpnEndpointConnectionLogOptions,
        Ec2ClientVpnEndpointEndpointIpAddressType,
        Ec2ClientVpnEndpointSelfServicePortal,
        Ec2ClientVpnEndpointTrafficIpAddressType,
        Ec2ClientVpnEndpointTransitGatewayConfiguration,
        Ec2ClientVpnEndpointTransportProtocol;
export 'src/ec2/aws_ec2_client_vpn_network_association.dart'
    show AwsEc2ClientVpnNetworkAssociation;
export 'src/ec2/aws_ec2_client_vpn_route.dart' show AwsEc2ClientVpnRoute;
export 'src/ec2/aws_ec2_default_credit_specification.dart'
    show
        AwsEc2DefaultCreditSpecification,
        Ec2DefaultCreditSpecificationCpuCredits,
        Ec2DefaultCreditSpecificationInstanceFamily;
export 'src/ec2/aws_ec2_fleet.dart'
    show
        AwsEc2Fleet,
        Ec2FleetExcessCapacityTerminationPolicy,
        Ec2FleetFleetInstanceSet,
        Ec2FleetLaunchTemplateConfig,
        Ec2FleetLaunchTemplateConfigLaunchTemplateSpecification,
        Ec2FleetLaunchTemplateConfigOverride,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirements,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorManufacturers,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorNames,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTypes,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsBareMetal,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsBurstablePerformance,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsCpuManufacturers,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsInstanceGenerations,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsLocalStorage,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsLocalStorageTypes,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb,
        Ec2FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount,
        Ec2FleetOnDemandOptions,
        Ec2FleetOnDemandOptionsCapacityReservationOptions,
        Ec2FleetOnDemandOptionsCapacityReservationOptionsUsageStrategy,
        Ec2FleetSpotOptions,
        Ec2FleetSpotOptionsInstanceInterruptionBehavior,
        Ec2FleetSpotOptionsMaintenanceStrategies,
        Ec2FleetSpotOptionsMaintenanceStrategiesCapacityRebalance,
        Ec2FleetSpotOptionsMaintenanceStrategiesCapacityRebalanceReplacementStrategy,
        Ec2FleetTargetCapacitySpecification,
        Ec2FleetTargetCapacitySpecificationDefaultTargetCapacityType,
        Ec2FleetTargetCapacitySpecificationTargetCapacityUnitType,
        Ec2FleetType;
export 'src/ec2/aws_ec2_host.dart'
    show AwsEc2Host, Ec2HostAutoPlacement, Ec2HostHostRecovery;
export 'src/ec2/aws_ec2_image_block_public_access.dart'
    show AwsEc2ImageBlockPublicAccess, Ec2ImageBlockPublicAccessState;
export 'src/ec2/aws_ec2_instance_connect_endpoint.dart'
    show AwsEc2InstanceConnectEndpoint, Ec2InstanceConnectEndpointIpAddressType;
export 'src/ec2/aws_ec2_instance_metadata_defaults.dart'
    show AwsEc2InstanceMetadataDefaults;
export 'src/ec2/aws_ec2_instance_state.dart'
    show AwsEc2InstanceState, Ec2InstanceStateState;
export 'src/ec2/aws_ec2_local_gateway_route.dart' show AwsEc2LocalGatewayRoute;
export 'src/ec2/aws_ec2_local_gateway_route_table.dart'
    show AwsEc2LocalGatewayRouteTable, Ec2LocalGatewayRouteTableMode;
export 'src/ec2/aws_ec2_local_gateway_route_table_virtual_interface_group_association.dart'
    show AwsEc2LocalGatewayRouteTableVirtualInterfaceGroupAssociation;
export 'src/ec2/aws_ec2_local_gateway_route_table_vpc_association.dart'
    show AwsEc2LocalGatewayRouteTableVpcAssociation;
export 'src/ec2/aws_ec2_managed_prefix_list.dart'
    show
        AwsEc2ManagedPrefixList,
        Ec2ManagedPrefixListAddressFamily,
        Ec2ManagedPrefixListEntry;
export 'src/ec2/aws_ec2_managed_prefix_list_entry.dart'
    show AwsEc2ManagedPrefixListEntry;
export 'src/ec2/aws_ec2_network_insights_access_scope.dart'
    show
        AwsEc2NetworkInsightsAccessScope,
        Ec2NetworkInsightsAccessScopeExcludePaths,
        Ec2NetworkInsightsAccessScopeExcludePathsDestination,
        Ec2NetworkInsightsAccessScopeExcludePathsDestinationPacketHeaderStatement,
        Ec2NetworkInsightsAccessScopeExcludePathsDestinationResourceStatement,
        Ec2NetworkInsightsAccessScopeExcludePathsSource,
        Ec2NetworkInsightsAccessScopeExcludePathsSourcePacketHeaderStatement,
        Ec2NetworkInsightsAccessScopeExcludePathsSourceResourceStatement,
        Ec2NetworkInsightsAccessScopeExcludePathsThroughResources,
        Ec2NetworkInsightsAccessScopeExcludePathsThroughResourcesResourceStatement,
        Ec2NetworkInsightsAccessScopeMatchPaths,
        Ec2NetworkInsightsAccessScopeMatchPathsDestination,
        Ec2NetworkInsightsAccessScopeMatchPathsDestinationPacketHeaderStatement,
        Ec2NetworkInsightsAccessScopeMatchPathsDestinationResourceStatement,
        Ec2NetworkInsightsAccessScopeMatchPathsSource,
        Ec2NetworkInsightsAccessScopeMatchPathsSourcePacketHeaderStatement,
        Ec2NetworkInsightsAccessScopeMatchPathsSourceResourceStatement;
export 'src/ec2/aws_ec2_network_insights_analysis.dart'
    show AwsEc2NetworkInsightsAnalysis;
export 'src/ec2/aws_ec2_network_insights_path.dart'
    show
        AwsEc2NetworkInsightsPath,
        Ec2NetworkInsightsPathFilterAtDestination,
        Ec2NetworkInsightsPathFilterAtDestinationDestinationPortRange,
        Ec2NetworkInsightsPathFilterAtDestinationSourcePortRange,
        Ec2NetworkInsightsPathFilterAtSource,
        Ec2NetworkInsightsPathFilterAtSourceDestinationPortRange,
        Ec2NetworkInsightsPathFilterAtSourceSourcePortRange,
        Ec2NetworkInsightsPathProtocol;
export 'src/ec2/aws_ec2_secondary_network.dart'
    show AwsEc2SecondaryNetwork, Ec2SecondaryNetworkNetworkType;
export 'src/ec2/aws_ec2_secondary_subnet.dart' show AwsEc2SecondarySubnet;
export 'src/ec2/aws_ec2_serial_console_access.dart'
    show AwsEc2SerialConsoleAccess;
export 'src/ec2/aws_ec2_subnet_cidr_reservation.dart'
    show AwsEc2SubnetCidrReservation, Ec2SubnetCidrReservationReservationType;
export 'src/ec2/aws_ec2_tag.dart' show AwsEc2Tag;
export 'src/ec2/aws_ec2_traffic_mirror_filter.dart'
    show AwsEc2TrafficMirrorFilter, Ec2TrafficMirrorFilterNetworkServices;
export 'src/ec2/aws_ec2_traffic_mirror_filter_rule.dart'
    show
        AwsEc2TrafficMirrorFilterRule,
        Ec2TrafficMirrorFilterRuleDestinationPortRange,
        Ec2TrafficMirrorFilterRuleRuleAction,
        Ec2TrafficMirrorFilterRuleSourcePortRange,
        Ec2TrafficMirrorFilterRuleTrafficDirection;
export 'src/ec2/aws_ec2_traffic_mirror_session.dart'
    show AwsEc2TrafficMirrorSession;
export 'src/ec2/aws_ec2_traffic_mirror_target.dart'
    show AwsEc2TrafficMirrorTarget;
export 'src/ec2/aws_ec2_transit_gateway.dart'
    show
        AwsEc2TransitGateway,
        Ec2TransitGatewayAutoAcceptSharedAttachments,
        Ec2TransitGatewayDefaultRouteTableAssociation,
        Ec2TransitGatewayDefaultRouteTablePropagation,
        Ec2TransitGatewayDnsSupport,
        Ec2TransitGatewayEncryptionSupport,
        Ec2TransitGatewayMulticastSupport,
        Ec2TransitGatewaySecurityGroupReferencingSupport,
        Ec2TransitGatewayVpnEcmpSupport;
export 'src/ec2/aws_ec2_transit_gateway_connect.dart'
    show AwsEc2TransitGatewayConnect, Ec2TransitGatewayConnectProtocol;
export 'src/ec2/aws_ec2_transit_gateway_connect_peer.dart'
    show AwsEc2TransitGatewayConnectPeer;
export 'src/ec2/aws_ec2_transit_gateway_default_route_table_association.dart'
    show AwsEc2TransitGatewayDefaultRouteTableAssociation;
export 'src/ec2/aws_ec2_transit_gateway_default_route_table_propagation.dart'
    show AwsEc2TransitGatewayDefaultRouteTablePropagation;
export 'src/ec2/aws_ec2_transit_gateway_metering_policy.dart'
    show AwsEc2TransitGatewayMeteringPolicy;
export 'src/ec2/aws_ec2_transit_gateway_metering_policy_entry.dart'
    show
        AwsEc2TransitGatewayMeteringPolicyEntry,
        Ec2TransitGatewayMeteringPolicyEntryDestinationTransitGatewayAttachmentType,
        Ec2TransitGatewayMeteringPolicyEntryMeteredAccount,
        Ec2TransitGatewayMeteringPolicyEntrySourceTransitGatewayAttachmentType;
export 'src/ec2/aws_ec2_transit_gateway_multicast_domain.dart'
    show
        AwsEc2TransitGatewayMulticastDomain,
        Ec2TransitGatewayMulticastDomainAutoAcceptSharedAssociations,
        Ec2TransitGatewayMulticastDomainIgmpv2Support,
        Ec2TransitGatewayMulticastDomainStaticSourcesSupport;
export 'src/ec2/aws_ec2_transit_gateway_multicast_domain_association.dart'
    show AwsEc2TransitGatewayMulticastDomainAssociation;
export 'src/ec2/aws_ec2_transit_gateway_multicast_group_member.dart'
    show AwsEc2TransitGatewayMulticastGroupMember;
export 'src/ec2/aws_ec2_transit_gateway_multicast_group_source.dart'
    show AwsEc2TransitGatewayMulticastGroupSource;
export 'src/ec2/aws_ec2_transit_gateway_peering_attachment.dart'
    show
        AwsEc2TransitGatewayPeeringAttachment,
        Ec2TransitGatewayPeeringAttachmentOptions,
        Ec2TransitGatewayPeeringAttachmentOptionsDynamicRouting;
export 'src/ec2/aws_ec2_transit_gateway_peering_attachment_accepter.dart'
    show AwsEc2TransitGatewayPeeringAttachmentAccepter;
export 'src/ec2/aws_ec2_transit_gateway_policy_table.dart'
    show AwsEc2TransitGatewayPolicyTable;
export 'src/ec2/aws_ec2_transit_gateway_policy_table_association.dart'
    show AwsEc2TransitGatewayPolicyTableAssociation;
export 'src/ec2/aws_ec2_transit_gateway_policy_table_entry.dart'
    show
        AwsEc2TransitGatewayPolicyTableEntry,
        Ec2TransitGatewayPolicyTableEntryPolicyRule,
        Ec2TransitGatewayPolicyTableEntryPolicyRuleMetadata;
export 'src/ec2/aws_ec2_transit_gateway_prefix_list_reference.dart'
    show AwsEc2TransitGatewayPrefixListReference;
export 'src/ec2/aws_ec2_transit_gateway_route.dart'
    show AwsEc2TransitGatewayRoute;
export 'src/ec2/aws_ec2_transit_gateway_route_table.dart'
    show AwsEc2TransitGatewayRouteTable;
export 'src/ec2/aws_ec2_transit_gateway_route_table_association.dart'
    show AwsEc2TransitGatewayRouteTableAssociation;
export 'src/ec2/aws_ec2_transit_gateway_route_table_propagation.dart'
    show AwsEc2TransitGatewayRouteTablePropagation;
export 'src/ec2/aws_ec2_transit_gateway_vpc_attachment.dart'
    show
        AwsEc2TransitGatewayVpcAttachment,
        Ec2TransitGatewayVpcAttachmentApplianceModeSupport,
        Ec2TransitGatewayVpcAttachmentDnsSupport,
        Ec2TransitGatewayVpcAttachmentIpv6Support,
        Ec2TransitGatewayVpcAttachmentSecurityGroupReferencingSupport;
export 'src/ec2/aws_ec2_transit_gateway_vpc_attachment_accepter.dart'
    show AwsEc2TransitGatewayVpcAttachmentAccepter;
export 'src/ec2/aws_egress_only_internet_gateway.dart'
    show AwsEgressOnlyInternetGateway;
export 'src/ec2/aws_eip.dart' show AwsEip, EipDomain;
export 'src/ec2/aws_eip_association.dart' show AwsEipAssociation;
export 'src/ec2/aws_eip_domain_name.dart' show AwsEipDomainName;
export 'src/ec2/aws_flow_log.dart'
    show
        AwsFlowLog,
        FlowLogDestinationOptions,
        FlowLogDestinationOptionsFileFormat,
        FlowLogLogDestinationType,
        FlowLogTagFieldSpecification,
        FlowLogTagFieldSpecificationResourceType,
        FlowLogTrafficType;
export 'src/ec2/aws_instance.dart'
    show
        AwsInstance,
        InstanceCapacityReservationSpecification,
        InstanceCapacityReservationSpecificationCapacityReservationPreference,
        InstanceCapacityReservationSpecificationCapacityReservationTarget,
        InstanceCpuOptions,
        InstanceCpuOptionsAmdSevSnp,
        InstanceCreditSpecification,
        InstanceCreditSpecificationCpuCredits,
        InstanceEbsBlockDevice,
        InstanceEbsBlockDeviceVolumeType,
        InstanceEnclaveOptions,
        InstanceEphemeralBlockDevice,
        InstanceInstanceMarketOptions,
        InstanceInstanceMarketOptionsMarketType,
        InstanceInstanceMarketOptionsSpotOptions,
        InstanceInstanceMarketOptionsSpotOptionsInstanceInterruptionBehavior,
        InstanceInstanceMarketOptionsSpotOptionsSpotInstanceType,
        InstanceLaunchTemplate,
        InstanceMaintenanceOptions,
        InstanceMaintenanceOptionsAutoRecovery,
        InstanceMetadataOptions,
        InstanceMetadataOptionsHttpEndpoint,
        InstanceMetadataOptionsHttpProtocolIpv6,
        InstanceMetadataOptionsHttpTokens,
        InstanceMetadataOptionsInstanceMetadataTags,
        InstanceNetworkInterface,
        InstancePrimaryNetworkInterface,
        InstancePrivateDnsNameOptions,
        InstancePrivateDnsNameOptionsHostnameType,
        InstanceRootBlockDevice,
        InstanceRootBlockDeviceVolumeType,
        InstanceSecondaryNetworkInterface,
        InstanceTenancy;
export 'src/ec2/aws_internet_gateway.dart' show AwsInternetGateway;
export 'src/ec2/aws_internet_gateway_attachment.dart'
    show AwsInternetGatewayAttachment;
export 'src/ec2/aws_key_pair.dart' show AwsKeyPair;
export 'src/ec2/aws_launch_template.dart'
    show
        AwsLaunchTemplate,
        LaunchTemplateBlockDeviceMappings,
        LaunchTemplateBlockDeviceMappingsEbs,
        LaunchTemplateBlockDeviceMappingsEbsVolumeType,
        LaunchTemplateCapacityReservationSpecification,
        LaunchTemplateCapacityReservationSpecificationCapacityReservationPreference,
        LaunchTemplateCapacityReservationSpecificationCapacityReservationTarget,
        LaunchTemplateCpuOptions,
        LaunchTemplateCpuOptionsAmdSevSnp,
        LaunchTemplateCpuOptionsNestedVirtualization,
        LaunchTemplateCreditSpecification,
        LaunchTemplateCreditSpecificationCpuCredits,
        LaunchTemplateEnclaveOptions,
        LaunchTemplateHibernationOptions,
        LaunchTemplateIamInstanceProfile,
        LaunchTemplateInstanceInitiatedShutdownBehavior,
        LaunchTemplateInstanceMarketOptions,
        LaunchTemplateInstanceMarketOptionsMarketType,
        LaunchTemplateInstanceMarketOptionsSpotOptions,
        LaunchTemplateInstanceMarketOptionsSpotOptionsInstanceInterruptionBehavior,
        LaunchTemplateInstanceMarketOptionsSpotOptionsSpotInstanceType,
        LaunchTemplateInstanceRequirements,
        LaunchTemplateInstanceRequirementsAcceleratorCount,
        LaunchTemplateInstanceRequirementsAcceleratorManufacturers,
        LaunchTemplateInstanceRequirementsAcceleratorNames,
        LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib,
        LaunchTemplateInstanceRequirementsAcceleratorTypes,
        LaunchTemplateInstanceRequirementsBareMetal,
        LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps,
        LaunchTemplateInstanceRequirementsBurstablePerformance,
        LaunchTemplateInstanceRequirementsCpuManufacturers,
        LaunchTemplateInstanceRequirementsInstanceGenerations,
        LaunchTemplateInstanceRequirementsLocalStorage,
        LaunchTemplateInstanceRequirementsLocalStorageTypes,
        LaunchTemplateInstanceRequirementsMemoryGibPerVcpu,
        LaunchTemplateInstanceRequirementsMemoryMib,
        LaunchTemplateInstanceRequirementsNetworkBandwidthGbps,
        LaunchTemplateInstanceRequirementsNetworkInterfaceCount,
        LaunchTemplateInstanceRequirementsTotalLocalStorageGb,
        LaunchTemplateInstanceRequirementsVcpuCount,
        LaunchTemplateLicenseSpecification,
        LaunchTemplateMaintenanceOptions,
        LaunchTemplateMaintenanceOptionsAutoRecovery,
        LaunchTemplateMetadataOptions,
        LaunchTemplateMetadataOptionsHttpEndpoint,
        LaunchTemplateMetadataOptionsHttpProtocolIpv6,
        LaunchTemplateMetadataOptionsHttpTokens,
        LaunchTemplateMetadataOptionsInstanceMetadataTags,
        LaunchTemplateMonitoring,
        LaunchTemplateNetworkInterfaces,
        LaunchTemplateNetworkInterfacesConnectionTrackingSpecification,
        LaunchTemplateNetworkInterfacesEnaSrdSpecification,
        LaunchTemplateNetworkInterfacesEnaSrdSpecificationEnaSrdUdpSpecification,
        LaunchTemplateNetworkInterfacesInterfaceType,
        LaunchTemplateNetworkPerformanceOptions,
        LaunchTemplateNetworkPerformanceOptionsBandwidthWeighting,
        LaunchTemplatePlacement,
        LaunchTemplatePlacementTenancy,
        LaunchTemplatePrivateDnsNameOptions,
        LaunchTemplatePrivateDnsNameOptionsHostnameType,
        LaunchTemplateSecondaryInterfaces,
        LaunchTemplateSecondaryInterfacesInterfaceType,
        LaunchTemplateTagSpecifications,
        LaunchTemplateTagSpecificationsResourceType;
export 'src/ec2/aws_main_route_table_association.dart'
    show AwsMainRouteTableAssociation;
export 'src/ec2/aws_nat_gateway.dart'
    show
        AwsNatGateway,
        NatGatewayAvailabilityMode,
        NatGatewayAvailabilityZoneAddress,
        NatGatewayConnectivityType;
export 'src/ec2/aws_nat_gateway_eip_association.dart'
    show AwsNatGatewayEipAssociation;
export 'src/ec2/aws_network_acl.dart' show AwsNetworkAcl;
export 'src/ec2/aws_network_acl_association.dart' show AwsNetworkAclAssociation;
export 'src/ec2/aws_network_acl_rule.dart'
    show AwsNetworkAclRule, NetworkAclRuleRuleAction;
export 'src/ec2/aws_network_interface.dart'
    show
        AwsNetworkInterface,
        NetworkInterfaceAttachment,
        NetworkInterfaceEnaSrdSpecification,
        NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification,
        NetworkInterfaceInterfaceType;
export 'src/ec2/aws_network_interface_attachment.dart'
    show AwsNetworkInterfaceAttachment;
export 'src/ec2/aws_network_interface_permission.dart'
    show AwsNetworkInterfacePermission, NetworkInterfacePermissionPermission;
export 'src/ec2/aws_network_interface_sg_attachment.dart'
    show AwsNetworkInterfaceSgAttachment;
export 'src/ec2/aws_placement_group.dart'
    show AwsPlacementGroup, PlacementGroupSpreadLevel, PlacementGroupStrategy;
export 'src/ec2/aws_route.dart' show AwsRoute;
export 'src/ec2/aws_route_table.dart' show AwsRouteTable;
export 'src/ec2/aws_route_table_association.dart' show AwsRouteTableAssociation;
export 'src/ec2/aws_security_group.dart' show AwsSecurityGroup;
export 'src/ec2/aws_security_group_rule.dart'
    show AwsSecurityGroupRule, SecurityGroupRuleType;
export 'src/ec2/aws_snapshot_create_volume_permission.dart'
    show AwsSnapshotCreateVolumePermission;
export 'src/ec2/aws_spot_datafeed_subscription.dart'
    show AwsSpotDatafeedSubscription;
export 'src/ec2/aws_spot_fleet_request.dart'
    show
        AwsSpotFleetRequest,
        SpotFleetRequestAllocationStrategy,
        SpotFleetRequestExcessCapacityTerminationPolicy,
        SpotFleetRequestFleetType,
        SpotFleetRequestInstanceInterruptionBehaviour,
        SpotFleetRequestLaunchSpecification,
        SpotFleetRequestLaunchSpecificationEbsBlockDevice,
        SpotFleetRequestLaunchSpecificationEbsBlockDeviceVolumeType,
        SpotFleetRequestLaunchSpecificationEphemeralBlockDevice,
        SpotFleetRequestLaunchSpecificationPlacementTenancy,
        SpotFleetRequestLaunchSpecificationRootBlockDevice,
        SpotFleetRequestLaunchSpecificationRootBlockDeviceVolumeType,
        SpotFleetRequestLaunchTemplateConfig,
        SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification,
        SpotFleetRequestLaunchTemplateConfigOverrides,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirements,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorCount,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorManufacturers,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorNames,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorTotalMemoryMib,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsAcceleratorTypes,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBareMetal,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBaselineEbsBandwidthMbps,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsBurstablePerformance,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsCpuManufacturers,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsInstanceGenerations,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsLocalStorage,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsLocalStorageTypes,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsMemoryGibPerVcpu,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsMemoryMib,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsNetworkBandwidthGbps,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsNetworkInterfaceCount,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsTotalLocalStorageGb,
        SpotFleetRequestLaunchTemplateConfigOverridesInstanceRequirementsVcpuCount,
        SpotFleetRequestOnDemandAllocationStrategy,
        SpotFleetRequestSpotMaintenanceStrategies,
        SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalance,
        SpotFleetRequestSpotMaintenanceStrategiesCapacityRebalanceReplacementStrategy,
        SpotFleetRequestTargetCapacityUnitType;
export 'src/ec2/aws_spot_instance_request.dart'
    show
        AwsSpotInstanceRequest,
        SpotInstanceRequestCapacityReservationSpecification,
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference,
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget,
        SpotInstanceRequestCpuOptions,
        SpotInstanceRequestCpuOptionsAmdSevSnp,
        SpotInstanceRequestCpuOptionsNestedVirtualization,
        SpotInstanceRequestCreditSpecification,
        SpotInstanceRequestCreditSpecificationCpuCredits,
        SpotInstanceRequestEbsBlockDevice,
        SpotInstanceRequestEbsBlockDeviceVolumeType,
        SpotInstanceRequestEnclaveOptions,
        SpotInstanceRequestEphemeralBlockDevice,
        SpotInstanceRequestLaunchTemplate,
        SpotInstanceRequestMaintenanceOptions,
        SpotInstanceRequestMaintenanceOptionsAutoRecovery,
        SpotInstanceRequestMetadataOptions,
        SpotInstanceRequestMetadataOptionsHttpEndpoint,
        SpotInstanceRequestMetadataOptionsHttpProtocolIpv6,
        SpotInstanceRequestMetadataOptionsHttpTokens,
        SpotInstanceRequestMetadataOptionsInstanceMetadataTags,
        SpotInstanceRequestNetworkInterface,
        SpotInstanceRequestPrivateDnsNameOptions,
        SpotInstanceRequestPrivateDnsNameOptionsHostnameType,
        SpotInstanceRequestRootBlockDevice,
        SpotInstanceRequestRootBlockDeviceVolumeType,
        SpotInstanceRequestSecondaryNetworkInterface,
        SpotInstanceRequestSecondaryNetworkInterfaceInterfaceType,
        SpotInstanceRequestTenancy;
export 'src/ec2/aws_subnet.dart'
    show AwsSubnet, SubnetPrivateDnsHostnameTypeOnLaunch;
export 'src/ec2/aws_volume_attachment.dart' show AwsVolumeAttachment;
export 'src/ec2/aws_vpc.dart' show AwsVpc, VpcInstanceTenancy;
export 'src/ec2/aws_vpc_block_public_access_exclusion.dart'
    show
        AwsVpcBlockPublicAccessExclusion,
        VpcBlockPublicAccessExclusionInternetGatewayExclusionMode;
export 'src/ec2/aws_vpc_block_public_access_options.dart'
    show
        AwsVpcBlockPublicAccessOptions,
        VpcBlockPublicAccessOptionsInternetGatewayBlockMode;
export 'src/ec2/aws_vpc_dhcp_options.dart' show AwsVpcDhcpOptions;
export 'src/ec2/aws_vpc_dhcp_options_association.dart'
    show AwsVpcDhcpOptionsAssociation;
export 'src/ec2/aws_vpc_encryption_control.dart'
    show AwsVpcEncryptionControl, VpcEncryptionControlMode;
export 'src/ec2/aws_vpc_endpoint.dart'
    show
        AwsVpcEndpoint,
        VpcEndpointDnsOptions,
        VpcEndpointDnsOptionsDnsRecordIpType,
        VpcEndpointDnsOptionsPrivateDnsPreference,
        VpcEndpointIpAddressType,
        VpcEndpointSubnetConfiguration,
        VpcEndpointVpcEndpointType;
export 'src/ec2/aws_vpc_endpoint_connection_accepter.dart'
    show AwsVpcEndpointConnectionAccepter;
export 'src/ec2/aws_vpc_endpoint_connection_notification.dart'
    show AwsVpcEndpointConnectionNotification;
export 'src/ec2/aws_vpc_endpoint_policy.dart' show AwsVpcEndpointPolicy;
export 'src/ec2/aws_vpc_endpoint_private_dns.dart'
    show AwsVpcEndpointPrivateDns;
export 'src/ec2/aws_vpc_endpoint_route_table_association.dart'
    show AwsVpcEndpointRouteTableAssociation;
export 'src/ec2/aws_vpc_endpoint_security_group_association.dart'
    show AwsVpcEndpointSecurityGroupAssociation;
export 'src/ec2/aws_vpc_endpoint_service.dart'
    show AwsVpcEndpointService, VpcEndpointServiceSupportedIpAddressTypes;
export 'src/ec2/aws_vpc_endpoint_service_allowed_principal.dart'
    show AwsVpcEndpointServiceAllowedPrincipal;
export 'src/ec2/aws_vpc_endpoint_service_private_dns_verification.dart'
    show AwsVpcEndpointServicePrivateDnsVerification;
export 'src/ec2/aws_vpc_endpoint_subnet_association.dart'
    show AwsVpcEndpointSubnetAssociation;
export 'src/ec2/aws_vpc_ipam.dart'
    show
        AwsVpcIpam,
        VpcIpamMeteredAccount,
        VpcIpamOperatingRegions,
        VpcIpamTier;
export 'src/ec2/aws_vpc_ipam_organization_admin_account.dart'
    show AwsVpcIpamOrganizationAdminAccount;
export 'src/ec2/aws_vpc_ipam_pool.dart'
    show
        AwsVpcIpamPool,
        VpcIpamPoolAddressFamily,
        VpcIpamPoolAwsService,
        VpcIpamPoolLocale,
        VpcIpamPoolPublicIpSource,
        VpcIpamPoolSourceResource,
        VpcIpamPoolSourceResourceResourceType;
export 'src/ec2/aws_vpc_ipam_pool_cidr.dart'
    show AwsVpcIpamPoolCidr, VpcIpamPoolCidrCidrAuthorizationContext;
export 'src/ec2/aws_vpc_ipam_pool_cidr_allocation.dart'
    show AwsVpcIpamPoolCidrAllocation;
export 'src/ec2/aws_vpc_ipam_preview_next_cidr.dart'
    show AwsVpcIpamPreviewNextCidr;
export 'src/ec2/aws_vpc_ipam_resource_discovery.dart'
    show
        AwsVpcIpamResourceDiscovery,
        VpcIpamResourceDiscoveryOperatingRegions,
        VpcIpamResourceDiscoveryOrganizationalUnitExclusion;
export 'src/ec2/aws_vpc_ipam_resource_discovery_association.dart'
    show AwsVpcIpamResourceDiscoveryAssociation;
export 'src/ec2/aws_vpc_ipam_scope.dart' show AwsVpcIpamScope;
export 'src/ec2/aws_vpc_ipv4_cidr_block_association.dart'
    show AwsVpcIpv4CidrBlockAssociation;
export 'src/ec2/aws_vpc_ipv6_cidr_block_association.dart'
    show AwsVpcIpv6CidrBlockAssociation;
export 'src/ec2/aws_vpc_network_performance_metric_subscription.dart'
    show
        AwsVpcNetworkPerformanceMetricSubscription,
        VpcNetworkPerformanceMetricSubscriptionMetric,
        VpcNetworkPerformanceMetricSubscriptionStatistic;
export 'src/ec2/aws_vpc_peering_connection.dart'
    show
        AwsVpcPeeringConnection,
        VpcPeeringConnectionAccepter,
        VpcPeeringConnectionRequester;
export 'src/ec2/aws_vpc_peering_connection_accepter.dart'
    show
        AwsVpcPeeringConnectionAccepter,
        VpcPeeringConnectionAccepterAccepter,
        VpcPeeringConnectionAccepterRequester;
export 'src/ec2/aws_vpc_peering_connection_options.dart'
    show
        AwsVpcPeeringConnectionOptions,
        VpcPeeringConnectionOptionsAccepter,
        VpcPeeringConnectionOptionsRequester;
export 'src/ec2/aws_vpc_route_server.dart'
    show AwsVpcRouteServer, VpcRouteServerPersistRoutes;
export 'src/ec2/aws_vpc_route_server_endpoint.dart'
    show AwsVpcRouteServerEndpoint;
export 'src/ec2/aws_vpc_route_server_peer.dart'
    show
        AwsVpcRouteServerPeer,
        VpcRouteServerPeerBgpOptions,
        VpcRouteServerPeerBgpOptionsPeerLivenessDetection;
export 'src/ec2/aws_vpc_route_server_propagation.dart'
    show AwsVpcRouteServerPropagation;
export 'src/ec2/aws_vpc_route_server_vpc_association.dart'
    show AwsVpcRouteServerVpcAssociation;
export 'src/ec2/aws_vpc_security_group_egress_rule.dart'
    show AwsVpcSecurityGroupEgressRule;
export 'src/ec2/aws_vpc_security_group_ingress_rule.dart'
    show AwsVpcSecurityGroupIngressRule;
export 'src/ec2/aws_vpc_security_group_rules_exclusive.dart'
    show AwsVpcSecurityGroupRulesExclusive;
export 'src/ec2/aws_vpc_security_group_vpc_association.dart'
    show AwsVpcSecurityGroupVpcAssociation;
export 'src/ec2/aws_vpn_concentrator.dart'
    show AwsVpnConcentrator, VpnConcentratorType;
export 'src/ec2/aws_vpn_connection.dart'
    show
        AwsVpnConnection,
        VpnConnectionOutsideIpAddressType,
        VpnConnectionPresharedKeyStorage,
        VpnConnectionTunnel1DpdTimeoutAction,
        VpnConnectionTunnel1IkeVersions,
        VpnConnectionTunnel1LogOptions,
        VpnConnectionTunnel1LogOptionsCloudwatchLogOptions,
        VpnConnectionTunnel1Phase1EncryptionAlgorithms,
        VpnConnectionTunnel1Phase1IntegrityAlgorithms,
        VpnConnectionTunnel1Phase2EncryptionAlgorithms,
        VpnConnectionTunnel1Phase2IntegrityAlgorithms,
        VpnConnectionTunnel1StartupAction,
        VpnConnectionTunnel2DpdTimeoutAction,
        VpnConnectionTunnel2IkeVersions,
        VpnConnectionTunnel2LogOptions,
        VpnConnectionTunnel2LogOptionsCloudwatchLogOptions,
        VpnConnectionTunnel2Phase1EncryptionAlgorithms,
        VpnConnectionTunnel2Phase1IntegrityAlgorithms,
        VpnConnectionTunnel2Phase2EncryptionAlgorithms,
        VpnConnectionTunnel2Phase2IntegrityAlgorithms,
        VpnConnectionTunnel2StartupAction,
        VpnConnectionTunnelBandwidth,
        VpnConnectionTunnelInsideIpVersion,
        VpnConnectionType;
export 'src/ec2/aws_vpn_connection_route.dart' show AwsVpnConnectionRoute;
export 'src/ec2/aws_vpn_gateway.dart' show AwsVpnGateway;
export 'src/ec2/aws_vpn_gateway_attachment.dart' show AwsVpnGatewayAttachment;
export 'src/ec2/aws_vpn_gateway_route_propagation.dart'
    show AwsVpnGatewayRoutePropagation;
