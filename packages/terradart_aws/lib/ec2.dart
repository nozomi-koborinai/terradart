// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS EC2 and VPC (instances, networking, EBS, and transit gateways).
library;

export 'src/ec2/aws_ami.dart'
    show
        AmiArchitecture,
        AmiBootMode,
        AmiEbsBlockDevice,
        AmiEphemeralBlockDevice,
        AmiImdsSupport,
        AmiTpmSupport,
        AmiVirtualizationType,
        AmiVolumeType,
        AwsAmi;
export 'src/ec2/aws_ami_copy.dart'
    show AmiCopyEbsBlockDevice, AmiCopyEphemeralBlockDevice, AwsAmiCopy;
export 'src/ec2/aws_ami_from_instance.dart'
    show
        AmiFromInstanceEbsBlockDevice,
        AmiFromInstanceEphemeralBlockDevice,
        AwsAmiFromInstance;
export 'src/ec2/aws_ami_launch_permission.dart'
    show
        AmiLaunchPermissionGrantee,
        AmiLaunchPermissionGranteeAccountId,
        AmiLaunchPermissionGranteeGroup,
        AmiLaunchPermissionGranteeOrganizationArn,
        AmiLaunchPermissionGranteeOrganizationalUnitArn,
        AmiLaunchPermissionGroup,
        AwsAmiLaunchPermission;
export 'src/ec2/aws_customer_gateway.dart'
    show
        AwsCustomerGateway,
        CustomerGatewayBgpAsn,
        CustomerGatewayBgpAsnChoice,
        CustomerGatewayBgpAsnExtended,
        CustomerGatewayType;
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
        EbsSnapshotImportFormat,
        EbsSnapshotImportSource,
        EbsSnapshotImportSourceUrl,
        EbsSnapshotImportSourceUserBucket,
        EbsSnapshotImportUserBucket;
export 'src/ec2/aws_ebs_volume.dart' show AwsEbsVolume;
export 'src/ec2/aws_ebs_volume_copy.dart'
    show AwsEbsVolumeCopy, EbsVolumeCopyVolumeType;
export 'src/ec2/aws_ec2_allowed_images_settings.dart'
    show
        AwsEc2AllowedImagesSettings,
        Ec2AllowedImagesSettingsCreationDateCondition,
        Ec2AllowedImagesSettingsDeprecationTimeCondition,
        Ec2AllowedImagesSettingsImageCriterion,
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
    show
        AwsEc2ClientVpnAuthorizationRule,
        Ec2ClientVpnAuthorizationRuleAudience,
        Ec2ClientVpnAuthorizationRuleAudienceAccessGroupId,
        Ec2ClientVpnAuthorizationRuleAudienceAuthorizeAllGroups;
export 'src/ec2/aws_ec2_client_vpn_endpoint.dart'
    show
        AwsEc2ClientVpnEndpoint,
        Ec2ClientVpnEndpointAuthenticationOptions,
        Ec2ClientVpnEndpointAvailabilityZone,
        Ec2ClientVpnEndpointAvailabilityZoneAvailabilityZones,
        Ec2ClientVpnEndpointAvailabilityZoneIds,
        Ec2ClientVpnEndpointClientConnectOptions,
        Ec2ClientVpnEndpointClientLoginBannerOptions,
        Ec2ClientVpnEndpointClientRouteEnforcementOptions,
        Ec2ClientVpnEndpointConnectionLogOptions,
        Ec2ClientVpnEndpointIpAddressType,
        Ec2ClientVpnEndpointSelfServicePortal,
        Ec2ClientVpnEndpointTrafficIpAddressType,
        Ec2ClientVpnEndpointTransitGatewayConfiguration,
        Ec2ClientVpnEndpointTransportProtocol,
        Ec2ClientVpnEndpointType;
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
        Ec2FleetAcceleratorCount,
        Ec2FleetAcceleratorManufacturers,
        Ec2FleetAcceleratorNames,
        Ec2FleetAcceleratorTotalMemoryMib,
        Ec2FleetAcceleratorTypes,
        Ec2FleetBareMetal,
        Ec2FleetBaselineEbsBandwidthMbps,
        Ec2FleetBurstablePerformance,
        Ec2FleetCapacityRebalance,
        Ec2FleetCapacityReservationOptions,
        Ec2FleetCpuManufacturers,
        Ec2FleetDefaultTargetCapacityType,
        Ec2FleetExcessCapacityTerminationPolicy,
        Ec2FleetInstanceGenerations,
        Ec2FleetInstanceInterruptionBehavior,
        Ec2FleetInstanceRequirements,
        Ec2FleetInstanceSet,
        Ec2FleetLaunchTemplateConfig,
        Ec2FleetLaunchTemplateSpecification,
        Ec2FleetLocalStorage,
        Ec2FleetLocalStorageTypes,
        Ec2FleetMaintenanceStrategies,
        Ec2FleetMemoryGibPerVcpu,
        Ec2FleetMemoryMib,
        Ec2FleetNetworkBandwidthGbps,
        Ec2FleetNetworkInterfaceCount,
        Ec2FleetOnDemandOptions,
        Ec2FleetOverride,
        Ec2FleetReplacementStrategy,
        Ec2FleetSpotOptions,
        Ec2FleetTargetCapacitySpecification,
        Ec2FleetTargetCapacityUnitType,
        Ec2FleetTotalLocalStorageGb,
        Ec2FleetType,
        Ec2FleetUsageStrategy,
        Ec2FleetVcpuCount;
