// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Cloudflare Magic WAN, Magic Transit, and Magic Network Monitoring.
library;

export 'src/magic/cloudflare_magic_network_monitoring_configuration.dart'
    show
        CloudflareMagicNetworkMonitoringConfiguration,
        MagicNetworkMonitoringConfigurationWarpDevices;
export 'src/magic/cloudflare_magic_network_monitoring_rule.dart'
    show
        CloudflareMagicNetworkMonitoringRule,
        MagicNetworkMonitoringRuleDuration,
        MagicNetworkMonitoringRulePrefixMatch,
        MagicNetworkMonitoringRuleType,
        MagicNetworkMonitoringRuleZscoreSensitivity,
        MagicNetworkMonitoringRuleZscoreTarget;
export 'src/magic/cloudflare_magic_transit_cf1_site.dart'
    show
        CloudflareMagicTransitCf1Site,
        MagicTransitCf1SiteBody,
        MagicTransitCf1SiteLocation;
export 'src/magic/cloudflare_magic_transit_connector.dart'
    show CloudflareMagicTransitConnector, MagicTransitConnectorDevice;
export 'src/magic/cloudflare_magic_transit_site.dart'
    show CloudflareMagicTransitSite, MagicTransitSiteLocation;
export 'src/magic/cloudflare_magic_transit_site_acl.dart'
    show
        CloudflareMagicTransitSiteAcl,
        MagicTransitSiteAclLan1,
        MagicTransitSiteAclLan2,
        MagicTransitSiteAclProtocols;
export 'src/magic/cloudflare_magic_transit_site_lan.dart'
    show
        CloudflareMagicTransitSiteLan,
        MagicTransitSiteLanDhcpOptions,
        MagicTransitSiteLanDhcpRelay,
        MagicTransitSiteLanDhcpServer,
        MagicTransitSiteLanNat,
        MagicTransitSiteLanRoutedSubnets,
        MagicTransitSiteLanStaticAddressing,
        MagicTransitSiteLanType;
export 'src/magic/cloudflare_magic_transit_site_wan.dart'
    show CloudflareMagicTransitSiteWan, MagicTransitSiteWanStaticAddressing;
export 'src/magic/cloudflare_magic_wan_bgp_filter_profile.dart'
    show
        CloudflareMagicWanBgpFilterProfile,
        MagicWanBgpFilterProfileMatchAction;
export 'src/magic/cloudflare_magic_wan_gre_tunnel.dart'
    show
        CloudflareMagicWanGreTunnel,
        MagicWanGreTunnelBgp,
        MagicWanGreTunnelDirection,
        MagicWanGreTunnelHealthCheck,
        MagicWanGreTunnelRate,
        MagicWanGreTunnelTarget,
        MagicWanGreTunnelType;
export 'src/magic/cloudflare_magic_wan_ipsec_tunnel.dart'
    show
        CloudflareMagicWanIpsecTunnel,
        MagicWanIpsecTunnelBgp,
        MagicWanIpsecTunnelCustomRemoteIdentities,
        MagicWanIpsecTunnelDirection,
        MagicWanIpsecTunnelHealthCheck,
        MagicWanIpsecTunnelRate,
        MagicWanIpsecTunnelTarget,
        MagicWanIpsecTunnelType;
export 'src/magic/cloudflare_magic_wan_static_route.dart'
    show CloudflareMagicWanStaticRoute, MagicWanStaticRouteScope;
