// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager vpn resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_vpn_gateway.dart' show DataAzurermVpnGateway;
export 'src/data/azurerm_vpn_server_configuration.dart'
    show DataAzurermVpnServerConfiguration;
export 'src/vpn/azurerm_vpn_gateway.dart'
    show
        AzurermVpnGateway,
        VpnGatewayBgpSettings,
        VpnGatewayInstance0BgpPeeringAddress,
        VpnGatewayInstance1BgpPeeringAddress,
        VpnGatewayRoutingPreference;
export 'src/vpn/azurerm_vpn_gateway_connection.dart'
    show
        AzurermVpnGatewayConnection,
        VpnGatewayConnectionCustomBgpAddress,
        VpnGatewayConnectionDhGroup,
        VpnGatewayConnectionEncryptionAlgorithm,
        VpnGatewayConnectionIkeEncryptionAlgorithm,
        VpnGatewayConnectionIkeIntegrityAlgorithm,
        VpnGatewayConnectionIntegrityAlgorithm,
        VpnGatewayConnectionIpsecPolicy,
        VpnGatewayConnectionMode,
        VpnGatewayConnectionPfsGroup,
        VpnGatewayConnectionPropagatedRouteTable,
        VpnGatewayConnectionProtocol,
        VpnGatewayConnectionRouting,
        VpnGatewayConnectionTrafficSelectorPolicy,
        VpnGatewayConnectionVpnLink;
export 'src/vpn/azurerm_vpn_gateway_nat_rule.dart'
    show
        AzurermVpnGatewayNatRule,
        VpnGatewayNatRuleExternalMapping,
        VpnGatewayNatRuleInternalMapping,
        VpnGatewayNatRuleIpConfigurationId,
        VpnGatewayNatRuleMode,
        VpnGatewayNatRuleType;
export 'src/vpn/azurerm_vpn_server_configuration.dart'
    show
        AzurermVpnServerConfiguration,
        VpnServerConfigurationAzureActiveDirectoryAuthentication,
        VpnServerConfigurationClientRevokedCertificate,
        VpnServerConfigurationClientRootCertificate,
        VpnServerConfigurationDhGroup,
        VpnServerConfigurationIkeEncryption,
        VpnServerConfigurationIkeIntegrity,
        VpnServerConfigurationIpsecEncryption,
        VpnServerConfigurationIpsecIntegrity,
        VpnServerConfigurationIpsecPolicy,
        VpnServerConfigurationPfsGroup,
        VpnServerConfigurationRadius,
        VpnServerConfigurationRadiusClientRootCertificate,
        VpnServerConfigurationServer,
        VpnServerConfigurationServerRootCertificate,
        VpnServerConfigurationVpnAuthenticationTypes,
        VpnServerConfigurationVpnProtocols;
export 'src/vpn/azurerm_vpn_server_configuration_policy_group.dart'
    show
        AzurermVpnServerConfigurationPolicyGroup,
        VpnServerConfigurationPolicyGroupPolicy,
        VpnServerConfigurationPolicyGroupType;
export 'src/vpn/azurerm_vpn_site.dart'
    show
        AzurermVpnSite,
        VpnSiteBgp,
        VpnSiteLink,
        VpnSiteO365Policy,
        VpnSiteTrafficCategory;
