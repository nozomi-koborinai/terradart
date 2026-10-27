// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure virtual networks, subnets, public IPs, and load-balancing neighbors that share this barrel.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_application_gateway.dart'
    show DataAzurermApplicationGateway;
export 'src/data/azurerm_application_security_group.dart'
    show DataAzurermApplicationSecurityGroup;
export 'src/data/azurerm_local_network_gateway.dart'
    show DataAzurermLocalNetworkGateway;
export 'src/data/azurerm_network_ddos_protection_plan.dart'
    show DataAzurermNetworkDdosProtectionPlan;
export 'src/data/azurerm_network_interface.dart'
    show DataAzurermNetworkInterface;
export 'src/data/azurerm_network_manager.dart' show DataAzurermNetworkManager;
export 'src/data/azurerm_network_manager_connectivity_configuration.dart'
    show DataAzurermNetworkManagerConnectivityConfiguration;
export 'src/data/azurerm_network_manager_ipam_pool.dart'
    show DataAzurermNetworkManagerIpamPool;
export 'src/data/azurerm_network_manager_network_group.dart'
    show DataAzurermNetworkManagerNetworkGroup;
export 'src/data/azurerm_network_security_group.dart'
    show DataAzurermNetworkSecurityGroup;
export 'src/data/azurerm_network_security_perimeter.dart'
    show DataAzurermNetworkSecurityPerimeter;
export 'src/data/azurerm_network_security_perimeter_profile.dart'
    show DataAzurermNetworkSecurityPerimeterProfile;
export 'src/data/azurerm_network_service_tags.dart'
    show DataAzurermNetworkServiceTags;
export 'src/data/azurerm_network_watcher.dart' show DataAzurermNetworkWatcher;
export 'src/data/azurerm_private_endpoint_connection.dart'
    show DataAzurermPrivateEndpointConnection;
export 'src/data/azurerm_private_link_service.dart'
    show DataAzurermPrivateLinkService;
export 'src/data/azurerm_private_link_service_endpoint_connections.dart'
    show DataAzurermPrivateLinkServiceEndpointConnections;
export 'src/data/azurerm_public_ip.dart' show DataAzurermPublicIp;
export 'src/data/azurerm_public_ip_prefix.dart' show DataAzurermPublicIpPrefix;
export 'src/data/azurerm_virtual_network.dart' show DataAzurermVirtualNetwork;
export 'src/data/azurerm_virtual_network_gateway.dart'
    show DataAzurermVirtualNetworkGateway;
export 'src/data/azurerm_virtual_network_gateway_connection.dart'
    show DataAzurermVirtualNetworkGatewayConnection;
export 'src/data/azurerm_virtual_network_peering.dart'
    show DataAzurermVirtualNetworkPeering;
export 'src/data/azurerm_web_application_firewall_policy.dart'
    show DataAzurermWebApplicationFirewallPolicy;
export 'src/network/azurerm_application_gateway.dart'
    show
        ApplicationGatewayAutoscaleConfiguration,
        ApplicationGatewayBackend,
        ApplicationGatewayBackendAddressPool,
        ApplicationGatewayBackendHttpSettings,
        ApplicationGatewayClientAuthenticationMode,
        ApplicationGatewayComponents,
        ApplicationGatewayCondition,
        ApplicationGatewayConnectionDraining,
        ApplicationGatewayCookieBasedAffinity,
        ApplicationGatewayCustomErrorConfiguration,
        ApplicationGatewayDisabledRuleGroup,
        ApplicationGatewayExclusion,
        ApplicationGatewayFirewallMode,
        ApplicationGatewayFrontendIpConfiguration,
        ApplicationGatewayFrontendPort,
        ApplicationGatewayGlobal,
        ApplicationGatewayHttpListener,
        ApplicationGatewayIdentity,
        ApplicationGatewayIpConfiguration,
        ApplicationGatewayListener,
        ApplicationGatewayMatch,
        ApplicationGatewayMatchVariable,
        ApplicationGatewayPathRule,
        ApplicationGatewayPrivateIpAddressAllocation,
        ApplicationGatewayPrivateLinkConfiguration,
        ApplicationGatewayPrivateLinkConfigurationIpConfiguration,
        ApplicationGatewayProbe,
        ApplicationGatewayProtocol,
        ApplicationGatewayRedirectConfiguration,
        ApplicationGatewayRedirectType,
        ApplicationGatewayRequestHeaderConfiguration,
        ApplicationGatewayRequestRoutingRule,
        ApplicationGatewayResponseHeaderConfiguration,
        ApplicationGatewayRewriteRule,
        ApplicationGatewayRewriteRuleSet,
        ApplicationGatewayRoutingRule,
        ApplicationGatewayRuleType,
        ApplicationGatewaySelectorMatchOperator,
        ApplicationGatewaySku,
        ApplicationGatewaySkuName,
        ApplicationGatewaySslCertificate,
        ApplicationGatewaySslPolicy,
        ApplicationGatewaySslProfile,
        ApplicationGatewayStatusCode,
        ApplicationGatewayTier,
        ApplicationGatewayTrustedClientCertificate,
        ApplicationGatewayTrustedRootCertificate,
        ApplicationGatewayUrl,
        ApplicationGatewayUrlPathMap,
        ApplicationGatewayWafConfiguration,
        AzurermApplicationGateway;