export 'src/ec2/aws_ec2_host.dart'
    show
        AwsEc2Host,
        Ec2HostAutoPlacement,
        Ec2HostInstance,
        Ec2HostInstanceFamily,
        Ec2HostInstanceType,
        Ec2HostRecovery;
export 'src/ec2/aws_ec2_image_block_public_access.dart'
    show AwsEc2ImageBlockPublicAccess, Ec2ImageBlockPublicAccessState;
export 'src/ec2/aws_ec2_instance_connect_endpoint.dart'
    show AwsEc2InstanceConnectEndpoint, Ec2InstanceConnectEndpointIpAddressType;
export 'src/ec2/aws_ec2_instance_metadata_defaults.dart'
    show AwsEc2InstanceMetadataDefaults;
export 'src/ec2/aws_ec2_instance_state.dart'
    show AwsEc2InstanceState, Ec2InstanceState;
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
        Ec2NetworkInsightsAccessScopeDestination,
        Ec2NetworkInsightsAccessScopeExcludePaths,
        Ec2NetworkInsightsAccessScopeMatchPaths,
        Ec2NetworkInsightsAccessScopePacketHeaderStatement,
        Ec2NetworkInsightsAccessScopeResourceStatement,
        Ec2NetworkInsightsAccessScopeSource,
        Ec2NetworkInsightsAccessScopeThroughResources;
export 'src/ec2/aws_ec2_network_insights_analysis.dart'
    show AwsEc2NetworkInsightsAnalysis;
export 'src/ec2/aws_ec2_network_insights_path.dart'
    show
        AwsEc2NetworkInsightsPath,
        Ec2NetworkInsightsPathDestinationPortRange,
        Ec2NetworkInsightsPathFilterAtDestination,
        Ec2NetworkInsightsPathFilterAtSource,
        Ec2NetworkInsightsPathProtocol,
        Ec2NetworkInsightsPathSourcePortRange;
export 'src/ec2/aws_ec2_secondary_network.dart'
    show AwsEc2SecondaryNetwork, Ec2SecondaryNetworkType;
export 'src/ec2/aws_ec2_secondary_subnet.dart'
    show
        AwsEc2SecondarySubnet,
        Ec2SecondarySubnetAvailabilityZone,
        Ec2SecondarySubnetAvailabilityZoneChoice,
        Ec2SecondarySubnetAvailabilityZoneId;
export 'src/ec2/aws_ec2_serial_console_access.dart'
    show AwsEc2SerialConsoleAccess;
export 'src/ec2/aws_ec2_subnet_cidr_reservation.dart'
    show AwsEc2SubnetCidrReservation, Ec2SubnetCidrReservationType;
export 'src/ec2/aws_ec2_tag.dart' show AwsEc2Tag;
export 'src/ec2/aws_ec2_traffic_mirror_filter.dart'
    show AwsEc2TrafficMirrorFilter, Ec2TrafficMirrorFilterNetworkServices;
export 'src/ec2/aws_ec2_traffic_mirror_filter_rule.dart'
    show
        AwsEc2TrafficMirrorFilterRule,
        Ec2TrafficMirrorFilterRuleAction,
        Ec2TrafficMirrorFilterRuleDestinationPortRange,
        Ec2TrafficMirrorFilterRuleSourcePortRange,
        Ec2TrafficMirrorFilterRuleTrafficDirection;
