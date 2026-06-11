// packages/terradart_google/lib/dns.dart
/// Cloud DNS managed zones (public, private, peering, forwarding).
library;

export 'src/dns/google_dns_managed_zone.dart'
    show
        DnsManagedZoneCloudLoggingConfig,
        DnsZoneVisibility,
        DnsManagedZoneDnssecConfig,
        DnssecKeyAlgorithm,
        DnsManagedZoneDnssecKeySpec,
        DnssecKeyType,
        DnssecNonExistence,
        DnssecState,
        DnsManagedZoneForwardingConfig,
        ForwardingPath,
        DnsManagedZoneForwardingTargetNameServer,
        GoogleDnsManagedZone,
        DnsManagedZonePeeringConfig,
        DnsManagedZonePeeringTargetNetwork,
        DnsManagedZonePrivateVisibilityConfig,
        DnsManagedZonePrivateVisibilityGkeCluster,
        DnsManagedZonePrivateVisibilityNetwork;
export 'src/dns/google_dns_managed_zone_iam_member.dart'
    show GoogleDnsManagedZoneIamMember;
export 'src/dns/google_dns_policy.dart'
    show
        DnsPolicyAlternativeNameServerConfig,
        DnsPolicyAlternativeNameServerTargetNameServer,
        GoogleDnsPolicy;
export 'src/dns/google_dns_record_set.dart'
    show
        DnsRecordSetRoutingPolicy,
        DnsRecordSetRoutingPolicyGeoRouting,
        DnsRecordSetRoutingPolicyHealthCheckedTargets,
        DnsRecordSetRoutingPolicyIlbIpProtocol,
        DnsRecordSetRoutingPolicyIlbType,
        DnsRecordSetRoutingPolicyInternalLoadBalancer,
        DnsRecordSetRoutingPolicyPrimaryBackupRouting,
        DnsRecordSetRoutingPolicyWrrRouting,
        DnsRecordSetType,
        GoogleDnsRecordSet;
export 'src/dns/google_dns_response_policy.dart'
    show GoogleDnsResponsePolicy;
export 'src/dns/google_dns_response_policy_rule.dart'
    show
        DnsResponsePolicyRuleLocalData,
        DnsResponsePolicyRuleLocalDataEntry,
        DnsResponsePolicyRuleRecordType,
        GoogleDnsResponsePolicyRule;