export 'src/network/azurerm_application_load_balancer.dart'
    show AzurermApplicationLoadBalancer;
export 'src/network/azurerm_application_load_balancer_frontend.dart'
    show AzurermApplicationLoadBalancerFrontend;
export 'src/network/azurerm_application_load_balancer_security_policy.dart'
    show AzurermApplicationLoadBalancerSecurityPolicy;
export 'src/network/azurerm_application_load_balancer_subnet_association.dart'
    show AzurermApplicationLoadBalancerSubnetAssociation;
export 'src/network/azurerm_application_security_group.dart'
    show AzurermApplicationSecurityGroup;
export 'src/network/azurerm_custom_ip_prefix.dart' show AzurermCustomIpPrefix;
export 'src/network/azurerm_local_network_gateway.dart'
    show
        AzurermLocalNetworkGateway,
        LocalNetworkGatewayAddressOrGatewayFqdn,
        LocalNetworkGatewayAddressOrGatewayFqdnChoice,
        LocalNetworkGatewayAddressOrGatewayFqdnGatewayAddress,
        LocalNetworkGatewayBgpSettings;
export 'src/network/azurerm_network_connection_monitor.dart'
    show
        AzurermNetworkConnectionMonitor,
        NetworkConnectionMonitorCoverageLevel,
        NetworkConnectionMonitorDestinationPortBehavior,
        NetworkConnectionMonitorEndpoint,
        NetworkConnectionMonitorFilter,
        NetworkConnectionMonitorHttpConfiguration,
        NetworkConnectionMonitorIcmpConfiguration,
        NetworkConnectionMonitorItem,
        NetworkConnectionMonitorMethod,
        NetworkConnectionMonitorPreferredIpVersion,
        NetworkConnectionMonitorProtocol,
        NetworkConnectionMonitorRequestHeader,
        NetworkConnectionMonitorSuccessThreshold,
        NetworkConnectionMonitorTcpConfiguration,
        NetworkConnectionMonitorTestConfiguration,
        NetworkConnectionMonitorTestGroup;
export 'src/network/azurerm_network_ddos_protection_plan.dart'
    show AzurermNetworkDdosProtectionPlan;
export 'src/network/azurerm_network_function_azure_traffic_collector.dart'
    show AzurermNetworkFunctionAzureTrafficCollector;
export 'src/network/azurerm_network_function_collector_policy.dart'
    show
        AzurermNetworkFunctionCollectorPolicy,
        NetworkFunctionCollectorPolicyIpfxEmission,
        NetworkFunctionCollectorPolicyIpfxIngestion;
export 'src/network/azurerm_network_interface.dart'
    show
        AzurermNetworkInterface,
        NetworkInterfaceIpConfiguration,
        NetworkInterfacePrivateIpAddressAllocation,
        NetworkInterfacePrivateIpAddressVersion;
export 'src/network/azurerm_network_interface_application_gateway_backend_address_pool_association.dart'
    show AzurermNetworkInterfaceApplicationGatewayBackendAddressPoolAssociation;
export 'src/network/azurerm_network_interface_application_security_group_association.dart'
    show AzurermNetworkInterfaceApplicationSecurityGroupAssociation;
export 'src/network/azurerm_network_interface_backend_address_pool_association.dart'
    show AzurermNetworkInterfaceBackendAddressPoolAssociation;
export 'src/network/azurerm_network_interface_nat_rule_association.dart'
    show AzurermNetworkInterfaceNatRuleAssociation;
export 'src/network/azurerm_network_interface_security_group_association.dart'
    show AzurermNetworkInterfaceSecurityGroupAssociation;
export 'src/network/azurerm_network_manager.dart'
    show AzurermNetworkManager, NetworkManagerScope;