export 'src/ec2/aws_ec2_traffic_mirror_session.dart'
    show AwsEc2TrafficMirrorSession;
export 'src/ec2/aws_ec2_traffic_mirror_target.dart'
    show
        AwsEc2TrafficMirrorTarget,
        Ec2TrafficMirrorTargetDestination,
        Ec2TrafficMirrorTargetDestinationGatewayLoadBalancerEndpointId,
        Ec2TrafficMirrorTargetDestinationNetworkInterfaceId,
        Ec2TrafficMirrorTargetDestinationNetworkLoadBalancerArn;
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
        Ec2TransitGatewayPeeringAttachmentDynamicRouting,
        Ec2TransitGatewayPeeringAttachmentOptions;
export 'src/ec2/aws_ec2_transit_gateway_peering_attachment_accepter.dart'
    show AwsEc2TransitGatewayPeeringAttachmentAccepter;
export 'src/ec2/aws_ec2_transit_gateway_policy_table.dart'
    show AwsEc2TransitGatewayPolicyTable;
export 'src/ec2/aws_ec2_transit_gateway_policy_table_association.dart'
    show AwsEc2TransitGatewayPolicyTableAssociation;
export 'src/ec2/aws_ec2_transit_gateway_policy_table_entry.dart'
    show
        AwsEc2TransitGatewayPolicyTableEntry,
        Ec2TransitGatewayPolicyTableEntryMetadata,
        Ec2TransitGatewayPolicyTableEntryPolicyRule;
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
export 'src/ec2/aws_eip_association.dart'
    show
        AwsEipAssociation,
        EipAssociationTarget,
        EipAssociationTargetInstanceId,
        EipAssociationTargetNetworkInterfaceId;
export 'src/ec2/aws_eip_domain_name.dart' show AwsEipDomainName;
export 'src/ec2/aws_flow_log.dart'
    show
        AwsFlowLog,
        FlowLogDestinationOptions,
        FlowLogDestinationType,
        FlowLogFileFormat,
        FlowLogResourceType,
        FlowLogSource,
        FlowLogSourceEniId,
        FlowLogSourceRegionalNatGatewayId,
        FlowLogSourceSubnetId,
        FlowLogSourceTransitGatewayAttachmentId,
        FlowLogSourceTransitGatewayId,
        FlowLogSourceVpcId,
        FlowLogTagFieldSpecification,
        FlowLogTrafficType;
export 'src/ec2/aws_instance.dart'
    show
        AwsInstance,
        InstanceAmdSevSnp,
        InstanceAutoRecovery,
        InstanceCapacityReservationPreference,
        InstanceCapacityReservationSpecification,
        InstanceCapacityReservationSpecificationCapacityReservationPreference,
        InstanceCapacityReservationSpecificationCapacityReservationTarget,
        InstanceCapacityReservationTarget,
        InstanceCapacityReservationTargetCapacityReservationId,
        InstanceCapacityReservationTargetCapacityReservationResourceGroupArn,
        InstanceCpuCredits,
        InstanceCpuOptions,
        InstanceCreditSpecification,
        InstanceEbsBlockDevice,
        InstanceEnclaveOptions,
        InstanceEphemeralBlockDevice,
        InstanceHostnameType,
        InstanceHttpEndpoint,
        InstanceHttpProtocolIpv6,
        InstanceHttpTokens,
        InstanceIdentifier,
        InstanceIdentifierId,
        InstanceIdentifierName,
        InstanceInterruptionBehavior,
        InstanceLaunchTemplate,
        InstanceMaintenanceOptions,
        InstanceMarketOptions,
        InstanceMarketType,
        InstanceMetadataOptions,
        InstanceMetadataTags,
        InstanceNetworkInterface,
        InstancePlacement,
        InstancePlacementGroup,
        InstancePlacementHostResourceGroupArn,
        InstancePrimaryNetworkInterface,
        InstancePrivateDnsNameOptions,
        InstanceRootBlockDevice,
        InstanceSecondaryNetworkInterface,
        InstanceSpotInstanceType,
        InstanceSpotOptions,
        InstanceTenancy,
        InstanceUserData,
        InstanceUserDataBase64,
        InstanceUserDataChoice,
        InstanceVolumeType;
