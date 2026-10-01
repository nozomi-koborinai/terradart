// GENERATED — dart run tool/generate_cloudflare_leftover_example.dart
// ignore_for_file: unused_element

/// Coverage stack for leftover Cloudflare factories at the current pin.
/// Dummy constructor values; synth + terraform validate only.
/// Never apply.
library;

import 'package:terradart_cloudflare/terradart_cloudflare.dart';

final class CloudflareLeftoverStack extends Stack {
  CloudflareLeftoverStack() : super(providers: [const CloudflareProvider()]) {
    const leftover = 'leftover';
    const accountId = '00000000000000000000000000000001';
    const zoneId = '00000000000000000000000000000002';

    final leftoverSecret = variable<String>('leftover_secret', sensitive: true);

    add(
      CloudflareAccessRule(
        'access_rule',
        mode: .block,
        configuration: AccessRuleConfiguration(target: .ip),
        accountId: .literal(accountId),
      ),
    );

    add(CloudflareAccount('account', name: .literal(leftover)));

    add(
      CloudflareAccountDnsSettings(
        'account_dns_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareAccountDnsSettingsInternalView(
        'account_dns_settings_internal_view',
        accountId: .literal(accountId),
        name: .literal(leftover),
        zones: .literal([leftover]),
      ),
    );

    add(
      CloudflareAccountMember(
        'account_member',
        accountId: .literal(accountId),
        email: .literal('leftover@example.com'),
        access: .roles(.literal([leftover])),
      ),
    );

    add(
      CloudflareAccountSubscription(
        'account_subscription',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareAccountToken(
        'account_token',
        accountId: .literal(accountId),
        name: .literal(leftover),
        policies: [
          AccountTokenPolicies(
            effect: .allow,
            resources: .literal(leftover),
            permissionGroups: [
              .new(id: .literal('00000000000000000000000000000001')),
            ],
          ),
        ],
      ),
    );

    add(CloudflareAddressMap('address_map', accountId: .literal(accountId)));

    add(
      CloudflareAiGateway(
        'ai_gateway',
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
        'ai_gateway_dynamic_routing',
        accountId: .literal(accountId),
        gatewayId: .literal('00000000000000000000000000000001'),
        name: .literal(leftover),
        elements: [
          AiGatewayDynamicRoutingElements(
            id: .literal('00000000000000000000000000000001'),
            type: .start,
            outputs: .new(
              elementId: .literal('00000000000000000000000000000001'),
            ),
          ),
        ],
      ),
    );

    add(
      CloudflareAiSearchInstance(
        'ai_search_instance',
        accountId: .literal(accountId),
        id: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareAiSearchNamespace(
        'ai_search_namespace',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareAiSearchToken(
        'ai_search_token',
        accountId: .literal(accountId),
        cfApiId: .literal('00000000000000000000000000000001'),
        cfApiKey: leftoverSecret,
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareApiShield(
        'api_shield',
        zoneId: .literal(zoneId),
        authIdCharacteristics: [
          ApiShieldAuthIdCharacteristics(
            name: .literal(leftover),
            type: .header,
          ),
        ],
      ),
    );

    add(
      CloudflareApiShieldDiscoveryOperation(
        'api_shield_discovery_operation',
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldOperation(
        'api_shield_operation',
        endpoint: .literal(leftover),
        host: .literal(leftover),
        method: .get,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldOperationSchemaValidationSettings(
        'api_shield_operation_schema_validation_settings',
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldSchema(
        'api_shield_schema',
        file: .literal(leftover),
        kind: .openapiV3,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiShieldSchemaValidationSettings(
        'api_shield_schema_validation_settings',
        validationDefaultMitigationAction: .none,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareApiToken(
        'api_token',
        name: .literal(leftover),
        policies: [
          ApiTokenPolicies(
            effect: .allow,
            resources: .literal(leftover),
            permissionGroups: [
              .new(id: .literal('00000000000000000000000000000001')),
            ],
          ),
        ],
      ),
    );

    add(
      CloudflareArgoSmartRouting(
        'argo_smart_routing',
        value: .on,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareArgoTieredCaching(
        'argo_tiered_caching',
        value: .on,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPulls(
        'authenticated_origin_pulls',
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
        'authenticated_origin_pulls_certificate',
        certificate: .literal(leftover),
        privateKey: leftoverSecret,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPullsHostnameCertificate(
        'authenticated_origin_pulls_hostname_certificate',
        certificate: .literal(leftover),
        privateKey: leftoverSecret,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareAuthenticatedOriginPullsSettings(
        'authenticated_origin_pulls_settings',
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(CloudflareBotManagement('bot_management', zoneId: .literal(zoneId)));

    add(
      CloudflareByoIpPrefix(
        'byo_ip_prefix',
        accountId: .literal(accountId),
        asn: .literal(200),
        cidr: .literal('192.0.2.0/24'),
      ),
    );

    add(CloudflareCallsSfuApp('calls_sfu_app', accountId: .literal(accountId)));

    add(
      CloudflareCallsTurnApp('calls_turn_app', accountId: .literal(accountId)),
    );

    add(
      CloudflareCertificateAuthoritiesHostnameAssociations(
        'certificate_authorities_hostname_associations',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCertificatePack(
        'certificate_pack',
        certificateAuthority: .google,
        type: .advanced,
        validationMethod: .txt,
        validityDays: .literal(90),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareClientCertificate(
        'client_certificate',
        csr: .literal(leftover),
        validityDays: .literal(200),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCloudConnectorRules(
        'cloud_connector_rules',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCloudforceOneRequest(
        'cloudforce_one_request',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCloudforceOneRequestAsset(
        'cloudforce_one_request_asset',
        accountId: .literal(accountId),
        page: .literal(200),
        perPage: .literal(200),
        requestId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareCloudforceOneRequestMessage(
        'cloudforce_one_request_message',
        accountId: .literal(accountId),
        requestId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareCloudforceOneRequestPriority(
        'cloudforce_one_request_priority',
        accountId: .literal(accountId),
        labels: .literal([leftover]),
        priority: .literal(200),
        requirement: .literal(leftover),
        tlp: .clear,
      ),
    );

    add(
      CloudflareConnectivityDirectoryService(
        'connectivity_directory_service',
        accountId: .literal(accountId),
        name: .literal(leftover),
        type: .tcp,
        host: ConnectivityDirectoryServiceHost(hostname: .literal(leftover)),
      ),
    );

    add(
      CloudflareContentScanning(
        'content_scanning',
        value: .enabled,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareContentScanningExpression(
        'content_scanning_expression',
        zoneId: .literal(zoneId),
        body: [ContentScanningExpressionBody(payload: .literal(leftover))],
      ),
    );

    add(
      CloudflareCtAlerting(
        'ct_alerting',
        zoneId: .literal(zoneId),
        enabled: .literal(true),
      ),
    );

    add(
      CloudflareCustomCsr(
        'custom_csr',
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
        'custom_hostname',
        hostname: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCustomHostnameFallbackOrigin(
        'custom_hostname_fallback_origin',
        origin: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCustomOriginTrustStore(
        'custom_origin_trust_store',
        certificate: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareCustomPageAsset(
        'custom_page_asset',
        description: .literal(leftover),
        name: .literal(leftover),
        url: .literal('https://example.com'),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCustomPages(
        'custom_pages',
        identifier: .v1000Errors,
        state: .defaultCase,
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareCustomSsl(
        'custom_ssl',
        certificate: .literal(leftover),
        zoneId: .literal(zoneId),
        customCsrId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareD1Database(
        'd1_database',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareDlsPrefixBinding(
        'dls_prefix_binding',
        accountId: .literal(accountId),
        cidr: .literal('192.0.2.0/24'),
        prefixId: .literal('192.0.2.0/24'),
        regionKey: .literal(leftover),
      ),
    );

    add(
      CloudflareDnsFirewall(
        'dns_firewall',
        accountId: .literal(accountId),
        name: .literal(leftover),
        upstreamIps: .literal([leftover]),
      ),
    );

    add(
      CloudflareDnsZoneTransfersAcl(
        'dns_zone_transfers_acl',
        accountId: .literal(accountId),
        ipRange: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareDnsZoneTransfersIncoming(
        'dns_zone_transfers_incoming',
        name: .literal(leftover),
        peers: .literal([leftover]),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareDnsZoneTransfersOutgoing(
        'dns_zone_transfers_outgoing',
        name: .literal(leftover),
        peers: .literal([leftover]),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareDnsZoneTransfersPeer(
        'dns_zone_transfers_peer',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareDnsZoneTransfersTsig(
        'dns_zone_transfers_tsig',
        accountId: .literal(accountId),
        algo: .literal(leftover),
        name: .literal(leftover),
        secret: leftoverSecret,
      ),
    );

    add(
      CloudflareEmailRoutingAddress(
        'email_routing_address',
        accountId: .literal(accountId),
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      CloudflareEmailRoutingCatchAll(
        'email_routing_catch_all',
        zoneId: .literal(zoneId),
        actions: [EmailRoutingCatchAllActions(type: .drop)],
        matchers: [EmailRoutingCatchAllMatchers(type: .all)],
      ),
    );

    add(
      CloudflareEmailRoutingDns('email_routing_dns', zoneId: .literal(zoneId)),
    );

    add(
      CloudflareEmailRoutingRule(
        'email_routing_rule',
        zoneId: .literal(zoneId),
        actions: [EmailRoutingRuleActions(type: .drop)],
        matchers: [EmailRoutingRuleMatchers(type: .all)],
      ),
    );

    add(
      CloudflareEmailRoutingSettings(
        'email_routing_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareEmailSecurityAllowPolicy(
        'email_security_allow_policy',
        accountId: .literal(accountId),
        pattern: .literal(leftover),
        patternType: .email,
        isRegex: .literal(true),
        isTrustedSender: .literal(true),
        isAcceptableSender: .literal(true),
        isExemptRecipient: .literal(true),
        verifySender: .literal(true),
      ),
    );

    add(
      CloudflareEmailSecurityBlockSender(
        'email_security_block_sender',
        accountId: .literal(accountId),
        isRegex: .literal(true),
        pattern: .literal(leftover),
        patternType: .email,
      ),
    );

    add(
      CloudflareEmailSecurityDomain(
        'email_security_domain',
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
        'email_security_impersonation_registry',
        accountId: .literal(accountId),
        email: .literal('leftover@example.com'),
        isEmailRegex: .literal(true),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareEmailSecurityTrustedDomains(
        'email_security_trusted_domains',
        accountId: .literal(accountId),
        pattern: .literal(leftover),
      ),
    );

    add(
      CloudflareEmailSendingSubdomain(
        'email_sending_subdomain',
        zoneId: .literal(zoneId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareFieldExtractor(
        'field_extractor',
        accountId: .literal(accountId),
        extractor: .literal(leftover),
        rules: [
          FieldExtractorRules(
            ref: .literal(leftover),
            fields: [
              .new(expression: .literal(leftover), name: .literal(leftover)),
            ],
          ),
        ],
      ),
    );

    add(
      CloudflareFilter(
        'filter',
        zoneId: .literal(zoneId),
        body: [FilterBody(description: .literal(leftover))],
      ),
    );

    add(
      CloudflareFirewallRule(
        'firewall_rule',
        zoneId: .literal(zoneId),
        action: FirewallRuleAction(mode: .simulate),
        filter: FirewallRuleFilter(description: .literal(leftover)),
      ),
    );

    add(
      CloudflareFlagshipApp(
        'flagship_app',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareFlagshipFlag(
        'flagship_flag',
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
            conditions: [.new(attribute: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      CloudflareGoogleTagGateway(
        'google_tag_gateway',
        enabled: .literal(true),
        endpoint: .literal(leftover),
        hideOriginalIp: .literal(true),
        measurementId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareHealthcheck(
        'healthcheck',
        address: .literal('192.0.2.1'),
        name: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareHostnameTlsSetting(
        'hostname_tls_setting',
        hostname: .literal(leftover),
        settingId: .ciphers,
        value: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareHyperdriveConfig(
        'hyperdrive_config',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareImage(
        'image',
        accountId: .literal(accountId),
        id: .literal('00000000000000000000000000000001'),
        url: .literal('https://example.com'),
      ),
    );

    add(
      CloudflareImageVariant(
        'image_variant',
        accountId: .literal(accountId),
        id: .literal('00000000000000000000000000000001'),
        options: ImageVariantOptions(
          fit: .scaleDown,
          height: .literal(200),
          metadata: .none,
          width: .literal(200),
        ),
      ),
    );

    add(
      CloudflareKeylessCertificate(
        'keyless_certificate',
        certificate: .literal(leftover),
        host: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareLeakedCredentialCheck(
        'leaked_credential_check',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareLeakedCredentialCheckRule(
        'leaked_credential_check_rule',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareList(
        'list',
        accountId: .literal(accountId),
        kind: .ip,
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareListItem(
        'list_item',
        accountId: .literal(accountId),
        listId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareLoadBalancer(
        'load_balancer',
        defaultPools: .literal([leftover]),
        fallbackPool: .literal(leftover),
        name: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareLoadBalancerMonitor(
        'load_balancer_monitor',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareLoadBalancerMonitorGroup(
        'load_balancer_monitor_group',
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
        'load_balancer_pool',
        accountId: .literal(accountId),
        name: .literal(leftover),
        origins: [LoadBalancerPoolOrigins(address: .literal('192.0.2.1'))],
      ),
    );

    add(
      CloudflareLogpullRetention('logpull_retention', zoneId: .literal(zoneId)),
    );

    add(
      CloudflareLogpushJob(
        'logpush_job',
        destinationConf: leftoverSecret,
        accountId: .literal(accountId),
        filter: .literal(leftover),
      ),
    );

    add(
      CloudflareLogpushOwnershipChallenge(
        'logpush_ownership_challenge',
        destinationConf: leftoverSecret,
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareMagicNetworkMonitoringConfiguration(
        'magic_network_monitoring_configuration',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMagicNetworkMonitoringRule(
        'magic_network_monitoring_rule',
        accountId: .literal(accountId),
        automaticAdvertisement: .literal(true),
        name: .literal(leftover),
        prefixes: .literal([leftover]),
        type: .threshold,
      ),
    );

    add(
      CloudflareMagicTransitCf1Site(
        'magic_transit_cf1_site',
        accountId: .literal(accountId),
        body: [MagicTransitCf1SiteBody(name: .literal(leftover))],
      ),
    );

    add(
      CloudflareMagicTransitConnector(
        'magic_transit_connector',
        accountId: .literal(accountId),
        device: MagicTransitConnectorDevice(
          id: .literal('00000000000000000000000000000001'),
        ),
      ),
    );

    add(
      CloudflareMagicTransitSite(
        'magic_transit_site',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMagicTransitSiteAcl(
        'magic_transit_site_acl',
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
        'magic_transit_site_lan',
        accountId: .literal(accountId),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareMagicTransitSiteWan(
        'magic_transit_site_wan',
        accountId: .literal(accountId),
        physport: .literal(200),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareMagicWanBgpFilterProfile(
        'magic_wan_bgp_filter_profile',
        accountId: .literal(accountId),
        name: .literal(leftover),
        matchAction: .allow,
        targets: .literal([leftover]),
      ),
    );

    add(
      CloudflareMagicWanGreTunnel(
        'magic_wan_gre_tunnel',
        accountId: .literal(accountId),
        cloudflareGreEndpoint: .literal(leftover),
        customerGreEndpoint: .literal(leftover),
        interfaceAddress: .literal('192.0.2.1'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMagicWanIpsecTunnel(
        'magic_wan_ipsec_tunnel',
        accountId: .literal(accountId),
        cloudflareEndpoint: .literal(leftover),
        interfaceAddress: .literal('192.0.2.1'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMagicWanStaticRoute(
        'magic_wan_static_route',
        accountId: .literal(accountId),
        nexthop: .literal(leftover),
        prefix: .literal('192.0.2.0/24'),
        priority: .literal(200),
      ),
    );

    add(
      CloudflareManagedTransforms(
        'managed_transforms',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareMoqRelay(
        'moq_relay',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareMtlsCertificate(
        'mtls_certificate',
        accountId: .literal(accountId),
        ca: .literal(true),
        certificates: .literal(leftover),
      ),
    );

    add(
      CloudflareNelSetting(
        'nel_setting',
        zoneId: .literal(zoneId),
        value: NelSettingValue(enabled: .literal(true)),
      ),
    );

    add(
      CloudflareNotificationPolicy(
        'notification_policy',
        accountId: .literal(accountId),
        alertType: .abuseReportAlert,
        name: .literal(leftover),
        mechanisms: NotificationPolicyMechanisms(
          email: [.new(id: .literal('00000000000000000000000000000001'))],
        ),
      ),
    );

    add(
      CloudflareNotificationPolicyWebhooks(
        'notification_policy_webhooks',
        accountId: .literal(accountId),
        name: .literal(leftover),
        url: .literal('https://example.com'),
      ),
    );

    add(
      CloudflareOauthClient(
        'oauth_client',
        accountId: .literal(accountId),
        clientName: .literal(leftover),
        grantTypes: [.authorizationCode],
        redirectUris: .literal([leftover]),
        responseTypes: [.token],
        scopes: .literal([leftover]),
        tokenEndpointAuthMethod: .none,
      ),
    );

    add(
      CloudflareObservatoryScheduledTest(
        'observatory_scheduled_test',
        url: .literal('https://example.com'),
        zoneId: .literal(zoneId),
      ),
    );

    add(CloudflareOrganization('organization', name: .literal(leftover)));

    add(
      CloudflareOrganizationProfile(
        'organization_profile',
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
        'origin_ca_certificate',
        csr: .literal(leftover),
        hostnames: .literal([leftover]),
        requestType: .originRsa,
      ),
    );

    add(
      CloudflareOriginCloudRegion(
        'origin_cloud_region',
        originIp: .literal('192.0.2.1'),
        region: .literal(leftover),
        vendor: .aws,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareOriginTlsComplianceModes(
        'origin_tls_compliance_modes',
        value: .literal([leftover]),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflarePageRule(
        'page_rule',
        target: .literal('ethereum'),
        zoneId: .literal(zoneId),
        actions: PageRuleActions(alwaysUseHttps: .literal(true)),
      ),
    );

    add(
      CloudflarePageShieldPolicy(
        'page_shield_policy',
        action: .allow,
        description: .literal(leftover),
        enabled: .literal(true),
        expression: .literal(leftover),
        value: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflarePagesDomain(
        'pages_domain',
        accountId: .literal(accountId),
        name: .literal(leftover),
        projectName: .literal(leftover),
      ),
    );

    add(
      CloudflarePagesProject(
        'pages_project',
        accountId: .literal(accountId),
        name: .literal(leftover),
        productionBranch: .literal(leftover),
      ),
    );

    add(
      CloudflarePipeline(
        'pipeline',
        accountId: .literal(accountId),
        name: .literal(leftover),
        sql: .literal(leftover),
      ),
    );

    add(
      CloudflarePipelineSink(
        'pipeline_sink',
        accountId: .literal(accountId),
        name: .literal(leftover),
        type: .r2,
      ),
    );

    add(
      CloudflarePipelineStream(
        'pipeline_stream',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(CloudflarePrecursor('precursor', zoneId: .literal(zoneId)));

    add(
      CloudflareQueue(
        'queue',
        accountId: .literal(accountId),
        queueName: .literal(leftover),
      ),
    );

    add(
      CloudflareQueueConsumer(
        'queue_consumer',
        accountId: .literal(accountId),
        queueId: .literal('00000000000000000000000000000001'),
        type: .worker,
      ),
    );

    add(
      CloudflareR2Bucket(
        'r2_bucket',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketCors(
        'r2_bucket_cors',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketEventNotification(
        'r2_bucket_event_notification',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        queueId: .literal('00000000000000000000000000000001'),
        rules: [
          R2BucketEventNotificationRules(actions: [.putobject]),
        ],
      ),
    );

    add(
      CloudflareR2BucketLifecycle(
        'r2_bucket_lifecycle',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketLock(
        'r2_bucket_lock',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2BucketSippy(
        'r2_bucket_sippy',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2CustomDomain(
        'r2_custom_domain',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        domain: .literal(leftover),
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareR2DataCatalog(
        'r2_data_catalog',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      CloudflareR2ManagedDomain(
        'r2_managed_domain',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        enabled: .literal(true),
      ),
    );

    add(
      CloudflareRateLimit(
        'rate_limit',
        period: .literal(200),
        threshold: .literal(200),
        zoneId: .literal(zoneId),
        action: RateLimitAction(mode: .simulate),
        match: RateLimitMatch(headers: [.new(name: .literal(leftover))]),
      ),
    );

    add(
      CloudflareRegionalHostname(
        'regional_hostname',
        hostname: .literal(leftover),
        regionKey: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareRegionalTieredCache(
        'regional_tiered_cache',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareRegistrarDomain(
        'registrar_domain',
        accountId: .literal(accountId),
        domainName: .literal(leftover),
      ),
    );

    add(
      CloudflareRuleset(
        'ruleset',
        scope: .zoneId(.literal(zoneId)),
        kind: .zone,
        name: .literal(leftover),
        phase: .httpRequestFirewallCustom,
      ),
    );

    add(
      CloudflareSchemaValidationOperationSettings(
        'schema_validation_operation_settings',
        mitigationAction: .none,
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareSchemaValidationSchemas(
        'schema_validation_schemas',
        kind: .openapiV3,
        name: .literal(leftover),
        source: .literal(leftover),
        validationEnabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareSchemaValidationSettings(
        'schema_validation_settings',
        validationDefaultMitigationAction: .none,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareSecretsStore(
        'secrets_store',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareSecretsStoreSecret(
        'secrets_store_secret',
        accountId: .literal(accountId),
        name: .literal(leftover),
        scopes: .literal([leftover]),
        storeId: .literal('00000000000000000000000000000001'),
        value: leftoverSecret,
      ),
    );

    add(
      CloudflareShare(
        'share',
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
            resourceType: .customRuleset,
          ),
        ],
      ),
    );

    add(
      CloudflareShareRecipient(
        'share_recipient',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareShareResource(
        'share_resource',
        accountId: .literal(accountId),
        meta: .literal('{}'),
        resourceAccountId: .literal('00000000000000000000000000000001'),
        resourceId: .literal('00000000000000000000000000000001'),
        resourceType: .customRuleset,
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareSnippet(
        'snippet',
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
        'snippet_rules',
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
        'snippets',
        files: .literal([leftover]),
        snippetName: .literal(leftover),
        zoneId: .literal(zoneId),
        metadata: SnippetsMetadata(mainModule: .literal(leftover)),
      ),
    );

    add(
      CloudflareSpectrumApplication(
        'spectrum_application',
        protocol: .literal(leftover),
        zoneId: .literal(zoneId),
        dns: SpectrumApplicationDns(name: .literal(leftover)),
      ),
    );

    add(
      CloudflareSsoConnector(
        'sso_connector',
        accountId: .literal(accountId),
        emailDomain: .literal('leftover@example.com'),
      ),
    );

    add(CloudflareStream('stream', accountId: .literal(accountId)));

    add(
      CloudflareStreamAudioTrack(
        'stream_audio_track',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    add(
      CloudflareStreamCaptionLanguage(
        'stream_caption_language',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
        language: .literal(leftover),
      ),
    );

    add(
      CloudflareStreamDownload(
        'stream_download',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    add(CloudflareStreamKey('stream_key', accountId: .literal(accountId)));

    add(
      CloudflareStreamLiveInput(
        'stream_live_input',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareStreamWatermark(
        'stream_watermark',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareStreamWebhook('stream_webhook', accountId: .literal(accountId)),
    );

    add(
      CloudflareTieredCache(
        'tiered_cache',
        value: .on,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareTokenValidationConfig(
        'token_validation_config',
        description: .literal(leftover),
        title: .literal(leftover),
        tokenSources: .literal([leftover]),
        tokenType: .jwt,
        zoneId: .literal(zoneId),
        credentials: TokenValidationConfigCredentials(
          keys: [.new(alg: .rs256, kid: .literal(leftover), kty: .rsa)],
        ),
      ),
    );

    add(
      CloudflareTokenValidationRules(
        'token_validation_rules',
        action: .log,
        description: .literal(leftover),
        enabled: .literal(true),
        expression: .literal(leftover),
        title: .literal(leftover),
        zoneId: .literal(zoneId),
        selector: TokenValidationRulesSelector(
          exclude: [
            .new(operationIds: .literal([leftover])),
          ],
        ),
      ),
    );

    add(
      CloudflareTotalTls(
        'total_tls',
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareTurnstileWidget(
        'turnstile_widget',
        accountId: .literal(accountId),
        domains: .literal([leftover]),
        mode: .nonInteractive,
        name: .literal(leftover),
        filter: .literal(leftover),
      ),
    );

    add(
      CloudflareUniversalSslSetting(
        'universal_ssl_setting',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareUrlNormalizationSettings(
        'url_normalization_settings',
        scope: .incoming,
        type: .cloudflare,
        zoneId: .literal(zoneId),
      ),
    );

    add(CloudflareUser('user'));

    add(
      CloudflareUserAgentBlockingRule(
        'user_agent_blocking_rule',
        mode: .block,
        zoneId: .literal(zoneId),
        configuration: UserAgentBlockingRuleConfiguration(target: .ua),
      ),
    );

    add(
      CloudflareUserGroup(
        'user_group',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareUserGroupMembers(
        'user_group_members',
        accountId: .literal(accountId),
        userGroupId: .literal('00000000000000000000000000000001'),
        members: [
          UserGroupMembers(id: .literal('00000000000000000000000000000001')),
        ],
      ),
    );

    add(
      CloudflareVulnerabilityScannerCredential(
        'vulnerability_scanner_credential',
        accountId: .literal(accountId),
        credentialSetId: .literal('00000000000000000000000000000001'),
        location: .header,
        locationName: .literal(leftover),
        name: .literal(leftover),
        value: leftoverSecret,
      ),
    );

    add(
      CloudflareVulnerabilityScannerCredentialSet(
        'vulnerability_scanner_credential_set',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareVulnerabilityScannerTargetEnvironment(
        'vulnerability_scanner_target_environment',
        accountId: .literal(accountId),
        name: .literal(leftover),
        target: VulnerabilityScannerTargetEnvironmentTarget(
          type: .zone,
          zoneTag: .literal(leftover),
        ),
      ),
    );

    add(
      CloudflareWaitingRoom(
        'waiting_room',
        host: .literal(leftover),
        name: .literal(leftover),
        newUsersPerMinute: .literal(200),
        totalActiveUsers: .literal(200),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWaitingRoomEvent(
        'waiting_room_event',
        eventEndTime: .literal(leftover),
        eventStartTime: .literal(leftover),
        name: .literal(leftover),
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWaitingRoomRules(
        'waiting_room_rules',
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
        rules: [
          WaitingRoomRules(
            action: .bypassWaitingRoom,
            expression: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      CloudflareWaitingRoomSettings(
        'waiting_room_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWeb3Hostname(
        'web3_hostname',
        name: .literal(leftover),
        target: .ethereum,
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWebAnalyticsRule(
        'web_analytics_rule',
        accountId: .literal(accountId),
        rulesetId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareWebAnalyticsSite(
        'web_analytics_site',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareWorker(
        'worker',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareWorkerVersion(
        'worker_version',
        accountId: .literal(accountId),
        workerId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareWorkersCronTrigger(
        'workers_cron_trigger',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
        schedules: [WorkersCronTriggerSchedules(cron: .literal('* * * * *'))],
      ),
    );

    add(
      CloudflareWorkersCustomDomain(
        'workers_custom_domain',
        accountId: .literal(accountId),
        hostname: .literal(leftover),
        service: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWorkersDeployment(
        'workers_deployment',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
        strategy: .percentage,
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
        'workers_for_platforms_dispatch_namespace',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareWorkersKv(
        'workers_kv',
        accountId: .literal(accountId),
        keyName: .literal(leftover),
        namespaceId: .literal('00000000000000000000000000000001'),
        value: .literal(leftover),
      ),
    );

    add(
      CloudflareWorkersKvNamespace(
        'workers_kv_namespace',
        accountId: .literal(accountId),
        title: .literal(leftover),
      ),
    );

    add(
      CloudflareWorkersRoute(
        'workers_route',
        pattern: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareWorkersScript(
        'workers_script',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
        content: .content(.literal(leftover)),
      ),
    );

    add(
      CloudflareWorkersScriptSubdomain(
        'workers_script_subdomain',
        accountId: .literal(accountId),
        enabled: .literal(true),
        scriptName: .literal(leftover),
      ),
    );

    add(
      CloudflareWorkflow(
        'workflow',
        accountId: .literal(accountId),
        className: .literal(leftover),
        scriptName: .literal(leftover),
        workflowName: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessAiControlsMcpPortal(
        'zero_trust_access_ai_controls_mcp_portal',
        accountId: .literal(accountId),
        hostname: .literal(leftover),
        id: .literal('00000000000000000000000000000001'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessAiControlsMcpServer(
        'zero_trust_access_ai_controls_mcp_server',
        accountId: .literal(accountId),
        authType: .unauthenticated,
        hostname: .literal(leftover),
        id: .literal('00000000000000000000000000000001'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessApplication(
        'zero_trust_access_application',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessCustomPage(
        'zero_trust_access_custom_page',
        accountId: .literal(accountId),
        customHtml: .literal(leftover),
        name: .literal(leftover),
        type: .forbidden,
      ),
    );

    add(
      CloudflareZeroTrustAccessGroup(
        'zero_trust_access_group',
        name: .literal(leftover),
        include: [ZeroTrustAccessGroupInclude(anyValidServiceToken: .new())],
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessIdentityProvider(
        'zero_trust_access_identity_provider',
        name: .literal(leftover),
        type: .googleApps,
        config: ZeroTrustAccessIdentityProviderConfig(
          appsDomain: .literal(leftover),
        ),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessInfrastructureTarget(
        'zero_trust_access_infrastructure_target',
        accountId: .literal(accountId),
        hostname: .literal(leftover),
        ip: ZeroTrustAccessInfrastructureTargetIp(
          ipv4: .new(ipAddr: .literal(leftover)),
        ),
      ),
    );

    add(
      CloudflareZeroTrustAccessKeyConfiguration(
        'zero_trust_access_key_configuration',
        accountId: .literal(accountId),
        keyRotationIntervalDays: .literal(200),
      ),
    );

    add(
      CloudflareZeroTrustAccessMtlsCertificate(
        'zero_trust_access_mtls_certificate',
        certificate: .literal(leftover),
        name: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessMtlsHostnameSettings(
        'zero_trust_access_mtls_hostname_settings',
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
        'zero_trust_access_policy',
        accountId: .literal(accountId),
        decision: .allow,
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustAccessServiceToken(
        'zero_trust_access_service_token',
        name: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessShortLivedCertificate(
        'zero_trust_access_short_lived_certificate',
        appId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustAccessTag(
        'zero_trust_access_tag',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustCasbPolicy(
        'zero_trust_casb_policy',
        accountId: .literal(accountId),
        displayName: .literal(leftover),
        findingTypeId: .literal('00000000000000000000000000000001'),
        enabled: .literal(true),
        appliesToAllIntegrations: .literal(true),
        actions: ZeroTrustCasbPolicyActions(
          remediationTypes: [
            .new(
              remediationTypeId: .literal('00000000000000000000000000000001'),
            ),
          ],
        ),
      ),
    );

    add(
      CloudflareZeroTrustCasbWebhook(
        'zero_trust_casb_webhook',
        accountId: .literal(accountId),
        label: .literal(leftover),
        destinationUrl: .literal('https://example.com'),
        authenticationType: .none,
      ),
    );

    add(
      CloudflareZeroTrustConnectivitySettings(
        'zero_trust_connectivity_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceCustomProfile(
        'zero_trust_device_custom_profile',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDeviceCustomProfileLocalDomainFallback(
        'zero_trust_device_custom_profile_local_domain_fa',
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
        'zero_trust_device_default_profile',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceDefaultProfileCertificates(
        'zero_trust_device_default_profile_certificates',
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback(
        'zero_trust_device_default_profile_local_domain_f',
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
        'zero_trust_device_deployment_groups',
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
        'zero_trust_device_ip_profile',
        accountId: .literal(accountId),
        match: .literal(leftover),
        name: .literal(leftover),
        precedence: .literal(200),
        subnetId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDeviceManagedNetworks(
        'zero_trust_device_managed_networks',
        accountId: .literal(accountId),
        name: .literal(leftover),
        type: .tls,
        config: ZeroTrustDeviceManagedNetworksConfig(
          tlsSockaddr: .literal(leftover),
        ),
      ),
    );

    add(
      CloudflareZeroTrustDevicePostureIntegration(
        'zero_trust_device_posture_integration',
        accountId: .literal(accountId),
        interval: .literal(leftover),
        name: .literal(leftover),
        type: .workspaceOne,
        config: ZeroTrustDevicePostureIntegrationConfig(
          accessClientId: .literal('00000000000000000000000000000001'),
        ),
      ),
    );

    add(
      CloudflareZeroTrustDevicePostureRule(
        'zero_trust_device_posture_rule',
        accountId: .literal(accountId),
        type: .file,
      ),
    );

    add(
      CloudflareZeroTrustDeviceSettings(
        'zero_trust_device_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDeviceSubnet(
        'zero_trust_device_subnet',
        accountId: .literal(accountId),
        name: .literal(leftover),
        network: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDexRule(
        'zero_trust_dex_rule',
        accountId: .literal(accountId),
        match: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDexTest(
        'zero_trust_dex_test',
        accountId: .literal(accountId),
        enabled: .literal(true),
        interval: .literal(leftover),
        name: .literal(leftover),
        data: ZeroTrustDexTestData(host: .literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpCustomEntry(
        'zero_trust_dlp_custom_entry',
        accountId: .literal(accountId),
        enabled: .literal(true),
        name: .literal(leftover),
        pattern: ZeroTrustDlpCustomEntryPattern(regex: .literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpCustomProfile(
        'zero_trust_dlp_custom_profile',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataClass(
        'zero_trust_dlp_data_class',
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
        'zero_trust_dlp_data_tag',
        accountId: .literal(accountId),
        categoryId: .literal('00000000000000000000000000000001'),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataTagCategory(
        'zero_trust_dlp_data_tag_category',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpDataset(
        'zero_trust_dlp_dataset',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpEntry(
        'zero_trust_dlp_entry',
        accountId: .literal(accountId),
        enabled: .literal(true),
        name: .literal(leftover),
        pattern: ZeroTrustDlpEntryPattern(regex: .literal(leftover)),
      ),
    );

    add(
      CloudflareZeroTrustDlpIntegrationEntry(
        'zero_trust_dlp_integration_entry',
        accountId: .literal(accountId),
        enabled: .literal(true),
        entryId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpPredefinedEntry(
        'zero_trust_dlp_predefined_entry',
        accountId: .literal(accountId),
        enabled: .literal(true),
        entryId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpPredefinedProfile(
        'zero_trust_dlp_predefined_profile',
        accountId: .literal(accountId),
        profileId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityGroup(
        'zero_trust_dlp_sensitivity_group',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityLevel(
        'zero_trust_dlp_sensitivity_level',
        accountId: .literal(accountId),
        name: .literal(leftover),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSensitivityLevelOrder(
        'zero_trust_dlp_sensitivity_level_order',
        accountId: .literal(accountId),
        levelIds: .literal([leftover]),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustDlpSettings(
        'zero_trust_dlp_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustDnsLocation(
        'zero_trust_dns_location',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayCertificate(
        'zero_trust_gateway_certificate',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustGatewayLogging(
        'zero_trust_gateway_logging',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustGatewayPacfile(
        'zero_trust_gateway_pacfile',
        accountId: .literal(accountId),
        contents: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayPolicy(
        'zero_trust_gateway_policy',
        accountId: .literal(accountId),
        action: .allow,
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewayProxyEndpoint(
        'zero_trust_gateway_proxy_endpoint',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustGatewaySettings(
        'zero_trust_gateway_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustList(
        'zero_trust_list',
        accountId: .literal(accountId),
        name: .literal(leftover),
        type: .serial,
      ),
    );

    add(
      CloudflareZeroTrustNetworkHostnameRoute(
        'zero_trust_network_hostname_route',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustOrganization(
        'zero_trust_organization',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustResourceLibraryApplication(
        'zero_trust_resource_library_application',
        accountId: .literal(accountId),
      ),
    );

    add(
      CloudflareZeroTrustRiskBehavior(
        'zero_trust_risk_behavior',
        accountId: .literal(accountId),
        behaviors: {
          'k': ZeroTrustRiskBehaviorBehaviors(
            enabled: .literal(true),
            riskLevel: .low,
          ),
        },
      ),
    );

    add(
      CloudflareZeroTrustRiskScoringIntegration(
        'zero_trust_risk_scoring_integration',
        accountId: .literal(accountId),
        integrationType: .okta,
        tenantUrl: .literal('https://example.com'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflared(
        'zero_trust_tunnel_cloudflared',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredConfig(
        'zero_trust_tunnel_cloudflared_config',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredRoute(
        'zero_trust_tunnel_cloudflared_route',
        accountId: .literal(accountId),
        network: .literal(leftover),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZeroTrustTunnelCloudflaredVirtualNetwork(
        'zero_trust_tunnel_cloudflared_virtual_network',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelWarpConnector(
        'zero_trust_tunnel_warp_connector',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      CloudflareZeroTrustTunnelWarpConnectorConfig(
        'zero_trust_tunnel_warp_connector_config',
        accountId: .literal(accountId),
        haMode: .none,
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      CloudflareZoneAutoOriginTlsKex(
        'zone_auto_origin_tls_kex',
        enabled: .literal(true),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneCacheReserve(
        'zone_cache_reserve',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneCacheVariants(
        'zone_cache_variants',
        zoneId: .literal(zoneId),
        value: ZoneCacheVariantsValue(avif: .literal([leftover])),
      ),
    );

    add(
      CloudflareZoneDnsSettings('zone_dns_settings', zoneId: .literal(zoneId)),
    );

    add(CloudflareZoneDnssec('zone_dnssec', zoneId: .literal(zoneId)));

    add(CloudflareZoneHold('zone_hold', zoneId: .literal(zoneId)));

    add(
      CloudflareZoneLockdown(
        'zone_lockdown',
        urls: .literal([leftover]),
        zoneId: .literal(zoneId),
        configurations: [ZoneLockdownConfigurations(target: .ip)],
      ),
    );

    add(
      CloudflareZoneSetting(
        'zone_setting',
        settingId: .literal('ciphers'),
        value: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      CloudflareZoneSubscription('zone_subscription', zoneId: .literal(zoneId)),
    );

    add(CloudflareZoneTracing('zone_tracing', zoneId: .literal(zoneId)));

    add(
      CloudflareZoneTracingRules(
        'zone_tracing_rules',
        zoneId: .literal(zoneId),
        rules: [
          ZoneTracingRules(
            action: .setTraceSettings,
            description: .literal(leftover),
            enabled: .literal(true),
            expression: .literal(leftover),
            actionParameters: .new(samplingRatio: .literal(1)),
          ),
        ],
      ),
    );

    add(
      DataCloudflareAccessRule(
        'd_access_rule',
        accountId: .literal(accountId),
        ruleId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareAccessRules(
        'd_access_rules',
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareAccount('d_account', accountId: .literal(accountId)));

    add(
      DataCloudflareAccountApiTokenPermissionGroups(
        'd_account_api_token_permission_groups',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAccountApiTokenPermissionGroupsList(
        'd_account_api_token_permission_groups_list',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAccountDnsSettings(
        'd_account_dns_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAccountDnsSettingsInternalView(
        'd_account_dns_settings_internal_view',
        accountId: .literal(accountId),
        viewId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareAccountDnsSettingsInternalViews(
        'd_account_dns_settings_internal_views',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAccountMember(
        'd_account_member',
        accountId: .literal(accountId),
        memberId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareAccountMembers(
        'd_account_members',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAccountPermissionGroup(
        'd_account_permission_group',
        accountId: .literal(accountId),
        permissionGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareAccountPermissionGroups(
        'd_account_permission_groups',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAccountRole(
        'd_account_role',
        accountId: .literal(accountId),
        roleId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareAccountRoles(
        'd_account_roles',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAccountSubscription(
        'd_account_subscription',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAccountToken(
        'd_account_token',
        accountId: .literal(accountId),
        tokenId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareAccountTokens(
        'd_account_tokens',
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareAccounts('d_accounts'));

    add(
      DataCloudflareAddressMap(
        'd_address_map',
        addressMapId: .literal('192.0.2.1'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAddressMaps(
        'd_address_maps',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAiGateway(
        'd_ai_gateway',
        accountId: .literal(accountId),
        filter: DataAiGatewayFilter(search: .literal(leftover)),
      ),
    );

    add(
      DataCloudflareAiGatewayDynamicRouting(
        'd_ai_gateway_dynamic_routing',
        gatewayId: .literal('00000000000000000000000000000001'),
        id: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAiGateways('d_ai_gateways', accountId: .literal(accountId)),
    );

    add(
      DataCloudflareAiSearchInstance(
        'd_ai_search_instance',
        accountId: .literal(accountId),
        filter: DataAiSearchInstanceFilter(namespace: .literal(leftover)),
      ),
    );

    add(
      DataCloudflareAiSearchInstances(
        'd_ai_search_instances',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAiSearchNamespace(
        'd_ai_search_namespace',
        accountId: .literal(accountId),
        name: .literal(leftover),
      ),
    );

    add(
      DataCloudflareAiSearchNamespaces(
        'd_ai_search_namespaces',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareAiSearchToken(
        'd_ai_search_token',
        accountId: .literal(accountId),
        filter: DataAiSearchTokenFilter(search: .literal(leftover)),
      ),
    );

    add(
      DataCloudflareAiSearchTokens(
        'd_ai_search_tokens',
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareApiShield('d_api_shield', zoneId: .literal(zoneId)));

    add(
      DataCloudflareApiShieldDiscoveryOperations(
        'd_api_shield_discovery_operations',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareApiShieldOperation(
        'd_api_shield_operation',
        zoneId: .literal(zoneId),
        operationId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareApiShieldOperationSchemaValidationSettings(
        'd_api_shield_operation_schema_validation_setting',
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareApiShieldOperations(
        'd_api_shield_operations',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareApiShieldSchema(
        'd_api_shield_schema',
        schemaId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareApiShieldSchemaValidationSettings(
        'd_api_shield_schema_validation_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareApiShieldSchemas(
        'd_api_shield_schemas',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareApiToken(
        'd_api_token',
        tokenId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareApiTokenPermissionGroupsList(
        'd_api_token_permission_groups_list',
      ),
    );

    add(DataCloudflareApiTokens('d_api_tokens'));

    add(
      DataCloudflareArgoSmartRouting(
        'd_argo_smart_routing',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareArgoTieredCaching(
        'd_argo_tiered_caching',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareAuthenticatedOriginPulls(
        'd_authenticated_origin_pulls',
        hostname: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareAuthenticatedOriginPullsCertificate(
        'd_authenticated_origin_pulls_certificate',
        certificateId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareAuthenticatedOriginPullsCertificates(
        'd_authenticated_origin_pulls_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareAuthenticatedOriginPullsHostnameCertificate(
        'd_authenticated_origin_pulls_hostname_certificat',
        certificateId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareAuthenticatedOriginPullsHostnameCertificates(
        'd_authenticated_origin_pulls_hostname_certific_2',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareAuthenticatedOriginPullsSettings(
        'd_authenticated_origin_pulls_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareBotManagement('d_bot_management', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareBotnetFeedConfigAsn(
        'd_botnet_feed_config_asn',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareByoIpPrefix(
        'd_byo_ip_prefix',
        prefixId: .literal('192.0.2.0/24'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareByoIpPrefixes(
        'd_byo_ip_prefixes',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCallsSfuApp(
        'd_calls_sfu_app',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCallsSfuApps(
        'd_calls_sfu_apps',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCallsTurnApp(
        'd_calls_turn_app',
        accountId: .literal(accountId),
        keyId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCallsTurnApps(
        'd_calls_turn_apps',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCertificateAuthoritiesHostnameAssociations(
        'd_certificate_authorities_hostname_associations',
        zoneId: .literal(zoneId),
        mtlsCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCertificatePack(
        'd_certificate_pack',
        zoneId: .literal(zoneId),
        certificatePackId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCertificatePacks(
        'd_certificate_packs',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareClientCertificate(
        'd_client_certificate',
        zoneId: .literal(zoneId),
        clientCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareClientCertificates(
        'd_client_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareCloudConnectorRules(
        'd_cloud_connector_rules',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareCloudforceOneRequest(
        'd_cloudforce_one_request',
        accountId: .literal(accountId),
        requestId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCloudforceOneRequestAsset(
        'd_cloudforce_one_request_asset',
        accountId: .literal(accountId),
        assetId: .literal('00000000000000000000000000000001'),
        requestId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCloudforceOneRequestMessage(
        'd_cloudforce_one_request_message',
        page: .literal(200),
        perPage: .literal(200),
        requestId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCloudforceOneRequestPriority(
        'd_cloudforce_one_request_priority',
        priorityId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCloudforceOneRequests(
        'd_cloudforce_one_requests',
        page: .literal(200),
        perPage: .literal(200),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareConnectivityDirectoryService(
        'd_connectivity_directory_service',
        accountId: .literal(accountId),
        serviceId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareConnectivityDirectoryServices(
        'd_connectivity_directory_services',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareContentScanning(
        'd_content_scanning',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareContentScanningExpressions(
        'd_content_scanning_expressions',
        zoneId: .literal(zoneId),
      ),
    );

    add(DataCloudflareCtAlerting('d_ct_alerting', zoneId: .literal(zoneId)));

    add(
      DataCloudflareCustomCsr(
        'd_custom_csr',
        accountId: .literal(accountId),
        customCsrId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCustomCsrs('d_custom_csrs', accountId: .literal(accountId)),
    );

    add(
      DataCloudflareCustomHostname(
        'd_custom_hostname',
        zoneId: .literal(zoneId),
        customHostnameId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCustomHostnameFallbackOrigin(
        'd_custom_hostname_fallback_origin',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareCustomHostnames(
        'd_custom_hostnames',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareCustomOriginTrustStore(
        'd_custom_origin_trust_store',
        zoneId: .literal(zoneId),
        customOriginTrustStoreId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareCustomOriginTrustStores(
        'd_custom_origin_trust_stores',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareCustomPageAsset(
        'd_custom_page_asset',
        assetName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCustomPageAssets(
        'd_custom_page_assets',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCustomPages(
        'd_custom_pages',
        identifier: .literal('1000_errors'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCustomPagesList(
        'd_custom_pages_list',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareCustomSsl(
        'd_custom_ssl',
        zoneId: .literal(zoneId),
        customCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflareCustomSsls('d_custom_ssls', zoneId: .literal(zoneId)));

    add(
      DataCloudflareD1Database(
        'd_d1_database',
        accountId: .literal(accountId),
        databaseId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareD1Databases(
        'd_d1_databases',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDcvDelegation('d_dcv_delegation', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareDlsPrefixBinding(
        'd_dls_prefix_binding',
        accountId: .literal(accountId),
        bindingId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareDlsPrefixBindings(
        'd_dls_prefix_bindings',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDnsFirewall(
        'd_dns_firewall',
        dnsFirewallId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDnsFirewalls(
        'd_dns_firewalls',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDnsRecord(
        'd_dns_record',
        zoneId: .literal(zoneId),
        dnsRecordId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflareDnsRecords('d_dns_records', zoneId: .literal(zoneId)));

    add(
      DataCloudflareDnsZoneTransfersAcl(
        'd_dns_zone_transfers_acl',
        aclId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDnsZoneTransfersAcls(
        'd_dns_zone_transfers_acls',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDnsZoneTransfersIncoming(
        'd_dns_zone_transfers_incoming',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareDnsZoneTransfersOutgoing(
        'd_dns_zone_transfers_outgoing',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareDnsZoneTransfersPeer(
        'd_dns_zone_transfers_peer',
        peerId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDnsZoneTransfersPeers(
        'd_dns_zone_transfers_peers',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDnsZoneTransfersTsig(
        'd_dns_zone_transfers_tsig',
        tsigId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareDnsZoneTransfersTsigs(
        'd_dns_zone_transfers_tsigs',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareEmailRoutingAddress(
        'd_email_routing_address',
        accountId: .literal(accountId),
        destinationAddressIdentifier: .literal('192.0.2.1'),
      ),
    );

    add(
      DataCloudflareEmailRoutingAddresses(
        'd_email_routing_addresses',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareEmailRoutingCatchAll(
        'd_email_routing_catch_all',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareEmailRoutingDns(
        'd_email_routing_dns',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareEmailRoutingRule(
        'd_email_routing_rule',
        zoneId: .literal(zoneId),
        ruleIdentifier: .literal(leftover),
      ),
    );

    add(
      DataCloudflareEmailRoutingRules(
        'd_email_routing_rules',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareEmailRoutingSettings(
        'd_email_routing_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareEmailSecurityAllowPolicies(
        'd_email_security_allow_policies',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareEmailSecurityAllowPolicy(
        'd_email_security_allow_policy',
        accountId: .literal(accountId),
        policyId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareEmailSecurityBlockSender(
        'd_email_security_block_sender',
        accountId: .literal(accountId),
        patternId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareEmailSecurityBlockSenders(
        'd_email_security_block_senders',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareEmailSecurityDomain(
        'd_email_security_domain',
        accountId: .literal(accountId),
        domainId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareEmailSecurityDomains(
        'd_email_security_domains',
        accountId: .literal(accountId),
        integrationId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareEmailSecurityImpersonationRegistries(
        'd_email_security_impersonation_registries',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareEmailSecurityImpersonationRegistry(
        'd_email_security_impersonation_registry',
        accountId: .literal(accountId),
        impersonationRegistryId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareEmailSecurityTrustedDomains(
        'd_email_security_trusted_domains',
        accountId: .literal(accountId),
        trustedDomainId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareEmailSecurityTrustedDomainsList(
        'd_email_security_trusted_domains_list',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareEmailSendingSubdomain(
        'd_email_sending_subdomain',
        subdomainId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareEmailSendingSubdomains(
        'd_email_sending_subdomains',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareFieldExtractor(
        'd_field_extractor',
        accountId: .literal(accountId),
        extractor: .literal(leftover),
      ),
    );

    add(
      DataCloudflareFilter(
        'd_filter',
        zoneId: .literal(zoneId),
        filterId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflareFilters('d_filters', zoneId: .literal(zoneId)));

    add(
      DataCloudflareFirewallRules('d_firewall_rules', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareFlagshipApp(
        'd_flagship_app',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareFlagshipApps(
        'd_flagship_apps',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareFlagshipFlag(
        'd_flagship_flag',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
        filter: DataFlagshipFlagFilter(limit: .literal(leftover)),
      ),
    );

    add(
      DataCloudflareFlagshipFlags(
        'd_flagship_flags',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareGoogleTagGateway(
        'd_google_tag_gateway',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareHealthcheck(
        'd_healthcheck',
        healthcheckId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(DataCloudflareHealthchecks('d_healthchecks', zoneId: .literal(zoneId)));

    add(
      DataCloudflareHostnameTlsSetting(
        'd_hostname_tls_setting',
        hostname: .literal(leftover),
        settingId: .literal('ciphers'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareHostnameTlsSettings(
        'd_hostname_tls_settings',
        settingId: .literal('ciphers'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareHyperdriveConfig(
        'd_hyperdrive_config',
        hyperdriveId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareHyperdriveConfigs(
        'd_hyperdrive_configs',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareImage(
        'd_image',
        imageId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareImageVariant(
        'd_image_variant',
        variantId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareImages('d_images', accountId: .literal(accountId)));

    add(DataCloudflareIpRanges('d_ip_ranges'));

    add(
      DataCloudflareKeylessCertificate(
        'd_keyless_certificate',
        keylessCertificateId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareKeylessCertificates(
        'd_keyless_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareLeakedCredentialCheck(
        'd_leaked_credential_check',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareLeakedCredentialCheckRule(
        'd_leaked_credential_check_rule',
        detectionId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareLeakedCredentialCheckRules(
        'd_leaked_credential_check_rules',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareList(
        'd_list',
        listId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareListItem(
        'd_list_item',
        itemId: .literal('00000000000000000000000000000001'),
        listId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareListItems(
        'd_list_items',
        listId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareLists('d_lists', accountId: .literal(accountId)));

    add(
      DataCloudflareLoadBalancer(
        'd_load_balancer',
        loadBalancerId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareLoadBalancerMonitor(
        'd_load_balancer_monitor',
        monitorId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareLoadBalancerMonitorGroup(
        'd_load_balancer_monitor_group',
        accountId: .literal(accountId),
        monitorGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareLoadBalancerMonitorGroups(
        'd_load_balancer_monitor_groups',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareLoadBalancerMonitors(
        'd_load_balancer_monitors',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareLoadBalancerPool(
        'd_load_balancer_pool',
        accountId: .literal(accountId),
        poolId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareLoadBalancerPools(
        'd_load_balancer_pools',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareLoadBalancers('d_load_balancers', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareLogpullRetention(
        'd_logpull_retention',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareLogpushDatasetField(
        'd_logpush_dataset_field',
        accountId: .literal(accountId),
        datasetId: .literal('audit_logs'),
      ),
    );

    add(
      DataCloudflareLogpushDatasetJob(
        'd_logpush_dataset_job',
        accountId: .literal(accountId),
        datasetId: .literal('audit_logs'),
      ),
    );

    add(
      DataCloudflareLogpushJob(
        'd_logpush_job',
        jobId: .literal(200),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareLogpushJobs(
        'd_logpush_jobs',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicNetworkMonitoringConfiguration(
        'd_magic_network_monitoring_configuration',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicNetworkMonitoringRule(
        'd_magic_network_monitoring_rule',
        ruleId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicNetworkMonitoringRules(
        'd_magic_network_monitoring_rules',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicTransitCf1Site(
        'd_magic_transit_cf1_site',
        accountId: .literal(accountId),
        cf1SiteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMagicTransitCf1Sites(
        'd_magic_transit_cf1_sites',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicTransitConnector(
        'd_magic_transit_connector',
        accountId: .literal(accountId),
        connectorId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMagicTransitConnectors(
        'd_magic_transit_connectors',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicTransitSite(
        'd_magic_transit_site',
        accountId: .literal(accountId),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMagicTransitSiteAcl(
        'd_magic_transit_site_acl',
        accountId: .literal(accountId),
        aclId: .literal('00000000000000000000000000000001'),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMagicTransitSiteAcls(
        'd_magic_transit_site_acls',
        siteId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicTransitSiteLan(
        'd_magic_transit_site_lan',
        accountId: .literal(accountId),
        lanId: .literal('00000000000000000000000000000001'),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMagicTransitSiteLans(
        'd_magic_transit_site_lans',
        siteId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicTransitSiteWan(
        'd_magic_transit_site_wan',
        accountId: .literal(accountId),
        siteId: .literal('00000000000000000000000000000001'),
        wanId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMagicTransitSiteWans(
        'd_magic_transit_site_wans',
        siteId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicTransitSites(
        'd_magic_transit_sites',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicWanBgpFilterProfile(
        'd_magic_wan_bgp_filter_profile',
        accountId: .literal(accountId),
        profileId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMagicWanBgpFilterProfiles(
        'd_magic_wan_bgp_filter_profiles',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicWanGreTunnel(
        'd_magic_wan_gre_tunnel',
        greTunnelId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicWanIpsecTunnel(
        'd_magic_wan_ipsec_tunnel',
        ipsecTunnelId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareMagicWanStaticRoute(
        'd_magic_wan_static_route',
        routeId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareManagedTransforms(
        'd_managed_transforms',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareMoqRelay(
        'd_moq_relay',
        accountId: .literal(accountId),
        relayId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMoqRelays('d_moq_relays', accountId: .literal(accountId)),
    );

    add(
      DataCloudflareMtlsCertificate(
        'd_mtls_certificate',
        accountId: .literal(accountId),
        mtlsCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMtlsCertificateAssociations(
        'd_mtls_certificate_associations',
        accountId: .literal(accountId),
        mtlsCertificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareMtlsCertificates(
        'd_mtls_certificates',
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareNelSetting('d_nel_setting', zoneId: .literal(zoneId)));

    add(
      DataCloudflareNotificationPolicies(
        'd_notification_policies',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareNotificationPolicy(
        'd_notification_policy',
        policyId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareNotificationPolicyWebhooks(
        'd_notification_policy_webhooks',
        webhookId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareNotificationPolicyWebhooksList(
        'd_notification_policy_webhooks_list',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareOauthClient(
        'd_oauth_client',
        accountId: .literal(accountId),
        oauthClientId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareOauthClients(
        'd_oauth_clients',
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareOauthScopes('d_oauth_scopes'));

    add(
      DataCloudflareObservatoryScheduledTest(
        'd_observatory_scheduled_test',
        url: .literal('https://example.com'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareOrganization(
        'd_organization',
        organizationId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareOrganizationProfile(
        'd_organization_profile',
        organizationId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflareOrganizations('d_organizations'));

    add(
      DataCloudflareOriginCaCertificate(
        'd_origin_ca_certificate',
        certificateId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareOriginCaCertificates(
        'd_origin_ca_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareOriginCloudRegion(
        'd_origin_cloud_region',
        originIp: .literal('192.0.2.1'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareOriginCloudRegions(
        'd_origin_cloud_regions',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareOriginTlsComplianceModes(
        'd_origin_tls_compliance_modes',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageRule(
        'd_page_rule',
        pageruleId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageShieldConnections(
        'd_page_shield_connections',
        connectionId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageShieldConnectionsList(
        'd_page_shield_connections_list',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageShieldCookies(
        'd_page_shield_cookies',
        cookieId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageShieldCookiesList(
        'd_page_shield_cookies_list',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageShieldPolicies(
        'd_page_shield_policies',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageShieldPolicy(
        'd_page_shield_policy',
        policyId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageShieldScripts(
        'd_page_shield_scripts',
        scriptId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePageShieldScriptsList(
        'd_page_shield_scripts_list',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflarePagesDomain(
        'd_pages_domain',
        accountId: .literal(accountId),
        domainName: .literal(leftover),
        projectName: .literal(leftover),
      ),
    );

    add(
      DataCloudflarePagesDomains(
        'd_pages_domains',
        projectName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflarePagesProject(
        'd_pages_project',
        projectName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflarePagesProjects(
        'd_pages_projects',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflarePipeline(
        'd_pipeline',
        pipelineId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflarePipelineSink(
        'd_pipeline_sink',
        accountId: .literal(accountId),
        sinkId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflarePipelineSinks(
        'd_pipeline_sinks',
        accountId: .literal(accountId),
        pipelineId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflarePipelineStream(
        'd_pipeline_stream',
        accountId: .literal(accountId),
        streamId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflarePipelineStreams(
        'd_pipeline_streams',
        accountId: .literal(accountId),
        pipelineId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflarePrecursor('d_precursor', zoneId: .literal(zoneId)));

    add(
      DataCloudflareQueue(
        'd_queue',
        queueId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareQueueConsumer(
        'd_queue_consumer',
        accountId: .literal(accountId),
        queueId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareQueueConsumers(
        'd_queue_consumers',
        queueId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareQueues('d_queues', accountId: .literal(accountId)));

    add(
      DataCloudflareR2Bucket(
        'd_r2_bucket',
        bucketName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareR2BucketCors(
        'd_r2_bucket_cors',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareR2BucketEventNotification(
        'd_r2_bucket_event_notification',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        queueId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareR2BucketLifecycle(
        'd_r2_bucket_lifecycle',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareR2BucketLock(
        'd_r2_bucket_lock',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareR2BucketSippy(
        'd_r2_bucket_sippy',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareR2CustomDomain(
        'd_r2_custom_domain',
        accountId: .literal(accountId),
        bucketName: .literal(leftover),
        domain: .literal(leftover),
      ),
    );

    add(
      DataCloudflareR2DataCatalog(
        'd_r2_data_catalog',
        bucketName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareRateLimit(
        'd_rate_limit',
        rateLimitId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareRegionalHostname(
        'd_regional_hostname',
        hostname: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareRegionalHostnames(
        'd_regional_hostnames',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareRegionalTieredCache(
        'd_regional_tiered_cache',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareRegistrarDomain(
        'd_registrar_domain',
        accountId: .literal(accountId),
        domainName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareRegistrarDomains(
        'd_registrar_domains',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareResourceGroup(
        'd_resource_group',
        accountId: .literal(accountId),
        resourceGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareResourceGroups(
        'd_resource_groups',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareRuleset(
        'd_ruleset',
        zoneId: .literal(zoneId),
        rulesetId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflareRulesets('d_rulesets', zoneId: .literal(zoneId)));

    add(
      DataCloudflareSchemaValidationOperationSettings(
        'd_schema_validation_operation_settings',
        operationId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareSchemaValidationOperationSettingsList(
        'd_schema_validation_operation_settings_list',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareSchemaValidationSchemas(
        'd_schema_validation_schemas',
        zoneId: .literal(zoneId),
        schemaId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareSchemaValidationSchemasList(
        'd_schema_validation_schemas_list',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareSchemaValidationSettings(
        'd_schema_validation_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareSecretsStore(
        'd_secrets_store',
        accountId: .literal(accountId),
        storeId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareSecretsStoreSecret(
        'd_secrets_store_secret',
        accountId: .literal(accountId),
        storeId: .literal('00000000000000000000000000000001'),
        secretId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareSecretsStoreSecrets(
        'd_secrets_store_secrets',
        accountId: .literal(accountId),
        storeId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareSecretsStores(
        'd_secrets_stores',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareShare(
        'd_share',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareShareRecipient(
        'd_share_recipient',
        accountId: .literal(accountId),
        recipientId: .literal('00000000000000000000000000000001'),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareShareRecipients(
        'd_share_recipients',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareShareResource(
        'd_share_resource',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
        shareResourceId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareShareResources(
        'd_share_resources',
        accountId: .literal(accountId),
        shareId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflareShares('d_shares', accountId: .literal(accountId)));

    add(
      DataCloudflareSnippet(
        'd_snippet',
        snippetName: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(DataCloudflareSnippetList('d_snippet_list', zoneId: .literal(zoneId)));

    add(
      DataCloudflareSnippetRules('d_snippet_rules', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareSnippetRulesList(
        'd_snippet_rules_list',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareSnippets(
        'd_snippets',
        snippetName: .literal(leftover),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareSnippetsList('d_snippets_list', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareSpectrumApplication(
        'd_spectrum_application',
        zoneId: .literal(zoneId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareSpectrumApplications(
        'd_spectrum_applications',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareSpectrumProtocols(
        'd_spectrum_protocols',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareSsoConnector(
        'd_sso_connector',
        ssoConnectorId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareSsoConnectors(
        'd_sso_connectors',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareStream(
        'd_stream',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    add(
      DataCloudflareStreamAudioTrack(
        'd_stream_audio_track',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    add(
      DataCloudflareStreamCaptionLanguage(
        'd_stream_caption_language',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
        language: .literal(leftover),
      ),
    );

    add(
      DataCloudflareStreamDownload(
        'd_stream_download',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    add(
      DataCloudflareStreamKey('d_stream_key', accountId: .literal(accountId)),
    );

    add(
      DataCloudflareStreamLiveInput(
        'd_stream_live_input',
        accountId: .literal(accountId),
        liveInputIdentifier: .literal(leftover),
      ),
    );

    add(
      DataCloudflareStreamWatermark(
        'd_stream_watermark',
        accountId: .literal(accountId),
        identifier: .literal('1000_errors'),
      ),
    );

    add(
      DataCloudflareStreamWatermarks(
        'd_stream_watermarks',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareStreamWebhook(
        'd_stream_webhook',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareStreams(
        'd_streams',
        accountId: .literal(accountId),
        liveInputId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflareTieredCache('d_tiered_cache', zoneId: .literal(zoneId)));

    add(
      DataCloudflareTokenValidationConfig(
        'd_token_validation_config',
        configId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareTokenValidationConfigs(
        'd_token_validation_configs',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareTokenValidationRules(
        'd_token_validation_rules',
        zoneId: .literal(zoneId),
        ruleId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareTokenValidationRulesList(
        'd_token_validation_rules_list',
        zoneId: .literal(zoneId),
        ruleId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(DataCloudflareTotalTls('d_total_tls', zoneId: .literal(zoneId)));

    add(
      DataCloudflareTurnstileWidget(
        'd_turnstile_widget',
        accountId: .literal(accountId),
        sitekey: .literal(leftover),
      ),
    );

    add(
      DataCloudflareTurnstileWidgets(
        'd_turnstile_widgets',
        accountId: .literal(accountId),
        filter: .literal(leftover),
      ),
    );

    add(
      DataCloudflareUniversalSslSetting(
        'd_universal_ssl_setting',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareUrlNormalizationSettings(
        'd_url_normalization_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(DataCloudflareUser('d_user'));

    add(
      DataCloudflareUserAgentBlockingRule(
        'd_user_agent_blocking_rule',
        zoneId: .literal(zoneId),
        uaRuleId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareUserAgentBlockingRules(
        'd_user_agent_blocking_rules',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareUserGroup(
        'd_user_group',
        accountId: .literal(accountId),
        userGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareUserGroupMembers(
        'd_user_group_members',
        accountId: .literal(accountId),
        userGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareUserGroups('d_user_groups', accountId: .literal(accountId)),
    );

    add(
      DataCloudflareVulnerabilityScannerCredential(
        'd_vulnerability_scanner_credential',
        credentialId: .literal('00000000000000000000000000000001'),
        credentialSetId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareVulnerabilityScannerCredentialSet(
        'd_vulnerability_scanner_credential_set',
        credentialSetId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareVulnerabilityScannerCredentialSets(
        'd_vulnerability_scanner_credential_sets',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareVulnerabilityScannerCredentials(
        'd_vulnerability_scanner_credentials',
        credentialSetId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareVulnerabilityScannerTargetEnvironment(
        'd_vulnerability_scanner_target_environment',
        targetEnvironmentId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareVulnerabilityScannerTargetEnvironments(
        'd_vulnerability_scanner_target_environments',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWaitingRoom(
        'd_waiting_room',
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareWaitingRoomEvent(
        'd_waiting_room_event',
        eventId: .literal('00000000000000000000000000000001'),
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareWaitingRoomEvents(
        'd_waiting_room_events',
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareWaitingRoomRules(
        'd_waiting_room_rules',
        waitingRoomId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareWaitingRoomSettings(
        'd_waiting_room_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareWaitingRooms(
        'd_waiting_rooms',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWeb3Hostname(
        'd_web3_hostname',
        identifier: .literal('1000_errors'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareWeb3Hostnames('d_web3_hostnames', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareWebAnalyticsSite(
        'd_web_analytics_site',
        accountId: .literal(accountId),
        siteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareWebAnalyticsSites(
        'd_web_analytics_sites',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWorker(
        'd_worker',
        accountId: .literal(accountId),
        workerId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareWorkerVersion(
        'd_worker_version',
        accountId: .literal(accountId),
        versionId: .literal('00000000000000000000000000000001'),
        workerId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareWorkerVersions(
        'd_worker_versions',
        workerId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareWorkers('d_workers', accountId: .literal(accountId)));

    add(
      DataCloudflareWorkersCronTrigger(
        'd_workers_cron_trigger',
        scriptName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWorkersCustomDomain(
        'd_workers_custom_domain',
        accountId: .literal(accountId),
        domainId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareWorkersCustomDomains(
        'd_workers_custom_domains',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWorkersDeployment(
        'd_workers_deployment',
        accountId: .literal(accountId),
        deploymentId: .literal('00000000000000000000000000000001'),
        scriptName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareWorkersDeployments(
        'd_workers_deployments',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareWorkersForPlatformsDispatchNamespace(
        'd_workers_for_platforms_dispatch_namespace',
        dispatchNamespace: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWorkersForPlatformsDispatchNamespaces(
        'd_workers_for_platforms_dispatch_namespaces',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWorkersKv(
        'd_workers_kv',
        accountId: .literal(accountId),
        keyName: .literal(leftover),
        namespaceId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareWorkersKvNamespace(
        'd_workers_kv_namespace',
        accountId: .literal(accountId),
        namespaceId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareWorkersKvNamespaces(
        'd_workers_kv_namespaces',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWorkersRoute(
        'd_workers_route',
        routeId: .literal('00000000000000000000000000000001'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareWorkersRoutes('d_workers_routes', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareWorkersScript(
        'd_workers_script',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareWorkersScriptSubdomain(
        'd_workers_script_subdomain',
        accountId: .literal(accountId),
        scriptName: .literal(leftover),
      ),
    );

    add(
      DataCloudflareWorkersScripts(
        'd_workers_scripts',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareWorkflow(
        'd_workflow',
        accountId: .literal(accountId),
        workflowName: .literal(leftover),
      ),
    );

    add(DataCloudflareWorkflows('d_workflows', accountId: .literal(accountId)));

    add(
      DataCloudflareZeroTrustAccessAiControlsMcpPortal(
        'd_zero_trust_access_ai_controls_mcp_portal',
        accountId: .literal(accountId),
        filter: DataZeroTrustAccessAiControlsMcpPortalFilter(
          search: .literal(leftover),
        ),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessAiControlsMcpPortals(
        'd_zero_trust_access_ai_controls_mcp_portals',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessAiControlsMcpServer(
        'd_zero_trust_access_ai_controls_mcp_server',
        accountId: .literal(accountId),
        filter: DataZeroTrustAccessAiControlsMcpServerFilter(
          search: .literal(leftover),
        ),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessAiControlsMcpServers(
        'd_zero_trust_access_ai_controls_mcp_servers',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessApplication(
        'd_zero_trust_access_application',
        accountId: .literal(accountId),
        appId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessApplications(
        'd_zero_trust_access_applications',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessCustomPage(
        'd_zero_trust_access_custom_page',
        customPageId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessCustomPages(
        'd_zero_trust_access_custom_pages',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessGroup(
        'd_zero_trust_access_group',
        accountId: .literal(accountId),
        groupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessGroups(
        'd_zero_trust_access_groups',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessIdentityProvider(
        'd_zero_trust_access_identity_provider',
        accountId: .literal(accountId),
        identityProviderId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessIdentityProviders(
        'd_zero_trust_access_identity_providers',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessInfrastructureTarget(
        'd_zero_trust_access_infrastructure_target',
        accountId: .literal(accountId),
        targetId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessInfrastructureTargets(
        'd_zero_trust_access_infrastructure_targets',
        accountId: .literal(accountId),
        virtualNetworkId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessKeyConfiguration(
        'd_zero_trust_access_key_configuration',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessMtlsCertificate(
        'd_zero_trust_access_mtls_certificate',
        certificateId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessMtlsCertificates(
        'd_zero_trust_access_mtls_certificates',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessMtlsHostnameSettings(
        'd_zero_trust_access_mtls_hostname_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessPolicies(
        'd_zero_trust_access_policies',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessPolicy(
        'd_zero_trust_access_policy',
        policyId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessServiceToken(
        'd_zero_trust_access_service_token',
        accountId: .literal(accountId),
        serviceTokenId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessServiceTokens(
        'd_zero_trust_access_service_tokens',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessShortLivedCertificate(
        'd_zero_trust_access_short_lived_certificate',
        appId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessShortLivedCertificates(
        'd_zero_trust_access_short_lived_certificates',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessTag(
        'd_zero_trust_access_tag',
        tagName: .literal(leftover),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustAccessTags(
        'd_zero_trust_access_tags',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustCasbPolicies(
        'd_zero_trust_casb_policies',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustCasbPolicy(
        'd_zero_trust_casb_policy',
        accountId: .literal(accountId),
        policyId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustCasbWebhook(
        'd_zero_trust_casb_webhook',
        accountId: .literal(accountId),
        webhookId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustCasbWebhooks(
        'd_zero_trust_casb_webhooks',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustConnectivitySettings(
        'd_zero_trust_connectivity_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceCustomProfile(
        'd_zero_trust_device_custom_profile',
        accountId: .literal(accountId),
        policyId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceCustomProfileLocalDomainFallback(
        'd_zero_trust_device_custom_profile_local_domain_',
        policyId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceCustomProfiles(
        'd_zero_trust_device_custom_profiles',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceDefaultProfile(
        'd_zero_trust_device_default_profile',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceDefaultProfileCertificates(
        'd_zero_trust_device_default_profile_certificates',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback(
        'd_zero_trust_device_default_profile_local_domain',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceDeploymentGroups(
        'd_zero_trust_device_deployment_groups',
        accountId: .literal(accountId),
        groupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceDeploymentGroupsList(
        'd_zero_trust_device_deployment_groups_list',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceIpProfile(
        'd_zero_trust_device_ip_profile',
        accountId: .literal(accountId),
        profileId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceIpProfiles(
        'd_zero_trust_device_ip_profiles',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceManagedNetworks(
        'd_zero_trust_device_managed_networks',
        networkId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceManagedNetworksList(
        'd_zero_trust_device_managed_networks_list',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDevicePostureIntegration(
        'd_zero_trust_device_posture_integration',
        integrationId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDevicePostureIntegrations(
        'd_zero_trust_device_posture_integrations',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDevicePostureRule(
        'd_zero_trust_device_posture_rule',
        ruleId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDevicePostureRules(
        'd_zero_trust_device_posture_rules',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceSettings(
        'd_zero_trust_device_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDeviceSubnet(
        'd_zero_trust_device_subnet',
        subnetId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDexRule(
        'd_zero_trust_dex_rule',
        ruleId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDexRules(
        'd_zero_trust_dex_rules',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDexTest(
        'd_zero_trust_dex_test',
        accountId: .literal(accountId),
        dexTestId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDexTests(
        'd_zero_trust_dex_tests',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpCustomEntries(
        'd_zero_trust_dlp_custom_entries',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpCustomEntry(
        'd_zero_trust_dlp_custom_entry',
        entryId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpCustomProfile(
        'd_zero_trust_dlp_custom_profile',
        profileId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpCustomPromptTopic(
        'd_zero_trust_dlp_custom_prompt_topic',
        accountId: .literal(accountId),
        entryId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpCustomPromptTopics(
        'd_zero_trust_dlp_custom_prompt_topics',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpDataClass(
        'd_zero_trust_dlp_data_class',
        accountId: .literal(accountId),
        dataClassId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpDataClasses(
        'd_zero_trust_dlp_data_classes',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpDataTag(
        'd_zero_trust_dlp_data_tag',
        accountId: .literal(accountId),
        categoryId: .literal('00000000000000000000000000000001'),
        tagId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpDataTagCategories(
        'd_zero_trust_dlp_data_tag_categories',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpDataTagCategory(
        'd_zero_trust_dlp_data_tag_category',
        accountId: .literal(accountId),
        categoryId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpDataTags(
        'd_zero_trust_dlp_data_tags',
        accountId: .literal(accountId),
        categoryId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpDataset(
        'd_zero_trust_dlp_dataset',
        datasetId: .literal('audit_logs'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpDatasets(
        'd_zero_trust_dlp_datasets',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpEntries(
        'd_zero_trust_dlp_entries',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpEntry(
        'd_zero_trust_dlp_entry',
        entryId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpIntegrationEntries(
        'd_zero_trust_dlp_integration_entries',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpIntegrationEntry(
        'd_zero_trust_dlp_integration_entry',
        entryId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpPredefinedEntries(
        'd_zero_trust_dlp_predefined_entries',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpPredefinedEntry(
        'd_zero_trust_dlp_predefined_entry',
        entryId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpPredefinedProfile(
        'd_zero_trust_dlp_predefined_profile',
        profileId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpSensitivityGroup(
        'd_zero_trust_dlp_sensitivity_group',
        accountId: .literal(accountId),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpSensitivityGroups(
        'd_zero_trust_dlp_sensitivity_groups',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpSensitivityLevel(
        'd_zero_trust_dlp_sensitivity_level',
        accountId: .literal(accountId),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
        sensitivityLevelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpSensitivityLevelOrder(
        'd_zero_trust_dlp_sensitivity_level_order',
        accountId: .literal(accountId),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpSensitivityLevels(
        'd_zero_trust_dlp_sensitivity_levels',
        accountId: .literal(accountId),
        sensitivityGroupId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDlpSettings(
        'd_zero_trust_dlp_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustDnsLocation(
        'd_zero_trust_dns_location',
        accountId: .literal(accountId),
        locationId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustDnsLocations(
        'd_zero_trust_dns_locations',
        accountId: .literal(accountId),
        filter: .literal([leftover]),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayAppTypesList(
        'd_zero_trust_gateway_app_types_list',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayCategoriesList(
        'd_zero_trust_gateway_categories_list',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayCertificate(
        'd_zero_trust_gateway_certificate',
        certificateId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayCertificates(
        'd_zero_trust_gateway_certificates',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayLogging(
        'd_zero_trust_gateway_logging',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayPacfile(
        'd_zero_trust_gateway_pacfile',
        pacfileId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayPacfiles(
        'd_zero_trust_gateway_pacfiles',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayPolicies(
        'd_zero_trust_gateway_policies',
        accountId: .literal(accountId),
        filter: .literal([leftover]),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayPolicy(
        'd_zero_trust_gateway_policy',
        accountId: .literal(accountId),
        ruleId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayProxyEndpoint(
        'd_zero_trust_gateway_proxy_endpoint',
        accountId: .literal(accountId),
        proxyEndpointId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewayProxyEndpoints(
        'd_zero_trust_gateway_proxy_endpoints',
        accountId: .literal(accountId),
        filter: .literal([leftover]),
      ),
    );

    add(
      DataCloudflareZeroTrustGatewaySettings(
        'd_zero_trust_gateway_settings',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustList(
        'd_zero_trust_list',
        accountId: .literal(accountId),
        listId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustLists(
        'd_zero_trust_lists',
        accountId: .literal(accountId),
        filter: .literal([leftover]),
      ),
    );

    add(
      DataCloudflareZeroTrustNetworkHostnameRoute(
        'd_zero_trust_network_hostname_route',
        accountId: .literal(accountId),
        hostnameRouteId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustNetworkHostnameRoutes(
        'd_zero_trust_network_hostname_routes',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustOrganization(
        'd_zero_trust_organization',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustResourceLibraryApplication(
        'd_zero_trust_resource_library_application',
        accountId: .literal(accountId),
        filter: DataZeroTrustResourceLibraryApplicationFilter(
          fields: .literal(leftover),
        ),
      ),
    );

    add(
      DataCloudflareZeroTrustResourceLibraryApplications(
        'd_zero_trust_resource_library_applications',
        accountId: .literal(accountId),
        filter: .literal(leftover),
      ),
    );

    add(
      DataCloudflareZeroTrustResourceLibraryCategories(
        'd_zero_trust_resource_library_categories',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustResourceLibraryCategory(
        'd_zero_trust_resource_library_category',
        accountId: .literal(accountId),
        id: .literal(200),
      ),
    );

    add(
      DataCloudflareZeroTrustRiskBehavior(
        'd_zero_trust_risk_behavior',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustRiskScoringIntegration(
        'd_zero_trust_risk_scoring_integration',
        integrationId: .literal('00000000000000000000000000000001'),
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustRiskScoringIntegrations(
        'd_zero_trust_risk_scoring_integrations',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelCloudflared(
        'd_zero_trust_tunnel_cloudflared',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelCloudflaredConfig(
        'd_zero_trust_tunnel_cloudflared_config',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelCloudflaredRoute(
        'd_zero_trust_tunnel_cloudflared_route',
        accountId: .literal(accountId),
        routeId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelCloudflaredRoutes(
        'd_zero_trust_tunnel_cloudflared_routes',
        accountId: .literal(accountId),
        routeId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelCloudflaredToken(
        'd_zero_trust_tunnel_cloudflared_token',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelCloudflaredVirtualNetwork(
        'd_zero_trust_tunnel_cloudflared_virtual_network',
        accountId: .literal(accountId),
        virtualNetworkId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelCloudflaredVirtualNetworks(
        'd_zero_trust_tunnel_cloudflared_virtual_networks',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelCloudflareds(
        'd_zero_trust_tunnel_cloudflareds',
        accountId: .literal(accountId),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelWarpConnector(
        'd_zero_trust_tunnel_warp_connector',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelWarpConnectorConfig(
        'd_zero_trust_tunnel_warp_connector_config',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelWarpConnectorToken(
        'd_zero_trust_tunnel_warp_connector_token',
        accountId: .literal(accountId),
        tunnelId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZeroTrustTunnelWarpConnectors(
        'd_zero_trust_tunnel_warp_connectors',
        accountId: .literal(accountId),
      ),
    );

    add(DataCloudflareZone('d_zone', zoneId: .literal(zoneId)));

    add(
      DataCloudflareZoneAutoOriginTlsKex(
        'd_zone_auto_origin_tls_kex',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareZoneCacheReserve(
        'd_zone_cache_reserve',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareZoneCacheVariants(
        'd_zone_cache_variants',
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareZoneDnsSettings(
        'd_zone_dns_settings',
        zoneId: .literal(zoneId),
      ),
    );

    add(DataCloudflareZoneDnssec('d_zone_dnssec', zoneId: .literal(zoneId)));

    add(DataCloudflareZoneHold('d_zone_hold', zoneId: .literal(zoneId)));

    add(
      DataCloudflareZoneLockdown(
        'd_zone_lockdown',
        zoneId: .literal(zoneId),
        lockDownsId: .literal('00000000000000000000000000000001'),
      ),
    );

    add(
      DataCloudflareZoneLockdowns('d_zone_lockdowns', zoneId: .literal(zoneId)),
    );

    add(
      DataCloudflareZoneSetting(
        'd_zone_setting',
        settingId: .literal('ciphers'),
        zoneId: .literal(zoneId),
      ),
    );

    add(
      DataCloudflareZoneSubscription(
        'd_zone_subscription',
        zoneId: .literal(zoneId),
      ),
    );

    add(DataCloudflareZoneTracing('d_zone_tracing', zoneId: .literal(zoneId)));

    add(
      DataCloudflareZoneTracingRules(
        'd_zone_tracing_rules',
        zoneId: .literal(zoneId),
      ),
    );

    add(DataCloudflareZones('d_zones'));
  }
}