export 'src/network/azurerm_network_manager_admin_rule.dart'
    show
        AzurermNetworkManagerAdminRule,
        NetworkManagerAdminRuleAction,
        NetworkManagerAdminRuleDestination,
        NetworkManagerAdminRuleDirection,
        NetworkManagerAdminRuleProtocol,
        NetworkManagerAdminRuleSource;
export 'src/network/azurerm_network_manager_admin_rule_collection.dart'
    show AzurermNetworkManagerAdminRuleCollection;
export 'src/network/azurerm_network_manager_connectivity_configuration.dart'
    show
        AzurermNetworkManagerConnectivityConfiguration,
        NetworkManagerConnectivityConfigurationAppliesToGroup,
        NetworkManagerConnectivityConfigurationConnectedGroupPrivateEndpointsScale,
        NetworkManagerConnectivityConfigurationConnectivityTopology,
        NetworkManagerConnectivityConfigurationGroupConnectivity,
        NetworkManagerConnectivityConfigurationHub;
export 'src/network/azurerm_network_manager_deployment.dart'
    show AzurermNetworkManagerDeployment;
export 'src/network/azurerm_network_manager_ipam_pool.dart'
    show AzurermNetworkManagerIpamPool;
export 'src/network/azurerm_network_manager_ipam_pool_static_cidr.dart'
    show
        AzurermNetworkManagerIpamPoolStaticCidr,
        NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocate,
        NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocateAddressPrefixes,
        NetworkManagerIpamPoolStaticCidrAddressPrefixesOrNumberOfIpAddressesToAllocateChoice;
export 'src/network/azurerm_network_manager_management_group_connection.dart'
    show AzurermNetworkManagerManagementGroupConnection;
export 'src/network/azurerm_network_manager_network_group.dart'
    show
        AzurermNetworkManagerNetworkGroup,
        NetworkManagerNetworkGroupMemberType;
export 'src/network/azurerm_network_manager_routing_configuration.dart'
    show
        AzurermNetworkManagerRoutingConfiguration,
        NetworkManagerRoutingConfigurationRouteTableUsageMode;
export 'src/network/azurerm_network_manager_routing_rule.dart'
    show
        AzurermNetworkManagerRoutingRule,
        NetworkManagerRoutingRuleDestination,
        NetworkManagerRoutingRuleDestinationType,
        NetworkManagerRoutingRuleNextHop,
        NetworkManagerRoutingRuleNextHopType;
export 'src/network/azurerm_network_manager_routing_rule_collection.dart'
    show AzurermNetworkManagerRoutingRuleCollection;
export 'src/network/azurerm_network_manager_scope_connection.dart'
    show AzurermNetworkManagerScopeConnection;
export 'src/network/azurerm_network_manager_security_admin_configuration.dart'
    show
        AzurermNetworkManagerSecurityAdminConfiguration,
        NetworkManagerSecurityAdminConfigurationApplyOnNetworkIntentPolicyBasedServices;
export 'src/network/azurerm_network_manager_static_member.dart'
    show AzurermNetworkManagerStaticMember;
export 'src/network/azurerm_network_manager_subscription_connection.dart'
    show AzurermNetworkManagerSubscriptionConnection;
export 'src/network/azurerm_network_manager_verifier_workspace.dart'
    show AzurermNetworkManagerVerifierWorkspace;
export 'src/network/azurerm_network_manager_verifier_workspace_reachability_analysis_intent.dart'
    show
        AzurermNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent,
        NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic,
        NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentProtocols;
export 'src/network/azurerm_network_profile.dart'
    show
        AzurermNetworkProfile,
        NetworkProfileContainerNetworkInterface,
        NetworkProfileIpConfiguration;
export 'src/network/azurerm_network_security_group.dart'
    show AzurermNetworkSecurityGroup;
export 'src/network/azurerm_network_security_perimeter.dart'
    show AzurermNetworkSecurityPerimeter;
export 'src/network/azurerm_network_security_perimeter_access_rule.dart'
    show
        AzurermNetworkSecurityPerimeterAccessRule,
        NetworkSecurityPerimeterAccessRuleAddressPrefixesOrFqdnsOrServiceTagsOrSubscriptionIds,
        NetworkSecurityPerimeterAccessRuleAddressPrefixesOrFqdnsOrServiceTagsOrSubscriptionIdsAddressPrefixes,
        NetworkSecurityPerimeterAccessRuleAddressPrefixesOrFqdnsOrServiceTagsOrSubscriptionIdsChoice,
        NetworkSecurityPerimeterAccessRuleAddressPrefixesOrFqdnsOrServiceTagsOrSubscriptionIdsFqdns,
        NetworkSecurityPerimeterAccessRuleAddressPrefixesOrFqdnsOrServiceTagsOrSubscriptionIdsServiceTags,
        NetworkSecurityPerimeterAccessRuleDirection;