export 'src/ec2/aws_internet_gateway.dart' show AwsInternetGateway;
export 'src/ec2/aws_internet_gateway_attachment.dart'
    show AwsInternetGatewayAttachment;
export 'src/ec2/aws_key_pair.dart'
    show AwsKeyPair, KeyPairKeyName, KeyPairKeyNameChoice, KeyPairKeyNamePrefix;
export 'src/ec2/aws_launch_template.dart'
    show
        AwsLaunchTemplate,
        LaunchTemplateAcceleratorCount,
        LaunchTemplateAcceleratorManufacturers,
        LaunchTemplateAcceleratorNames,
        LaunchTemplateAcceleratorTotalMemoryMib,
        LaunchTemplateAcceleratorTypes,
        LaunchTemplateAllowedInstanceTypes,
        LaunchTemplateAmdSevSnp,
        LaunchTemplateAutoRecovery,
        LaunchTemplateBandwidthWeighting,
        LaunchTemplateBareMetal,
        LaunchTemplateBaselineEbsBandwidthMbps,
        LaunchTemplateBlockDeviceMappings,
        LaunchTemplateBurstablePerformance,
        LaunchTemplateCapacityReservationPreference,
        LaunchTemplateCapacityReservationSpecification,
        LaunchTemplateCapacityReservationTarget,
        LaunchTemplateCapacityReservationTargetCapacityReservationId,
        LaunchTemplateCapacityReservationTargetCapacityReservationResourceGroupArn,
        LaunchTemplateConnectionTrackingSpecification,
        LaunchTemplateCpuCredits,
        LaunchTemplateCpuManufacturers,
        LaunchTemplateCpuOptions,
        LaunchTemplateCreditSpecification,
        LaunchTemplateDefaultVersion,
        LaunchTemplateDefaultVersionChoice,
        LaunchTemplateEbs,
        LaunchTemplateEnaSrdSpecification,
        LaunchTemplateEnaSrdUdpSpecification,
        LaunchTemplateEnclaveOptions,
        LaunchTemplateExcludedInstanceTypes,
        LaunchTemplateGroup,
        LaunchTemplateGroupId,
        LaunchTemplateGroupName,
        LaunchTemplateHibernationOptions,
        LaunchTemplateHost,
        LaunchTemplateHostId,
        LaunchTemplateHostResourceGroupArn,
        LaunchTemplateHostnameType,
        LaunchTemplateHttpEndpoint,
        LaunchTemplateHttpProtocolIpv6,
        LaunchTemplateHttpTokens,
        LaunchTemplateIamInstanceProfile,
        LaunchTemplateIamInstanceProfileArn,
        LaunchTemplateIamInstanceProfileName,
        LaunchTemplateInstance,
        LaunchTemplateInstanceGenerations,
        LaunchTemplateInstanceInitiatedShutdownBehavior,
        LaunchTemplateInstanceInterruptionBehavior,
        LaunchTemplateInstanceMarketOptions,
        LaunchTemplateInstanceMetadataTags,
        LaunchTemplateInstanceRequirements,
        LaunchTemplateInstanceRequirementsChoice,
        LaunchTemplateInstanceType,
        LaunchTemplateInstanceTypes,
        LaunchTemplateLicenseSpecification,
        LaunchTemplateLocalStorage,
        LaunchTemplateLocalStorageTypes,
        LaunchTemplateMaintenanceOptions,
        LaunchTemplateMarketType,
        LaunchTemplateMaxSpotPriceAsPercentageOfOptimalOnDemandPrice,
        LaunchTemplateMemoryGibPerVcpu,
        LaunchTemplateMemoryMib,
        LaunchTemplateMetadataOptions,
        LaunchTemplateMonitoring,
        LaunchTemplateName,
        LaunchTemplateNameChoice,
        LaunchTemplateNamePrefix,
        LaunchTemplateNestedVirtualization,
        LaunchTemplateNetworkBandwidthGbps,
        LaunchTemplateNetworkInterfaceCount,
        LaunchTemplateNetworkInterfaces,
        LaunchTemplateNetworkInterfacesInterfaceType,
        LaunchTemplateNetworkPerformanceOptions,
        LaunchTemplatePlacement,
        LaunchTemplatePrice,
        LaunchTemplatePrivateDnsNameOptions,
        LaunchTemplateResourceType,
        LaunchTemplateSecondaryInterfaces,
        LaunchTemplateSecondaryInterfacesInterfaceType,
        LaunchTemplateSecurityGroups,
        LaunchTemplateSecurityGroupsSecurityGroupNames,
        LaunchTemplateSecurityGroupsVpcSecurityGroupIds,
        LaunchTemplateSpotInstanceType,
        LaunchTemplateSpotMaxPricePercentageOverLowestPrice,
        LaunchTemplateSpotOptions,
        LaunchTemplateTagSpecifications,
        LaunchTemplateTenancy,
        LaunchTemplateTotalLocalStorageGb,
        LaunchTemplateUpdateDefaultVersion,
        LaunchTemplateVcpuCount,
        LaunchTemplateVolumeType;
