// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager palo alto resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_palo_alto_local_rulestack.dart'
    show DataAzurermPaloAltoLocalRulestack;
export 'src/palo_alto/azurerm_palo_alto_local_rulestack.dart'
    show
        AzurermPaloAltoLocalRulestack,
        PaloAltoLocalRulestackAntiSpywareProfile,
        PaloAltoLocalRulestackAntiVirusProfile,
        PaloAltoLocalRulestackDnsSubscription,
        PaloAltoLocalRulestackFileBlockingProfile,
        PaloAltoLocalRulestackUrlFilteringProfile,
        PaloAltoLocalRulestackVulnerabilityProfile;
export 'src/palo_alto/azurerm_palo_alto_local_rulestack_certificate.dart'
    show
        AzurermPaloAltoLocalRulestackCertificate,
        PaloAltoLocalRulestackCertificateSource,
        PaloAltoLocalRulestackCertificateSourceKeyVaultCertificateId,
        PaloAltoLocalRulestackCertificateSourceSelfSigned;
export 'src/palo_alto/azurerm_palo_alto_local_rulestack_fqdn_list.dart'
    show AzurermPaloAltoLocalRulestackFqdnList;
export 'src/palo_alto/azurerm_palo_alto_local_rulestack_outbound_trust_certificate_association.dart'
    show AzurermPaloAltoLocalRulestackOutboundTrustCertificateAssociation;
export 'src/palo_alto/azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association.dart'
    show AzurermPaloAltoLocalRulestackOutboundUntrustCertificateAssociation;
export 'src/palo_alto/azurerm_palo_alto_local_rulestack_prefix_list.dart'
    show AzurermPaloAltoLocalRulestackPrefixList;
export 'src/palo_alto/azurerm_palo_alto_local_rulestack_rule.dart'
    show
        AzurermPaloAltoLocalRulestackRule,
        PaloAltoLocalRulestackRuleAction,
        PaloAltoLocalRulestackRuleCategory,
        PaloAltoLocalRulestackRuleDecryptionRuleType,
        PaloAltoLocalRulestackRuleDestination,
        PaloAltoLocalRulestackRuleProtocol,
        PaloAltoLocalRulestackRuleProtocolChoice,
        PaloAltoLocalRulestackRuleProtocolPorts,
        PaloAltoLocalRulestackRuleSource;
export 'src/palo_alto/azurerm_palo_alto_next_generation_firewall_virtual_hub_local_rulestack.dart'
    show
        AzurermPaloAltoNextGenerationFirewallVirtualHubLocalRulestack,
        PaloAltoNextGenerationFirewallVirtualHubLocalRulestackBackendConfig,
        PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDestinationNat,
        PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDnsSettings,
        PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDnsSettingsDnsServers,
        PaloAltoNextGenerationFirewallVirtualHubLocalRulestackDnsSettingsUseAzureDns,
        PaloAltoNextGenerationFirewallVirtualHubLocalRulestackFrontendConfig,
        PaloAltoNextGenerationFirewallVirtualHubLocalRulestackNetworkProfile,
        PaloAltoNextGenerationFirewallVirtualHubLocalRulestackProtocol;
export 'src/palo_alto/azurerm_palo_alto_next_generation_firewall_virtual_hub_panorama.dart'
    show
        AzurermPaloAltoNextGenerationFirewallVirtualHubPanorama,
        PaloAltoNextGenerationFirewallVirtualHubPanoramaBackendConfig,
        PaloAltoNextGenerationFirewallVirtualHubPanoramaDestinationNat,
        PaloAltoNextGenerationFirewallVirtualHubPanoramaDnsSettings,
        PaloAltoNextGenerationFirewallVirtualHubPanoramaDnsSettingsDnsServers,
        PaloAltoNextGenerationFirewallVirtualHubPanoramaDnsSettingsUseAzureDns,
        PaloAltoNextGenerationFirewallVirtualHubPanoramaFrontendConfig,
        PaloAltoNextGenerationFirewallVirtualHubPanoramaNetworkProfile,
        PaloAltoNextGenerationFirewallVirtualHubPanoramaProtocol;
export 'src/palo_alto/azurerm_palo_alto_next_generation_firewall_virtual_hub_strata_cloud_manager.dart'
    show
        AzurermPaloAltoNextGenerationFirewallVirtualHubStrataCloudManager,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerBackendConfig,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDestinationNat,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettingsDnsServers,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerDnsSettingsUseAzureDns,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerFrontendConfig,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerIdentity,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile,
        PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerProtocol;
export 'src/palo_alto/azurerm_palo_alto_next_generation_firewall_virtual_network_local_rulestack.dart'
    show
        AzurermPaloAltoNextGenerationFirewallVirtualNetworkLocalRulestack,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackBackendConfig,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackDestinationNat,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackDnsSettingsDnsServers,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackDnsSettingsUseAzureDns,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackFrontendConfig,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackProtocol,
        PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackVnetConfiguration;
export 'src/palo_alto/azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.dart'
    show
        AzurermPaloAltoNextGenerationFirewallVirtualNetworkPanorama,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaBackendConfig,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDestinationNat,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettings,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettingsDnsServers,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaDnsSettingsUseAzureDns,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaFrontendConfig,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaNetworkProfile,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaProtocol,
        PaloAltoNextGenerationFirewallVirtualNetworkPanoramaVnetConfiguration;
export 'src/palo_alto/azurerm_palo_alto_next_generation_firewall_virtual_network_strata_cloud_manager.dart'
    show
        AzurermPaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManager,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerBackendConfig,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDestinationNat,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettings,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettingsDnsServers,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerDnsSettingsUseAzureDns,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerFrontendConfig,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerIdentity,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerProtocol,
        PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerVnetConfiguration;
export 'src/palo_alto/azurerm_palo_alto_virtual_network_appliance.dart'
    show AzurermPaloAltoVirtualNetworkAppliance;
