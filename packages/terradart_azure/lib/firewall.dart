// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager firewall resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_firewall.dart' show DataAzurermFirewall;
export 'src/data/azurerm_firewall_policy.dart' show DataAzurermFirewallPolicy;
export 'src/firewall/azurerm_firewall.dart'
    show
        AzurermFirewall,
        FirewallIpConfiguration,
        FirewallManagementIpConfiguration,
        FirewallVirtualHub;
export 'src/firewall/azurerm_firewall_application_rule_collection.dart'
    show
        AzurermFirewallApplicationRuleCollection,
        FirewallApplicationRuleCollectionProtocol,
        FirewallApplicationRuleCollectionRule;
export 'src/firewall/azurerm_firewall_nat_rule_collection.dart'
    show AzurermFirewallNatRuleCollection, FirewallNatRuleCollectionRule;
export 'src/firewall/azurerm_firewall_network_rule_collection.dart'
    show
        AzurermFirewallNetworkRuleCollection,
        FirewallNetworkRuleCollectionRule;
export 'src/firewall/azurerm_firewall_policy.dart'
    show
        AzurermFirewallPolicy,
        FirewallPolicyDns,
        FirewallPolicyExplicitProxy,
        FirewallPolicyIdentity,
        FirewallPolicyInsights,
        FirewallPolicyIntrusionDetection,
        FirewallPolicyLogAnalyticsWorkspace,
        FirewallPolicySignatureOverrides,
        FirewallPolicyThreatIntelligenceAllowlist,
        FirewallPolicyTlsCertificate,
        FirewallPolicyTrafficBypass;
export 'src/firewall/azurerm_firewall_policy_rule_collection_group.dart'
    show
        AzurermFirewallPolicyRuleCollectionGroup,
        FirewallPolicyRuleCollectionGroupApplicationRuleCollection,
        FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRule,
        FirewallPolicyRuleCollectionGroupHttpHeaders,
        FirewallPolicyRuleCollectionGroupNatRuleCollection,
        FirewallPolicyRuleCollectionGroupNatRuleCollectionRule,
        FirewallPolicyRuleCollectionGroupNetworkRuleCollection,
        FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule,
        FirewallPolicyRuleCollectionGroupProtocols;
