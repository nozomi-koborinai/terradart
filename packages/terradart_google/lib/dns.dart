// packages/terradart_google/lib/dns.dart
/// Cloud DNS managed zones (public, private, peering, forwarding).
library;

export 'src/dns/google_dns_managed_zone.dart'
    show
        CloudLoggingConfig,
        DnsZoneVisibility,
        DnssecConfig,
        DnssecKeyAlgorithm,
        DnssecKeySpec,
        DnssecKeyType,
        DnssecNonExistence,
        DnssecState,
        ForwardingConfig,
        ForwardingPath,
        ForwardingTargetNameServer,
        GoogleDnsManagedZone,
        PeeringConfig,
        PeeringTargetNetwork,
        PrivateVisibilityConfig,
        PrivateVisibilityGkeCluster,
        PrivateVisibilityNetwork;
export 'src/dns/google_dns_managed_zone_iam_member.dart'
    show GoogleDnsManagedZoneIamMember;
