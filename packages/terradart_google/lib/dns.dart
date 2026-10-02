// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Cloud DNS managed zones (public, private, peering, forwarding).
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/google_dns_keys.dart' show DataGoogleDnsKeys;
export 'src/data/google_dns_managed_zone.dart' show DataGoogleDnsManagedZone;
export 'src/data/google_dns_managed_zone_iam_policy.dart'
    show DataGoogleDnsManagedZoneIamPolicy;
export 'src/data/google_dns_managed_zones.dart' show DataGoogleDnsManagedZones;
export 'src/data/google_dns_record_set.dart' show DataGoogleDnsRecordSet;
export 'src/data/google_dns_record_sets.dart' show DataGoogleDnsRecordSets;
export 'src/dns/google_dns_managed_zone.dart'
    show
        DnsManagedZoneCloudLoggingConfig,
        DnsManagedZoneDnssecConfig,
        DnsManagedZoneDnssecKeySpec,
        DnsManagedZoneForwardingConfig,
        DnsManagedZoneForwardingTargetNameServer,
        DnsManagedZonePeeringConfig,
        DnsManagedZonePeeringTargetNetwork,
        DnsManagedZonePrivateVisibilityConfig,
        DnsManagedZonePrivateVisibilityGkeCluster,
        DnsManagedZonePrivateVisibilityNetwork,
        DnsZoneVisibility,
        DnssecKeyAlgorithm,
        DnssecKeyType,
        DnssecNonExistence,
        DnssecState,
        ForwardingPath,
        GoogleDnsManagedZone;
export 'src/dns/google_dns_managed_zone_iam_binding.dart'
    show DnsManagedZoneIamBindingCondition, GoogleDnsManagedZoneIamBinding;
export 'src/dns/google_dns_managed_zone_iam_member.dart'
    show DnsManagedZoneIamMemberCondition, GoogleDnsManagedZoneIamMember;
export 'src/dns/google_dns_managed_zone_iam_policy.dart'
    show GoogleDnsManagedZoneIamPolicy;
export 'src/dns/google_dns_policy.dart'
    show
        DnsPolicyAlternativeNameServerConfig,
        DnsPolicyAlternativeNameServerTargetNameServer,
        DnsPolicyDns64Config,
        DnsPolicyNetworks,
        DnsPolicyScope,
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
    show
        DnsResponsePolicyGkeClusters,
        DnsResponsePolicyNetworks,
        GoogleDnsResponsePolicy;
export 'src/dns/google_dns_response_policy_rule.dart'
    show
        DnsResponsePolicyRuleLocalData,
        DnsResponsePolicyRuleLocalDataEntry,
        DnsResponsePolicyRuleRecordType,
        GoogleDnsResponsePolicyRule;