export 'src/network/azurerm_network_security_perimeter_association.dart'
    show
        AzurermNetworkSecurityPerimeterAssociation,
        NetworkSecurityPerimeterAssociationAccessMode;
export 'src/network/azurerm_network_security_perimeter_profile.dart'
    show AzurermNetworkSecurityPerimeterProfile;
export 'src/network/azurerm_network_security_rule.dart'
    show
        AzurermNetworkSecurityRule,
        NetworkSecurityRuleAccess,
        NetworkSecurityRuleDestination,
        NetworkSecurityRuleDestinationAddressPrefix,
        NetworkSecurityRuleDestinationAddressPrefixes,
        NetworkSecurityRuleDestinationApplicationSecurityGroupIds,
        NetworkSecurityRuleDestinationPortRange,
        NetworkSecurityRuleDestinationPortRangeChoice,
        NetworkSecurityRuleDestinationPortRangeDestinationPortRanges,
        NetworkSecurityRuleDirection,
        NetworkSecurityRuleProtocol,
        NetworkSecurityRuleSource,
        NetworkSecurityRuleSourceAddressPrefix,
        NetworkSecurityRuleSourceAddressPrefixes,
        NetworkSecurityRuleSourceApplicationSecurityGroupIds,
        NetworkSecurityRuleSourcePortRange,
        NetworkSecurityRuleSourcePortRangeChoice,
        NetworkSecurityRuleSourcePortRangeSourcePortRanges;
export 'src/network/azurerm_network_watcher.dart' show AzurermNetworkWatcher;
export 'src/network/azurerm_network_watcher_flow_log.dart'
    show
        AzurermNetworkWatcherFlowLog,
        NetworkWatcherFlowLogRetentionPolicy,
        NetworkWatcherFlowLogTrafficAnalytics;
export 'src/network/azurerm_point_to_site_vpn_gateway.dart'
    show
        AzurermPointToSiteVpnGateway,
        PointToSiteVpnGatewayConnectionConfiguration,
        PointToSiteVpnGatewayPropagatedRouteTable,
        PointToSiteVpnGatewayRoute,
        PointToSiteVpnGatewayVpnClientAddressPool;
export 'src/network/azurerm_private_endpoint.dart'
    show
        AzurermPrivateEndpoint,
        PrivateEndpointIpConfiguration,
        PrivateEndpointPrivateConnectionResource,
        PrivateEndpointPrivateConnectionResourceAlias,
        PrivateEndpointPrivateConnectionResourceId,
        PrivateEndpointPrivateDnsZoneGroup,
        PrivateEndpointPrivateServiceConnection;
export 'src/network/azurerm_private_endpoint_application_security_group_association.dart'
    show AzurermPrivateEndpointApplicationSecurityGroupAssociation;
export 'src/network/azurerm_private_link_service.dart'
    show
        AzurermPrivateLinkService,
        PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIds,
        PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIdsChoice,
        PrivateLinkServiceDestinationIpAddressOrLoadBalancerFrontendIpConfigurationIdsDestinationIpAddress,
        PrivateLinkServiceNatIpConfiguration;
export 'src/network/azurerm_public_ip.dart'
    show
        AzurermPublicIp,
        PublicIpAllocationMethod,
        PublicIpDdosProtectionMode,
        PublicIpDomainNameLabelScope,
        PublicIpSku,
        PublicIpSkuTier,
        PublicIpVersion;
export 'src/network/azurerm_public_ip_prefix.dart'
    show
        AzurermPublicIpPrefix,
        PublicIpPrefixIpVersion,
        PublicIpPrefixSku,
        PublicIpPrefixSkuTier;
export 'src/network/azurerm_virtual_network.dart'
    show
        AzurermVirtualNetwork,
        VirtualNetworkAddressSpaceOrIpAddressPool,
        VirtualNetworkAddressSpaceOrIpAddressPoolAddressSpace,
        VirtualNetworkAddressSpaceOrIpAddressPoolChoice,
        VirtualNetworkDdosProtectionPlan,
        VirtualNetworkEncryption,
        VirtualNetworkEnforcement,
        VirtualNetworkIpAddressPool,
        VirtualNetworkPrivateEndpointVnetPolicies;
