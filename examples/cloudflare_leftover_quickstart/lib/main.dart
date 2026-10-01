// GENERATED — dart run tool/generate_cloudflare_leftover_example.dart
// ignore_for_file: unused_element

/// Coverage stack for leftover Cloudflare factories at the current pin.
/// Dummy constructor values; synth + terraform validate only.
/// Never apply.
library;

import 'package:terradart_cloudflare/terradart_cloudflare.dart';
import 'package:terradart_core/terradart_core.dart';

final class CloudflareLeftoverStack extends Stack {
  CloudflareLeftoverStack() : super(providers: [const CloudflareProvider()]) {
    const leftover = 'leftover';
    const accountId = '00000000000000000000000000000001';
    const zoneId = '00000000000000000000000000000002';

    addVariable(
      'leftover_secret',
      const TfVariable(type: 'string', sensitive: true),
    );

    add(
      CloudflareAccessRule(
        localName: 'access_rule',
        mode: .literal(.block),
        configuration: AccessRuleConfiguration(target: .literal(.ip)),
        accountId: .literal(accountId),
      ),
    );

    add(CloudflareAccount(localName: 'account', name: .literal(leftover)));

    add(
      CloudflareAccountDnsSettings(
        localName: 'account_dns_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareAccountDnsSettingsInternalView(
        localName: 'account_dns_settings_internal_view',
        accountId: .literal(accountId),
        name: .literal(leftover),
        zones: .literal([leftover]),
      ),
    );

    add(
      CloudflareAccountMember(
        localName: 'account_member',
        accountId: .literal(accountId),
        email: .literal('leftover@example.com'),
        access: .roles(.literal([leftover])),
      ),
    );

    add(
      CloudflareAccountSubscription(
        localName: 'account_subscription',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareAccountToken(
        localName: 'account_token',
        accountId: .literal(accountId),
        name: .literal(leftover),
        policies: [
          AccountTokenPolicies(
            effect: .literal(.allow),
            resources: .literal(leftover),
            permissionGroups: [
              AccountTokenPermissionGroups(
                id: .literal('00000000000000000000000000000001'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      CloudflareAddressMap(
        localName: 'address_map',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareAiGateway(
        localName: 'ai_gateway',
        accountId: .literal(accountId),
        cacheInvalidateOnUpdate: .literal(true),
        cacheTtl: .literal(200),
        collectLogs: .literal(true),
        id: .literal('00000000000000000000000000000001'),
        rateLimitingInterval: .literal(200),
        rateLimitingLimit: .literal(200),
      ),
    );

    add(
      CloudflareAiGatewayDynamicRouting(
        localName: 'ai_gateway_dynamic_routing',
        accountId: .literal(accountId),
        gatewayId: .literal('00000000000000000000000000000001'),
        name: .literal(leftover),
        elements: [
          AiGatewayDynamicRoutingElements(
            id: .literal('00000000000000000000000000000001'),
            type: .literal(.start),
            outputs: AiGatewayDynamicRoutingOutputs(
              elementId: .literal('00000000000000000000000000000001'),
            ),
          ),
        ],
      ),
    );

    add(
      CloudflareAiSearchInstance(
        localName: 'ai_search_instance',
        accountId: .literal(accountId),
        id: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareAiSearchNamespace(
        localName: 'ai_search_namespace',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareAiSearchToken(
        localName: 'ai_search_token',
        accountId: .literal(accountId),
        cfApiId: .literal('00000000000000000000000000000001'),
        cfApiKey: .variable('leftover_secret'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareApiShield(
        localName: 'api_shield',
        zoneId: .literal(zoneId),
        authIdCharacteristics: [
          ApiShieldAuthIdCharacteristics(
            name: .literal(leftover),
            type: .literal(.header),
          ),
        ],
      ),
    );

    add(
      CloudflareApiShieldDiscoveryOperation(
        localName: 'api_shield_discovery_operation',
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldOperation(
        localName: 'api_shield_operation',
        endpoint: .literal(leftover),
        host: .literal(leftover),
        method: .literal(.get),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldOperationSchemaValidationSettings(
        localName: 'api_shield_operation_schema_validation_settings',
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldSchema(
        localName: 'api_shield_schema',
        file: .literal(leftover),
        kind: .literal(.openapiV3),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldSchemaValidationSettings(
        localName: 'api_shield_schema_validation_settings',
        validationDefaultMitigationAction: .literal(.none),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiToken(
        localName: 'api_token',
        name: .literal(leftover),
        policies: [
          ApiTokenPolicies(
            effect: .literal(.allow),
            resources: .literal(leftover),
            permissionGroups: [
              ApiTokenPermissionGroups(
                id: .literal('00000000000000000000000000000001'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      CloudflareArgoSmartRouting(
        localName: 'argo_smart_routing',
        value: .literal(.on),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareArgoTieredCaching(
        localName: 'argo_tiered_caching',
        value: .literal(.on),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPulls(
        localName: 'authenticated_origin_pulls',
        zoneId: .literal(zoneId),
        config: [
          AuthenticatedOriginPullsConfig(
            certId: .literal('00000000000000000000000000000001'),
          ),
        ],
      ),
    );

    add(
      CloudflareAuthenticatedOriginPullsCertificate(
        localName: 'authenticated_origin_pulls_certificate',
        certificate: .literal(leftover),
        privateKey: .variable('leftover_secret'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPullsHostnameCertificate(
        localName: 'authenticated_origin_pulls_hostname_certificate',
        certificate: .literal(leftover),
        privateKey: .variable('leftover_secret'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPullsSettings(
        localName: 'authenticated_origin_pulls_settings',
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareBotManagement(
        localName: 'bot_management',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareByoIpPrefix(
        localName: 'byo_ip_prefix',
        accountId: .literal(accountId),
        asn: .literal(200),
        cidr: .literal('192.0.2.0/24'),
      ),
    );

    add(
      CloudflareCallsSfuApp(
        localName: 'calls_sfu_app',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCallsTurnApp(
        localName: 'calls_turn_app',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCertificateAuthoritiesHostnameAssociations(
        localName: 'certificate_authorities_hostname_associations',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCertificatePack(
        localName: 'certificate_pack',
        certificateAuthority: .literal(.google),
        type: .literal(.advanced),
        validationMethod: .literal(.txt),
        validityDays: .literal(90),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareClientCertificate(
        localName: 'client_certificate',
        csr: .literal(leftover),
        validityDays: .literal(200),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCloudConnectorRules(
        localName: 'cloud_connector_rules',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCloudforceOneRequest(
        localName: 'cloudforce_one_request',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCloudforceOneRequestAsset(
        localName: 'cloudforce_one_request_asset',
        accountId: .literal(accountId),
        page: .literal(200),
        perPage: .literal(200),
        requestId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareCloudforceOneRequestMessage(
        localName: 'cloudforce_one_request_message',
        accountId: .literal(accountId),
        requestId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareCloudforceOneRequestPriority(
        localName: 'cloudforce_one_request_priority',
        accountId: .literal(accountId),
        labels: .literal([leftover]),
        priority: .literal(200),
        requirement: .literal(leftover),
        tlp: .literal(.clear),
      ),
    );

    add(
      CloudflareConnectivityDirectoryService(
        localName: 'connectivity_directory_service',
        accountId: .literal(accountId),
        name: .literal(leftover),
        type: .literal(.tcp),
        host: ConnectivityDirectoryServiceHost(hostname: .literal(leftover)),
      ),
    );

    add(
      CloudflareContentScanning(
        localName: 'content_scanning',
        value: .literal(.enabled),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareContentScanningExpression(
        localName: 'content_scanning_expression',
        zoneId: .literal(zoneId),
        body: [ContentScanningExpressionBody(payload: .literal(leftover))],
      ),
    );

    add(
      CloudflareCtAlerting(
        localName: 'ct_alerting',
        zoneId: .literal(zoneId),
        enabled: .literal(true),
      ),
    );

    add(
      CloudflareCustomCsr(
        localName: 'custom_csr',
        commonName: .literal(leftover),
        country: .literal(leftover),
        locality: .literal(leftover),
        organization: .literal(leftover),
        sans: .literal([leftover]),
        state: .literal('default'),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCustomHostname(
        localName: 'custom_hostname',
        hostname: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCustomHostnameFallbackOrigin(
        localName: 'custom_hostname_fallback_origin',
        origin: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCustomOriginTrustStore(
        localName: 'custom_origin_trust_store',
        certificate: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCustomPageAsset(
        localName: 'custom_page_asset',
        description: .literal(leftover),
        name: .literal(leftover),
        url: .literal('https://example.com'),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCustomPages(
        localName: 'custom_pages',
        identifier: .literal(.v1000Errors),
        state: .literal(.defaultCase),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCustomSsl(
        localName: 'custom_ssl',
        certificate: .literal(leftover),
        zoneId: .literal(zoneId),
        customCsrId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareD1Database(
        localName: 'd1_database',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareDlsPrefixBinding(
        localName: 'dls_prefix_binding',
        accountId: .literal(accountId),
        cidr: .literal('192.0.2.0/24'),
        prefixId: .literal('192.0.2.0/24'),
        regionKey: .literal(leftover),
      ),
    );

    add(
      CloudflareDnsFirewall(
        localName: 'dns_firewall',
        accountId: .literal(accountId),
        name: .literal(leftover),
        upstreamIps: .literal([leftover]),
      ),
    );

    add(
      CloudflareDnsZoneTransfersAcl(
        localName: 'dns_zone_transfers_acl',
        accountId: .literal(accountId),
        ipRange: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareDnsZoneTransfersIncoming(
        localName: 'dns_zone_transfers_incoming',
        name: .literal(leftover),
        peers: .literal([leftover]),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareDnsZoneTransfersOutgoing(
        localName: 'dns_zone_transfers_outgoing',
        name: .literal(leftover),
        peers: .literal([leftover]),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareDnsZoneTransfersPeer(
        localName: 'dns_zone_transfers_peer',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareDnsZoneTransfersTsig(
        localName: 'dns_zone_transfers_tsig',
        accountId: .literal(accountId),
        algo: .literal(leftover),
        name: .literal(leftover),
        secret: .variable('leftover_secret'),
      ),
    );

    add(
      CloudflareEmailRoutingAddress(
        localName: 'email_routing_address',
        accountId: .literal(accountId),
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      CloudflareEmailRoutingCatchAll(
        localName: 'email_routing_catch_all',
        zoneId: .literal(zoneId),
        actions: [EmailRoutingCatchAllActions(type: .literal(.drop))],
        matchers: [EmailRoutingCatchAllMatchers(type: .literal(.all))],
      ),
    );

    add(
      CloudflareEmailRoutingDns(
        localName: 'email_routing_dns',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareEmailRoutingRule(
        localName: 'email_routing_rule',
        zoneId: .literal(zoneId),
        actions: [EmailRoutingRuleActions(type: .literal(.drop))],
        matchers: [EmailRoutingRuleMatchers(type: .literal(.all))],
      ),
    );

    add(
      CloudflareEmailRoutingSettings(
        localName: 'email_routing_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareEmailSecurityAllowPolicy(
        localName: 'email_security_allow_policy',
        accountId: .literal(accountId),
        pattern: .literal(leftover),
        patternType: .literal(.email),
        isRegex: .literal(true),
        isTrustedSender: .literal(true),
        isAcceptableSender: .literal(true),
        isExemptRecipient: .literal(true),
        verifySender: .literal(true),
      ),
    );

    add(
      CloudflareEmailSecurityBlockSender(
        localName: 'email_security_block_sender',
        accountId: .literal(accountId),
        isRegex: .literal(true),
        pattern: .literal(leftover),
        patternType: .literal(.email),
      ),
    );

    add(
      CloudflareEmailSecurityDomain(
        localName: 'email_security_domain',
        accountId: .literal(accountId),
        domain: .literal(leftover),
        allowedDeliveryModes: .literal([leftover]),
        dropDispositions: .literal([leftover]),
        ipRestrictions: .literal([leftover]),
        regions: .literal([leftover]),
      ),
    );

    add(
      CloudflareEmailSecurityImpersonationRegistry(
        localName: 'email_security_impersonation_registry',
        accountId: .literal(accountId),
        email: .literal('leftover@example.com'),
        isEmailRegex: .literal(true),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareEmailSecurityTrustedDomains(
        localName: 'email_security_trusted_domains',
        accountId: .literal(accountId),
        pattern: .literal(leftover),
      ),
    );

    add(
      CloudflareEmailSendingSubdomain(
        localName: 'email_sending_subdomain',
        zoneId: .literal(zoneId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareFieldExtractor(
        localName: 'field_extractor',
        accountId: .literal(accountId),
        extractor: .literal(leftover),
        rules: [
          FieldExtractorRules(
            ref: .literal(leftover),
            fields: [
              FieldExtractorFields(
                expression: .literal(leftover),
                name: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      CloudflareFilter(
        localName: 'filter',
        zoneId: .literal(zoneId),
        body: [FilterBody(description: .literal(leftover))],
      ),
    );

    add(
      CloudflareFirewallRule(
        localName: 'firewall_rule',
        zoneId: .literal(zoneId),
        action: FirewallRuleAction(mode: .literal(.simulate)),
        filter: FirewallRuleFilter(description: .literal(leftover)),
      ),
    );

    add(
      CloudflareFlagshipApp(
        localName: 'flagship_app',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareFlagshipFlag(
        localName: 'flagship_flag',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
        defaultVariation: .literal(leftover),
        enabled: .literal(true),
        key: .literal(leftover),
        variations: .literal({'k': leftover}),
        rules: [
          FlagshipFlagRules(
            priority: .literal(200),
            serveVariation: .literal(leftover),
            conditions: [FlagshipFlagConditions(attribute: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      CloudflareGoogleTagGateway(
        localName: 'google_tag_gateway',
        enabled: .literal(true),
        endpoint: .literal(leftover),
        hideOriginalIp: .literal(true),
        measurementId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareHealthcheck(
        localName: 'healthcheck',
        address: .literal('192.0.2.1'),
        name: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareHostnameTlsSetting(
        localName: 'hostname_tls_setting',
        hostname: .literal(leftover),
        settingId: .literal(.ciphers),
        value: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareHyperdriveConfig(
        localName: 'hyperdrive_config',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareImage(
        localName: 'image',
        accountId: .literal(accountId),
        id: .literal('00000000000000000000000000000001'),
        url: .literal('https://example.com'),
      ),
    );

    add(
      CloudflareImageVariant(
        localName: 'image_variant',
        accountId: .literal(accountId),
        id: .literal('00000000000000000000000000000001'),
        options: ImageVariantOptions(
          fit: .literal(.scaleDown),
          height: .literal(200),
          metadata: .literal(.none),
          width: .literal(200),
        ),
      ),
    );

    add(
      CloudflareKeylessCertificate(
        localName: 'keyless_certificate',
        certificate: .literal(leftover),
        host: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareLeakedCredentialCheck(
        localName: 'leaked_credential_check',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareLeakedCredentialCheckRule(
        localName: 'leaked_credential_check_rule',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareList(
        localName: 'list',
        accountId: .literal(accountId),
        kind: .literal(.ip),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareListItem(
        localName: 'list_item',
        accountId: .literal(accountId),
        listId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareLoadBalancer(
        localName: 'load_balancer',
        defaultPools: .literal([leftover]),
        fallbackPool: .literal(leftover),
        name: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareLoadBalancerMonitor(
        localName: 'load_balancer_monitor',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareLoadBalancerMonitorGroup(
        localName: 'load_balancer_monitor_group',
        accountId: .literal(accountId),
        description: .literal(leftover),
        members: [
          LoadBalancerMonitorGroupMembers(
            enabled: .literal(true),
            monitorId: .literal('00000000000000000000000000000001'),
            monitoringOnly: .literal(true),
            mustBeHealthy: .literal(true),
          ),
        ],
      ),
    );

    add(
      CloudflareLoadBalancerPool(
        localName: 'load_balancer_pool',
        accountId: .literal(accountId),
        name: .literal(leftover),
        origins: [LoadBalancerPoolOrigins(address: .literal('192.0.2.1'))],
      ),
    );

    add(
      CloudflareLogpullRetention(
        localName: 'logpull_retention',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareLogpushJob(
        localName: 'logpush_job',
        destinationConf: .variable('leftover_secret'),
        accountId: .literal(accountId),
        filter: .literal(leftover),
      ),
    );

    add(
      CloudflareLogpushOwnershipChallenge(
        localName: 'logpush_ownership_challenge',
        destinationConf: .variable('leftover_secret'),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareMagicNetworkMonitoringConfiguration(
        localName: 'magic_network_monitoring_configuration',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMagicNetworkMonitoringRule(
        localName: 'magic_network_monitoring_rule',
        accountId: .literal(accountId),
        automaticAdvertisement: .literal(true),
        name: .literal(leftover),
        prefixes: .literal([leftover]),
        type: .literal(.threshold),
      ),
    );

    add(
      CloudflareMagicTransitCf1Site(
        localName: 'magic_transit_cf1_site',
        accountId: .literal(accountId),
        body: [MagicTransitCf1SiteBody(name: .literal(leftover))],
      ),
    );

    add(
      CloudflareMagicTransitConnector(
        localName: 'magic_transit_connector',
        accountId: .literal(accountId),
        device: MagicTransitConnectorDevice(
          id: .literal('00000000000000000000000000000001'),
        ),
      ),
    );

    add(
      CloudflareMagicTransitSite(
        localName: 'magic_transit_site',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMagicTransitSiteAcl(
        localName: 'magic_transit_site_acl',
        accountId: .literal(accountId),
        name: .literal(leftover),
        siteId: .literal('00000000000000000000000000000001'),
        lan1: MagicTransitSiteAclLan1(
          lanId: .literal('00000000000000000000000000000001'),
        ),
        lan2: MagicTransitSiteAclLan2(
          lanId: .literal('00000000000000000000000000000001'),
        ),
      ),
    );

    add(
      CloudflareMagicTransitSiteLan(
        localName: 'magic_transit_site_lan',
        accountId: .literal(accountId),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareMagicTransitSiteWan(
        localName: 'magic_transit_site_wan',
        accountId: .literal(accountId),
        physport: .literal(200),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareMagicWanBgpFilterProfile(
        localName: 'magic_wan_bgp_filter_profile',
        accountId: .literal(accountId),
        name: .literal(leftover),
        matchAction: .literal(.allow),
        targets: .literal([leftover]),
      ),
    );

    add(
      CloudflareMagicWanGreTunnel(
        localName: 'magic_wan_gre_tunnel',
        accountId: .literal(accountId),
        cloudflareGreEndpoint: .literal(leftover),
        customerGreEndpoint: .literal(leftover),
        interfaceAddress: .literal('192.0.2.1'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMagicWanIpsecTunnel(
        localName: 'magic_wan_ipsec_tunnel',
        accountId: .literal(accountId),
        cloudflareEndpoint: .literal(leftover),
        interfaceAddress: .literal('192.0.2.1'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMagicWanStaticRoute(
        localName: 'magic_wan_static_route',
        accountId: .literal(accountId),
        nexthop: .literal(leftover),
        prefix: .literal('192.0.2.0/24'),
        priority: .literal(200),
      ),
    );

    add(
      CloudflareManagedTransforms(
        localName: 'managed_transforms',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareMoqRelay(
        localName: 'moq_relay',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMtlsCertificate(
        localName: 'mtls_certificate',
        accountId: .literal(accountId),
        ca: .literal(true),
        certificates: .literal(leftover),
      ),
    );

    add(
      CloudflareNelSetting(
        localName: 'nel_setting',
        zoneId: .literal(zoneId),
        value: NelSettingValue(enabled: .literal(true)),
      ),
    );

    add(
      CloudflareNotificationPolicy(
        localName: 'notification_policy',
        accountId: .literal(accountId),
        alertType: .literal(.abuseReportAlert),
        name: .literal(leftover),
        mechanisms: NotificationPolicyMechanisms(
          email: [
            NotificationPolicyEmail(
              id: .literal('00000000000000000000000000000001'),
            ),
          ],
        ),
      ),
    );

    add(
      CloudflareNotificationPolicyWebhooks(
        localName: 'notification_policy_webhooks',
        accountId: .literal(accountId),
        name: .literal(leftover),
        url: .literal('https://example.com'),
      ),
    );

    add(
      CloudflareOauthClient(
        localName: 'oauth_client',
        accountId: .literal(accountId),
        clientName: .literal(leftover),
        grantTypes: [.literal(.authorizationCode)],
        redirectUris: .literal([leftover]),
        responseTypes: [.literal(.token)],
        scopes: .literal([leftover]),
        tokenEndpointAuthMethod: .literal(.none),
      ),
    );

    add(
      CloudflareObservatoryScheduledTest(
        localName: 'observatory_scheduled_test',
        url: .literal('https://example.com'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareOrganization(
        localName: 'organization',
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareOrganizationProfile(
        localName: 'organization_profile',
        businessAddress: .literal('192.0.2.1'),
        businessEmail: .literal('leftover@example.com'),
        businessName: .literal(leftover),
        businessPhone: .literal(leftover),
        externalMetadata: .literal(leftover),
        organizationId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareOriginCaCertificate(
        localName: 'origin_ca_certificate',
        csr: .literal(leftover),
        hostnames: .literal([leftover]),
        requestType: .literal(.originRsa),
      ),
    );

    add(
      CloudflareOriginCloudRegion(
        localName: 'origin_cloud_region',
        originIp: .literal('192.0.2.1'),
        region: .literal(leftover),
        vendor: .literal(.aws),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareOriginTlsComplianceModes(
        localName: 'origin_tls_compliance_modes',
        value: .literal([leftover]),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflarePageRule(
        localName: 'page_rule',
        target: .literal('ethereum'),
        zoneId: .literal(zoneId),
        actions: PageRuleActions(alwaysUseHttps: .literal(true)),
      ),
    );

    add(
      CloudflarePageShieldPolicy(
        localName: 'page_shield_policy',
        action: .literal(.allow),
        description: .literal(leftover),
        enabled: .literal(true),
        expression: .literal(leftover),
        value: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflarePagesDomain(
        localName: 'pages_domain',
        accountId: .literal(accountId),
        name: .literal(leftover),
        projectName: .literal(leftover),
      ),
    );

    add(
      CloudflarePagesProject(
        localName: 'pages_project',
        accountId: .literal(accountId),
        name: .literal(leftover),
        productionBranch: .literal(leftover),
      ),
    );

    add(
      CloudflarePipeline(
        localName: 'pipeline',
        accountId: .literal(accountId),
        name: .literal(leftover),
        sql: .literal(leftover),
      ),
    );

    add(
      CloudflarePipelineSink(
        localName: 'pipeline_sink',
        accountId: .literal(accountId),
        name: .literal(leftover),
        type: .literal(.r2),
      ),
    );

    add(
      CloudflarePipelineStream(
        localName: 'pipeline_stream',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(CloudflarePrecursor(localName: 'precursor', zoneId: .literal(zoneId)));

    add(
      CloudflareQueue(
        localName: 'queue',
        accountId: .literal(accountId),
        queueName: .literal(leftover),
      ),
    );

    add(
      CloudflareQueueConsumer(
        localName: 'queue_consumer',
        accountId: .literal(accountId),
        queueId: .literal('00000000000000000000000000000001'),
        type: .literal(.worker),
      ),
    );

    add(
      CloudflareR2Bucket(
        localName: 'r2_bucket',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketCors(
        localName: 'r2_bucket_cors',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketEventNotification(
        localName: 'r2_bucket_event_notification',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        queueId: .literal('00000000000000000000000000000001'),
        rules: [
          R2BucketEventNotificationRules(actions: [.literal(.putobject)]),
        ],
      ),
    );

    add(
      CloudflareR2BucketLifecycle(
        localName: 'r2_bucket_lifecycle',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketLock(
        localName: 'r2_bucket_lock',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketSippy(
        localName: 'r2_bucket_sippy',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2CustomDomain(
        localName: 'r2_custom_domain',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        domain: .literal(leftover),
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareR2DataCatalog(
        localName: 'r2_data_catalog',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2ManagedDomain(
        localName: 'r2_managed_domain',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        enabled: .literal(true),
      ),
    );

    add(
      CloudflareRateLimit(
        localName: 'rate_limit',
        period: .literal(200),
        threshold: .literal(200),
        zoneId: .literal(zoneId),
        action: RateLimitAction(mode: .literal(.simulate)),
        match: RateLimitMatch(
          headers: [RateLimitHeaders(name: .literal(leftover))],
        ),
      ),
    );

    add(
      CloudflareRegionalHostname(
        localName: 'regional_hostname',
        hostname: .literal(leftover),
        regionKey: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareRegionalTieredCache(
        localName: 'regional_tiered_cache',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareRegistrarDomain(
        localName: 'registrar_domain',
        accountId: .literal(accountId),
        domainName: .literal(leftover),
      ),
    );

    add(
      CloudflareRuleset(
        localName: 'ruleset',
        scope: .zoneId(.literal(zoneId)),
        kind: .literal(.zone),
        name: .literal(leftover),
        phase: .literal(.httpRequestFirewallCustom),
      ),
    );

    add(
      CloudflareSchemaValidationOperationSettings(
        localName: 'schema_validation_operation_settings',
        mitigationAction: .literal(.none),
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareSchemaValidationSchemas(
        localName: 'schema_validation_schemas',
        kind: .literal(.openapiV3),
        name: .literal(leftover),
        source: .literal(leftover),
        validationEnabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareSchemaValidationSettings(
        localName: 'schema_validation_settings',
        validationDefaultMitigationAction: .literal(.none),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareSecretsStore(
        localName: 'secrets_store',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareSecretsStoreSecret(
        localName: 'secrets_store_secret',
        accountId: .literal(accountId),
        name: .literal(leftover),
        scopes: .literal([leftover]),
        storeId: .literal('00000000000000000000000000000001'),
        value: .variable('leftover_secret'),
      ),
    );

    add(
      CloudflareShare(
        localName: 'share',
        accountId: .literal(accountId),
        name: .literal(leftover),
        recipients: [
          ShareRecipients(
            organizationId: .literal('00000000000000000000000000000001'),
          ),
        ],
        resources: [
          ShareResources(
            meta: .literal('{}'),
            resourceAccountId: .literal('00000000000000000000000000000001'),
            resourceId: .literal('00000000000000000000000000000001'),
            resourceType: .literal(.customRuleset),
          ),
        ],
      ),
    );

    add(
      CloudflareShareRecipient(
        localName: 'share_recipient',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareShareResource(
        localName: 'share_resource',
        accountId: .literal(accountId),
        meta: .literal('{}'),
        resourceAccountId: .literal('00000000000000000000000000000001'),
        resourceId: .literal('00000000000000000000000000000001'),
        resourceType: .literal(.customRuleset),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareSnippet(
        localName: 'snippet',
        files: .literal([
          {'name': 'main.js', 'content': 'export default {};'},
        ]),
        snippetName: .literal(leftover),
        zoneId: .literal(zoneId),
        metadata: SnippetMetadata(mainModule: .literal('main.js')),
      ),
    );

    add(
      CloudflareSnippetRules(
        localName: 'snippet_rules',
        zoneId: .literal(zoneId),
        rules: [
          SnippetRules(
            expression: .literal(leftover),
            snippetName: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      CloudflareSnippets(
        localName: 'snippets',
        files: .literal([leftover]),
        snippetName: .literal(leftover),
        zoneId: .literal(zoneId),
        metadata: SnippetsMetadata(mainModule: .literal(leftover)),
      ),
    );

    add(
      CloudflareSpectrumApplication(
        localName: 'spectrum_application',
        protocol: .literal(leftover),
        zoneId: .literal(zoneId),
        dns: SpectrumApplicationDns(name: .literal(leftover)),
      ),
    );

    add(
      CloudflareSsoConnector(
        localName: 'sso_connector',
        accountId: .literal(accountId),
        emailDomain: .literal('leftover@example.com'),
      ),
    );

    add(CloudflareStream(localName: 'stream', accountId: .literal(accountId)));

    add(
      CloudflareStreamAudioTrack(
        localName: 'stream_audio_track',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    add(
      CloudflareStreamCaptionLanguage(
        localName: 'stream_caption_language',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
        language: .literal(leftover),
      ),
    );

    add(
      CloudflareStreamDownload(
        localName: 'stream_download',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    add(
      CloudflareStreamKey(
        localName: 'stream_key',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareStreamLiveInput(
        localName: 'stream_live_input',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareStreamWatermark(
        localName: 'stream_watermark',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareStreamWebhook(
        localName: 'stream_webhook',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareTieredCache(
        localName: 'tiered_cache',
        value: .literal(.on),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareTokenValidationConfig(
        localName: 'token_validation_config',
        description: .literal(leftover),
        title: .literal(leftover),
        tokenSources: .literal([leftover]),
        tokenType: .literal(.jwt),
        zoneId: .literal(zoneId),
        credentials: TokenValidationConfigCredentials(
          keys: [
            TokenValidationConfigKeys(
              alg: .literal(.rs256),
              kid: .literal(leftover),
              kty: .literal(.rsa),
            ),
          ],
        ),
      ),
    );

    add(
      CloudflareTokenValidationRules(
        localName: 'token_validation_rules',
        action: .literal(.log),
        description: .literal(leftover),
        enabled: .literal(true),
        expression: .literal(leftover),
        title: .literal(leftover),
        zoneId: .literal(zoneId),
        selector: TokenValidationRulesSelector(
          exclude: [
            TokenValidationRulesExclude(operationIds: .literal([leftover])),
          ],
        ),
      ),
    );

    add(
      CloudflareTotalTls(
        localName: 'total_tls',
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareTurnstileWidget(
        localName: 'turnstile_widget',
        accountId: .literal(accountId),
        domains: .literal([leftover]),
        mode: .literal(.nonInteractive),
        name: .literal(leftover),
        filter: .literal(leftover),
      ),
    );

    add(
      CloudflareUniversalSslSetting(
        localName: 'universal_ssl_setting',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareUrlNormalizationSettings(
        localName: 'url_normalization_settings',
        scope: .literal(.incoming),
        type: .literal(.cloudflare),
        zoneId: .literal(zoneId),
      ),
    );

    add(CloudflareUser(localName: 'user'));

    add(
      CloudflareUserAgentBlockingRule(
        localName: 'user_agent_blocking_rule',
        mode: .literal(.block),
        zoneId: .literal(zoneId),
        configuration: UserAgentBlockingRuleConfiguration(
          target: .literal(.ua),
        ),
      ),
    );

    add(
      CloudflareUserGroup(
        localName: 'user_group',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareUserGroupMembers(
        localName: 'user_group_members',
        accountId: .literal(accountId),
        userGroupId: .literal('00000000000000000000000000000001'),
        members: [
          UserGroupMembers(id: .literal('00000000000000000000000000000001')),
        ],
      ),
    );

    add(
      CloudflareVulnerabilityScannerCredential(
        localName: 'vulnerability_scanner_credential',
        accountId: .literal(accountId),
        credentialSetId: .literal('00000000000000000000000000000001'),
        location: .literal(.header),
        locationName: .literal(leftover),
        name: .literal(leftover),
        value: .variable('leftover_secret'),
      ),
    );

    add(
      CloudflareVulnerabilityScannerCredentialSet(
        localName: 'vulnerability_scanner_credential_set',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareVulnerabilityScannerTargetEnvironment(
        localName: 'vulnerability_scanner_target_environment',
        accountId: .literal(accountId),
        name: .literal(leftover),
        target: VulnerabilityScannerTargetEnvironmentTarget(
          type: .literal(.zone),
          zoneTag: .literal(leftover),
        ),
      ),
    );

    add(
      CloudflareWaitingRoom(
        localName: 'waiting_room',
        host: .literal(leftover),
        name: .literal(leftover),
        newUsersPerMinute: .literal(200),
        totalActiveUsers: .literal(200),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWaitingRoomEvent(
        localName: 'waiting_room_event',
        eventEndTime: .literal(leftover),
        eventStartTime: .literal(leftover),
        name: .literal(leftover),
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWaitingRoomRules(
        localName: 'waiting_room_rules',
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
        rules: [
          WaitingRoomRules(
            action: .literal(.bypassWaitingRoom),
            expression: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      CloudflareWaitingRoomSettings(
        localName: 'waiting_room_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWeb3Hostname(
        localName: 'web3_hostname',
        name: .literal(leftover),
        target: .literal(.ethereum),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWebAnalyticsRule(
        localName: 'web_analytics_rule',
        accountId: .literal(accountId),
        rulesetId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareWebAnalyticsSite(
        localName: 'web_analytics_site',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareWorker(
        localName: 'worker',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareWorkerVersion(
        localName: 'worker_version',
        accountId: .literal(accountId),
        workerId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareWorkersCronTrigger(
        localName: 'workers_cron_trigger',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
        schedules: [WorkersCronTriggerSchedules(cron: .literal('* * * * *'))],
      ),
    );

    add(
      CloudflareWorkersCustomDomain(
        localName: 'workers_custom_domain',
        accountId: .literal(accountId),
        hostname: .literal(leftover),
        service: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWorkersDeployment(
        localName: 'workers_deployment',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
        strategy: .literal(.percentage),
        versions: [
          WorkersDeploymentVersions(
            percentage: .literal(100),
            versionId: .literal('00000000000000000000000000000001'),
          ),
        ],
      ),
    );

    add(
      CloudflareWorkersForPlatformsDispatchNamespace(
        localName: 'workers_for_platforms_dispatch_namespace',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareWorkersKv(
        localName: 'workers_kv',
        accountId: .literal(accountId),
        keyName: .literal(leftover),
        namespaceId: .literal('00000000000000000000000000000001'),
        value: .literal(leftover),
      ),
    );

    add(
      CloudflareWorkersKvNamespace(
        localName: 'workers_kv_namespace',
        accountId: .literal(accountId),
        title: .literal(leftover),
      ),
    );

    add(
      CloudflareWorkersRoute(
        localName: 'workers_route',
        pattern: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWorkersScript(
        localName: 'workers_script',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
        content: .content(.literal(leftover)),
      ),
    );

    add(
      CloudflareWorkersScriptSubdomain(
        localName: 'workers_script_subdomain',
        accountId: .literal(accountId),
        enabled: .literal(true),
        scriptName: .literal(leftover),
      ),
    );

    add(
      CloudflareWorkflow(
        localName: 'workflow',
        accountId: .literal(accountId),
        className: .literal(leftover),
        scriptName: .literal(leftover),
        workflowName: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessAiControlsMcpPortal(
        localName: 'zero_trust_access_ai_controls_mcp_portal',
        accountId: .literal(accountId),
        hostname: .literal(leftover),
        id: .literal('00000000000000000000000000000001'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessAiControlsMcpServer(
        localName: 'zero_trust_access_ai_controls_mcp_server',
        accountId: .literal(accountId),
        authType: .literal(.unauthenticated),
        hostname: .literal(leftover),
        id: .literal('00000000000000000000000000000001'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessApplication(
        localName: 'zero_trust_access_application',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessCustomPage(
        localName: 'zero_trust_access_custom_page',
        accountId: .literal(accountId),
        customHtml: .literal(leftover),
        name: .literal(leftover),
        type: .literal(.forbidden),
      ),
    );

    add(
      CloudflareZeroTrustAccessGroup(
        localName: 'zero_trust_access_group',
        name: .literal(leftover),
        include: [
          ZeroTrustAccessGroupInclude(
            anyValidServiceToken: ZeroTrustAccessGroupAnyValidServiceToken(),
          ),
        ],
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessIdentityProvider(
        localName: 'zero_trust_access_identity_provider',
        name: .literal(leftover),
        type: .literal(.googleApps),
        config: ZeroTrustAccessIdentityProviderConfig(
          appsDomain: .literal(leftover),
        ),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessInfrastructureTarget(
        localName: 'zero_trust_access_infrastructure_target',
        accountId: .literal(accountId),
        hostname: .literal(leftover),
        ip: ZeroTrustAccessInfrastructureTargetIp(
          ipv4: ZeroTrustAccessInfrastructureTargetIpv4(
            ipAddr: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      CloudflareZeroTrustAccessKeyConfiguration(
        localName: 'zero_trust_access_key_configuration',
        accountId: .literal(accountId),
        keyRotationIntervalDays: .literal(200),
      ),
    );

    add(
      CloudflareZeroTrustAccessMtlsCertificate(
        localName: 'zero_trust_access_mtls_certificate',
        certificate: .literal(leftover),
        name: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessMtlsHostnameSettings(
        localName: 'zero_trust_access_mtls_hostname_settings',
        settings: [
          ZeroTrustAccessMtlsHostnameSettings(
            chinaNetwork: .literal(true),
            clientCertificateForwarding: .literal(true),
            hostname: .literal(leftover),
          ),
        ],
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessPolicy(
        localName: 'zero_trust_access_policy',
        accountId: .literal(accountId),
        decision: .literal(.allow),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessServiceToken(
        localName: 'zero_trust_access_service_token',
        name: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessShortLivedCertificate(
        localName: 'zero_trust_access_short_lived_certificate',
        appId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessTag(
        localName: 'zero_trust_access_tag',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustCasbPolicy(
        localName: 'zero_trust_casb_policy',
        accountId: .literal(accountId),
        displayName: .literal(leftover),
        findingTypeId: .literal('00000000000000000000000000000001'),
        enabled: .literal(true),
        appliesToAllIntegrations: .literal(true),
        actions: ZeroTrustCasbPolicyActions(
          remediationTypes: [
            ZeroTrustCasbPolicyRemediationTypes(
              remediationTypeId: .literal('00000000000000000000000000000001'),
            ),
          ],
        ),
      ),
    );

    add(
      CloudflareZeroTrustCasbWebhook(
        localName: 'zero_trust_casb_webhook',
        accountId: .literal(accountId),
        label: .literal(leftover),
        destinationUrl: .literal('https://example.com'),
        authenticationType: .literal(.none),
      ),
    );

    add(
      CloudflareZeroTrustConnectivitySettings(
        localName: 'zero_trust_connectivity_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceCustomProfile(
        localName: 'zero_trust_device_custom_profile',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDeviceCustomProfileLocalDomainFallback(
        localName: 'zero_trust_device_custom_profile_local_domain_fa',
        accountId: .literal(accountId),
        policyId: .literal('00000000000000000000000000000001'),
        domains: [
          ZeroTrustDeviceCustomProfileLocalDomainFallbackDomains(
            suffix: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      CloudflareZeroTrustDeviceDefaultProfile(
        localName: 'zero_trust_device_default_profile',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceDefaultProfileCertificates(
        localName: 'zero_trust_device_default_profile_certificates',
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback(
        localName: 'zero_trust_device_default_profile_local_domain_f',
        accountId: .literal(accountId),
        domains: [
          ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomains(
            suffix: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      CloudflareZeroTrustDeviceDeploymentGroups(
        localName: 'zero_trust_device_deployment_groups',
        accountId: .literal(accountId),
        name: .literal(leftover),
        versionConfig: [
          ZeroTrustDeviceDeploymentGroupsVersionConfig(
            targetEnvironment: .literal(leftover),
            version: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      CloudflareZeroTrustDeviceIpProfile(
        localName: 'zero_trust_device_ip_profile',
        accountId: .literal(accountId),
        match: .literal(leftover),
        name: .literal(leftover),
        precedence: .literal(200),
        subnetId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDeviceManagedNetworks(
        localName: 'zero_trust_device_managed_networks',
        accountId: .literal(accountId),
        name: .literal(leftover),
        type: .literal(.tls),
        config: ZeroTrustDeviceManagedNetworksConfig(
          tlsSockaddr: .literal(leftover),
        ),
      ),
    );

    add(
      CloudflareZeroTrustDevicePostureIntegration(
        localName: 'zero_trust_device_posture_integration',
        accountId: .literal(accountId),
        interval: .literal(leftover),
        name: .literal(leftover),
        type: .literal(.workspaceOne),
        config: ZeroTrustDevicePostureIntegrationConfig(
          accessClientId: .literal('00000000000000000000000000000001'),
        ),
      ),
    );

    add(
      CloudflareZeroTrustDevicePostureRule(
        localName: 'zero_trust_device_posture_rule',
        accountId: .literal(accountId),
        type: .literal(.file),
      ),
    );

    add(
      CloudflareZeroTrustDeviceSettings(
        localName: 'zero_trust_device_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceSubnet(
        localName: 'zero_trust_device_subnet',
        accountId: .literal(accountId),
        name: .literal(leftover),
        network: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDexRule(
        localName: 'zero_trust_dex_rule',
        accountId: .literal(accountId),
        match: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDexTest(
        localName: 'zero_trust_dex_test',
        accountId: .literal(accountId),
        enabled: .literal(true),
        interval: .literal(leftover),
        name: .literal(leftover),
        data: ZeroTrustDexTestData(host: .literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpCustomEntry(
        localName: 'zero_trust_dlp_custom_entry',
        accountId: .literal(accountId),
        enabled: .literal(true),
        name: .literal(leftover),
        pattern: ZeroTrustDlpCustomEntryPattern(regex: .literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpCustomProfile(
        localName: 'zero_trust_dlp_custom_profile',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataClass(
        localName: 'zero_trust_dlp_data_class',
        accountId: .literal(accountId),
        dataTags: .literal([leftover]),
        expression: .literal(leftover),
        name: .literal(leftover),
        sensitivityLevels: [
          ZeroTrustDlpDataClassSensitivityLevels(
            groupId: .literal('00000000000000000000000000000001'),
            levelId: .literal('00000000000000000000000000000001'),
          ),
        ],
      ),
    );

    add(
      CloudflareZeroTrustDlpDataTag(
        localName: 'zero_trust_dlp_data_tag',
        accountId: .literal(accountId),
        categoryId: .literal('00000000000000000000000000000001'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataTagCategory(
        localName: 'zero_trust_dlp_data_tag_category',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataset(
        localName: 'zero_trust_dlp_dataset',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpEntry(
        localName: 'zero_trust_dlp_entry',
        accountId: .literal(accountId),
        enabled: .literal(true),
        name: .literal(leftover),
        pattern: ZeroTrustDlpEntryPattern(regex: .literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpIntegrationEntry(
        localName: 'zero_trust_dlp_integration_entry',
        accountId: .literal(accountId),
        enabled: .literal(true),
        entryId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpPredefinedEntry(
        localName: 'zero_trust_dlp_predefined_entry',
        accountId: .literal(accountId),
        enabled: .literal(true),
        entryId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpPredefinedProfile(
        localName: 'zero_trust_dlp_predefined_profile',
        accountId: .literal(accountId),
        profileId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityGroup(
        localName: 'zero_trust_dlp_sensitivity_group',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityLevel(
        localName: 'zero_trust_dlp_sensitivity_level',
        accountId: .literal(accountId),
        name: .literal(leftover),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityLevelOrder(
        localName: 'zero_trust_dlp_sensitivity_level_order',
        accountId: .literal(accountId),
        levelIds: .literal([leftover]),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSettings(
        localName: 'zero_trust_dlp_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDnsLocation(
        localName: 'zero_trust_dns_location',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayCertificate(
        localName: 'zero_trust_gateway_certificate',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustGatewayLogging(
        localName: 'zero_trust_gateway_logging',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustGatewayPacfile(
        localName: 'zero_trust_gateway_pacfile',
        accountId: .literal(accountId),
        contents: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayPolicy(
        localName: 'zero_trust_gateway_policy',
        accountId: .literal(accountId),
        action: .literal(.allow),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayProxyEndpoint(
        localName: 'zero_trust_gateway_proxy_endpoint',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewaySettings(
        localName: 'zero_trust_gateway_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustList(
        localName: 'zero_trust_list',
        accountId: .literal(accountId),
        name: .literal(leftover),
        type: .literal(.serial),
      ),
    );

    add(
      CloudflareZeroTrustNetworkHostnameRoute(
        localName: 'zero_trust_network_hostname_route',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustOrganization(
        localName: 'zero_trust_organization',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustResourceLibraryApplication(
        localName: 'zero_trust_resource_library_application',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustRiskBehavior(
        localName: 'zero_trust_risk_behavior',
        accountId: .literal(accountId),
        behaviors: {
          'k': ZeroTrustRiskBehaviorBehaviors(
            enabled: .literal(true),
            riskLevel: .literal(.low),
          ),
        },
      ),
    );

    add(
      CloudflareZeroTrustRiskScoringIntegration(
        localName: 'zero_trust_risk_scoring_integration',
        accountId: .literal(accountId),
        integrationType: .literal(.okta),
        tenantUrl: .literal('https://example.com'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflared(
        localName: 'zero_trust_tunnel_cloudflared',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredConfig(
        localName: 'zero_trust_tunnel_cloudflared_config',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredRoute(
        localName: 'zero_trust_tunnel_cloudflared_route',
        accountId: .literal(accountId),
        network: .literal(leftover),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredVirtualNetwork(
        localName: 'zero_trust_tunnel_cloudflared_virtual_network',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelWarpConnector(
        localName: 'zero_trust_tunnel_warp_connector',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelWarpConnectorConfig(
        localName: 'zero_trust_tunnel_warp_connector_config',
        accountId: .literal(accountId),
        haMode: .literal(.none),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZoneAutoOriginTlsKex(
        localName: 'zone_auto_origin_tls_kex',
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneCacheReserve(
        localName: 'zone_cache_reserve',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneCacheVariants(
        localName: 'zone_cache_variants',
        zoneId: .literal(zoneId),
        value: ZoneCacheVariantsValue(avif: .literal([leftover])),
      ),
    );

    add(
      CloudflareZoneDnsSettings(
        localName: 'zone_dns_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneDnssec(localName: 'zone_dnssec', zoneId: .literal(zoneId)),
    );

    add(CloudflareZoneHold(localName: 'zone_hold', zoneId: .literal(zoneId)));

    add(
      CloudflareZoneLockdown(
        localName: 'zone_lockdown',
        urls: .literal([leftover]),
        zoneId: .literal(zoneId),
        configurations: [ZoneLockdownConfigurations(target: .literal(.ip))],
      ),
    );

    add(
      CloudflareZoneSetting(
        localName: 'zone_setting',
        settingId: .literal('ciphers'),
        value: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneSubscription(
        localName: 'zone_subscription',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneTracing(
        localName: 'zone_tracing',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneTracingRules(
        localName: 'zone_tracing_rules',
        zoneId: .literal(zoneId),
        rules: [
          ZoneTracingRules(
            action: .literal(.setTraceSettings),
            description: .literal(leftover),
            enabled: .literal(true),
            expression: .literal(leftover),
            actionParameters: ZoneTracingRulesActionParameters(
              samplingRatio: .literal(1),
            ),
          ),
        ],
      ),
    );

    addData(
      DataCloudflareAccessRule(
        localName: 'd_access_rule',
        accountId: .literal(accountId),
        ruleId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccessRules(
        localName: 'd_access_rules',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccount(
        localName: 'd_account',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountApiTokenPermissionGroups(
        localName: 'd_account_api_token_permission_groups',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountApiTokenPermissionGroupsList(
        localName: 'd_account_api_token_permission_groups_list',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountDnsSettings(
        localName: 'd_account_dns_settings',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountDnsSettingsInternalView(
        localName: 'd_account_dns_settings_internal_view',
        accountId: .literal(accountId),
        viewId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountDnsSettingsInternalViews(
        localName: 'd_account_dns_settings_internal_views',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountMember(
        localName: 'd_account_member',
        accountId: .literal(accountId),
        memberId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountMembers(
        localName: 'd_account_members',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountPermissionGroup(
        localName: 'd_account_permission_group',
        accountId: .literal(accountId),
        permissionGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountPermissionGroups(
        localName: 'd_account_permission_groups',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountRole(
        localName: 'd_account_role',
        accountId: .literal(accountId),
        roleId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountRoles(
        localName: 'd_account_roles',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountSubscription(
        localName: 'd_account_subscription',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountToken(
        localName: 'd_account_token',
        accountId: .literal(accountId),
        tokenId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountTokens(
        localName: 'd_account_tokens',
        accountId: .literal(accountId),
      ),
    );

    addData(DataCloudflareAccounts(localName: 'd_accounts'));

    addData(
      DataCloudflareAddressMap(
        localName: 'd_address_map',
        addressMapId: .literal('192.0.2.1'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAddressMaps(
        localName: 'd_address_maps',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiGateway(
        localName: 'd_ai_gateway',
        accountId: .literal(accountId),
        filter: DataAiGatewayFilter(search: .literal(leftover)),
      ),
    );

    addData(
      DataCloudflareAiGatewayDynamicRouting(
        localName: 'd_ai_gateway_dynamic_routing',
        gatewayId: .literal('00000000000000000000000000000001'),
        id: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiGateways(
        localName: 'd_ai_gateways',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiSearchInstance(
        localName: 'd_ai_search_instance',
        accountId: .literal(accountId),
        filter: DataAiSearchInstanceFilter(namespace: .literal(leftover)),
      ),
    );

    addData(
      DataCloudflareAiSearchInstances(
        localName: 'd_ai_search_instances',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiSearchNamespace(
        localName: 'd_ai_search_namespace',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareAiSearchNamespaces(
        localName: 'd_ai_search_namespaces',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiSearchToken(
        localName: 'd_ai_search_token',
        accountId: .literal(accountId),
        filter: DataAiSearchTokenFilter(search: .literal(leftover)),
      ),
    );

    addData(
      DataCloudflareAiSearchTokens(
        localName: 'd_ai_search_tokens',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareApiShield(
        localName: 'd_api_shield',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldDiscoveryOperations(
        localName: 'd_api_shield_discovery_operations',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldOperation(
        localName: 'd_api_shield_operation',
        zoneId: .literal(zoneId),
        operationId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareApiShieldOperationSchemaValidationSettings(
        localName: 'd_api_shield_operation_schema_validation_setting',
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldOperations(
        localName: 'd_api_shield_operations',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldSchema(
        localName: 'd_api_shield_schema',
        schemaId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldSchemaValidationSettings(
        localName: 'd_api_shield_schema_validation_settings',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldSchemas(
        localName: 'd_api_shield_schemas',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiToken(
        localName: 'd_api_token',
        tokenId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareApiTokenPermissionGroupsList(
        localName: 'd_api_token_permission_groups_list',
      ),
    );

    addData(DataCloudflareApiTokens(localName: 'd_api_tokens'));

    addData(
      DataCloudflareArgoSmartRouting(
        localName: 'd_argo_smart_routing',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareArgoTieredCaching(
        localName: 'd_argo_tiered_caching',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPulls(
        localName: 'd_authenticated_origin_pulls',
        hostname: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsCertificate(
        localName: 'd_authenticated_origin_pulls_certificate',
        certificateId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsCertificates(
        localName: 'd_authenticated_origin_pulls_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsHostnameCertificate(
        localName: 'd_authenticated_origin_pulls_hostname_certificat',
        certificateId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsHostnameCertificates(
        localName: 'd_authenticated_origin_pulls_hostname_certific_2',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsSettings(
        localName: 'd_authenticated_origin_pulls_settings',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareBotManagement(
        localName: 'd_bot_management',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareBotnetFeedConfigAsn(
        localName: 'd_botnet_feed_config_asn',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareByoIpPrefix(
        localName: 'd_byo_ip_prefix',
        prefixId: .literal('192.0.2.0/24'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareByoIpPrefixes(
        localName: 'd_byo_ip_prefixes',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCallsSfuApp(
        localName: 'd_calls_sfu_app',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCallsSfuApps(
        localName: 'd_calls_sfu_apps',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCallsTurnApp(
        localName: 'd_calls_turn_app',
        accountId: .literal(accountId),
        keyId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCallsTurnApps(
        localName: 'd_calls_turn_apps',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCertificateAuthoritiesHostnameAssociations(
        localName: 'd_certificate_authorities_hostname_associations',
        zoneId: .literal(zoneId),
        mtlsCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCertificatePack(
        localName: 'd_certificate_pack',
        zoneId: .literal(zoneId),
        certificatePackId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCertificatePacks(
        localName: 'd_certificate_packs',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareClientCertificate(
        localName: 'd_client_certificate',
        zoneId: .literal(zoneId),
        clientCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareClientCertificates(
        localName: 'd_client_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCloudConnectorRules(
        localName: 'd_cloud_connector_rules',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequest(
        localName: 'd_cloudforce_one_request',
        accountId: .literal(accountId),
        requestId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequestAsset(
        localName: 'd_cloudforce_one_request_asset',
        accountId: .literal(accountId),
        assetId: .literal('00000000000000000000000000000001'),
        requestId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequestMessage(
        localName: 'd_cloudforce_one_request_message',
        page: .literal(200),
        perPage: .literal(200),
        requestId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequestPriority(
        localName: 'd_cloudforce_one_request_priority',
        priorityId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequests(
        localName: 'd_cloudforce_one_requests',
        page: .literal(200),
        perPage: .literal(200),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareConnectivityDirectoryService(
        localName: 'd_connectivity_directory_service',
        accountId: .literal(accountId),
        serviceId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareConnectivityDirectoryServices(
        localName: 'd_connectivity_directory_services',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareContentScanning(
        localName: 'd_content_scanning',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareContentScanningExpressions(
        localName: 'd_content_scanning_expressions',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCtAlerting(
        localName: 'd_ct_alerting',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCustomCsr(
        localName: 'd_custom_csr',
        accountId: .literal(accountId),
        customCsrId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCustomCsrs(
        localName: 'd_custom_csrs',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomHostname(
        localName: 'd_custom_hostname',
        zoneId: .literal(zoneId),
        customHostnameId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCustomHostnameFallbackOrigin(
        localName: 'd_custom_hostname_fallback_origin',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCustomHostnames(
        localName: 'd_custom_hostnames',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCustomOriginTrustStore(
        localName: 'd_custom_origin_trust_store',
        zoneId: .literal(zoneId),
        customOriginTrustStoreId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCustomOriginTrustStores(
        localName: 'd_custom_origin_trust_stores',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCustomPageAsset(
        localName: 'd_custom_page_asset',
        assetName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomPageAssets(
        localName: 'd_custom_page_assets',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomPages(
        localName: 'd_custom_pages',
        identifier: .literal('1000_errors'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomPagesList(
        localName: 'd_custom_pages_list',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomSsl(
        localName: 'd_custom_ssl',
        zoneId: .literal(zoneId),
        customCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCustomSsls(
        localName: 'd_custom_ssls',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareD1Database(
        localName: 'd_d1_database',
        accountId: .literal(accountId),
        databaseId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareD1Databases(
        localName: 'd_d1_databases',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDcvDelegation(
        localName: 'd_dcv_delegation',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareDlsPrefixBinding(
        localName: 'd_dls_prefix_binding',
        accountId: .literal(accountId),
        bindingId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareDlsPrefixBindings(
        localName: 'd_dls_prefix_bindings',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsFirewall(
        localName: 'd_dns_firewall',
        dnsFirewallId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsFirewalls(
        localName: 'd_dns_firewalls',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsRecord(
        localName: 'd_dns_record',
        zoneId: .literal(zoneId),
        dnsRecordId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareDnsRecords(
        localName: 'd_dns_records',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersAcl(
        localName: 'd_dns_zone_transfers_acl',
        aclId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersAcls(
        localName: 'd_dns_zone_transfers_acls',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersIncoming(
        localName: 'd_dns_zone_transfers_incoming',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersOutgoing(
        localName: 'd_dns_zone_transfers_outgoing',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersPeer(
        localName: 'd_dns_zone_transfers_peer',
        peerId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersPeers(
        localName: 'd_dns_zone_transfers_peers',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersTsig(
        localName: 'd_dns_zone_transfers_tsig',
        tsigId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersTsigs(
        localName: 'd_dns_zone_transfers_tsigs',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingAddress(
        localName: 'd_email_routing_address',
        accountId: .literal(accountId),
        destinationAddressIdentifier: .literal('192.0.2.1'),
      ),
    );

    addData(
      DataCloudflareEmailRoutingAddresses(
        localName: 'd_email_routing_addresses',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingCatchAll(
        localName: 'd_email_routing_catch_all',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingDns(
        localName: 'd_email_routing_dns',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingRule(
        localName: 'd_email_routing_rule',
        zoneId: .literal(zoneId),
        ruleIdentifier: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareEmailRoutingRules(
        localName: 'd_email_routing_rules',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingSettings(
        localName: 'd_email_routing_settings',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailSecurityAllowPolicies(
        localName: 'd_email_security_allow_policies',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailSecurityAllowPolicy(
        localName: 'd_email_security_allow_policy',
        accountId: .literal(accountId),
        policyId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityBlockSender(
        localName: 'd_email_security_block_sender',
        accountId: .literal(accountId),
        patternId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityBlockSenders(
        localName: 'd_email_security_block_senders',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailSecurityDomain(
        localName: 'd_email_security_domain',
        accountId: .literal(accountId),
        domainId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityDomains(
        localName: 'd_email_security_domains',
        accountId: .literal(accountId),
        integrationId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityImpersonationRegistries(
        localName: 'd_email_security_impersonation_registries',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailSecurityImpersonationRegistry(
        localName: 'd_email_security_impersonation_registry',
        accountId: .literal(accountId),
        impersonationRegistryId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityTrustedDomains(
        localName: 'd_email_security_trusted_domains',
        accountId: .literal(accountId),
        trustedDomainId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityTrustedDomainsList(
        localName: 'd_email_security_trusted_domains_list',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailSendingSubdomain(
        localName: 'd_email_sending_subdomain',
        subdomainId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailSendingSubdomains(
        localName: 'd_email_sending_subdomains',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareFieldExtractor(
        localName: 'd_field_extractor',
        accountId: .literal(accountId),
        extractor: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareFilter(
        localName: 'd_filter',
        zoneId: .literal(zoneId),
        filterId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareFilters(localName: 'd_filters', zoneId: .literal(zoneId)),
    );

    addData(
      DataCloudflareFirewallRules(
        localName: 'd_firewall_rules',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareFlagshipApp(
        localName: 'd_flagship_app',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareFlagshipApps(
        localName: 'd_flagship_apps',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareFlagshipFlag(
        localName: 'd_flagship_flag',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
        filter: DataFlagshipFlagFilter(limit: .literal(leftover)),
      ),
    );

    addData(
      DataCloudflareFlagshipFlags(
        localName: 'd_flagship_flags',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareGoogleTagGateway(
        localName: 'd_google_tag_gateway',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHealthcheck(
        localName: 'd_healthcheck',
        healthcheckId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHealthchecks(
        localName: 'd_healthchecks',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHostnameTlsSetting(
        localName: 'd_hostname_tls_setting',
        hostname: .literal(leftover),
        settingId: .literal('ciphers'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHostnameTlsSettings(
        localName: 'd_hostname_tls_settings',
        settingId: .literal('ciphers'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHyperdriveConfig(
        localName: 'd_hyperdrive_config',
        hyperdriveId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareHyperdriveConfigs(
        localName: 'd_hyperdrive_configs',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareImage(
        localName: 'd_image',
        imageId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareImageVariant(
        localName: 'd_image_variant',
        variantId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareImages(
        localName: 'd_images',
        accountId: .literal(accountId),
      ),
    );

    addData(DataCloudflareIpRanges(localName: 'd_ip_ranges'));

    addData(
      DataCloudflareKeylessCertificate(
        localName: 'd_keyless_certificate',
        keylessCertificateId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareKeylessCertificates(
        localName: 'd_keyless_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLeakedCredentialCheck(
        localName: 'd_leaked_credential_check',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLeakedCredentialCheckRule(
        localName: 'd_leaked_credential_check_rule',
        detectionId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLeakedCredentialCheckRules(
        localName: 'd_leaked_credential_check_rules',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareList(
        localName: 'd_list',
        listId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareListItem(
        localName: 'd_list_item',
        itemId: .literal('00000000000000000000000000000001'),
        listId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareListItems(
        localName: 'd_list_items',
        listId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareLists(localName: 'd_lists', accountId: .literal(accountId)),
    );

    addData(
      DataCloudflareLoadBalancer(
        localName: 'd_load_balancer',
        loadBalancerId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLoadBalancerMonitor(
        localName: 'd_load_balancer_monitor',
        monitorId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancerMonitorGroup(
        localName: 'd_load_balancer_monitor_group',
        accountId: .literal(accountId),
        monitorGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareLoadBalancerMonitorGroups(
        localName: 'd_load_balancer_monitor_groups',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancerMonitors(
        localName: 'd_load_balancer_monitors',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancerPool(
        localName: 'd_load_balancer_pool',
        accountId: .literal(accountId),
        poolId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareLoadBalancerPools(
        localName: 'd_load_balancer_pools',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancers(
        localName: 'd_load_balancers',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLogpullRetention(
        localName: 'd_logpull_retention',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLogpushDatasetField(
        localName: 'd_logpush_dataset_field',
        accountId: .literal(accountId),
        datasetId: .literal('audit_logs'),
      ),
    );

    addData(
      DataCloudflareLogpushDatasetJob(
        localName: 'd_logpush_dataset_job',
        accountId: .literal(accountId),
        datasetId: .literal('audit_logs'),
      ),
    );

    addData(
      DataCloudflareLogpushJob(
        localName: 'd_logpush_job',
        jobId: .literal(200),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareLogpushJobs(
        localName: 'd_logpush_jobs',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicNetworkMonitoringConfiguration(
        localName: 'd_magic_network_monitoring_configuration',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicNetworkMonitoringRule(
        localName: 'd_magic_network_monitoring_rule',
        ruleId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicNetworkMonitoringRules(
        localName: 'd_magic_network_monitoring_rules',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitCf1Site(
        localName: 'd_magic_transit_cf1_site',
        accountId: .literal(accountId),
        cf1SiteId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitCf1Sites(
        localName: 'd_magic_transit_cf1_sites',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitConnector(
        localName: 'd_magic_transit_connector',
        accountId: .literal(accountId),
        connectorId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitConnectors(
        localName: 'd_magic_transit_connectors',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitSite(
        localName: 'd_magic_transit_site',
        accountId: .literal(accountId),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteAcl(
        localName: 'd_magic_transit_site_acl',
        accountId: .literal(accountId),
        aclId: .literal('00000000000000000000000000000001'),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteAcls(
        localName: 'd_magic_transit_site_acls',
        siteId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteLan(
        localName: 'd_magic_transit_site_lan',
        accountId: .literal(accountId),
        lanId: .literal('00000000000000000000000000000001'),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteLans(
        localName: 'd_magic_transit_site_lans',
        siteId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteWan(
        localName: 'd_magic_transit_site_wan',
        accountId: .literal(accountId),
        siteId: .literal('00000000000000000000000000000001'),
        wanId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteWans(
        localName: 'd_magic_transit_site_wans',
        siteId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitSites(
        localName: 'd_magic_transit_sites',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicWanBgpFilterProfile(
        localName: 'd_magic_wan_bgp_filter_profile',
        accountId: .literal(accountId),
        profileId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicWanBgpFilterProfiles(
        localName: 'd_magic_wan_bgp_filter_profiles',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicWanGreTunnel(
        localName: 'd_magic_wan_gre_tunnel',
        greTunnelId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicWanIpsecTunnel(
        localName: 'd_magic_wan_ipsec_tunnel',
        ipsecTunnelId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicWanStaticRoute(
        localName: 'd_magic_wan_static_route',
        routeId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareManagedTransforms(
        localName: 'd_managed_transforms',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareMoqRelay(
        localName: 'd_moq_relay',
        accountId: .literal(accountId),
        relayId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMoqRelays(
        localName: 'd_moq_relays',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareMtlsCertificate(
        localName: 'd_mtls_certificate',
        accountId: .literal(accountId),
        mtlsCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMtlsCertificateAssociations(
        localName: 'd_mtls_certificate_associations',
        accountId: .literal(accountId),
        mtlsCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMtlsCertificates(
        localName: 'd_mtls_certificates',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareNelSetting(
        localName: 'd_nel_setting',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareNotificationPolicies(
        localName: 'd_notification_policies',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareNotificationPolicy(
        localName: 'd_notification_policy',
        policyId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareNotificationPolicyWebhooks(
        localName: 'd_notification_policy_webhooks',
        webhookId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareNotificationPolicyWebhooksList(
        localName: 'd_notification_policy_webhooks_list',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareOauthClient(
        localName: 'd_oauth_client',
        accountId: .literal(accountId),
        oauthClientId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareOauthClients(
        localName: 'd_oauth_clients',
        accountId: .literal(accountId),
      ),
    );

    addData(DataCloudflareOauthScopes(localName: 'd_oauth_scopes'));

    addData(
      DataCloudflareObservatoryScheduledTest(
        localName: 'd_observatory_scheduled_test',
        url: .literal('https://example.com'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareOrganization(
        localName: 'd_organization',
        organizationId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareOrganizationProfile(
        localName: 'd_organization_profile',
        organizationId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(DataCloudflareOrganizations(localName: 'd_organizations'));

    addData(
      DataCloudflareOriginCaCertificate(
        localName: 'd_origin_ca_certificate',
        certificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareOriginCaCertificates(
        localName: 'd_origin_ca_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareOriginCloudRegion(
        localName: 'd_origin_cloud_region',
        originIp: .literal('192.0.2.1'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareOriginCloudRegions(
        localName: 'd_origin_cloud_regions',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareOriginTlsComplianceModes(
        localName: 'd_origin_tls_compliance_modes',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageRule(
        localName: 'd_page_rule',
        pageruleId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldConnections(
        localName: 'd_page_shield_connections',
        connectionId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldConnectionsList(
        localName: 'd_page_shield_connections_list',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldCookies(
        localName: 'd_page_shield_cookies',
        cookieId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldCookiesList(
        localName: 'd_page_shield_cookies_list',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldPolicies(
        localName: 'd_page_shield_policies',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldPolicy(
        localName: 'd_page_shield_policy',
        policyId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldScripts(
        localName: 'd_page_shield_scripts',
        scriptId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldScriptsList(
        localName: 'd_page_shield_scripts_list',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePagesDomain(
        localName: 'd_pages_domain',
        accountId: .literal(accountId),
        domainName: .literal(leftover),
        projectName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflarePagesDomains(
        localName: 'd_pages_domains',
        projectName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflarePagesProject(
        localName: 'd_pages_project',
        projectName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflarePagesProjects(
        localName: 'd_pages_projects',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflarePipeline(
        localName: 'd_pipeline',
        pipelineId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflarePipelineSink(
        localName: 'd_pipeline_sink',
        accountId: .literal(accountId),
        sinkId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflarePipelineSinks(
        localName: 'd_pipeline_sinks',
        accountId: .literal(accountId),
        pipelineId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflarePipelineStream(
        localName: 'd_pipeline_stream',
        accountId: .literal(accountId),
        streamId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflarePipelineStreams(
        localName: 'd_pipeline_streams',
        accountId: .literal(accountId),
        pipelineId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflarePrecursor(
        localName: 'd_precursor',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareQueue(
        localName: 'd_queue',
        queueId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareQueueConsumer(
        localName: 'd_queue_consumer',
        accountId: .literal(accountId),
        queueId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareQueueConsumers(
        localName: 'd_queue_consumers',
        queueId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareQueues(
        localName: 'd_queues',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareR2Bucket(
        localName: 'd_r2_bucket',
        bucketName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareR2BucketCors(
        localName: 'd_r2_bucket_cors',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2BucketEventNotification(
        localName: 'd_r2_bucket_event_notification',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        queueId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareR2BucketLifecycle(
        localName: 'd_r2_bucket_lifecycle',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2BucketLock(
        localName: 'd_r2_bucket_lock',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2BucketSippy(
        localName: 'd_r2_bucket_sippy',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2CustomDomain(
        localName: 'd_r2_custom_domain',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        domain: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2DataCatalog(
        localName: 'd_r2_data_catalog',
        bucketName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareRateLimit(
        localName: 'd_rate_limit',
        rateLimitId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRegionalHostname(
        localName: 'd_regional_hostname',
        hostname: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRegionalHostnames(
        localName: 'd_regional_hostnames',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRegionalTieredCache(
        localName: 'd_regional_tiered_cache',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRegistrarDomain(
        localName: 'd_registrar_domain',
        accountId: .literal(accountId),
        domainName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareRegistrarDomains(
        localName: 'd_registrar_domains',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareResourceGroup(
        localName: 'd_resource_group',
        accountId: .literal(accountId),
        resourceGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareResourceGroups(
        localName: 'd_resource_groups',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareRuleset(
        localName: 'd_ruleset',
        zoneId: .literal(zoneId),
        rulesetId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareRulesets(localName: 'd_rulesets', zoneId: .literal(zoneId)),
    );

    addData(
      DataCloudflareSchemaValidationOperationSettings(
        localName: 'd_schema_validation_operation_settings',
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSchemaValidationOperationSettingsList(
        localName: 'd_schema_validation_operation_settings_list',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSchemaValidationSchemas(
        localName: 'd_schema_validation_schemas',
        zoneId: .literal(zoneId),
        schemaId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSchemaValidationSchemasList(
        localName: 'd_schema_validation_schemas_list',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSchemaValidationSettings(
        localName: 'd_schema_validation_settings',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSecretsStore(
        localName: 'd_secrets_store',
        accountId: .literal(accountId),
        storeId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSecretsStoreSecret(
        localName: 'd_secrets_store_secret',
        accountId: .literal(accountId),
        storeId: .literal('00000000000000000000000000000001'),
        secretId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSecretsStoreSecrets(
        localName: 'd_secrets_store_secrets',
        accountId: .literal(accountId),
        storeId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSecretsStores(
        localName: 'd_secrets_stores',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareShare(
        localName: 'd_share',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShareRecipient(
        localName: 'd_share_recipient',
        accountId: .literal(accountId),
        recipientId: .literal('00000000000000000000000000000001'),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShareRecipients(
        localName: 'd_share_recipients',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShareResource(
        localName: 'd_share_resource',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
        shareResourceId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShareResources(
        localName: 'd_share_resources',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShares(
        localName: 'd_shares',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareSnippet(
        localName: 'd_snippet',
        snippetName: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippetList(
        localName: 'd_snippet_list',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippetRules(
        localName: 'd_snippet_rules',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippetRulesList(
        localName: 'd_snippet_rules_list',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippets(
        localName: 'd_snippets',
        snippetName: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippetsList(
        localName: 'd_snippets_list',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSpectrumApplication(
        localName: 'd_spectrum_application',
        zoneId: .literal(zoneId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSpectrumApplications(
        localName: 'd_spectrum_applications',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSpectrumProtocols(
        localName: 'd_spectrum_protocols',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSsoConnector(
        localName: 'd_sso_connector',
        ssoConnectorId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareSsoConnectors(
        localName: 'd_sso_connectors',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareStream(
        localName: 'd_stream',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    addData(
      DataCloudflareStreamAudioTrack(
        localName: 'd_stream_audio_track',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    addData(
      DataCloudflareStreamCaptionLanguage(
        localName: 'd_stream_caption_language',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
        language: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareStreamDownload(
        localName: 'd_stream_download',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    addData(
      DataCloudflareStreamKey(
        localName: 'd_stream_key',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareStreamLiveInput(
        localName: 'd_stream_live_input',
        accountId: .literal(accountId),
        liveInputIdentifier: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareStreamWatermark(
        localName: 'd_stream_watermark',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    addData(
      DataCloudflareStreamWatermarks(
        localName: 'd_stream_watermarks',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareStreamWebhook(
        localName: 'd_stream_webhook',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareStreams(
        localName: 'd_streams',
        accountId: .literal(accountId),
        liveInputId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareTieredCache(
        localName: 'd_tiered_cache',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareTokenValidationConfig(
        localName: 'd_token_validation_config',
        configId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareTokenValidationConfigs(
        localName: 'd_token_validation_configs',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareTokenValidationRules(
        localName: 'd_token_validation_rules',
        zoneId: .literal(zoneId),
        ruleId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareTokenValidationRulesList(
        localName: 'd_token_validation_rules_list',
        zoneId: .literal(zoneId),
        ruleId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareTotalTls(
        localName: 'd_total_tls',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareTurnstileWidget(
        localName: 'd_turnstile_widget',
        accountId: .literal(accountId),
        sitekey: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareTurnstileWidgets(
        localName: 'd_turnstile_widgets',
        accountId: .literal(accountId),
        filter: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareUniversalSslSetting(
        localName: 'd_universal_ssl_setting',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareUrlNormalizationSettings(
        localName: 'd_url_normalization_settings',
        zoneId: .literal(zoneId),
      ),
    );

    addData(DataCloudflareUser(localName: 'd_user'));

    addData(
      DataCloudflareUserAgentBlockingRule(
        localName: 'd_user_agent_blocking_rule',
        zoneId: .literal(zoneId),
        uaRuleId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareUserAgentBlockingRules(
        localName: 'd_user_agent_blocking_rules',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareUserGroup(
        localName: 'd_user_group',
        accountId: .literal(accountId),
        userGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareUserGroupMembers(
        localName: 'd_user_group_members',
        accountId: .literal(accountId),
        userGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareUserGroups(
        localName: 'd_user_groups',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerCredential(
        localName: 'd_vulnerability_scanner_credential',
        credentialId: .literal('00000000000000000000000000000001'),
        credentialSetId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerCredentialSet(
        localName: 'd_vulnerability_scanner_credential_set',
        credentialSetId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerCredentialSets(
        localName: 'd_vulnerability_scanner_credential_sets',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerCredentials(
        localName: 'd_vulnerability_scanner_credentials',
        credentialSetId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerTargetEnvironment(
        localName: 'd_vulnerability_scanner_target_environment',
        targetEnvironmentId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerTargetEnvironments(
        localName: 'd_vulnerability_scanner_target_environments',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWaitingRoom(
        localName: 'd_waiting_room',
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRoomEvent(
        localName: 'd_waiting_room_event',
        eventId: .literal('00000000000000000000000000000001'),
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRoomEvents(
        localName: 'd_waiting_room_events',
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRoomRules(
        localName: 'd_waiting_room_rules',
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRoomSettings(
        localName: 'd_waiting_room_settings',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRooms(
        localName: 'd_waiting_rooms',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWeb3Hostname(
        localName: 'd_web3_hostname',
        identifier: .literal('1000_errors'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWeb3Hostnames(
        localName: 'd_web3_hostnames',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWebAnalyticsSite(
        localName: 'd_web_analytics_site',
        accountId: .literal(accountId),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWebAnalyticsSites(
        localName: 'd_web_analytics_sites',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorker(
        localName: 'd_worker',
        accountId: .literal(accountId),
        workerId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkerVersion(
        localName: 'd_worker_version',
        accountId: .literal(accountId),
        versionId: .literal('00000000000000000000000000000001'),
        workerId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkerVersions(
        localName: 'd_worker_versions',
        workerId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkers(
        localName: 'd_workers',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersCronTrigger(
        localName: 'd_workers_cron_trigger',
        scriptName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersCustomDomain(
        localName: 'd_workers_custom_domain',
        accountId: .literal(accountId),
        domainId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkersCustomDomains(
        localName: 'd_workers_custom_domains',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersDeployment(
        localName: 'd_workers_deployment',
        accountId: .literal(accountId),
        deploymentId: .literal('00000000000000000000000000000001'),
        scriptName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkersDeployments(
        localName: 'd_workers_deployments',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkersForPlatformsDispatchNamespace(
        localName: 'd_workers_for_platforms_dispatch_namespace',
        dispatchNamespace: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersForPlatformsDispatchNamespaces(
        localName: 'd_workers_for_platforms_dispatch_namespaces',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersKv(
        localName: 'd_workers_kv',
        accountId: .literal(accountId),
        keyName: .literal(leftover),
        namespaceId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkersKvNamespace(
        localName: 'd_workers_kv_namespace',
        accountId: .literal(accountId),
        namespaceId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkersKvNamespaces(
        localName: 'd_workers_kv_namespaces',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersRoute(
        localName: 'd_workers_route',
        routeId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWorkersRoutes(
        localName: 'd_workers_routes',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWorkersScript(
        localName: 'd_workers_script',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkersScriptSubdomain(
        localName: 'd_workers_script_subdomain',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkersScripts(
        localName: 'd_workers_scripts',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkflow(
        localName: 'd_workflow',
        accountId: .literal(accountId),
        workflowName: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkflows(
        localName: 'd_workflows',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessAiControlsMcpPortal(
        localName: 'd_zero_trust_access_ai_controls_mcp_portal',
        accountId: .literal(accountId),
        filter: DataZeroTrustAccessAiControlsMcpPortalFilter(
          search: .literal(leftover),
        ),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessAiControlsMcpPortals(
        localName: 'd_zero_trust_access_ai_controls_mcp_portals',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessAiControlsMcpServer(
        localName: 'd_zero_trust_access_ai_controls_mcp_server',
        accountId: .literal(accountId),
        filter: DataZeroTrustAccessAiControlsMcpServerFilter(
          search: .literal(leftover),
        ),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessAiControlsMcpServers(
        localName: 'd_zero_trust_access_ai_controls_mcp_servers',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessApplication(
        localName: 'd_zero_trust_access_application',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessApplications(
        localName: 'd_zero_trust_access_applications',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessCustomPage(
        localName: 'd_zero_trust_access_custom_page',
        customPageId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessCustomPages(
        localName: 'd_zero_trust_access_custom_pages',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessGroup(
        localName: 'd_zero_trust_access_group',
        accountId: .literal(accountId),
        groupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessGroups(
        localName: 'd_zero_trust_access_groups',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessIdentityProvider(
        localName: 'd_zero_trust_access_identity_provider',
        accountId: .literal(accountId),
        identityProviderId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessIdentityProviders(
        localName: 'd_zero_trust_access_identity_providers',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessInfrastructureTarget(
        localName: 'd_zero_trust_access_infrastructure_target',
        accountId: .literal(accountId),
        targetId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessInfrastructureTargets(
        localName: 'd_zero_trust_access_infrastructure_targets',
        accountId: .literal(accountId),
        virtualNetworkId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessKeyConfiguration(
        localName: 'd_zero_trust_access_key_configuration',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessMtlsCertificate(
        localName: 'd_zero_trust_access_mtls_certificate',
        certificateId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessMtlsCertificates(
        localName: 'd_zero_trust_access_mtls_certificates',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessMtlsHostnameSettings(
        localName: 'd_zero_trust_access_mtls_hostname_settings',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessPolicies(
        localName: 'd_zero_trust_access_policies',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessPolicy(
        localName: 'd_zero_trust_access_policy',
        policyId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessServiceToken(
        localName: 'd_zero_trust_access_service_token',
        accountId: .literal(accountId),
        serviceTokenId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessServiceTokens(
        localName: 'd_zero_trust_access_service_tokens',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessShortLivedCertificate(
        localName: 'd_zero_trust_access_short_lived_certificate',
        appId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessShortLivedCertificates(
        localName: 'd_zero_trust_access_short_lived_certificates',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessTag(
        localName: 'd_zero_trust_access_tag',
        tagName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessTags(
        localName: 'd_zero_trust_access_tags',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustCasbPolicies(
        localName: 'd_zero_trust_casb_policies',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustCasbPolicy(
        localName: 'd_zero_trust_casb_policy',
        accountId: .literal(accountId),
        policyId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustCasbWebhook(
        localName: 'd_zero_trust_casb_webhook',
        accountId: .literal(accountId),
        webhookId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustCasbWebhooks(
        localName: 'd_zero_trust_casb_webhooks',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustConnectivitySettings(
        localName: 'd_zero_trust_connectivity_settings',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceCustomProfile(
        localName: 'd_zero_trust_device_custom_profile',
        accountId: .literal(accountId),
        policyId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceCustomProfileLocalDomainFallback(
        localName: 'd_zero_trust_device_custom_profile_local_domain_',
        policyId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceCustomProfiles(
        localName: 'd_zero_trust_device_custom_profiles',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDefaultProfile(
        localName: 'd_zero_trust_device_default_profile',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDefaultProfileCertificates(
        localName: 'd_zero_trust_device_default_profile_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback(
        localName: 'd_zero_trust_device_default_profile_local_domain',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDeploymentGroups(
        localName: 'd_zero_trust_device_deployment_groups',
        accountId: .literal(accountId),
        groupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDeploymentGroupsList(
        localName: 'd_zero_trust_device_deployment_groups_list',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceIpProfile(
        localName: 'd_zero_trust_device_ip_profile',
        accountId: .literal(accountId),
        profileId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceIpProfiles(
        localName: 'd_zero_trust_device_ip_profiles',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceManagedNetworks(
        localName: 'd_zero_trust_device_managed_networks',
        networkId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceManagedNetworksList(
        localName: 'd_zero_trust_device_managed_networks_list',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDevicePostureIntegration(
        localName: 'd_zero_trust_device_posture_integration',
        integrationId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDevicePostureIntegrations(
        localName: 'd_zero_trust_device_posture_integrations',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDevicePostureRule(
        localName: 'd_zero_trust_device_posture_rule',
        ruleId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDevicePostureRules(
        localName: 'd_zero_trust_device_posture_rules',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceSettings(
        localName: 'd_zero_trust_device_settings',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceSubnet(
        localName: 'd_zero_trust_device_subnet',
        subnetId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDexRule(
        localName: 'd_zero_trust_dex_rule',
        ruleId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDexRules(
        localName: 'd_zero_trust_dex_rules',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDexTest(
        localName: 'd_zero_trust_dex_test',
        accountId: .literal(accountId),
        dexTestId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDexTests(
        localName: 'd_zero_trust_dex_tests',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomEntries(
        localName: 'd_zero_trust_dlp_custom_entries',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomEntry(
        localName: 'd_zero_trust_dlp_custom_entry',
        entryId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomProfile(
        localName: 'd_zero_trust_dlp_custom_profile',
        profileId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomPromptTopic(
        localName: 'd_zero_trust_dlp_custom_prompt_topic',
        accountId: .literal(accountId),
        entryId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomPromptTopics(
        localName: 'd_zero_trust_dlp_custom_prompt_topics',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataClass(
        localName: 'd_zero_trust_dlp_data_class',
        accountId: .literal(accountId),
        dataClassId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataClasses(
        localName: 'd_zero_trust_dlp_data_classes',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataTag(
        localName: 'd_zero_trust_dlp_data_tag',
        accountId: .literal(accountId),
        categoryId: .literal('00000000000000000000000000000001'),
        tagId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataTagCategories(
        localName: 'd_zero_trust_dlp_data_tag_categories',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataTagCategory(
        localName: 'd_zero_trust_dlp_data_tag_category',
        accountId: .literal(accountId),
        categoryId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataTags(
        localName: 'd_zero_trust_dlp_data_tags',
        accountId: .literal(accountId),
        categoryId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataset(
        localName: 'd_zero_trust_dlp_dataset',
        datasetId: .literal('audit_logs'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDatasets(
        localName: 'd_zero_trust_dlp_datasets',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpEntries(
        localName: 'd_zero_trust_dlp_entries',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpEntry(
        localName: 'd_zero_trust_dlp_entry',
        entryId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpIntegrationEntries(
        localName: 'd_zero_trust_dlp_integration_entries',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpIntegrationEntry(
        localName: 'd_zero_trust_dlp_integration_entry',
        entryId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpPredefinedEntries(
        localName: 'd_zero_trust_dlp_predefined_entries',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpPredefinedEntry(
        localName: 'd_zero_trust_dlp_predefined_entry',
        entryId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpPredefinedProfile(
        localName: 'd_zero_trust_dlp_predefined_profile',
        profileId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityGroup(
        localName: 'd_zero_trust_dlp_sensitivity_group',
        accountId: .literal(accountId),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityGroups(
        localName: 'd_zero_trust_dlp_sensitivity_groups',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityLevel(
        localName: 'd_zero_trust_dlp_sensitivity_level',
        accountId: .literal(accountId),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
        sensitivityLevelId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityLevelOrder(
        localName: 'd_zero_trust_dlp_sensitivity_level_order',
        accountId: .literal(accountId),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityLevels(
        localName: 'd_zero_trust_dlp_sensitivity_levels',
        accountId: .literal(accountId),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSettings(
        localName: 'd_zero_trust_dlp_settings',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDnsLocation(
        localName: 'd_zero_trust_dns_location',
        accountId: .literal(accountId),
        locationId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDnsLocations(
        localName: 'd_zero_trust_dns_locations',
        accountId: .literal(accountId),
        filter: .literal([leftover]),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayAppTypesList(
        localName: 'd_zero_trust_gateway_app_types_list',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayCategoriesList(
        localName: 'd_zero_trust_gateway_categories_list',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayCertificate(
        localName: 'd_zero_trust_gateway_certificate',
        certificateId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayCertificates(
        localName: 'd_zero_trust_gateway_certificates',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayLogging(
        localName: 'd_zero_trust_gateway_logging',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayPacfile(
        localName: 'd_zero_trust_gateway_pacfile',
        pacfileId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayPacfiles(
        localName: 'd_zero_trust_gateway_pacfiles',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayPolicies(
        localName: 'd_zero_trust_gateway_policies',
        accountId: .literal(accountId),
        filter: .literal([leftover]),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayPolicy(
        localName: 'd_zero_trust_gateway_policy',
        accountId: .literal(accountId),
        ruleId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayProxyEndpoint(
        localName: 'd_zero_trust_gateway_proxy_endpoint',
        accountId: .literal(accountId),
        proxyEndpointId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayProxyEndpoints(
        localName: 'd_zero_trust_gateway_proxy_endpoints',
        accountId: .literal(accountId),
        filter: .literal([leftover]),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewaySettings(
        localName: 'd_zero_trust_gateway_settings',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustList(
        localName: 'd_zero_trust_list',
        accountId: .literal(accountId),
        listId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustLists(
        localName: 'd_zero_trust_lists',
        accountId: .literal(accountId),
        filter: .literal([leftover]),
      ),
    );

    addData(
      DataCloudflareZeroTrustNetworkHostnameRoute(
        localName: 'd_zero_trust_network_hostname_route',
        accountId: .literal(accountId),
        hostnameRouteId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustNetworkHostnameRoutes(
        localName: 'd_zero_trust_network_hostname_routes',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustOrganization(
        localName: 'd_zero_trust_organization',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustResourceLibraryApplication(
        localName: 'd_zero_trust_resource_library_application',
        accountId: .literal(accountId),
        filter: DataZeroTrustResourceLibraryApplicationFilter(
          fields: .literal(leftover),
        ),
      ),
    );

    addData(
      DataCloudflareZeroTrustResourceLibraryApplications(
        localName: 'd_zero_trust_resource_library_applications',
        accountId: .literal(accountId),
        filter: .literal(leftover),
      ),
    );

    addData(
      DataCloudflareZeroTrustResourceLibraryCategories(
        localName: 'd_zero_trust_resource_library_categories',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustResourceLibraryCategory(
        localName: 'd_zero_trust_resource_library_category',
        accountId: .literal(accountId),
        id: .literal(200),
      ),
    );

    addData(
      DataCloudflareZeroTrustRiskBehavior(
        localName: 'd_zero_trust_risk_behavior',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustRiskScoringIntegration(
        localName: 'd_zero_trust_risk_scoring_integration',
        integrationId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustRiskScoringIntegrations(
        localName: 'd_zero_trust_risk_scoring_integrations',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflared(
        localName: 'd_zero_trust_tunnel_cloudflared',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredConfig(
        localName: 'd_zero_trust_tunnel_cloudflared_config',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredRoute(
        localName: 'd_zero_trust_tunnel_cloudflared_route',
        accountId: .literal(accountId),
        routeId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredRoutes(
        localName: 'd_zero_trust_tunnel_cloudflared_routes',
        accountId: .literal(accountId),
        routeId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredToken(
        localName: 'd_zero_trust_tunnel_cloudflared_token',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredVirtualNetwork(
        localName: 'd_zero_trust_tunnel_cloudflared_virtual_network',
        accountId: .literal(accountId),
        virtualNetworkId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredVirtualNetworks(
        localName: 'd_zero_trust_tunnel_cloudflared_virtual_networks',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflareds(
        localName: 'd_zero_trust_tunnel_cloudflareds',
        accountId: .literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelWarpConnector(
        localName: 'd_zero_trust_tunnel_warp_connector',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelWarpConnectorConfig(
        localName: 'd_zero_trust_tunnel_warp_connector_config',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelWarpConnectorToken(
        localName: 'd_zero_trust_tunnel_warp_connector_token',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelWarpConnectors(
        localName: 'd_zero_trust_tunnel_warp_connectors',
        accountId: .literal(accountId),
      ),
    );

    addData(DataCloudflareZone(localName: 'd_zone', zoneId: .literal(zoneId)));

    addData(
      DataCloudflareZoneAutoOriginTlsKex(
        localName: 'd_zone_auto_origin_tls_kex',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneCacheReserve(
        localName: 'd_zone_cache_reserve',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneCacheVariants(
        localName: 'd_zone_cache_variants',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneDnsSettings(
        localName: 'd_zone_dns_settings',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneDnssec(
        localName: 'd_zone_dnssec',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneHold(
        localName: 'd_zone_hold',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneLockdown(
        localName: 'd_zone_lockdown',
        zoneId: .literal(zoneId),
        lockDownsId: .literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZoneLockdowns(
        localName: 'd_zone_lockdowns',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneSetting(
        localName: 'd_zone_setting',
        settingId: .literal('ciphers'),
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneSubscription(
        localName: 'd_zone_subscription',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneTracing(
        localName: 'd_zone_tracing',
        zoneId: .literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneTracingRules(
        localName: 'd_zone_tracing_rules',
        zoneId: .literal(zoneId),
      ),
    );

    addData(DataCloudflareZones(localName: 'd_zones'));
  }
}