export 'src/ec2/aws_main_route_table_association.dart'
    show AwsMainRouteTableAssociation;
export 'src/ec2/aws_nat_gateway.dart'
    show
        AwsNatGateway,
        NatGatewayAvailabilityMode,
        NatGatewayAvailabilityZoneAddress,
        NatGatewayConnectivityType,
        NatGatewaySecondaryPrivateIpAddress,
        NatGatewaySecondaryPrivateIpAddressCount,
        NatGatewaySecondaryPrivateIpAddressSecondaryPrivateIpAddresses;
export 'src/ec2/aws_nat_gateway_eip_association.dart'
    show AwsNatGatewayEipAssociation;
export 'src/ec2/aws_network_acl.dart' show AwsNetworkAcl;
export 'src/ec2/aws_network_acl_association.dart' show AwsNetworkAclAssociation;
export 'src/ec2/aws_network_acl_rule.dart'
    show
        AwsNetworkAclRule,
        NetworkAclRuleAction,
        NetworkAclRuleCidr,
        NetworkAclRuleCidrBlock,
        NetworkAclRuleCidrIpv6CidrBlock;
export 'src/ec2/aws_network_interface.dart'
    show
        AwsNetworkInterface,
        NetworkInterfaceAttachment,
        NetworkInterfaceEnaSrdSpecification,
        NetworkInterfaceEnaSrdUdpSpecification,
        NetworkInterfaceIpv4Prefix,
        NetworkInterfaceIpv4PrefixCount,
        NetworkInterfaceIpv4PrefixIpv4Prefixes,
        NetworkInterfaceIpv6Address,
        NetworkInterfaceIpv6AddressCount,
        NetworkInterfaceIpv6AddressIpv6Addresses,
        NetworkInterfaceIpv6AddressList,
        NetworkInterfaceIpv6Prefix,
        NetworkInterfaceIpv6PrefixCount,
        NetworkInterfaceIpv6PrefixIpv6Prefixes,
        NetworkInterfaceType;
export 'src/ec2/aws_network_interface_attachment.dart'
    show AwsNetworkInterfaceAttachment;
export 'src/ec2/aws_network_interface_permission.dart'
    show AwsNetworkInterfacePermission, NetworkInterfacePermission;
export 'src/ec2/aws_network_interface_sg_attachment.dart'
    show AwsNetworkInterfaceSgAttachment;
export 'src/ec2/aws_placement_group.dart'
    show AwsPlacementGroup, PlacementGroupSpreadLevel, PlacementGroupStrategy;
export 'src/ec2/aws_route.dart'
    show
        AwsRoute,
        RouteCarrierIpv6,
        RouteCarrierIpv6CarrierGatewayId,
        RouteCarrierIpv6DestinationIpv6CidrBlock,
        RouteIpv4Egress,
        RouteIpv4EgressDestinationCidrBlock,
        RouteIpv4EgressOnlyGatewayId,
        RoutePrefixListEndpoint,
        RoutePrefixListEndpointDestinationPrefixListId,
        RoutePrefixListEndpointVpcEndpointId;
export 'src/ec2/aws_route_table.dart' show AwsRouteTable;
export 'src/ec2/aws_route_table_association.dart'
    show
        AwsRouteTableAssociation,
        RouteTableAssociationTarget,
        RouteTableAssociationTargetGatewayId,
        RouteTableAssociationTargetSubnetId;
export 'src/ec2/aws_security_group.dart'
    show
        AwsSecurityGroup,
        SecurityGroupName,
        SecurityGroupNameChoice,
        SecurityGroupNamePrefix;