export 'src/network/azurerm_virtual_network_dns_servers.dart'
    show AzurermVirtualNetworkDnsServers;
export 'src/network/azurerm_virtual_network_gateway.dart'
    show
        AzurermVirtualNetworkGateway,
        VirtualNetworkGatewayBgpSettings,
        VirtualNetworkGatewayClientConnection,
        VirtualNetworkGatewayCustomRoute,
        VirtualNetworkGatewayDhGroup,
        VirtualNetworkGatewayGeneration,
        VirtualNetworkGatewayIkeEncryption,
        VirtualNetworkGatewayIkeIntegrity,
        VirtualNetworkGatewayIpConfiguration,
        VirtualNetworkGatewayIpsecEncryption,
        VirtualNetworkGatewayIpsecIntegrity,
        VirtualNetworkGatewayIpsecPolicy,
        VirtualNetworkGatewayPeeringAddresses,
        VirtualNetworkGatewayPfsGroup,
        VirtualNetworkGatewayPolicyGroup,
        VirtualNetworkGatewayPolicyMember,
        VirtualNetworkGatewayPolicyMemberType,
        VirtualNetworkGatewayPrivateIpAddressAllocation,
        VirtualNetworkGatewayRadiusServer,
        VirtualNetworkGatewayRevokedCertificate,
        VirtualNetworkGatewayRootCertificate,
        VirtualNetworkGatewayVpnAuthTypes,
        VirtualNetworkGatewayVpnClientConfiguration,
        VirtualNetworkGatewayVpnClientProtocols,
        VirtualNetworkGatewayVpnType;
export 'src/network/azurerm_virtual_network_gateway_connection.dart'
    show
        AzurermVirtualNetworkGatewayConnection,
        VirtualNetworkGatewayConnectionCustomBgpAddresses,
        VirtualNetworkGatewayConnectionDhGroup,
        VirtualNetworkGatewayConnectionIkeEncryption,
        VirtualNetworkGatewayConnectionIkeIntegrity,
        VirtualNetworkGatewayConnectionIpsecEncryption,
        VirtualNetworkGatewayConnectionIpsecIntegrity,
        VirtualNetworkGatewayConnectionIpsecPolicy,
        VirtualNetworkGatewayConnectionMode,
        VirtualNetworkGatewayConnectionPfsGroup,
        VirtualNetworkGatewayConnectionProtocol,
        VirtualNetworkGatewayConnectionTrafficSelectorPolicy;
export 'src/network/azurerm_virtual_network_gateway_nat_rule.dart'
    show
        AzurermVirtualNetworkGatewayNatRule,
        VirtualNetworkGatewayNatRuleExternalMapping,
        VirtualNetworkGatewayNatRuleInternalMapping,
        VirtualNetworkGatewayNatRuleMode,
        VirtualNetworkGatewayNatRuleType;
export 'src/network/azurerm_virtual_network_peering.dart'
    show AzurermVirtualNetworkPeering;
export 'src/network/azurerm_web_application_firewall_policy.dart'
    show
        AzurermWebApplicationFirewallPolicy,
        WebApplicationFirewallPolicyAction,
        WebApplicationFirewallPolicyCustomRules,
        WebApplicationFirewallPolicyExcludedRuleSet,
        WebApplicationFirewallPolicyExclusion,
        WebApplicationFirewallPolicyGroupRateLimitBy,
        WebApplicationFirewallPolicyLogScrubbing,
        WebApplicationFirewallPolicyManagedRuleSet,
        WebApplicationFirewallPolicyManagedRules,
        WebApplicationFirewallPolicyMatchConditions,
        WebApplicationFirewallPolicyMatchVariable,
        WebApplicationFirewallPolicyMatchVariables,
        WebApplicationFirewallPolicyMode,
        WebApplicationFirewallPolicyOperator,
        WebApplicationFirewallPolicyRateLimitDuration,
        WebApplicationFirewallPolicyRule,
        WebApplicationFirewallPolicyRuleGroup,
        WebApplicationFirewallPolicyRuleGroupOverride,
        WebApplicationFirewallPolicyRuleGroupOverrideRule,
        WebApplicationFirewallPolicyRuleMatchVariable,
        WebApplicationFirewallPolicyRuleSelectorMatchOperator,
        WebApplicationFirewallPolicyRuleType,
        WebApplicationFirewallPolicySelectorMatchOperator,
        WebApplicationFirewallPolicySettings,
        WebApplicationFirewallPolicyTransforms,
        WebApplicationFirewallPolicyVariableName;
