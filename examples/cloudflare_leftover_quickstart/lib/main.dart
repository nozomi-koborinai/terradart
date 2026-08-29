// GENERATED — dart run tool/generate_cloudflare_leftover_example.dart
// ignore_for_file: unused_element

/// Coverage stack for leftover Cloudflare factories at pin 5.23.0.
/// Dummy constructor values; synth + terraform validate only.
/// Never apply.
library;

import 'package:terradart_cloudflare/terradart_cloudflare.dart';
import 'package:terradart_core/terradart_core.dart';

final class CloudflareLeftoverStack extends Stack {
  CloudflareLeftoverStack()
      : super(providers: [const CloudflareProvider()]) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    addVariable(
      'leftover_secret',
      const TfVariable(type: 'string', sensitive: true),
    );

    const leftover = 'leftover';
    const accountId = '00000000000000000000000000000001';
    const zoneId = '00000000000000000000000000000002';

    add(
      CloudflareAccount(
        localName: 'account',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareAccountDnsSettings(
        localName: 'account_dns_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareAccountDnsSettingsInternalView(
        localName: 'account_dns_settings_internal_view',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        zones: TfArg.literal([leftover]),
      ),
    );

    add(
      CloudflareAccountMember(
        localName: 'account_member',
        accountId: TfArg.literal(accountId),
        email: TfArg.literal('leftover@example.com'),
        roles: TfArg.literal([leftover]),
      ),
    );

    add(
      CloudflareAccountSubscription(
        localName: 'account_subscription',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareAccountToken(
        localName: 'account_token',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        policies: [AccountTokenPolicies(effect: TfArg.literal('allow'), resources: TfArg.literal(leftover), permissionGroups: [AccountTokenPoliciesPermissionGroups(id: TfArg.literal('00000000000000000000000000000001'))])],
      ),
    );

    add(
      CloudflareAddressMap(
        localName: 'address_map',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareAiGateway(
        localName: 'ai_gateway',
        accountId: TfArg.literal(accountId),
        cacheInvalidateOnUpdate: TfArg.literal(true),
        cacheTtl: TfArg.literal(200),
        collectLogs: TfArg.literal(true),
        id: TfArg.literal('00000000000000000000000000000001'),
        rateLimitingInterval: TfArg.literal(200),
        rateLimitingLimit: TfArg.literal(200),
      ),
    );

    add(
      CloudflareAiGatewayDynamicRouting(
        localName: 'ai_gateway_dynamic_routing',
        accountId: TfArg.literal(accountId),
        gatewayId: TfArg.literal('00000000000000000000000000000001'),
        name: TfArg.literal(leftover),
        elements: [AiGatewayDynamicRoutingElements(id: TfArg.literal('00000000000000000000000000000001'), type: TfArg.literal('start'), outputs: AiGatewayDynamicRoutingElementsOutputs(elementId: TfArg.literal('00000000000000000000000000000001')))],
      ),
    );

    add(
      CloudflareAiSearchInstance(
        localName: 'ai_search_instance',
        accountId: TfArg.literal(accountId),
        id: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareAiSearchNamespace(
        localName: 'ai_search_namespace',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareAiSearchToken(
        localName: 'ai_search_token',
        accountId: TfArg.literal(accountId),
        cfApiId: TfArg.literal('00000000000000000000000000000001'),
        cfApiKey: TfArg.variable('leftover_secret'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareApiShield(
        localName: 'api_shield',
        zoneId: TfArg.literal(zoneId),
        authIdCharacteristics: [ApiShieldAuthIdCharacteristics(name: TfArg.literal(leftover), type: TfArg.literal('header'))],
      ),
    );

    add(
      CloudflareApiShieldDiscoveryOperation(
        localName: 'api_shield_discovery_operation',
        operationId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldOperation(
        localName: 'api_shield_operation',
        endpoint: TfArg.literal(leftover),
        host: TfArg.literal(leftover),
        method: TfArg.literal('GET'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldOperationSchemaValidationSettings(
        localName: 'api_shield_operation_schema_validation_settings',
        operationId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldSchema(
        localName: 'api_shield_schema',
        file: TfArg.literal(leftover),
        kind: TfArg.literal('openapi_v3'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldSchemaValidationSettings(
        localName: 'api_shield_schema_validation_settings',
        validationDefaultMitigationAction: TfArg.literal('none'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareApiToken(
        localName: 'api_token',
        name: TfArg.literal(leftover),
        policies: [ApiTokenPolicies(effect: TfArg.literal('allow'), resources: TfArg.literal(leftover), permissionGroups: [ApiTokenPoliciesPermissionGroups(id: TfArg.literal('00000000000000000000000000000001'))])],
      ),
    );

    add(
      CloudflareArgoSmartRouting(
        localName: 'argo_smart_routing',
        value: TfArg.literal('on'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareArgoTieredCaching(
        localName: 'argo_tiered_caching',
        value: TfArg.literal('on'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPulls(
        localName: 'authenticated_origin_pulls',
        zoneId: TfArg.literal(zoneId),
        config: [AuthenticatedOriginPullsConfig(certId: TfArg.literal('00000000000000000000000000000001'))],
      ),
    );

    add(
      CloudflareAuthenticatedOriginPullsCertificate(
        localName: 'authenticated_origin_pulls_certificate',
        certificate: TfArg.literal(leftover),
        privateKey: TfArg.variable('leftover_secret'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPullsHostnameCertificate(
        localName: 'authenticated_origin_pulls_hostname_certificate',
        certificate: TfArg.literal(leftover),
        privateKey: TfArg.variable('leftover_secret'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPullsSettings(
        localName: 'authenticated_origin_pulls_settings',
        enabled: TfArg.literal(true),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareBotManagement(
        localName: 'bot_management',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareByoIpPrefix(
        localName: 'byo_ip_prefix',
        accountId: TfArg.literal(accountId),
        asn: TfArg.literal(200),
        cidr: TfArg.literal('192.0.2.0/24'),
      ),
    );

    add(
      CloudflareCallsSfuApp(
        localName: 'calls_sfu_app',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareCallsTurnApp(
        localName: 'calls_turn_app',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareCertificateAuthoritiesHostnameAssociations(
        localName: 'certificate_authorities_hostname_associations',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareClientCertificate(
        localName: 'client_certificate',
        csr: TfArg.literal(leftover),
        validityDays: TfArg.literal(200),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareCloudConnectorRules(
        localName: 'cloud_connector_rules',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareCloudforceOneRequest(
        localName: 'cloudforce_one_request',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareCloudforceOneRequestAsset(
        localName: 'cloudforce_one_request_asset',
        accountId: TfArg.literal(accountId),
        page: TfArg.literal(200),
        perPage: TfArg.literal(200),
        requestId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareCloudforceOneRequestMessage(
        localName: 'cloudforce_one_request_message',
        accountId: TfArg.literal(accountId),
        requestId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareCloudforceOneRequestPriority(
        localName: 'cloudforce_one_request_priority',
        accountId: TfArg.literal(accountId),
        labels: TfArg.literal([leftover]),
        priority: TfArg.literal(200),
        requirement: TfArg.literal(leftover),
        tlp: TfArg.literal('clear'),
      ),
    );

    add(
      CloudflareConnectivityDirectoryService(
        localName: 'connectivity_directory_service',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        type: TfArg.literal('tcp'),
        host: ConnectivityDirectoryServiceHost(hostname: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareContentScanning(
        localName: 'content_scanning',
        value: TfArg.literal('enabled'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareContentScanningExpression(
        localName: 'content_scanning_expression',
        zoneId: TfArg.literal(zoneId),
        body: [ContentScanningExpressionBody(payload: TfArg.literal(leftover))],
      ),
    );

    add(
      CloudflareCustomCsr(
        localName: 'custom_csr',
        commonName: TfArg.literal(leftover),
        country: TfArg.literal(leftover),
        locality: TfArg.literal(leftover),
        organization: TfArg.literal(leftover),
        sans: TfArg.literal([leftover]),
        state: TfArg.literal('default'),
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareCustomHostname(
        localName: 'custom_hostname',
        hostname: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareCustomHostnameFallbackOrigin(
        localName: 'custom_hostname_fallback_origin',
        origin: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareCustomOriginTrustStore(
        localName: 'custom_origin_trust_store',
        certificate: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareCustomPageAsset(
        localName: 'custom_page_asset',
        description: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        url: TfArg.literal('https://example.com'),
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareCustomPages(
        localName: 'custom_pages',
        identifier: TfArg.literal('1000_errors'),
        state: TfArg.literal('default'),
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareCustomSsl(
        localName: 'custom_ssl',
        certificate: TfArg.literal(leftover),
        privateKey: TfArg.variable('leftover_secret'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareD1Database(
        localName: 'd1_database',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareDlsPrefixBinding(
        localName: 'dls_prefix_binding',
        accountId: TfArg.literal(accountId),
        cidr: TfArg.literal('192.0.2.0/24'),
        prefixId: TfArg.literal('192.0.2.0/24'),
        regionKey: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareDnsFirewall(
        localName: 'dns_firewall',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        upstreamIps: TfArg.literal([leftover]),
      ),
    );

    add(
      CloudflareDnsZoneTransfersAcl(
        localName: 'dns_zone_transfers_acl',
        accountId: TfArg.literal(accountId),
        ipRange: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareDnsZoneTransfersIncoming(
        localName: 'dns_zone_transfers_incoming',
        name: TfArg.literal(leftover),
        peers: TfArg.literal([leftover]),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareDnsZoneTransfersOutgoing(
        localName: 'dns_zone_transfers_outgoing',
        name: TfArg.literal(leftover),
        peers: TfArg.literal([leftover]),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareDnsZoneTransfersPeer(
        localName: 'dns_zone_transfers_peer',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareDnsZoneTransfersTsig(
        localName: 'dns_zone_transfers_tsig',
        accountId: TfArg.literal(accountId),
        algo: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        secret: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      CloudflareEmailRoutingAddress(
        localName: 'email_routing_address',
        accountId: TfArg.literal(accountId),
        email: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      CloudflareEmailRoutingCatchAll(
        localName: 'email_routing_catch_all',
        zoneId: TfArg.literal(zoneId),
        actions: [EmailRoutingCatchAllActions(type: TfArg.literal('drop'))],
        matchers: [EmailRoutingCatchAllMatchers(type: TfArg.literal('all'))],
      ),
    );

    add(
      CloudflareEmailRoutingDns(
        localName: 'email_routing_dns',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareEmailRoutingRule(
        localName: 'email_routing_rule',
        zoneId: TfArg.literal(zoneId),
        actions: [EmailRoutingRuleActions(type: TfArg.literal('drop'))],
        matchers: [EmailRoutingRuleMatchers(type: TfArg.literal('all'))],
      ),
    );

    add(
      CloudflareEmailRoutingSettings(
        localName: 'email_routing_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareEmailSecurityBlockSender(
        localName: 'email_security_block_sender',
        accountId: TfArg.literal(accountId),
        isRegex: TfArg.literal(true),
        pattern: TfArg.literal(leftover),
        patternType: TfArg.literal('EMAIL'),
      ),
    );

    add(
      CloudflareEmailSecurityImpersonationRegistry(
        localName: 'email_security_impersonation_registry',
        accountId: TfArg.literal(accountId),
        email: TfArg.literal('leftover@example.com'),
        isEmailRegex: TfArg.literal(true),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareEmailSecurityTrustedDomains(
        localName: 'email_security_trusted_domains',
        accountId: TfArg.literal(accountId),
        pattern: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareFilter(
        localName: 'filter',
        zoneId: TfArg.literal(zoneId),
        body: [FilterBody(description: TfArg.literal(leftover))],
      ),
    );

    add(
      CloudflareFlagshipApp(
        localName: 'flagship_app',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareFlagshipFlag(
        localName: 'flagship_flag',
        accountId: TfArg.literal(accountId),
        appId: TfArg.literal('00000000000000000000000000000001'),
        defaultVariation: TfArg.literal(leftover),
        enabled: TfArg.literal(true),
        key: TfArg.literal(leftover),
        variations: TfArg.literal({'k': leftover}),
        rules: [FlagshipFlagRules(priority: TfArg.literal(200), serveVariation: TfArg.literal(leftover), conditions: [FlagshipFlagRulesConditions(attribute: TfArg.literal(leftover))])],
      ),
    );

    add(
      CloudflareGoogleTagGateway(
        localName: 'google_tag_gateway',
        enabled: TfArg.literal(true),
        endpoint: TfArg.literal(leftover),
        hideOriginalIp: TfArg.literal(true),
        measurementId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareHealthcheck(
        localName: 'healthcheck',
        address: TfArg.literal('192.0.2.1'),
        name: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareHostnameTlsSetting(
        localName: 'hostname_tls_setting',
        hostname: TfArg.literal(leftover),
        settingId: TfArg.literal('ciphers'),
        value: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareHyperdriveConfig(
        localName: 'hyperdrive_config',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        origin: HyperdriveConfigOrigin(database: TfArg.literal(leftover), password: TfArg.variable('leftover_secret'), scheme: TfArg.literal('postgres'), user: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareImage(
        localName: 'image',
        accountId: TfArg.literal(accountId),
        id: TfArg.literal('00000000000000000000000000000001'),
        url: TfArg.literal('https://example.com'),
      ),
    );

    add(
      CloudflareImageVariant(
        localName: 'image_variant',
        accountId: TfArg.literal(accountId),
        id: TfArg.literal('00000000000000000000000000000001'),
        options: ImageVariantOptions(fit: TfArg.literal('scale-down'), height: TfArg.literal(200), metadata: TfArg.literal('none'), width: TfArg.literal(200)),
      ),
    );

    add(
      CloudflareKeylessCertificate(
        localName: 'keyless_certificate',
        certificate: TfArg.literal(leftover),
        host: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareLeakedCredentialCheck(
        localName: 'leaked_credential_check',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareLeakedCredentialCheckRule(
        localName: 'leaked_credential_check_rule',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareList(
        localName: 'list',
        accountId: TfArg.literal(accountId),
        kind: TfArg.literal('ip'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareListItem(
        localName: 'list_item',
        accountId: TfArg.literal(accountId),
        listId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareLoadBalancer(
        localName: 'load_balancer',
        defaultPools: TfArg.literal([leftover]),
        fallbackPool: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareLoadBalancerMonitor(
        localName: 'load_balancer_monitor',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareLoadBalancerMonitorGroup(
        localName: 'load_balancer_monitor_group',
        accountId: TfArg.literal(accountId),
        description: TfArg.literal(leftover),
        members: [LoadBalancerMonitorGroupMembers(enabled: TfArg.literal(true), monitorId: TfArg.literal('00000000000000000000000000000001'), monitoringOnly: TfArg.literal(true), mustBeHealthy: TfArg.literal(true))],
      ),
    );

    add(
      CloudflareLoadBalancerPool(
        localName: 'load_balancer_pool',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        origins: [LoadBalancerPoolOrigins(address: TfArg.literal('192.0.2.1'))],
      ),
    );

    add(
      CloudflareLogpullRetention(
        localName: 'logpull_retention',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareLogpushJob(
        localName: 'logpush_job',
        destinationConf: TfArg.variable('leftover_secret'),
        accountId: TfArg.literal(accountId),
        filter: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareLogpushOwnershipChallenge(
        localName: 'logpush_ownership_challenge',
        destinationConf: TfArg.variable('leftover_secret'),
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareMagicNetworkMonitoringConfiguration(
        localName: 'magic_network_monitoring_configuration',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareMagicNetworkMonitoringRule(
        localName: 'magic_network_monitoring_rule',
        accountId: TfArg.literal(accountId),
        automaticAdvertisement: TfArg.literal(true),
        name: TfArg.literal(leftover),
        prefixes: TfArg.literal([leftover]),
        type: TfArg.literal('threshold'),
      ),
    );

    add(
      CloudflareMagicTransitCf1Site(
        localName: 'magic_transit_cf1_site',
        accountId: TfArg.literal(accountId),
        body: [MagicTransitCf1SiteBody(name: TfArg.literal(leftover))],
      ),
    );

    add(
      CloudflareMagicTransitConnector(
        localName: 'magic_transit_connector',
        accountId: TfArg.literal(accountId),
        device: MagicTransitConnectorDevice(id: TfArg.literal('00000000000000000000000000000001')),
      ),
    );

    add(
      CloudflareMagicTransitSite(
        localName: 'magic_transit_site',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareMagicTransitSiteAcl(
        localName: 'magic_transit_site_acl',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        siteId: TfArg.literal('00000000000000000000000000000001'),
        lan1: MagicTransitSiteAclLan1(lanId: TfArg.literal('00000000000000000000000000000001')),
        lan2: MagicTransitSiteAclLan2(lanId: TfArg.literal('00000000000000000000000000000001')),
      ),
    );

    add(
      CloudflareMagicTransitSiteLan(
        localName: 'magic_transit_site_lan',
        accountId: TfArg.literal(accountId),
        siteId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareMagicTransitSiteWan(
        localName: 'magic_transit_site_wan',
        accountId: TfArg.literal(accountId),
        physport: TfArg.literal(200),
        siteId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareMagicWanGreTunnel(
        localName: 'magic_wan_gre_tunnel',
        accountId: TfArg.literal(accountId),
        cloudflareGreEndpoint: TfArg.literal(leftover),
        customerGreEndpoint: TfArg.literal(leftover),
        interfaceAddress: TfArg.literal('192.0.2.1'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareMagicWanIpsecTunnel(
        localName: 'magic_wan_ipsec_tunnel',
        accountId: TfArg.literal(accountId),
        cloudflareEndpoint: TfArg.literal(leftover),
        interfaceAddress: TfArg.literal('192.0.2.1'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareMagicWanStaticRoute(
        localName: 'magic_wan_static_route',
        accountId: TfArg.literal(accountId),
        nexthop: TfArg.literal(leftover),
        prefix: TfArg.literal('192.0.2.0/24'),
        priority: TfArg.literal(200),
      ),
    );

    add(
      CloudflareManagedTransforms(
        localName: 'managed_transforms',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareMoqRelay(
        localName: 'moq_relay',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareMtlsCertificate(
        localName: 'mtls_certificate',
        accountId: TfArg.literal(accountId),
        ca: TfArg.literal(true),
        certificates: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareNotificationPolicy(
        localName: 'notification_policy',
        accountId: TfArg.literal(accountId),
        alertType: TfArg.literal('abuse_report_alert'),
        name: TfArg.literal(leftover),
        mechanisms: NotificationPolicyMechanisms(email: [NotificationPolicyMechanismsEmail(id: TfArg.literal('00000000000000000000000000000001'))]),
      ),
    );

    add(
      CloudflareNotificationPolicyWebhooks(
        localName: 'notification_policy_webhooks',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        url: TfArg.literal('https://example.com'),
      ),
    );

    add(
      CloudflareObservatoryScheduledTest(
        localName: 'observatory_scheduled_test',
        url: TfArg.literal('https://example.com'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareOrganization(
        localName: 'organization',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareOrganizationProfile(
        localName: 'organization_profile',
        businessAddress: TfArg.literal('192.0.2.1'),
        businessEmail: TfArg.literal('leftover@example.com'),
        businessName: TfArg.literal(leftover),
        businessPhone: TfArg.literal(leftover),
        externalMetadata: TfArg.literal(leftover),
        organizationId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareOriginCaCertificate(
        localName: 'origin_ca_certificate',
        csr: TfArg.literal(leftover),
        hostnames: TfArg.literal([leftover]),
        requestType: TfArg.literal('origin-rsa'),
      ),
    );

    add(
      CloudflareOriginCloudRegion(
        localName: 'origin_cloud_region',
        originIp: TfArg.literal('192.0.2.1'),
        region: TfArg.literal(leftover),
        vendor: TfArg.literal('aws'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareOriginTlsComplianceModes(
        localName: 'origin_tls_compliance_modes',
        value: TfArg.literal([leftover]),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflarePageRule(
        localName: 'page_rule',
        target: TfArg.literal('ethereum'),
        zoneId: TfArg.literal(zoneId),
        actions: PageRuleActions(alwaysUseHttps: TfArg.literal(true)),
      ),
    );

    add(
      CloudflarePageShieldPolicy(
        localName: 'page_shield_policy',
        action: TfArg.literal('allow'),
        description: TfArg.literal(leftover),
        enabled: TfArg.literal(true),
        expression: TfArg.literal(leftover),
        value: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflarePagesDomain(
        localName: 'pages_domain',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        projectName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflarePagesProject(
        localName: 'pages_project',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        productionBranch: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflarePipeline(
        localName: 'pipeline',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        sql: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflarePipelineSink(
        localName: 'pipeline_sink',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        type: TfArg.literal('r2'),
      ),
    );

    add(
      CloudflarePipelineStream(
        localName: 'pipeline_stream',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareQueue(
        localName: 'queue',
        accountId: TfArg.literal(accountId),
        queueName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareQueueConsumer(
        localName: 'queue_consumer',
        accountId: TfArg.literal(accountId),
        queueId: TfArg.literal('00000000000000000000000000000001'),
        type: TfArg.literal('worker'),
      ),
    );

    add(
      CloudflareR2Bucket(
        localName: 'r2_bucket',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketCors(
        localName: 'r2_bucket_cors',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketLifecycle(
        localName: 'r2_bucket_lifecycle',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketLock(
        localName: 'r2_bucket_lock',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketSippy(
        localName: 'r2_bucket_sippy',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareR2CustomDomain(
        localName: 'r2_custom_domain',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
        domain: TfArg.literal(leftover),
        enabled: TfArg.literal(true),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareR2DataCatalog(
        localName: 'r2_data_catalog',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareR2ManagedDomain(
        localName: 'r2_managed_domain',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
        enabled: TfArg.literal(true),
      ),
    );

    add(
      CloudflareRegionalHostname(
        localName: 'regional_hostname',
        hostname: TfArg.literal(leftover),
        regionKey: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareRegionalTieredCache(
        localName: 'regional_tiered_cache',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareRegistrarDomain(
        localName: 'registrar_domain',
        accountId: TfArg.literal(accountId),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareRuleset(
        localName: 'ruleset',
        kind: TfArg.literal('zone'),
        name: TfArg.literal(leftover),
        phase: TfArg.literal('http_request_firewall_custom'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareSchemaValidationOperationSettings(
        localName: 'schema_validation_operation_settings',
        mitigationAction: TfArg.literal('none'),
        operationId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareSchemaValidationSettings(
        localName: 'schema_validation_settings',
        validationDefaultMitigationAction: TfArg.literal('none'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareSecretsStore(
        localName: 'secrets_store',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareSecretsStoreSecret(
        localName: 'secrets_store_secret',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        scopes: TfArg.literal([leftover]),
        storeId: TfArg.literal('00000000000000000000000000000001'),
        value: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      CloudflareShareRecipient(
        localName: 'share_recipient',
        accountId: TfArg.literal(accountId),
        shareId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareSnippetRules(
        localName: 'snippet_rules',
        zoneId: TfArg.literal(zoneId),
        rules: [SnippetRulesRules(expression: TfArg.literal(leftover), snippetName: TfArg.literal(leftover))],
      ),
    );

    add(
      CloudflareSnippets(
        localName: 'snippets',
        files: TfArg.literal([leftover]),
        snippetName: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
        metadata: SnippetsMetadata(mainModule: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareSpectrumApplication(
        localName: 'spectrum_application',
        protocol: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
        dns: SpectrumApplicationDns(name: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareSsoConnector(
        localName: 'sso_connector',
        accountId: TfArg.literal(accountId),
        emailDomain: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      CloudflareStream(
        localName: 'stream',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareStreamAudioTrack(
        localName: 'stream_audio_track',
        accountId: TfArg.literal(accountId),
        identifier: TfArg.literal('1000_errors'),
      ),
    );

    add(
      CloudflareStreamCaptionLanguage(
        localName: 'stream_caption_language',
        accountId: TfArg.literal(accountId),
        identifier: TfArg.literal('1000_errors'),
        language: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareStreamDownload(
        localName: 'stream_download',
        accountId: TfArg.literal(accountId),
        identifier: TfArg.literal('1000_errors'),
      ),
    );

    add(
      CloudflareStreamKey(
        localName: 'stream_key',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareStreamLiveInput(
        localName: 'stream_live_input',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareStreamWatermark(
        localName: 'stream_watermark',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareStreamWebhook(
        localName: 'stream_webhook',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareTieredCache(
        localName: 'tiered_cache',
        value: TfArg.literal('on'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareTokenValidationConfig(
        localName: 'token_validation_config',
        description: TfArg.literal(leftover),
        title: TfArg.literal(leftover),
        tokenSources: TfArg.literal([leftover]),
        tokenType: TfArg.literal('JWT'),
        zoneId: TfArg.literal(zoneId),
        credentials: TokenValidationConfigCredentials(keys: [TokenValidationConfigCredentialsKeys(alg: TfArg.literal('RS256'), kid: TfArg.literal(leftover), kty: TfArg.literal('RSA'))]),
      ),
    );

    add(
      CloudflareTokenValidationRules(
        localName: 'token_validation_rules',
        action: TfArg.literal('log'),
        description: TfArg.literal(leftover),
        enabled: TfArg.literal(true),
        expression: TfArg.literal(leftover),
        title: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
        selector: TokenValidationRulesSelector(exclude: [TokenValidationRulesSelectorExclude(operationIds: TfArg.literal([leftover]))]),
      ),
    );

    add(
      CloudflareTotalTls(
        localName: 'total_tls',
        enabled: TfArg.literal(true),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareTurnstileWidget(
        localName: 'turnstile_widget',
        accountId: TfArg.literal(accountId),
        domains: TfArg.literal([leftover]),
        mode: TfArg.literal('non-interactive'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareUniversalSslSetting(
        localName: 'universal_ssl_setting',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareUrlNormalizationSettings(
        localName: 'url_normalization_settings',
        scope: TfArg.literal('incoming'),
        type: TfArg.literal('cloudflare'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareUser(
        localName: 'user',
      ),
    );

    add(
      CloudflareUserGroup(
        localName: 'user_group',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareUserGroupMembers(
        localName: 'user_group_members',
        accountId: TfArg.literal(accountId),
        userGroupId: TfArg.literal('00000000000000000000000000000001'),
        members: [UserGroupMembersMembers(id: TfArg.literal('00000000000000000000000000000001'))],
      ),
    );

    add(
      CloudflareVulnerabilityScannerCredentialSet(
        localName: 'vulnerability_scanner_credential_set',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareVulnerabilityScannerTargetEnvironment(
        localName: 'vulnerability_scanner_target_environment',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        target: VulnerabilityScannerTargetEnvironmentTarget(type: TfArg.literal('zone'), zoneTag: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareWaitingRoom(
        localName: 'waiting_room',
        host: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        newUsersPerMinute: TfArg.literal(200),
        totalActiveUsers: TfArg.literal(200),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareWaitingRoomEvent(
        localName: 'waiting_room_event',
        eventEndTime: TfArg.literal(leftover),
        eventStartTime: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        waitingRoomId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareWaitingRoomSettings(
        localName: 'waiting_room_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareWeb3Hostname(
        localName: 'web3_hostname',
        name: TfArg.literal(leftover),
        target: TfArg.literal('ethereum'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareWebAnalyticsRule(
        localName: 'web_analytics_rule',
        accountId: TfArg.literal(accountId),
        rulesetId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareWebAnalyticsSite(
        localName: 'web_analytics_site',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareWorker(
        localName: 'worker',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareWorkerVersion(
        localName: 'worker_version',
        accountId: TfArg.literal(accountId),
        workerId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareWorkersCronTrigger(
        localName: 'workers_cron_trigger',
        accountId: TfArg.literal(accountId),
        scriptName: TfArg.literal(leftover),
        schedules: [WorkersCronTriggerSchedules(cron: TfArg.literal('* * * * *'))],
      ),
    );

    add(
      CloudflareWorkersCustomDomain(
        localName: 'workers_custom_domain',
        accountId: TfArg.literal(accountId),
        hostname: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareWorkersForPlatformsDispatchNamespace(
        localName: 'workers_for_platforms_dispatch_namespace',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareWorkersKv(
        localName: 'workers_kv',
        accountId: TfArg.literal(accountId),
        keyName: TfArg.literal(leftover),
        namespaceId: TfArg.literal('00000000000000000000000000000001'),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareWorkersKvNamespace(
        localName: 'workers_kv_namespace',
        accountId: TfArg.literal(accountId),
        title: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareWorkersRoute(
        localName: 'workers_route',
        pattern: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareWorkersScriptSubdomain(
        localName: 'workers_script_subdomain',
        accountId: TfArg.literal(accountId),
        enabled: TfArg.literal(true),
        scriptName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareWorkflow(
        localName: 'workflow',
        accountId: TfArg.literal(accountId),
        className: TfArg.literal(leftover),
        scriptName: TfArg.literal(leftover),
        workflowName: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessAiControlsMcpPortal(
        localName: 'zero_trust_access_ai_controls_mcp_portal',
        accountId: TfArg.literal(accountId),
        hostname: TfArg.literal(leftover),
        id: TfArg.literal('00000000000000000000000000000001'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessAiControlsMcpServer(
        localName: 'zero_trust_access_ai_controls_mcp_server',
        accountId: TfArg.literal(accountId),
        authType: TfArg.literal('unauthenticated'),
        hostname: TfArg.literal(leftover),
        id: TfArg.literal('00000000000000000000000000000001'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessApplication(
        localName: 'zero_trust_access_application',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessCustomPage(
        localName: 'zero_trust_access_custom_page',
        accountId: TfArg.literal(accountId),
        customHtml: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal('forbidden'),
      ),
    );

    add(
      CloudflareZeroTrustAccessGroup(
        localName: 'zero_trust_access_group',
        name: TfArg.literal(leftover),
        include: [ZeroTrustAccessGroupInclude(anyValidServiceToken: ZeroTrustAccessGroupIncludeAnyValidServiceToken())],
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessInfrastructureTarget(
        localName: 'zero_trust_access_infrastructure_target',
        accountId: TfArg.literal(accountId),
        hostname: TfArg.literal(leftover),
        ip: ZeroTrustAccessInfrastructureTargetIp(ipv4: ZeroTrustAccessInfrastructureTargetIpIpv4(ipAddr: TfArg.literal(leftover))),
      ),
    );

    add(
      CloudflareZeroTrustAccessKeyConfiguration(
        localName: 'zero_trust_access_key_configuration',
        accountId: TfArg.literal(accountId),
        keyRotationIntervalDays: TfArg.literal(200),
      ),
    );

    add(
      CloudflareZeroTrustAccessMtlsCertificate(
        localName: 'zero_trust_access_mtls_certificate',
        certificate: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessMtlsHostnameSettings(
        localName: 'zero_trust_access_mtls_hostname_settings',
        settings: [ZeroTrustAccessMtlsHostnameSettingsSettings(chinaNetwork: TfArg.literal(true), clientCertificateForwarding: TfArg.literal(true), hostname: TfArg.literal(leftover))],
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessPolicy(
        localName: 'zero_trust_access_policy',
        accountId: TfArg.literal(accountId),
        decision: TfArg.literal('allow'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessServiceToken(
        localName: 'zero_trust_access_service_token',
        name: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessShortLivedCertificate(
        localName: 'zero_trust_access_short_lived_certificate',
        appId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessTag(
        localName: 'zero_trust_access_tag',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDeviceCustomProfile(
        localName: 'zero_trust_device_custom_profile',
        accountId: TfArg.literal(accountId),
        match: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDeviceCustomProfileLocalDomainFallback(
        localName: 'zero_trust_device_custom_profile_local_domain_fa',
        accountId: TfArg.literal(accountId),
        policyId: TfArg.literal('00000000000000000000000000000001'),
        domains: [ZeroTrustDeviceCustomProfileLocalDomainFallbackDomains(suffix: TfArg.literal(leftover))],
      ),
    );

    add(
      CloudflareZeroTrustDeviceDefaultProfile(
        localName: 'zero_trust_device_default_profile',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceDefaultProfileCertificates(
        localName: 'zero_trust_device_default_profile_certificates',
        enabled: TfArg.literal(true),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback(
        localName: 'zero_trust_device_default_profile_local_domain_f',
        accountId: TfArg.literal(accountId),
        domains: [ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomains(suffix: TfArg.literal(leftover))],
      ),
    );

    add(
      CloudflareZeroTrustDeviceDeploymentGroups(
        localName: 'zero_trust_device_deployment_groups',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        versionConfig: [ZeroTrustDeviceDeploymentGroupsVersionConfig(targetEnvironment: TfArg.literal(leftover), version: TfArg.literal(leftover))],
      ),
    );

    add(
      CloudflareZeroTrustDeviceIpProfile(
        localName: 'zero_trust_device_ip_profile',
        accountId: TfArg.literal(accountId),
        match: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        precedence: TfArg.literal(200),
        subnetId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDeviceManagedNetworks(
        localName: 'zero_trust_device_managed_networks',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        type: TfArg.literal('tls'),
        config: ZeroTrustDeviceManagedNetworksConfig(tlsSockaddr: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDevicePostureIntegration(
        localName: 'zero_trust_device_posture_integration',
        accountId: TfArg.literal(accountId),
        interval: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal('workspace_one'),
        config: ZeroTrustDevicePostureIntegrationConfig(accessClientId: TfArg.literal('00000000000000000000000000000001')),
      ),
    );

    add(
      CloudflareZeroTrustDevicePostureRule(
        localName: 'zero_trust_device_posture_rule',
        accountId: TfArg.literal(accountId),
        type: TfArg.literal('file'),
      ),
    );

    add(
      CloudflareZeroTrustDeviceSettings(
        localName: 'zero_trust_device_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceSubnet(
        localName: 'zero_trust_device_subnet',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        network: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDexRule(
        localName: 'zero_trust_dex_rule',
        accountId: TfArg.literal(accountId),
        match: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDexTest(
        localName: 'zero_trust_dex_test',
        accountId: TfArg.literal(accountId),
        enabled: TfArg.literal(true),
        interval: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        data: ZeroTrustDexTestData(host: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpCustomEntry(
        localName: 'zero_trust_dlp_custom_entry',
        accountId: TfArg.literal(accountId),
        enabled: TfArg.literal(true),
        name: TfArg.literal(leftover),
        pattern: ZeroTrustDlpCustomEntryPattern(regex: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpCustomProfile(
        localName: 'zero_trust_dlp_custom_profile',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataClass(
        localName: 'zero_trust_dlp_data_class',
        accountId: TfArg.literal(accountId),
        dataTags: TfArg.literal([leftover]),
        expression: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        sensitivityLevels: [ZeroTrustDlpDataClassSensitivityLevels(groupId: TfArg.literal('00000000000000000000000000000001'), levelId: TfArg.literal('00000000000000000000000000000001'))],
      ),
    );

    add(
      CloudflareZeroTrustDlpDataTag(
        localName: 'zero_trust_dlp_data_tag',
        accountId: TfArg.literal(accountId),
        categoryId: TfArg.literal('00000000000000000000000000000001'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataTagCategory(
        localName: 'zero_trust_dlp_data_tag_category',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataset(
        localName: 'zero_trust_dlp_dataset',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpEntry(
        localName: 'zero_trust_dlp_entry',
        accountId: TfArg.literal(accountId),
        enabled: TfArg.literal(true),
        name: TfArg.literal(leftover),
        pattern: ZeroTrustDlpEntryPattern(regex: TfArg.literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpIntegrationEntry(
        localName: 'zero_trust_dlp_integration_entry',
        accountId: TfArg.literal(accountId),
        enabled: TfArg.literal(true),
        entryId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpPredefinedEntry(
        localName: 'zero_trust_dlp_predefined_entry',
        accountId: TfArg.literal(accountId),
        enabled: TfArg.literal(true),
        entryId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpPredefinedProfile(
        localName: 'zero_trust_dlp_predefined_profile',
        accountId: TfArg.literal(accountId),
        profileId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityGroup(
        localName: 'zero_trust_dlp_sensitivity_group',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityLevel(
        localName: 'zero_trust_dlp_sensitivity_level',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        sensitivityGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityLevelOrder(
        localName: 'zero_trust_dlp_sensitivity_level_order',
        accountId: TfArg.literal(accountId),
        levelIds: TfArg.literal([leftover]),
        sensitivityGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSettings(
        localName: 'zero_trust_dlp_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDnsLocation(
        localName: 'zero_trust_dns_location',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayCertificate(
        localName: 'zero_trust_gateway_certificate',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustGatewayLogging(
        localName: 'zero_trust_gateway_logging',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustGatewayPacfile(
        localName: 'zero_trust_gateway_pacfile',
        accountId: TfArg.literal(accountId),
        contents: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayPolicy(
        localName: 'zero_trust_gateway_policy',
        accountId: TfArg.literal(accountId),
        action: TfArg.literal('allow'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayProxyEndpoint(
        localName: 'zero_trust_gateway_proxy_endpoint',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewaySettings(
        localName: 'zero_trust_gateway_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustList(
        localName: 'zero_trust_list',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
        type: TfArg.literal('SERIAL'),
      ),
    );

    add(
      CloudflareZeroTrustNetworkHostnameRoute(
        localName: 'zero_trust_network_hostname_route',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustOrganization(
        localName: 'zero_trust_organization',
        accountId: TfArg.literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustRiskScoringIntegration(
        localName: 'zero_trust_risk_scoring_integration',
        accountId: TfArg.literal(accountId),
        integrationType: TfArg.literal('Okta'),
        tenantUrl: TfArg.literal('https://example.com'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflared(
        localName: 'zero_trust_tunnel_cloudflared',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredConfig(
        localName: 'zero_trust_tunnel_cloudflared_config',
        accountId: TfArg.literal(accountId),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredRoute(
        localName: 'zero_trust_tunnel_cloudflared_route',
        accountId: TfArg.literal(accountId),
        network: TfArg.literal(leftover),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredVirtualNetwork(
        localName: 'zero_trust_tunnel_cloudflared_virtual_network',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelWarpConnector(
        localName: 'zero_trust_tunnel_warp_connector',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelWarpConnectorConfig(
        localName: 'zero_trust_tunnel_warp_connector_config',
        accountId: TfArg.literal(accountId),
        haMode: TfArg.literal('none'),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZoneAutoOriginTlsKex(
        localName: 'zone_auto_origin_tls_kex',
        enabled: TfArg.literal(true),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareZoneCacheReserve(
        localName: 'zone_cache_reserve',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareZoneCacheVariants(
        localName: 'zone_cache_variants',
        zoneId: TfArg.literal(zoneId),
        value: ZoneCacheVariantsValue(avif: TfArg.literal([leftover])),
      ),
    );

    add(
      CloudflareZoneDnsSettings(
        localName: 'zone_dns_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareZoneDnssec(
        localName: 'zone_dnssec',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareZoneHold(
        localName: 'zone_hold',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareZoneSetting(
        localName: 'zone_setting',
        settingId: TfArg.literal('ciphers'),
        value: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    add(
      CloudflareZoneSubscription(
        localName: 'zone_subscription',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAccessRule(
        localName: 'd_access_rule',
        accountId: TfArg.literal(accountId),
        ruleId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccessRules(
        localName: 'd_access_rules',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountApiTokenPermissionGroups(
        localName: 'd_account_api_token_permission_groups',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountApiTokenPermissionGroupsList(
        localName: 'd_account_api_token_permission_groups_list',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountDnsSettings(
        localName: 'd_account_dns_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountDnsSettingsInternalView(
        localName: 'd_account_dns_settings_internal_view',
        accountId: TfArg.literal(accountId),
        viewId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountDnsSettingsInternalViews(
        localName: 'd_account_dns_settings_internal_views',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountMember(
        localName: 'd_account_member',
        accountId: TfArg.literal(accountId),
        memberId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountMembers(
        localName: 'd_account_members',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountPermissionGroup(
        localName: 'd_account_permission_group',
        accountId: TfArg.literal(accountId),
        permissionGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountPermissionGroups(
        localName: 'd_account_permission_groups',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountRole(
        localName: 'd_account_role',
        accountId: TfArg.literal(accountId),
        roleId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountRoles(
        localName: 'd_account_roles',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountSubscription(
        localName: 'd_account_subscription',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccountToken(
        localName: 'd_account_token',
        accountId: TfArg.literal(accountId),
        tokenId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareAccountTokens(
        localName: 'd_account_tokens',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAccounts(
        localName: 'd_accounts',
      ),
    );

    addData(
      DataCloudflareAddressMap(
        localName: 'd_address_map',
        addressMapId: TfArg.literal('192.0.2.1'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAddressMaps(
        localName: 'd_address_maps',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiGateway(
        localName: 'd_ai_gateway',
        accountId: TfArg.literal(accountId),
        filter: DataAiGatewayFilter(search: TfArg.literal(leftover)),
      ),
    );

    addData(
      DataCloudflareAiGatewayDynamicRouting(
        localName: 'd_ai_gateway_dynamic_routing',
        gatewayId: TfArg.literal('00000000000000000000000000000001'),
        id: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiGateways(
        localName: 'd_ai_gateways',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiSearchInstance(
        localName: 'd_ai_search_instance',
        accountId: TfArg.literal(accountId),
        filter: DataAiSearchInstanceFilter(namespace: TfArg.literal(leftover)),
      ),
    );

    addData(
      DataCloudflareAiSearchInstances(
        localName: 'd_ai_search_instances',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiSearchNamespace(
        localName: 'd_ai_search_namespace',
        accountId: TfArg.literal(accountId),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareAiSearchNamespaces(
        localName: 'd_ai_search_namespaces',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareAiSearchToken(
        localName: 'd_ai_search_token',
        accountId: TfArg.literal(accountId),
        filter: DataAiSearchTokenFilter(search: TfArg.literal(leftover)),
      ),
    );

    addData(
      DataCloudflareAiSearchTokens(
        localName: 'd_ai_search_tokens',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareApiShield(
        localName: 'd_api_shield',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldDiscoveryOperations(
        localName: 'd_api_shield_discovery_operations',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldOperation(
        localName: 'd_api_shield_operation',
        zoneId: TfArg.literal(zoneId),
        operationId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareApiShieldOperationSchemaValidationSettings(
        localName: 'd_api_shield_operation_schema_validation_setting',
        operationId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldOperations(
        localName: 'd_api_shield_operations',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldSchema(
        localName: 'd_api_shield_schema',
        schemaId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldSchemaValidationSettings(
        localName: 'd_api_shield_schema_validation_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiShieldSchemas(
        localName: 'd_api_shield_schemas',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareApiToken(
        localName: 'd_api_token',
        tokenId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareApiTokenPermissionGroupsList(
        localName: 'd_api_token_permission_groups_list',
      ),
    );

    addData(
      DataCloudflareApiTokens(
        localName: 'd_api_tokens',
      ),
    );

    addData(
      DataCloudflareArgoSmartRouting(
        localName: 'd_argo_smart_routing',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareArgoTieredCaching(
        localName: 'd_argo_tiered_caching',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPulls(
        localName: 'd_authenticated_origin_pulls',
        hostname: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsCertificate(
        localName: 'd_authenticated_origin_pulls_certificate',
        certificateId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsCertificates(
        localName: 'd_authenticated_origin_pulls_certificates',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsHostnameCertificate(
        localName: 'd_authenticated_origin_pulls_hostname_certificat',
        certificateId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsHostnameCertificates(
        localName: 'd_authenticated_origin_pulls_hostname_certific_2',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareAuthenticatedOriginPullsSettings(
        localName: 'd_authenticated_origin_pulls_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareBotManagement(
        localName: 'd_bot_management',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareBotnetFeedConfigAsn(
        localName: 'd_botnet_feed_config_asn',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareByoIpPrefix(
        localName: 'd_byo_ip_prefix',
        prefixId: TfArg.literal('192.0.2.0/24'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareByoIpPrefixes(
        localName: 'd_byo_ip_prefixes',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCallsSfuApp(
        localName: 'd_calls_sfu_app',
        accountId: TfArg.literal(accountId),
        appId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCallsSfuApps(
        localName: 'd_calls_sfu_apps',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCallsTurnApp(
        localName: 'd_calls_turn_app',
        accountId: TfArg.literal(accountId),
        keyId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCallsTurnApps(
        localName: 'd_calls_turn_apps',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCertificateAuthoritiesHostnameAssociations(
        localName: 'd_certificate_authorities_hostname_associations',
        zoneId: TfArg.literal(zoneId),
        mtlsCertificateId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCertificatePack(
        localName: 'd_certificate_pack',
        zoneId: TfArg.literal(zoneId),
        certificatePackId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCertificatePacks(
        localName: 'd_certificate_packs',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareClientCertificate(
        localName: 'd_client_certificate',
        zoneId: TfArg.literal(zoneId),
        clientCertificateId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareClientCertificates(
        localName: 'd_client_certificates',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCloudConnectorRules(
        localName: 'd_cloud_connector_rules',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequest(
        localName: 'd_cloudforce_one_request',
        accountId: TfArg.literal(accountId),
        requestId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequestAsset(
        localName: 'd_cloudforce_one_request_asset',
        accountId: TfArg.literal(accountId),
        assetId: TfArg.literal('00000000000000000000000000000001'),
        requestId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequestMessage(
        localName: 'd_cloudforce_one_request_message',
        page: TfArg.literal(200),
        perPage: TfArg.literal(200),
        requestId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequestPriority(
        localName: 'd_cloudforce_one_request_priority',
        priorityId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCloudforceOneRequests(
        localName: 'd_cloudforce_one_requests',
        page: TfArg.literal(200),
        perPage: TfArg.literal(200),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareConnectivityDirectoryService(
        localName: 'd_connectivity_directory_service',
        accountId: TfArg.literal(accountId),
        serviceId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareConnectivityDirectoryServices(
        localName: 'd_connectivity_directory_services',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareContentScanning(
        localName: 'd_content_scanning',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareContentScanningExpressions(
        localName: 'd_content_scanning_expressions',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCustomCsr(
        localName: 'd_custom_csr',
        accountId: TfArg.literal(accountId),
        customCsrId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCustomCsrs(
        localName: 'd_custom_csrs',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomHostname(
        localName: 'd_custom_hostname',
        zoneId: TfArg.literal(zoneId),
        customHostnameId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCustomHostnameFallbackOrigin(
        localName: 'd_custom_hostname_fallback_origin',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCustomHostnames(
        localName: 'd_custom_hostnames',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCustomOriginTrustStore(
        localName: 'd_custom_origin_trust_store',
        zoneId: TfArg.literal(zoneId),
        customOriginTrustStoreId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCustomOriginTrustStores(
        localName: 'd_custom_origin_trust_stores',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareCustomPageAsset(
        localName: 'd_custom_page_asset',
        assetName: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomPageAssets(
        localName: 'd_custom_page_assets',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomPages(
        localName: 'd_custom_pages',
        identifier: TfArg.literal('1000_errors'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomPagesList(
        localName: 'd_custom_pages_list',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareCustomSsl(
        localName: 'd_custom_ssl',
        zoneId: TfArg.literal(zoneId),
        customCertificateId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareCustomSsls(
        localName: 'd_custom_ssls',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareD1Database(
        localName: 'd_d1_database',
        accountId: TfArg.literal(accountId),
        databaseId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareD1Databases(
        localName: 'd_d1_databases',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDcvDelegation(
        localName: 'd_dcv_delegation',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareDlsPrefixBinding(
        localName: 'd_dls_prefix_binding',
        accountId: TfArg.literal(accountId),
        bindingId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareDlsPrefixBindings(
        localName: 'd_dls_prefix_bindings',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsFirewall(
        localName: 'd_dns_firewall',
        dnsFirewallId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsFirewalls(
        localName: 'd_dns_firewalls',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsRecord(
        localName: 'd_dns_record',
        zoneId: TfArg.literal(zoneId),
        dnsRecordId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareDnsRecords(
        localName: 'd_dns_records',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersAcl(
        localName: 'd_dns_zone_transfers_acl',
        aclId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersAcls(
        localName: 'd_dns_zone_transfers_acls',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersIncoming(
        localName: 'd_dns_zone_transfers_incoming',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersOutgoing(
        localName: 'd_dns_zone_transfers_outgoing',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersPeer(
        localName: 'd_dns_zone_transfers_peer',
        peerId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersPeers(
        localName: 'd_dns_zone_transfers_peers',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersTsig(
        localName: 'd_dns_zone_transfers_tsig',
        tsigId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareDnsZoneTransfersTsigs(
        localName: 'd_dns_zone_transfers_tsigs',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingAddress(
        localName: 'd_email_routing_address',
        accountId: TfArg.literal(accountId),
        destinationAddressIdentifier: TfArg.literal('192.0.2.1'),
      ),
    );

    addData(
      DataCloudflareEmailRoutingAddresses(
        localName: 'd_email_routing_addresses',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingCatchAll(
        localName: 'd_email_routing_catch_all',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingDns(
        localName: 'd_email_routing_dns',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingRule(
        localName: 'd_email_routing_rule',
        zoneId: TfArg.literal(zoneId),
        ruleIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareEmailRoutingRules(
        localName: 'd_email_routing_rules',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailRoutingSettings(
        localName: 'd_email_routing_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareEmailSecurityBlockSender(
        localName: 'd_email_security_block_sender',
        accountId: TfArg.literal(accountId),
        patternId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityBlockSenders(
        localName: 'd_email_security_block_senders',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailSecurityImpersonationRegistries(
        localName: 'd_email_security_impersonation_registries',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareEmailSecurityImpersonationRegistry(
        localName: 'd_email_security_impersonation_registry',
        accountId: TfArg.literal(accountId),
        impersonationRegistryId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityTrustedDomains(
        localName: 'd_email_security_trusted_domains',
        accountId: TfArg.literal(accountId),
        trustedDomainId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareEmailSecurityTrustedDomainsList(
        localName: 'd_email_security_trusted_domains_list',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareFilter(
        localName: 'd_filter',
        zoneId: TfArg.literal(zoneId),
        filterId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareFilters(
        localName: 'd_filters',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareFirewallRules(
        localName: 'd_firewall_rules',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareFlagshipApp(
        localName: 'd_flagship_app',
        accountId: TfArg.literal(accountId),
        appId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareFlagshipApps(
        localName: 'd_flagship_apps',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareFlagshipFlag(
        localName: 'd_flagship_flag',
        accountId: TfArg.literal(accountId),
        appId: TfArg.literal('00000000000000000000000000000001'),
        flagKey: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareFlagshipFlags(
        localName: 'd_flagship_flags',
        accountId: TfArg.literal(accountId),
        appId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareGoogleTagGateway(
        localName: 'd_google_tag_gateway',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHealthcheck(
        localName: 'd_healthcheck',
        healthcheckId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHealthchecks(
        localName: 'd_healthchecks',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHostnameTlsSetting(
        localName: 'd_hostname_tls_setting',
        settingId: TfArg.literal('ciphers'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareHyperdriveConfig(
        localName: 'd_hyperdrive_config',
        hyperdriveId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareHyperdriveConfigs(
        localName: 'd_hyperdrive_configs',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareImage(
        localName: 'd_image',
        imageId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareImageVariant(
        localName: 'd_image_variant',
        variantId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareImages(
        localName: 'd_images',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareIpRanges(
        localName: 'd_ip_ranges',
      ),
    );

    addData(
      DataCloudflareKeylessCertificate(
        localName: 'd_keyless_certificate',
        keylessCertificateId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareKeylessCertificates(
        localName: 'd_keyless_certificates',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLeakedCredentialCheck(
        localName: 'd_leaked_credential_check',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLeakedCredentialCheckRule(
        localName: 'd_leaked_credential_check_rule',
        detectionId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLeakedCredentialCheckRules(
        localName: 'd_leaked_credential_check_rules',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareList(
        localName: 'd_list',
        listId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareListItem(
        localName: 'd_list_item',
        itemId: TfArg.literal('00000000000000000000000000000001'),
        listId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareListItems(
        localName: 'd_list_items',
        listId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareLists(
        localName: 'd_lists',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancer(
        localName: 'd_load_balancer',
        loadBalancerId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLoadBalancerMonitor(
        localName: 'd_load_balancer_monitor',
        monitorId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancerMonitorGroup(
        localName: 'd_load_balancer_monitor_group',
        accountId: TfArg.literal(accountId),
        monitorGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareLoadBalancerMonitorGroups(
        localName: 'd_load_balancer_monitor_groups',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancerMonitors(
        localName: 'd_load_balancer_monitors',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancerPool(
        localName: 'd_load_balancer_pool',
        accountId: TfArg.literal(accountId),
        poolId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareLoadBalancerPools(
        localName: 'd_load_balancer_pools',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareLoadBalancers(
        localName: 'd_load_balancers',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLogpullRetention(
        localName: 'd_logpull_retention',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareLogpushDatasetField(
        localName: 'd_logpush_dataset_field',
        accountId: TfArg.literal(accountId),
        datasetId: TfArg.literal('audit_logs'),
      ),
    );

    addData(
      DataCloudflareLogpushDatasetJob(
        localName: 'd_logpush_dataset_job',
        accountId: TfArg.literal(accountId),
        datasetId: TfArg.literal('audit_logs'),
      ),
    );

    addData(
      DataCloudflareLogpushJob(
        localName: 'd_logpush_job',
        jobId: TfArg.literal(200),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareLogpushJobs(
        localName: 'd_logpush_jobs',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicNetworkMonitoringConfiguration(
        localName: 'd_magic_network_monitoring_configuration',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicNetworkMonitoringRule(
        localName: 'd_magic_network_monitoring_rule',
        ruleId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicNetworkMonitoringRules(
        localName: 'd_magic_network_monitoring_rules',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitCf1Site(
        localName: 'd_magic_transit_cf1_site',
        accountId: TfArg.literal(accountId),
        cf1SiteId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitCf1Sites(
        localName: 'd_magic_transit_cf1_sites',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitConnector(
        localName: 'd_magic_transit_connector',
        accountId: TfArg.literal(accountId),
        connectorId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitConnectors(
        localName: 'd_magic_transit_connectors',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitSite(
        localName: 'd_magic_transit_site',
        accountId: TfArg.literal(accountId),
        siteId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteAcl(
        localName: 'd_magic_transit_site_acl',
        accountId: TfArg.literal(accountId),
        aclId: TfArg.literal('00000000000000000000000000000001'),
        siteId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteAcls(
        localName: 'd_magic_transit_site_acls',
        siteId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteLan(
        localName: 'd_magic_transit_site_lan',
        accountId: TfArg.literal(accountId),
        lanId: TfArg.literal('00000000000000000000000000000001'),
        siteId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteLans(
        localName: 'd_magic_transit_site_lans',
        siteId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteWan(
        localName: 'd_magic_transit_site_wan',
        accountId: TfArg.literal(accountId),
        siteId: TfArg.literal('00000000000000000000000000000001'),
        wanId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMagicTransitSiteWans(
        localName: 'd_magic_transit_site_wans',
        siteId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicTransitSites(
        localName: 'd_magic_transit_sites',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicWanGreTunnel(
        localName: 'd_magic_wan_gre_tunnel',
        greTunnelId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicWanIpsecTunnel(
        localName: 'd_magic_wan_ipsec_tunnel',
        ipsecTunnelId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMagicWanStaticRoute(
        localName: 'd_magic_wan_static_route',
        routeId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareManagedTransforms(
        localName: 'd_managed_transforms',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareMoqRelay(
        localName: 'd_moq_relay',
        accountId: TfArg.literal(accountId),
        relayId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMoqRelays(
        localName: 'd_moq_relays',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareMtlsCertificate(
        localName: 'd_mtls_certificate',
        accountId: TfArg.literal(accountId),
        mtlsCertificateId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMtlsCertificateAssociations(
        localName: 'd_mtls_certificate_associations',
        accountId: TfArg.literal(accountId),
        mtlsCertificateId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareMtlsCertificates(
        localName: 'd_mtls_certificates',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareNotificationPolicies(
        localName: 'd_notification_policies',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareNotificationPolicy(
        localName: 'd_notification_policy',
        policyId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareNotificationPolicyWebhooks(
        localName: 'd_notification_policy_webhooks',
        webhookId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareNotificationPolicyWebhooksList(
        localName: 'd_notification_policy_webhooks_list',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareOauthClient(
        localName: 'd_oauth_client',
        accountId: TfArg.literal(accountId),
        oauthClientId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareOauthClients(
        localName: 'd_oauth_clients',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareOauthScopes(
        localName: 'd_oauth_scopes',
      ),
    );

    addData(
      DataCloudflareObservatoryScheduledTest(
        localName: 'd_observatory_scheduled_test',
        url: TfArg.literal('https://example.com'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareOrganization(
        localName: 'd_organization',
        organizationId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareOrganizationProfile(
        localName: 'd_organization_profile',
        organizationId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareOrganizations(
        localName: 'd_organizations',
      ),
    );

    addData(
      DataCloudflareOriginCaCertificate(
        localName: 'd_origin_ca_certificate',
        certificateId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareOriginCaCertificates(
        localName: 'd_origin_ca_certificates',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareOriginCloudRegion(
        localName: 'd_origin_cloud_region',
        originIp: TfArg.literal('192.0.2.1'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareOriginCloudRegions(
        localName: 'd_origin_cloud_regions',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareOriginTlsComplianceModes(
        localName: 'd_origin_tls_compliance_modes',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageRule(
        localName: 'd_page_rule',
        pageruleId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldConnections(
        localName: 'd_page_shield_connections',
        connectionId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldConnectionsList(
        localName: 'd_page_shield_connections_list',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldCookies(
        localName: 'd_page_shield_cookies',
        cookieId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldCookiesList(
        localName: 'd_page_shield_cookies_list',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldPolicies(
        localName: 'd_page_shield_policies',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldPolicy(
        localName: 'd_page_shield_policy',
        policyId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldScripts(
        localName: 'd_page_shield_scripts',
        scriptId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePageShieldScriptsList(
        localName: 'd_page_shield_scripts_list',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflarePagesDomain(
        localName: 'd_pages_domain',
        accountId: TfArg.literal(accountId),
        domainName: TfArg.literal(leftover),
        projectName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflarePagesDomains(
        localName: 'd_pages_domains',
        projectName: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflarePagesProject(
        localName: 'd_pages_project',
        projectName: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflarePagesProjects(
        localName: 'd_pages_projects',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflarePipeline(
        localName: 'd_pipeline',
        pipelineId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflarePipelineSink(
        localName: 'd_pipeline_sink',
        accountId: TfArg.literal(accountId),
        sinkId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflarePipelineSinks(
        localName: 'd_pipeline_sinks',
        accountId: TfArg.literal(accountId),
        pipelineId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflarePipelineStream(
        localName: 'd_pipeline_stream',
        accountId: TfArg.literal(accountId),
        streamId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflarePipelineStreams(
        localName: 'd_pipeline_streams',
        accountId: TfArg.literal(accountId),
        pipelineId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareQueue(
        localName: 'd_queue',
        queueId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareQueueConsumer(
        localName: 'd_queue_consumer',
        accountId: TfArg.literal(accountId),
        queueId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareQueueConsumers(
        localName: 'd_queue_consumers',
        queueId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareQueues(
        localName: 'd_queues',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareR2Bucket(
        localName: 'd_r2_bucket',
        bucketName: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareR2BucketCors(
        localName: 'd_r2_bucket_cors',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2BucketEventNotification(
        localName: 'd_r2_bucket_event_notification',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
        queueId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareR2BucketLifecycle(
        localName: 'd_r2_bucket_lifecycle',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2BucketLock(
        localName: 'd_r2_bucket_lock',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2BucketSippy(
        localName: 'd_r2_bucket_sippy',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2CustomDomain(
        localName: 'd_r2_custom_domain',
        accountId: TfArg.literal(accountId),
        bucketName: TfArg.literal(leftover),
        domain: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareR2DataCatalog(
        localName: 'd_r2_data_catalog',
        bucketName: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareRateLimit(
        localName: 'd_rate_limit',
        rateLimitId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRateLimits(
        localName: 'd_rate_limits',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRegionalHostname(
        localName: 'd_regional_hostname',
        hostname: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRegionalHostnames(
        localName: 'd_regional_hostnames',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRegionalTieredCache(
        localName: 'd_regional_tiered_cache',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareRegistrarDomain(
        localName: 'd_registrar_domain',
        accountId: TfArg.literal(accountId),
        domainName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareRegistrarDomains(
        localName: 'd_registrar_domains',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareResourceGroup(
        localName: 'd_resource_group',
        accountId: TfArg.literal(accountId),
        resourceGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareResourceGroups(
        localName: 'd_resource_groups',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareRuleset(
        localName: 'd_ruleset',
        zoneId: TfArg.literal(zoneId),
        rulesetId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareRulesets(
        localName: 'd_rulesets',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSchemaValidationOperationSettings(
        localName: 'd_schema_validation_operation_settings',
        operationId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSchemaValidationOperationSettingsList(
        localName: 'd_schema_validation_operation_settings_list',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSchemaValidationSchemas(
        localName: 'd_schema_validation_schemas',
        zoneId: TfArg.literal(zoneId),
        schemaId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSchemaValidationSchemasList(
        localName: 'd_schema_validation_schemas_list',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSchemaValidationSettings(
        localName: 'd_schema_validation_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSecretsStore(
        localName: 'd_secrets_store',
        accountId: TfArg.literal(accountId),
        storeId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSecretsStoreSecret(
        localName: 'd_secrets_store_secret',
        accountId: TfArg.literal(accountId),
        storeId: TfArg.literal('00000000000000000000000000000001'),
        secretId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSecretsStoreSecrets(
        localName: 'd_secrets_store_secrets',
        accountId: TfArg.literal(accountId),
        storeId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSecretsStores(
        localName: 'd_secrets_stores',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareShare(
        localName: 'd_share',
        accountId: TfArg.literal(accountId),
        shareId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShareRecipient(
        localName: 'd_share_recipient',
        accountId: TfArg.literal(accountId),
        recipientId: TfArg.literal('00000000000000000000000000000001'),
        shareId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShareRecipients(
        localName: 'd_share_recipients',
        accountId: TfArg.literal(accountId),
        shareId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShareResource(
        localName: 'd_share_resource',
        accountId: TfArg.literal(accountId),
        shareId: TfArg.literal('00000000000000000000000000000001'),
        shareResourceId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShareResources(
        localName: 'd_share_resources',
        accountId: TfArg.literal(accountId),
        shareId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareShares(
        localName: 'd_shares',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareSnippet(
        localName: 'd_snippet',
        snippetName: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippetList(
        localName: 'd_snippet_list',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippetRules(
        localName: 'd_snippet_rules',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippetRulesList(
        localName: 'd_snippet_rules_list',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippets(
        localName: 'd_snippets',
        snippetName: TfArg.literal(leftover),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSnippetsList(
        localName: 'd_snippets_list',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSpectrumApplication(
        localName: 'd_spectrum_application',
        zoneId: TfArg.literal(zoneId),
        appId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareSpectrumApplications(
        localName: 'd_spectrum_applications',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareSsoConnector(
        localName: 'd_sso_connector',
        ssoConnectorId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareSsoConnectors(
        localName: 'd_sso_connectors',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareStream(
        localName: 'd_stream',
        accountId: TfArg.literal(accountId),
        identifier: TfArg.literal('1000_errors'),
      ),
    );

    addData(
      DataCloudflareStreamAudioTrack(
        localName: 'd_stream_audio_track',
        accountId: TfArg.literal(accountId),
        identifier: TfArg.literal('1000_errors'),
      ),
    );

    addData(
      DataCloudflareStreamCaptionLanguage(
        localName: 'd_stream_caption_language',
        accountId: TfArg.literal(accountId),
        identifier: TfArg.literal('1000_errors'),
        language: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareStreamDownload(
        localName: 'd_stream_download',
        accountId: TfArg.literal(accountId),
        identifier: TfArg.literal('1000_errors'),
      ),
    );

    addData(
      DataCloudflareStreamKey(
        localName: 'd_stream_key',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareStreamLiveInput(
        localName: 'd_stream_live_input',
        accountId: TfArg.literal(accountId),
        liveInputIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareStreamWatermark(
        localName: 'd_stream_watermark',
        accountId: TfArg.literal(accountId),
        identifier: TfArg.literal('1000_errors'),
      ),
    );

    addData(
      DataCloudflareStreamWatermarks(
        localName: 'd_stream_watermarks',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareStreamWebhook(
        localName: 'd_stream_webhook',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareStreams(
        localName: 'd_streams',
        accountId: TfArg.literal(accountId),
        liveInputId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareTieredCache(
        localName: 'd_tiered_cache',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareTokenValidationConfig(
        localName: 'd_token_validation_config',
        configId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareTokenValidationConfigs(
        localName: 'd_token_validation_configs',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareTokenValidationRules(
        localName: 'd_token_validation_rules',
        zoneId: TfArg.literal(zoneId),
        ruleId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareTokenValidationRulesList(
        localName: 'd_token_validation_rules_list',
        zoneId: TfArg.literal(zoneId),
        ruleId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareTotalTls(
        localName: 'd_total_tls',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareTurnstileWidget(
        localName: 'd_turnstile_widget',
        accountId: TfArg.literal(accountId),
        sitekey: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareTurnstileWidgets(
        localName: 'd_turnstile_widgets',
        accountId: TfArg.literal(accountId),
        filter: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareUniversalSslSetting(
        localName: 'd_universal_ssl_setting',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareUrlNormalizationSettings(
        localName: 'd_url_normalization_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareUser(
        localName: 'd_user',
      ),
    );

    addData(
      DataCloudflareUserAgentBlockingRule(
        localName: 'd_user_agent_blocking_rule',
        zoneId: TfArg.literal(zoneId),
        uaRuleId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareUserAgentBlockingRules(
        localName: 'd_user_agent_blocking_rules',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareUserGroup(
        localName: 'd_user_group',
        accountId: TfArg.literal(accountId),
        userGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareUserGroupMembers(
        localName: 'd_user_group_members',
        accountId: TfArg.literal(accountId),
        userGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareUserGroups(
        localName: 'd_user_groups',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerCredential(
        localName: 'd_vulnerability_scanner_credential',
        credentialId: TfArg.literal('00000000000000000000000000000001'),
        credentialSetId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerCredentialSet(
        localName: 'd_vulnerability_scanner_credential_set',
        credentialSetId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerCredentialSets(
        localName: 'd_vulnerability_scanner_credential_sets',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerCredentials(
        localName: 'd_vulnerability_scanner_credentials',
        credentialSetId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerTargetEnvironment(
        localName: 'd_vulnerability_scanner_target_environment',
        targetEnvironmentId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareVulnerabilityScannerTargetEnvironments(
        localName: 'd_vulnerability_scanner_target_environments',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWaitingRoom(
        localName: 'd_waiting_room',
        waitingRoomId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRoomEvent(
        localName: 'd_waiting_room_event',
        eventId: TfArg.literal('00000000000000000000000000000001'),
        waitingRoomId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRoomEvents(
        localName: 'd_waiting_room_events',
        waitingRoomId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRoomRules(
        localName: 'd_waiting_room_rules',
        waitingRoomId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRoomSettings(
        localName: 'd_waiting_room_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWaitingRooms(
        localName: 'd_waiting_rooms',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWeb3Hostname(
        localName: 'd_web3_hostname',
        identifier: TfArg.literal('1000_errors'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWeb3Hostnames(
        localName: 'd_web3_hostnames',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWebAnalyticsSite(
        localName: 'd_web_analytics_site',
        accountId: TfArg.literal(accountId),
        siteId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWebAnalyticsSites(
        localName: 'd_web_analytics_sites',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorker(
        localName: 'd_worker',
        accountId: TfArg.literal(accountId),
        workerId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkerVersion(
        localName: 'd_worker_version',
        accountId: TfArg.literal(accountId),
        versionId: TfArg.literal('00000000000000000000000000000001'),
        workerId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkerVersions(
        localName: 'd_worker_versions',
        workerId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkers(
        localName: 'd_workers',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersCronTrigger(
        localName: 'd_workers_cron_trigger',
        scriptName: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersCustomDomain(
        localName: 'd_workers_custom_domain',
        accountId: TfArg.literal(accountId),
        domainId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkersCustomDomains(
        localName: 'd_workers_custom_domains',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersDeployment(
        localName: 'd_workers_deployment',
        accountId: TfArg.literal(accountId),
        deploymentId: TfArg.literal('00000000000000000000000000000001'),
        scriptName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkersForPlatformsDispatchNamespace(
        localName: 'd_workers_for_platforms_dispatch_namespace',
        dispatchNamespace: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersForPlatformsDispatchNamespaces(
        localName: 'd_workers_for_platforms_dispatch_namespaces',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersKv(
        localName: 'd_workers_kv',
        accountId: TfArg.literal(accountId),
        keyName: TfArg.literal(leftover),
        namespaceId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkersKvNamespace(
        localName: 'd_workers_kv_namespace',
        accountId: TfArg.literal(accountId),
        namespaceId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareWorkersKvNamespaces(
        localName: 'd_workers_kv_namespaces',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkersRoute(
        localName: 'd_workers_route',
        routeId: TfArg.literal('00000000000000000000000000000001'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWorkersRoutes(
        localName: 'd_workers_routes',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareWorkersScript(
        localName: 'd_workers_script',
        accountId: TfArg.literal(accountId),
        scriptName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkersScriptSubdomain(
        localName: 'd_workers_script_subdomain',
        accountId: TfArg.literal(accountId),
        scriptName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkersScripts(
        localName: 'd_workers_scripts',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareWorkflow(
        localName: 'd_workflow',
        accountId: TfArg.literal(accountId),
        workflowName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareWorkflows(
        localName: 'd_workflows',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessAiControlsMcpPortal(
        localName: 'd_zero_trust_access_ai_controls_mcp_portal',
        accountId: TfArg.literal(accountId),
        filter: DataZeroTrustAccessAiControlsMcpPortalFilter(search: TfArg.literal(leftover)),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessAiControlsMcpPortals(
        localName: 'd_zero_trust_access_ai_controls_mcp_portals',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessAiControlsMcpServer(
        localName: 'd_zero_trust_access_ai_controls_mcp_server',
        accountId: TfArg.literal(accountId),
        filter: DataZeroTrustAccessAiControlsMcpServerFilter(search: TfArg.literal(leftover)),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessAiControlsMcpServers(
        localName: 'd_zero_trust_access_ai_controls_mcp_servers',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessApplication(
        localName: 'd_zero_trust_access_application',
        accountId: TfArg.literal(accountId),
        appId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessApplications(
        localName: 'd_zero_trust_access_applications',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessCustomPage(
        localName: 'd_zero_trust_access_custom_page',
        customPageId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessCustomPages(
        localName: 'd_zero_trust_access_custom_pages',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessGroup(
        localName: 'd_zero_trust_access_group',
        accountId: TfArg.literal(accountId),
        groupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessGroups(
        localName: 'd_zero_trust_access_groups',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessIdentityProvider(
        localName: 'd_zero_trust_access_identity_provider',
        accountId: TfArg.literal(accountId),
        identityProviderId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessIdentityProviders(
        localName: 'd_zero_trust_access_identity_providers',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessInfrastructureTarget(
        localName: 'd_zero_trust_access_infrastructure_target',
        accountId: TfArg.literal(accountId),
        targetId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessInfrastructureTargets(
        localName: 'd_zero_trust_access_infrastructure_targets',
        accountId: TfArg.literal(accountId),
        virtualNetworkId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessKeyConfiguration(
        localName: 'd_zero_trust_access_key_configuration',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessMtlsCertificate(
        localName: 'd_zero_trust_access_mtls_certificate',
        certificateId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessMtlsCertificates(
        localName: 'd_zero_trust_access_mtls_certificates',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessMtlsHostnameSettings(
        localName: 'd_zero_trust_access_mtls_hostname_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessPolicies(
        localName: 'd_zero_trust_access_policies',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessPolicy(
        localName: 'd_zero_trust_access_policy',
        policyId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessServiceToken(
        localName: 'd_zero_trust_access_service_token',
        accountId: TfArg.literal(accountId),
        serviceTokenId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessServiceTokens(
        localName: 'd_zero_trust_access_service_tokens',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessShortLivedCertificate(
        localName: 'd_zero_trust_access_short_lived_certificate',
        appId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessShortLivedCertificates(
        localName: 'd_zero_trust_access_short_lived_certificates',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessTag(
        localName: 'd_zero_trust_access_tag',
        tagName: TfArg.literal(leftover),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustAccessTags(
        localName: 'd_zero_trust_access_tags',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceCustomProfile(
        localName: 'd_zero_trust_device_custom_profile',
        policyId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceCustomProfileLocalDomainFallback(
        localName: 'd_zero_trust_device_custom_profile_local_domain_',
        policyId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceCustomProfiles(
        localName: 'd_zero_trust_device_custom_profiles',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDefaultProfile(
        localName: 'd_zero_trust_device_default_profile',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDefaultProfileCertificates(
        localName: 'd_zero_trust_device_default_profile_certificates',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback(
        localName: 'd_zero_trust_device_default_profile_local_domain',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDeploymentGroups(
        localName: 'd_zero_trust_device_deployment_groups',
        accountId: TfArg.literal(accountId),
        groupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceDeploymentGroupsList(
        localName: 'd_zero_trust_device_deployment_groups_list',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceIpProfile(
        localName: 'd_zero_trust_device_ip_profile',
        accountId: TfArg.literal(accountId),
        profileId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceIpProfiles(
        localName: 'd_zero_trust_device_ip_profiles',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceManagedNetworks(
        localName: 'd_zero_trust_device_managed_networks',
        networkId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceManagedNetworksList(
        localName: 'd_zero_trust_device_managed_networks_list',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDevicePostureIntegration(
        localName: 'd_zero_trust_device_posture_integration',
        integrationId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDevicePostureIntegrations(
        localName: 'd_zero_trust_device_posture_integrations',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDevicePostureRule(
        localName: 'd_zero_trust_device_posture_rule',
        ruleId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDevicePostureRules(
        localName: 'd_zero_trust_device_posture_rules',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceSettings(
        localName: 'd_zero_trust_device_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDeviceSubnet(
        localName: 'd_zero_trust_device_subnet',
        subnetId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDexRule(
        localName: 'd_zero_trust_dex_rule',
        ruleId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDexRules(
        localName: 'd_zero_trust_dex_rules',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDexTest(
        localName: 'd_zero_trust_dex_test',
        accountId: TfArg.literal(accountId),
        dexTestId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDexTests(
        localName: 'd_zero_trust_dex_tests',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomEntries(
        localName: 'd_zero_trust_dlp_custom_entries',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomEntry(
        localName: 'd_zero_trust_dlp_custom_entry',
        entryId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomProfile(
        localName: 'd_zero_trust_dlp_custom_profile',
        profileId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomPromptTopic(
        localName: 'd_zero_trust_dlp_custom_prompt_topic',
        accountId: TfArg.literal(accountId),
        entryId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpCustomPromptTopics(
        localName: 'd_zero_trust_dlp_custom_prompt_topics',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataClass(
        localName: 'd_zero_trust_dlp_data_class',
        accountId: TfArg.literal(accountId),
        dataClassId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataClasses(
        localName: 'd_zero_trust_dlp_data_classes',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataTag(
        localName: 'd_zero_trust_dlp_data_tag',
        accountId: TfArg.literal(accountId),
        categoryId: TfArg.literal('00000000000000000000000000000001'),
        tagId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataTagCategories(
        localName: 'd_zero_trust_dlp_data_tag_categories',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataTagCategory(
        localName: 'd_zero_trust_dlp_data_tag_category',
        accountId: TfArg.literal(accountId),
        categoryId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataTags(
        localName: 'd_zero_trust_dlp_data_tags',
        accountId: TfArg.literal(accountId),
        categoryId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDataset(
        localName: 'd_zero_trust_dlp_dataset',
        datasetId: TfArg.literal('audit_logs'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpDatasets(
        localName: 'd_zero_trust_dlp_datasets',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpEntries(
        localName: 'd_zero_trust_dlp_entries',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpEntry(
        localName: 'd_zero_trust_dlp_entry',
        entryId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpIntegrationEntries(
        localName: 'd_zero_trust_dlp_integration_entries',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpIntegrationEntry(
        localName: 'd_zero_trust_dlp_integration_entry',
        entryId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpPredefinedEntries(
        localName: 'd_zero_trust_dlp_predefined_entries',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpPredefinedEntry(
        localName: 'd_zero_trust_dlp_predefined_entry',
        entryId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpPredefinedProfile(
        localName: 'd_zero_trust_dlp_predefined_profile',
        profileId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityGroup(
        localName: 'd_zero_trust_dlp_sensitivity_group',
        accountId: TfArg.literal(accountId),
        sensitivityGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityGroups(
        localName: 'd_zero_trust_dlp_sensitivity_groups',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityLevel(
        localName: 'd_zero_trust_dlp_sensitivity_level',
        accountId: TfArg.literal(accountId),
        sensitivityGroupId: TfArg.literal('00000000000000000000000000000001'),
        sensitivityLevelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityLevelOrder(
        localName: 'd_zero_trust_dlp_sensitivity_level_order',
        accountId: TfArg.literal(accountId),
        sensitivityGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSensitivityLevels(
        localName: 'd_zero_trust_dlp_sensitivity_levels',
        accountId: TfArg.literal(accountId),
        sensitivityGroupId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustDlpSettings(
        localName: 'd_zero_trust_dlp_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDnsLocation(
        localName: 'd_zero_trust_dns_location',
        locationId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustDnsLocations(
        localName: 'd_zero_trust_dns_locations',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayAppTypesList(
        localName: 'd_zero_trust_gateway_app_types_list',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayCategoriesList(
        localName: 'd_zero_trust_gateway_categories_list',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayCertificate(
        localName: 'd_zero_trust_gateway_certificate',
        certificateId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayCertificates(
        localName: 'd_zero_trust_gateway_certificates',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayLogging(
        localName: 'd_zero_trust_gateway_logging',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayPacfile(
        localName: 'd_zero_trust_gateway_pacfile',
        pacfileId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayPacfiles(
        localName: 'd_zero_trust_gateway_pacfiles',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayPolicies(
        localName: 'd_zero_trust_gateway_policies',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayPolicy(
        localName: 'd_zero_trust_gateway_policy',
        ruleId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayProxyEndpoint(
        localName: 'd_zero_trust_gateway_proxy_endpoint',
        proxyEndpointId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewayProxyEndpoints(
        localName: 'd_zero_trust_gateway_proxy_endpoints',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustGatewaySettings(
        localName: 'd_zero_trust_gateway_settings',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustList(
        localName: 'd_zero_trust_list',
        accountId: TfArg.literal(accountId),
        listId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustLists(
        localName: 'd_zero_trust_lists',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustNetworkHostnameRoute(
        localName: 'd_zero_trust_network_hostname_route',
        accountId: TfArg.literal(accountId),
        hostnameRouteId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustNetworkHostnameRoutes(
        localName: 'd_zero_trust_network_hostname_routes',
        accountId: TfArg.literal(accountId),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustOrganization(
        localName: 'd_zero_trust_organization',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustResourceLibraryApplication(
        localName: 'd_zero_trust_resource_library_application',
        accountId: TfArg.literal(accountId),
        id: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustResourceLibraryApplications(
        localName: 'd_zero_trust_resource_library_applications',
        accountId: TfArg.literal(accountId),
        filter: TfArg.literal(leftover),
      ),
    );

    addData(
      DataCloudflareZeroTrustResourceLibraryCategories(
        localName: 'd_zero_trust_resource_library_categories',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustResourceLibraryCategory(
        localName: 'd_zero_trust_resource_library_category',
        accountId: TfArg.literal(accountId),
        id: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustRiskBehavior(
        localName: 'd_zero_trust_risk_behavior',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustRiskScoringIntegration(
        localName: 'd_zero_trust_risk_scoring_integration',
        integrationId: TfArg.literal('00000000000000000000000000000001'),
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustRiskScoringIntegrations(
        localName: 'd_zero_trust_risk_scoring_integrations',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflared(
        localName: 'd_zero_trust_tunnel_cloudflared',
        accountId: TfArg.literal(accountId),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredConfig(
        localName: 'd_zero_trust_tunnel_cloudflared_config',
        accountId: TfArg.literal(accountId),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredRoute(
        localName: 'd_zero_trust_tunnel_cloudflared_route',
        accountId: TfArg.literal(accountId),
        routeId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredRoutes(
        localName: 'd_zero_trust_tunnel_cloudflared_routes',
        accountId: TfArg.literal(accountId),
        routeId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredToken(
        localName: 'd_zero_trust_tunnel_cloudflared_token',
        accountId: TfArg.literal(accountId),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredVirtualNetwork(
        localName: 'd_zero_trust_tunnel_cloudflared_virtual_network',
        accountId: TfArg.literal(accountId),
        virtualNetworkId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflaredVirtualNetworks(
        localName: 'd_zero_trust_tunnel_cloudflared_virtual_networks',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelCloudflareds(
        localName: 'd_zero_trust_tunnel_cloudflareds',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelWarpConnector(
        localName: 'd_zero_trust_tunnel_warp_connector',
        accountId: TfArg.literal(accountId),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelWarpConnectorConfig(
        localName: 'd_zero_trust_tunnel_warp_connector_config',
        accountId: TfArg.literal(accountId),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelWarpConnectorToken(
        localName: 'd_zero_trust_tunnel_warp_connector_token',
        accountId: TfArg.literal(accountId),
        tunnelId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZeroTrustTunnelWarpConnectors(
        localName: 'd_zero_trust_tunnel_warp_connectors',
        accountId: TfArg.literal(accountId),
      ),
    );

    addData(
      DataCloudflareZoneAutoOriginTlsKex(
        localName: 'd_zone_auto_origin_tls_kex',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneCacheReserve(
        localName: 'd_zone_cache_reserve',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneCacheVariants(
        localName: 'd_zone_cache_variants',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneDnsSettings(
        localName: 'd_zone_dns_settings',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneDnssec(
        localName: 'd_zone_dnssec',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneHold(
        localName: 'd_zone_hold',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneLockdown(
        localName: 'd_zone_lockdown',
        zoneId: TfArg.literal(zoneId),
        lockDownsId: TfArg.literal('00000000000000000000000000000001'),
      ),
    );

    addData(
      DataCloudflareZoneLockdowns(
        localName: 'd_zone_lockdowns',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneSetting(
        localName: 'd_zone_setting',
        settingId: TfArg.literal('ciphers'),
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZoneSubscription(
        localName: 'd_zone_subscription',
        zoneId: TfArg.literal(zoneId),
      ),
    );

    addData(
      DataCloudflareZones(
        localName: 'd_zones',
      ),
    );

  }
}