export 'src/ec2/aws_security_group_rule.dart'
    show AwsSecurityGroupRule, SecurityGroupRuleType;
export 'src/ec2/aws_snapshot_create_volume_permission.dart'
    show AwsSnapshotCreateVolumePermission;
export 'src/ec2/aws_spot_datafeed_subscription.dart'
    show AwsSpotDatafeedSubscription;
export 'src/ec2/aws_spot_fleet_request.dart'
    show
        AwsSpotFleetRequest,
        SpotFleetRequestAcceleratorCount,
        SpotFleetRequestAcceleratorManufacturers,
        SpotFleetRequestAcceleratorNames,
        SpotFleetRequestAcceleratorTotalMemoryMib,
        SpotFleetRequestAcceleratorTypes,
        SpotFleetRequestAllocationStrategy,
        SpotFleetRequestBareMetal,
        SpotFleetRequestBaselineEbsBandwidthMbps,
        SpotFleetRequestBurstablePerformance,
        SpotFleetRequestCapacityRebalance,
        SpotFleetRequestCpuManufacturers,
        SpotFleetRequestEbsBlockDevice,
        SpotFleetRequestEphemeralBlockDevice,
        SpotFleetRequestExcessCapacityTerminationPolicy,
        SpotFleetRequestFleetType,
        SpotFleetRequestInstanceGenerations,
        SpotFleetRequestInstanceInterruptionBehaviour,
        SpotFleetRequestInstanceRequirements,
        SpotFleetRequestLaunch,
        SpotFleetRequestLaunchSpecification,
        SpotFleetRequestLaunchSpecificationChoice,
        SpotFleetRequestLaunchTemplateConfig,
        SpotFleetRequestLaunchTemplateConfigChoice,
        SpotFleetRequestLaunchTemplateSpecification,
        SpotFleetRequestLocalStorage,
        SpotFleetRequestLocalStorageTypes,
        SpotFleetRequestMemoryGibPerVcpu,
        SpotFleetRequestMemoryMib,
        SpotFleetRequestNetworkBandwidthGbps,
        SpotFleetRequestNetworkInterfaceCount,
        SpotFleetRequestOnDemandAllocationStrategy,
        SpotFleetRequestOverrides,
        SpotFleetRequestPlacementTenancy,
        SpotFleetRequestReplacementStrategy,
        SpotFleetRequestRootBlockDevice,
        SpotFleetRequestSpotMaintenanceStrategies,
        SpotFleetRequestTargetCapacityUnitType,
        SpotFleetRequestTotalLocalStorageGb,
        SpotFleetRequestVcpuCount,
        SpotFleetRequestVolumeType;
export 'src/ec2/aws_spot_instance_request.dart'
    show
        AwsSpotInstanceRequest,
        SpotInstanceRequestAmdSevSnp,
        SpotInstanceRequestAutoRecovery,
        SpotInstanceRequestCapacityReservationPreference,
        SpotInstanceRequestCapacityReservationSpecification,
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservationPreference,
        SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget,
        SpotInstanceRequestCapacityReservationTarget,
        SpotInstanceRequestCapacityReservationTargetCapacityReservationId,
        SpotInstanceRequestCapacityReservationTargetCapacityReservationResourceGroupArn,
        SpotInstanceRequestCpuCredits,
        SpotInstanceRequestCpuOptions,
        SpotInstanceRequestCreditSpecification,
        SpotInstanceRequestEbsBlockDevice,
        SpotInstanceRequestEnclaveOptions,
        SpotInstanceRequestEphemeralBlockDevice,
        SpotInstanceRequestHostnameType,
        SpotInstanceRequestHttpEndpoint,
        SpotInstanceRequestHttpProtocolIpv6,
        SpotInstanceRequestHttpTokens,
        SpotInstanceRequestIdentifier,
        SpotInstanceRequestIdentifierId,
        SpotInstanceRequestIdentifierName,
        SpotInstanceRequestInstanceMetadataTags,
        SpotInstanceRequestInterfaceType,
        SpotInstanceRequestLaunchTemplate,
        SpotInstanceRequestMaintenanceOptions,
        SpotInstanceRequestMetadataOptions,
        SpotInstanceRequestNestedVirtualization,
        SpotInstanceRequestNetworkInterface,
        SpotInstanceRequestPlacement,
        SpotInstanceRequestPlacementGroup,
        SpotInstanceRequestPlacementGroupId,
        SpotInstanceRequestPlacementHostResourceGroupArn,
        SpotInstanceRequestPrivateDnsNameOptions,
        SpotInstanceRequestRootBlockDevice,
        SpotInstanceRequestSecondaryNetworkInterface,
        SpotInstanceRequestTenancy,
        SpotInstanceRequestUserData,
        SpotInstanceRequestUserDataBase64,
        SpotInstanceRequestUserDataChoice,
        SpotInstanceRequestVolumeType;
