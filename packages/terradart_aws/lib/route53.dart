// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS Route 53.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/aws_route53_delegation_set.dart'
    show DataAwsRoute53DelegationSet;
export 'src/data/aws_route53_records.dart' show DataAwsRoute53Records;
export 'src/data/aws_route53_resolver_endpoint.dart'
    show DataAwsRoute53ResolverEndpoint, DataRoute53ResolverEndpointFilter;
export 'src/data/aws_route53_resolver_firewall_config.dart'
    show DataAwsRoute53ResolverFirewallConfig;
export 'src/data/aws_route53_resolver_firewall_domain_list.dart'
    show DataAwsRoute53ResolverFirewallDomainList;
export 'src/data/aws_route53_resolver_firewall_rule_group.dart'
    show DataAwsRoute53ResolverFirewallRuleGroup;
export 'src/data/aws_route53_resolver_firewall_rule_group_association.dart'
    show DataAwsRoute53ResolverFirewallRuleGroupAssociation;
export 'src/data/aws_route53_resolver_firewall_rules.dart'
    show DataAwsRoute53ResolverFirewallRules;
export 'src/data/aws_route53_resolver_query_log_config.dart'
    show
        DataAwsRoute53ResolverQueryLogConfig,
        DataRoute53ResolverQueryLogConfigFilter;
export 'src/data/aws_route53_resolver_rule.dart'
    show DataAwsRoute53ResolverRule;
export 'src/data/aws_route53_resolver_rules.dart'
    show DataAwsRoute53ResolverRules;
export 'src/data/aws_route53_traffic_policy_document.dart'
    show
        DataAwsRoute53TrafficPolicyDocument,
        DataRoute53TrafficPolicyDocumentEndpoint,
        DataRoute53TrafficPolicyDocumentGeoProximityLocation,
        DataRoute53TrafficPolicyDocumentItems,
        DataRoute53TrafficPolicyDocumentLocation,
        DataRoute53TrafficPolicyDocumentPrimary,
        DataRoute53TrafficPolicyDocumentRegion,
        DataRoute53TrafficPolicyDocumentRule,
        DataRoute53TrafficPolicyDocumentSecondary;
export 'src/data/aws_route53_zone.dart' show DataAwsRoute53Zone;
export 'src/data/aws_route53_zones.dart' show DataAwsRoute53Zones;
export 'src/route53/aws_route53_cidr_collection.dart'
    show AwsRoute53CidrCollection;
export 'src/route53/aws_route53_cidr_location.dart' show AwsRoute53CidrLocation;
export 'src/route53/aws_route53_delegation_set.dart'
    show AwsRoute53DelegationSet;
export 'src/route53/aws_route53_health_check.dart'
    show
        AwsRoute53HealthCheck,
        Route53HealthCheckCloudwatchAlarmRegion,
        Route53HealthCheckInsufficientDataHealthStatus,
        Route53HealthCheckRegions,
        Route53HealthCheckType;
export 'src/route53/aws_route53_hosted_zone_dnssec.dart'
    show AwsRoute53HostedZoneDnssec, Route53HostedZoneDnssecSigningStatus;
export 'src/route53/aws_route53_key_signing_key.dart'
    show AwsRoute53KeySigningKey, Route53KeySigningKeyStatus;
export 'src/route53/aws_route53_query_log.dart' show AwsRoute53QueryLog;
export 'src/route53/aws_route53_record.dart'
    show
        AwsRoute53Record,
        Route53RecordAlias,
        Route53RecordCidrRoutingPolicy,
        Route53RecordCidrRoutingPolicyChoice,
        Route53RecordCoordinates,
        Route53RecordFailoverRoutingPolicy,
        Route53RecordFailoverRoutingPolicyChoice,
        Route53RecordFailoverRoutingPolicyType,
        Route53RecordGeolocationRoutingPolicy,
        Route53RecordGeolocationRoutingPolicyChoice,
        Route53RecordGeoproximityRoutingPolicy,
        Route53RecordGeoproximityRoutingPolicyChoice,
        Route53RecordLatencyRoutingPolicy,
        Route53RecordLatencyRoutingPolicyChoice,
        Route53RecordMultivalueAnswerRoutingPolicy,
        Route53RecordRegion,
        Route53RecordRoutingPolicy,
        Route53RecordTarget,
        Route53RecordTargetAlias,
        Route53RecordTargetRecords,
        Route53RecordType,
        Route53RecordWeightedRoutingPolicy,
        Route53RecordWeightedRoutingPolicyChoice;