export 'src/ec2/aws_subnet.dart'
    show
        AwsSubnet,
        SubnetAvailabilityZone,
        SubnetAvailabilityZoneChoice,
        SubnetAvailabilityZoneId,
        SubnetIpv6,
        SubnetIpv6CidrBlock,
        SubnetIpv6NetmaskLength,
        SubnetPrivateDnsHostnameTypeOnLaunch;
export 'src/ec2/aws_volume_attachment.dart' show AwsVolumeAttachment;
export 'src/ec2/aws_vpc.dart'
    show
        AwsVpc,
        VpcInstanceTenancy,
        VpcIpv4Cidr,
        VpcIpv4CidrBlock,
        VpcIpv4CidrIpv4NetmaskLength;
export 'src/ec2/aws_vpc_block_public_access_exclusion.dart'
    show
        AwsVpcBlockPublicAccessExclusion,
        VpcBlockPublicAccessExclusionInternetGatewayExclusionMode,
        VpcBlockPublicAccessExclusionTarget,
        VpcBlockPublicAccessExclusionTargetSubnetId,
        VpcBlockPublicAccessExclusionTargetVpcId;
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
        VpcEndpointDnsRecordIpType,
        VpcEndpointIpAddressType,
        VpcEndpointPrivateDnsPreference,
        VpcEndpointService,
        VpcEndpointServiceName,
        VpcEndpointServiceNetworkArn,
        VpcEndpointServiceResourceConfigurationArn,
        VpcEndpointSubnetConfiguration,
        VpcEndpointType;
export 'src/ec2/aws_vpc_endpoint_connection_accepter.dart'
    show AwsVpcEndpointConnectionAccepter;
export 'src/ec2/aws_vpc_endpoint_connection_notification.dart'
    show
        AwsVpcEndpointConnectionNotification,
        VpcEndpointConnectionNotificationVpcEndpoint,
        VpcEndpointConnectionNotificationVpcEndpointId,
        VpcEndpointConnectionNotificationVpcEndpointServiceId;
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
        VpcIpamPoolPublicIpSource,
        VpcIpamPoolResourceType,
        VpcIpamPoolSourceResource;
export 'src/ec2/aws_vpc_ipam_pool_cidr.dart'
    show
        AwsVpcIpamPoolCidr,
        VpcIpamPoolCidrAuthorizationContext,
        VpcIpamPoolCidrRange,
        VpcIpamPoolCidrRangeCidr,
        VpcIpamPoolCidrRangeNetmaskLength;
export 'src/ec2/aws_vpc_ipam_pool_cidr_allocation.dart'
    show
        AwsVpcIpamPoolCidrAllocation,
        VpcIpamPoolCidrAllocationCidr,
        VpcIpamPoolCidrAllocationCidrChoice,
        VpcIpamPoolCidrAllocationCidrNetmaskLength;
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
        VpcRouteServerPeerLivenessDetection;
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
        VpnConnectionCloudwatchLogOptions,
        VpnConnectionOutsideIpAddressType,
        VpnConnectionPresharedKeyStorage,
        VpnConnectionTunnel1DpdTimeoutAction,
        VpnConnectionTunnel1IkeVersions,
        VpnConnectionTunnel1LogOptions,
        VpnConnectionTunnel1Phase1EncryptionAlgorithms,
        VpnConnectionTunnel1Phase1IntegrityAlgorithms,
        VpnConnectionTunnel1Phase2EncryptionAlgorithms,
        VpnConnectionTunnel1Phase2IntegrityAlgorithms,
        VpnConnectionTunnel1StartupAction,
        VpnConnectionTunnel2DpdTimeoutAction,
        VpnConnectionTunnel2IkeVersions,
        VpnConnectionTunnel2LogOptions,
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