export 'src/route53/aws_route53_records_exclusive.dart'
    show
        AwsRoute53RecordsExclusive,
        Route53RecordsExclusiveAliasTarget,
        Route53RecordsExclusiveCidrRoutingConfig,
        Route53RecordsExclusiveCoordinates,
        Route53RecordsExclusiveFailover,
        Route53RecordsExclusiveGeolocation,
        Route53RecordsExclusiveGeoproximityLocation,
        Route53RecordsExclusiveRegion,
        Route53RecordsExclusiveResourceRecordSet,
        Route53RecordsExclusiveResourceRecords,
        Route53RecordsExclusiveType;
export 'src/route53/aws_route53_resolver_config.dart'
    show AwsRoute53ResolverConfig, Route53ResolverConfigAutodefinedReverseFlag;
export 'src/route53/aws_route53_resolver_dnssec_config.dart'
    show AwsRoute53ResolverDnssecConfig;
export 'src/route53/aws_route53_resolver_endpoint.dart'
    show
        AwsRoute53ResolverEndpoint,
        Route53ResolverEndpointDirection,
        Route53ResolverEndpointIpAddress,
        Route53ResolverEndpointProtocols,
        Route53ResolverEndpointType;
export 'src/route53/aws_route53_resolver_firewall_config.dart'
    show
        AwsRoute53ResolverFirewallConfig,
        Route53ResolverFirewallConfigFirewallFailOpen;
export 'src/route53/aws_route53_resolver_firewall_domain_list.dart'
    show AwsRoute53ResolverFirewallDomainList;
export 'src/route53/aws_route53_resolver_firewall_rule.dart'
    show
        AwsRoute53ResolverFirewallRule,
        Route53ResolverFirewallRuleAction,
        Route53ResolverFirewallRuleBlockOverrideDnsType,
        Route53ResolverFirewallRuleBlockResponse,
        Route53ResolverFirewallRuleConfidenceThreshold,
        Route53ResolverFirewallRuleDnsThreatProtection,
        Route53ResolverFirewallRuleFirewallDomainRedirectionAction;
export 'src/route53/aws_route53_resolver_firewall_rule_group.dart'
    show AwsRoute53ResolverFirewallRuleGroup;
export 'src/route53/aws_route53_resolver_firewall_rule_group_association.dart'
    show
        AwsRoute53ResolverFirewallRuleGroupAssociation,
        Route53ResolverFirewallRuleGroupAssociationMutationProtection;
export 'src/route53/aws_route53_resolver_query_log_config.dart'
    show AwsRoute53ResolverQueryLogConfig;
export 'src/route53/aws_route53_resolver_query_log_config_association.dart'
    show AwsRoute53ResolverQueryLogConfigAssociation;
export 'src/route53/aws_route53_resolver_rule.dart'
    show
        AwsRoute53ResolverRule,
        Route53ResolverRuleProtocol,
        Route53ResolverRuleTargetIp,
        Route53ResolverRuleType;
export 'src/route53/aws_route53_resolver_rule_association.dart'
    show AwsRoute53ResolverRuleAssociation;
export 'src/route53/aws_route53_traffic_policy.dart'
    show AwsRoute53TrafficPolicy;
export 'src/route53/aws_route53_traffic_policy_instance.dart'
    show AwsRoute53TrafficPolicyInstance;
export 'src/route53/aws_route53_vpc_association_authorization.dart'
    show
        AwsRoute53VpcAssociationAuthorization,
        Route53VpcAssociationAuthorizationVpcRegion;
export 'src/route53/aws_route53_zone.dart'
    show
        AwsRoute53Zone,
        Route53ZoneVisibility,
        Route53ZoneVisibilityDelegationSetId,
        Route53ZoneVisibilityVpc,
        Route53ZoneVpc;
export 'src/route53/aws_route53_zone_association.dart'
    show AwsRoute53ZoneAssociation, Route53ZoneAssociationVpcRegion;
