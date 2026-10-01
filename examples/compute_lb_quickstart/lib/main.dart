/// Compute LB quickstart -- Wave 6 end-to-end example.
///
/// Defines a `ComputeLbStack` that provisions the canonical L7 Global
/// External Application Load Balancer chain plus the supporting VPC /
/// NEG plumbing required to actually route traffic to a VM-backed
/// fleet:
///
///  1. `google_compute_network`              -- custom-mode VPC.
///  2. `google_compute_subnetwork`           -- regional subnet the
///     backend VM and the NEG endpoints live in.
///  3. `google_compute_instance`             -- a placeholder backend
///     VM, included so the NEG has a tangible attachment target. In a
///     real deployment this is typically a MIG fleet; a single instance
///     is enough to make the chain self-contained for `terraform
///     validate`.
///  4. `google_compute_health_check`         -- HTTPS probe on `/healthz`
///     that the backend service consults before sending traffic.
///  5. `google_compute_network_endpoint_group` -- zonal
///     `GCE_VM_IP_PORT` NEG fronting the backend VM.
///  6. `google_compute_security_policy`      -- Cloud Armor policy with
///     a single allow-all default rule, attached to the backend service.
///  7. `google_compute_backend_service` (global) -- the policy plane:
///     references the health check, the Cloud Armor policy, and the NEG.
///  8. `google_compute_url_map`              -- routes all traffic to
///     the backend service via `defaultService`.
///  9. `google_compute_managed_ssl_certificate` -- Google-managed cert
///     that terminates TLS at the front-end domain.
/// 10. `google_compute_ssl_policy`           -- TLS 1.2-floor / modern
///     cipher profile bound to the target HTTPS proxy.
/// 11. `google_compute_target_https_proxy`   -- terminates HTTPS using
///     the managed SSL cert and the curated SSL policy, then forwards
///     into the URL map.
/// 12. `google_compute_global_address`       -- the LB front-end VIP
///     (global, external IPv4).
/// 13. `google_compute_global_forwarding_rule` -- binds the VIP and
///     port 443 to the target HTTPS proxy as an `EXTERNAL_MANAGED`
///     L7 LB.
///
/// Cloud CDN signed-URL keys on the global backend service and the
/// static-assets backend bucket take `key_value` via Terraform
/// variables (synth rejects literals on sensitive fields).
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/certificate_manager.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/privateca.dart';
import 'package:terradart_google/provider.dart';

final class ComputeLbStack extends Stack {
  ComputeLbStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ],
      ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    addVariable(
      'lb_self_managed_certificate',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'lb_self_managed_private_key',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'lb_regional_certificate',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'lb_regional_private_key',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'cm_trust_anchor_pem',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'cm_cas_cert_csr_pem',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'lb_backend_bucket_signed_url_key',
      const TfVariable(type: 'string', sensitive: true),
    );
    addVariable(
      'lb_backend_service_signed_url_key',
      const TfVariable(type: 'string', sensitive: true),
    );

    const region = 'asia-northeast1';
    const zone = 'asia-northeast1-a';

    // ---- 0a. VPC + subnet for the backend fleet --------------------------

    final lbVpc = add(
      GoogleComputeNetwork(
        'lb_vpc',
        name: .literal('app-lb-vpc'),
        autoCreateSubnetworks: .literal(false),
        routingMode: .regional,
      ),
    );

    final lbSubnet = add(
      GoogleComputeSubnetwork(
        'lb_subnet',
        name: .literal('app-lb-subnet'),
        region: .literal(region),
        network: lbVpc.ref,
        ipCidrRange: .literal('10.20.0.0/20'),
      ),
    );

    // ---- 0b. Placeholder backend VM --------------------------------------
    //
    // A single VM stands in for what would normally be a managed instance
    // group fleet. The NEG below targets `(VM-IP, port)` endpoints in this
    // subnet -- registering the actual endpoint payload is done out of
    // band via `google_compute_network_endpoint` (not curated yet) or by
    // a MIG autohealer.

    final lbBackendVm = add(
      GoogleComputeInstance(
        'lb_backend_vm',
        name: .literal('app-lb-backend-vm'),
        machineType: .literal('e2-small'),
        zone: .literal(zone),
        bootDisk: ComputeInstanceBootDisk(
          initializeParams: .new(image: .literal('debian-cloud/debian-12')),
        ),
        networkInterface: [
          ComputeInstanceNetworkInterface(subnetwork: lbSubnet.ref),
        ],
      ),
    );

    // ---- 1. Front-end VIP (global external IPv4) -------------------------

    final lbVip = add(
      GoogleComputeGlobalAddress(
        'lb_vip',
        name: .literal('app-lb-vip'),
        addressType: .external,
      ),
    );

    // ---- 2. Google-managed SSL certificate -------------------------------
    //
    // Substitute the real served domain at apply time. Google-managed
    // certs require the domain's A/AAAA record to resolve to `lb_vip`
    // before the cert provisions.

    final lbCert = add(
      GoogleComputeManagedSslCertificate(
        'lb_cert',
        name: .literal('app-lb-cert'),
        managed: ComputeManagedSslCertificateConfig(
          domains: ['app.example.com'],
        ),
      ),
    );

    final selfManagedCert = add(
      GoogleComputeSslCertificate(
        'self_managed_cert',
        name: .literal('app-self-managed-cert'),
        certificate: TfArg.variable('lb_self_managed_certificate'),
        privateKey: .privateKey(TfArg.variable('lb_self_managed_private_key')),
      ),
    );

    // ---- 2b. Wave 26: Certificate Manager chain -------------------------
    //
    // Parallel to the classic `google_compute_managed_ssl_certificate`
    // above — DNS authorization, managed cert, map + entry. Wire
    // [GoogleComputeTargetHttpsProxy.certificateMap] to `cmMap.id` at
    // apply time when migrating off Compute SSL certificates.

    final apisByEndpoint = <String, GoogleProjectService>{};
    for (final api in Apis.required(
      barrels: [Barrels.certificateManager, Barrels.privateca],
    )) {
      final added = add(api);
      apisByEndpoint[added.argMap['service']!.toTfJson() as String] = added;
    }
    final apiCertificateManager =
        apisByEndpoint['certificatemanager.googleapis.com']!;
    final apiPrivateca = apisByEndpoint['privateca.googleapis.com']!;

    final cmDnsAuth = GoogleCertificateManagerDnsAuthorization(
      'cm_dns_auth',
      name: .literal('app-cm-dns'),
      domain: .literal('app.example.com'),
      dependsOn: [apiCertificateManager],
    );
    add(cmDnsAuth);

    // ---- 2c. Wave 28: Private CA pool (CAS backend for issuance) ---------

    final cmCaPool = GooglePrivatecaCaPool(
      'cm_ca_pool',
      name: .literal('app-cm-pool'),
      location: .literal(region),
      tier: .enterprise,
      dependsOn: [apiPrivateca],
    );
    add(cmCaPool);

    final cmCertTemplate = GooglePrivatecaCertificateTemplate(
      'cm_cert_template',
      name: .literal('app-cm-template'),
      location: .literal(region),
      identityConstraints: PrivatecaCertificateTemplateIdentityConstraints(
        allowSubjectAltNamesPassthrough: .literal(true),
        allowSubjectPassthrough: .literal(true),
        celExpression: .new(
          expression: .literal('true'),
          title: .literal('allow-all'),
          location: .literal('any.file.anywhere'),
          description: .literal('Always true'),
        ),
      ),
      dependsOn: [cmCaPool],
    );
    add(cmCertTemplate);

    add(
      GooglePrivatecaCaPoolIamMember(
        'cm_ca_pool_auditor',
        caPool: cmCaPool.ref,
        role: .literal('roles/privateca.auditor'),
        member: .group('security-admins@example.com'),
        dependsOn: [cmCaPool],
      ),
    );

    add(
      GooglePrivatecaCertificateTemplateIamMember(
        'cm_cert_template_user',
        certificateTemplate: cmCertTemplate.ref,
        role: .literal('roles/privateca.templateUser'),
        member: .group('security-admins@example.com'),
        dependsOn: [cmCertTemplate],
      ),
    );

    final cmRootCa = GooglePrivatecaCertificateAuthority(
      'cm_root_ca',
      certificateAuthorityId: .literal('app-root-ca'),
      pool: cmCaPool.ref,
      location: .literal(region),
      config: PrivatecaCertificateAuthorityConfig(
        subjectConfig: .new(
          subject: .new(commonName: .literal('app.example.com')),
        ),
        x509Config: .new(
          caOptions: .new(isCa: .literal(true)),
          keyUsage: .new(
            baseKeyUsage: .new(
              certSign: .literal(true),
              crlSign: .literal(true),
            ),
            extendedKeyUsage: .new(),
          ),
        ),
      ),
      keySpec: .algorithm(.rsaPkcs14096Sha256),
      dependsOn: [cmCaPool],
    );
    add(cmRootCa);

    add(
      GooglePrivatecaCertificate(
        'cm_cas_cert',
        name: .literal('app-cas-cert'),
        pool: cmCaPool.ref,
        location: .literal(region),
        certificateAuthority: .literal('app-root-ca'),
        lifetime: .literal('86400s'),
        request: .pemCsr(TfArg.variable('cm_cas_cert_csr_pem')),
        certificateTemplate: cmCertTemplate.ref,
        dependsOn: [cmRootCa, cmCertTemplate],
      ),
    );

    final cmIssuance = GoogleCertificateManagerCertificateIssuanceConfig(
      'cm_issuance',
      name: .literal('app-cm-issuance'),
      certificateAuthorityConfig:
          CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig(
            certificateAuthorityServiceConfig: .new(caPool: cmCaPool.ref),
          ),
      keyAlgorithm: .rsa2048,
      lifetime: .literal('2592000s'),
      rotationWindowPercentage: .literal(50),
      dependsOn: [apiCertificateManager, cmCaPool, cmRootCa],
    );
    add(cmIssuance);

    add(
      GoogleCertificateManagerTrustConfig(
        'cm_trust',
        name: .literal('app-cm-trust'),
        location: .literal('global'),
        trustStores: [
          CertificateManagerTrustConfigTrustStore(
            trustAnchors: [
              .new(pemCertificate: TfArg.variable('cm_trust_anchor_pem')),
            ],
          ),
        ],
        dependsOn: [apiCertificateManager],
      ),
    );

    final cmCert = GoogleCertificateManagerCertificate(
      'cm_cert',
      name: .literal('app-cm-cert'),
      provisioning: .managed(
        .new(
          domains: .literal(['app.example.com']),
          dnsAuthorizations: .literal([cmDnsAuth.id.interpolation]),
        ),
      ),
      dependsOn: [cmDnsAuth],
    );
    add(cmCert);

    final cmMap = GoogleCertificateManagerCertificateMap(
      'cm_map',
      name: .literal('app-cm-map'),
      dependsOn: [apiCertificateManager],
    );
    add(cmMap);

    add(
      GoogleCertificateManagerCertificateMapEntry(
        'cm_map_entry',
        name: .literal('app-cm-entry'),
        map: cmMap.ref,
        match: CertificateManagerCertificateMapEntryMatch.hostname(
          .literal('app.example.com'),
        ),
        certificates: .literal([cmCert.id.interpolation]),
        dependsOn: [cmMap, cmCert],
      ),
    );

    // ---- 3a. Health check ------------------------------------------------
    //
    // An HTTPS probe on `/healthz` that the backend service consults to
    // decide which endpoints are eligible for traffic. The probe runs
    // every 10s, times out at 5s, and an endpoint is dropped after 3
    // consecutive failures and re-added after 2 consecutive successes.

    final lbHealthCheck = add(
      GoogleComputeHealthCheck(
        'lb_hc',
        name: .literal('app-lb-hc'),
        checkIntervalSec: .literal(10),
        timeoutSec: .literal(5),
        healthyThreshold: .literal(2),
        unhealthyThreshold: .literal(3),
        protocol: .https(
          port: .literal(443),
          requestPath: .literal('/healthz'),
          portSpecification: HealthCheckPortSpecification.useFixedPort,
        ),
      ),
    );

    // ---- 3b. Network endpoint group (NEG) --------------------------------
    //
    // Zonal NEG of `GCE_VM_IP_PORT` shape: each endpoint is a `(VM IP,
    // port)` pair living in `lb_subnet`. Backends pointing at this NEG
    // receive traffic at the granularity of individual ports on
    // individual VMs.

    final lbNeg = add(
      GoogleComputeNetworkEndpointGroup(
        'lb_neg',
        name: .literal('app-lb-neg'),
        zone: .literal(zone),
        network: lbVpc.ref,
        subnetwork: lbSubnet.ref,
        networkEndpointType: .gceVmIpPort,
        defaultPort: .literal(443),
        // Document the chain to the backing VM even though endpoint
        // registration itself is out of scope for this resource.
        dependsOn: [lbBackendVm],
      ),
    );

    add(
      GoogleComputeNetworkEndpoint(
        'lb_neg_endpoint',
        networkEndpointGroup: lbNeg.ref,
        instance: lbBackendVm.ref,
        ipAddress: .literal('10.20.0.2'),
        port: .literal(443),
        zone: .literal(zone),
        dependsOn: [lbNeg, lbBackendVm],
      ),
    );

    // ---- 3c. Cloud Armor security policy ---------------------------------
    //
    // A minimal Cloud Armor policy with a single allow-all default rule.
    // Real policies layer higher-priority deny / rate-limit / geo rules
    // above this default; here it exists to demonstrate the wiring.

    final lbArmor = add(
      GoogleComputeSecurityPolicy(
        'lb_armor',
        name: .literal('app-lb-armor'),
        type: .cloudArmor,
        rules: [
          ComputeSecurityPolicyRules(
            priority: .literal(2147483647),
            action: SecurityPolicyRuleAction.allow,
            match: ComputeSecurityPolicyRulesMatch.config(
              versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
              config: .new(srcIpRanges: ['*']),
            ),
            description: .literal('default allow-all'),
          ),
        ],
      ),
    );

    // ---- 4. Backend service (global) -------------------------------------
    //
    // Wires together the NEG (data plane), the health check (liveness),
    // and the Cloud Armor policy (request filtering). `RATE` balancing
    // mode caps each endpoint at 100 RPS -- a placeholder value worth
    // tuning against real load tests.

    final lbBackend = add(
      GoogleComputeBackendService(
        'lb_backend',
        name: .literal('app-lb-backend'),
        protocol: .https,
        loadBalancingScheme: .externalManaged,
        timeoutSec: .literal(30),
        backend: [
          ComputeBackendServiceBackend(
            group: lbNeg.selfLink,
            balancingMode: .rate,
            maxRatePerEndpoint: .literal(100),
            capacityScaler: .literal(1.0),
          ),
        ],
        healthChecks: .literal([lbHealthCheck.selfLink.interpolation]),
        securityPolicy: lbArmor.ref,
      ),
    );

    add(
      GoogleComputeBackendServiceSignedUrlKey(
        'lb_backend_signed_url_key',
        name: .literal('app-lb-cdn-key'),
        backendService: lbBackend.ref,
        keyValue: TfArg.variable('lb_backend_service_signed_url_key'),
      ),
    );

    // ---- 5. URL map: route everything to the backend service -------------

    final lbUrlMap = add(
      GoogleComputeUrlMap(
        'lb_url_map',
        name: .literal('app-lb-url-map'),
        defaultService: lbBackend.ref,
      ),
    );

    // ---- 6a. SSL policy --------------------------------------------------
    //
    // Pins a TLS 1.2 floor + the `MODERN` cipher profile. Locks out
    // legacy 1.0 / 1.1 negotiation while keeping the broad-coverage
    // cipher set the modern profile ships with.

    final lbSslPolicy = add(
      GoogleComputeSslPolicy(
        'lb_ssl_policy',
        name: .literal('app-lb-ssl-policy'),
        profile: .modern,
        minTlsVersion: .tls12,
      ),
    );

    // ---- 6b. Target HTTPS proxy -----------------------------------------

    final lbHttpsProxy = add(
      GoogleComputeTargetHttpsProxy(
        'lb_https_proxy',
        name: .literal('app-lb-https-proxy'),
        urlMap: lbUrlMap.ref,
        // Reference `lbCert` by self_link rather than inlining the Terraform
        // interpolation string so that the cert resource is the source of
        // truth for the name.
        certificates: .sslCertificates(
          .literal([lbCert.selfLink.interpolation]),
        ),
        sslPolicy: lbSslPolicy.ref,
      ),
    );

    // ---- 7. Global forwarding rule (port 443) ----------------------------

    add(
      GoogleComputeGlobalForwardingRule(
        'lb_forwarding_rule',
        name: .literal('app-lb-forwarding-rule'),
        ipAddress: lbVip.address,
        ipProtocol: .tcp,
        portRange: .literal('443'),
        loadBalancingScheme: .externalManaged,
        target: lbHttpsProxy.selfLink,
      ),
    );

    // ---- Wave 18: additional LB / PSC factories ---------------------------

    add(
      GoogleComputeTargetSslProxy(
        'lb_ssl_proxy',
        name: .literal('app-lb-ssl-proxy'),
        backendService: lbBackend.ref,
        sslCertificates: .literal([selfManagedCert.selfLink.interpolation]),
        dependsOn: [selfManagedCert],
      ),
    );

    add(
      GoogleComputeTargetTcpProxy(
        'lb_tcp_proxy',
        name: .literal('app-lb-tcp-proxy'),
        backendService: lbBackend.ref,
      ),
    );

    add(
      GoogleComputeSecurityPolicyRule(
        'lb_armor_deny_rule',
        securityPolicy: lbArmor.ref,
        priority: .literal(1000),
        action: .literal('deny(403)'),
        description: .literal('Block example CIDR'),
        match: const ComputeSecurityPolicyRuleMatch(
          versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
          config: .new(srcIpRanges: ['203.0.113.0/24']),
        ),
      ),
    );

    add(
      GoogleComputeServiceAttachment(
        'lb_psc_attachment',
        name: .literal('app-lb-psc'),
        region: .literal(region),
        connectionPreference: .acceptAutomatic,
        enableProxyProtocol: .literal(false),
        natSubnets: .literal([lbSubnet.ref]),
        targetService: lbBackend.selfLink,
      ),
    );

    final regionalHealthCheck = add(
      GoogleComputeRegionHealthCheck(
        'regional_hc',
        name: .literal('app-regional-hc'),
        region: .literal(region),
        protocol: .https(
          port: .literal(443),
          requestPath: .literal('/healthz'),
          portSpecification: RegionHealthCheckPortSpecification.useFixedPort,
        ),
      ),
    );

    final regionalBackend = add(
      GoogleComputeRegionBackendService(
        'regional_backend',
        name: .literal('app-regional-backend'),
        region: .literal(region),
        protocol: .tcp,
        loadBalancingScheme: .internal,
        healthChecks: .literal([regionalHealthCheck.selfLink.interpolation]),
        backend: [
          ComputeRegionBackendServiceBackend(
            group: lbNeg.selfLink,
            balancingMode: .connection,
          ),
        ],
        dependsOn: [regionalHealthCheck],
      ),
    );

    final regionalNeg = add(
      GoogleComputeRegionNetworkEndpointGroup(
        'regional_neg',
        name: .literal('app-regional-neg'),
        region: .literal(region),
        networkEndpointType: .internetIpPort,
        network: lbVpc.ref,
      ),
    );

    add(
      GoogleComputeRegionNetworkEndpoint(
        'regional_neg_endpoint',
        regionNetworkEndpointGroup: regionalNeg.ref,
        ipAddress: .literal('10.20.0.3'),
        port: .literal(443),
        region: .literal(region),
      ),
    );

    final regionalSslPolicy = add(
      GoogleComputeRegionSslPolicy(
        'regional_ssl_policy',
        name: .literal('app-regional-ssl-policy'),
        region: .literal(region),
        profile: .modern,
        minTlsVersion: .tls12,
      ),
    );

    final regionalSslCert = add(
      GoogleComputeRegionSslCertificate(
        'regional_cert',
        name: .literal('app-regional-cert'),
        region: .literal(region),
        certificate: TfArg.variable('lb_regional_certificate'),
        privateKey: .privateKey(TfArg.variable('lb_regional_private_key')),
      ),
    );

    final regionalArmor = add(
      GoogleComputeRegionSecurityPolicy(
        'regional_armor',
        name: .literal('app-regional-armor'),
        region: .literal(region),
        type: .cloudArmor,
        rules: [
          ComputeRegionSecurityPolicyRules(
            priority: .literal(2147483647),
            action: .literal('allow'),
            match: ComputeRegionSecurityPolicyRulesMatch.config(
              versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
              config: .new(srcIpRanges: const ['*']),
            ),
            description: .literal('default allow-all'),
          ),
        ],
      ),
    );

    add(
      GoogleComputeRegionSecurityPolicyRule(
        'regional_armor_deny',
        securityPolicy: regionalArmor.ref,
        region: .literal(region),
        priority: .literal(2000),
        action: .literal('deny(403)'),
        description: .literal('Block example CIDR (regional)'),
        match: const ComputeRegionSecurityPolicyRuleMatch(
          versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
          config: .new(srcIpRanges: ['198.51.100.0/24']),
        ),
      ),
    );

    add(
      GoogleComputeRegionTargetTcpProxy(
        'regional_tcp_proxy',
        name: .literal('app-regional-tcp-proxy'),
        region: .literal(region),
        backendService: regionalBackend.ref,
      ),
    );

    final globalInternetNeg = add(
      GoogleComputeGlobalNetworkEndpointGroup(
        'global_internet_neg',
        name: .literal('app-global-internet-neg'),
        networkEndpointType: .internetIpPort,
        defaultPort: .literal(443),
      ),
    );

    add(
      GoogleComputeGlobalNetworkEndpoint(
        'global_internet_endpoint',
        globalNetworkEndpointGroup: globalInternetNeg.ref,
        ipAddress: .literal('203.0.113.10'),
        port: .literal(443),
      ),
    );

    // ---- Backfill: fleet, firewall, HTTP path, backend bucket, regional ILB ---

    add(
      GoogleComputeFirewall(
        'allow_lb_health',
        name: .literal('app-allow-lb-health'),
        network: lbVpc.ref,
        direction: .ingress,
        rulePolicy: .allow(protocol: .literal('tcp'), ports: ['443']),
        sourceRanges: .literal(['130.211.0.0/22', '35.191.0.0/16']),
      ),
    );

    final webTemplate = add(
      GoogleComputeInstanceTemplate(
        'web_template',
        namePrefix: .literal('app-web-'),
        machineType: .literal('e2-small'),
        disk: [
          ComputeInstanceTemplateDisk(
            boot: .literal(true),
            sourceImage: .literal('debian-cloud/debian-12'),
            autoDelete: .literal(true),
          ),
        ],
        networkInterface: [
          ComputeInstanceTemplateNetworkInterface(
            network: lbVpc.ref,
            subnetwork: lbSubnet.ref,
          ),
        ],
        networkPerformanceConfig:
            ComputeInstanceTemplateNetworkPerformanceConfig(
              totalEgressBandwidthTier: .tier1,
            ),
      ),
    );

    final webMig = add(
      GoogleComputeInstanceGroupManager(
        'web_mig',
        name: .literal('app-web-mig'),
        zone: .literal(zone),
        baseInstanceName: .literal('app-web'),
        targetSize: .literal(1),
        versions: [
          ComputeInstanceGroupManagerVersion(
            name: .literal('default'),
            instanceTemplate: webTemplate.selfLink,
          ),
        ],
      ),
    );

    add(
      GoogleComputeAutoscaler(
        'web_autoscaler',
        name: .literal('app-web-autoscaler'),
        zone: .literal(zone),
        target: webMig.ref,
        autoscalingPolicy: ComputeAutoscalerAutoscalingPolicy(
          minReplicas: .literal(1),
          maxReplicas: .literal(3),
          cpuUtilization: .new(target: .literal(0.7)),
        ),
      ),
    );

    final staticAssets = add(
      GoogleComputeBackendBucket(
        'static_assets',
        name: .literal('app-static-assets'),
        bucketName: .literal('my-app-static-assets'),
        enableCdn: .literal(true),
      ),
    );

    add(
      GoogleComputeBackendBucketSignedUrlKey(
        'static_assets_signed_url_key',
        name: .literal('app-static-cdn-key'),
        backendBucket: staticAssets.ref,
        keyValue: TfArg.variable('lb_backend_bucket_signed_url_key'),
      ),
    );

    final httpProxy = add(
      GoogleComputeTargetHttpProxy(
        'http_proxy',
        name: .literal('app-http-proxy'),
        urlMap: lbUrlMap.ref,
      ),
    );

    add(
      GoogleComputeGlobalForwardingRule(
        'lb_http_forwarding_rule',
        name: .literal('app-lb-http-forwarding-rule'),
        ipAddress: lbVip.address,
        ipProtocol: .tcp,
        portRange: .literal('80'),
        loadBalancingScheme: .externalManaged,
        target: httpProxy.selfLink,
      ),
    );

    final ilbAddress = add(
      GoogleComputeAddress(
        'ilb_vip',
        name: .literal('app-ilb-vip'),
        region: .literal(region),
        subnetwork: lbSubnet.ref,
        addressType: .internal,
      ),
    );

    final regionUrlMap = add(
      GoogleComputeRegionUrlMap(
        'regional_url_map',
        name: .literal('app-regional-url-map'),
        region: .literal(region),
        defaultService: regionalBackend.ref,
      ),
    );

    final regionHttpProxy = add(
      GoogleComputeRegionTargetHttpProxy(
        'regional_http_proxy',
        name: .literal('app-regional-http-proxy'),
        region: .literal(region),
        urlMap: regionUrlMap.ref,
      ),
    );

    final regionHttpsProxy = add(
      GoogleComputeRegionTargetHttpsProxy(
        'regional_https_proxy',
        name: .literal('app-regional-https-proxy'),
        region: .literal(region),
        urlMap: regionUrlMap.ref,
        certificates: .sslCertificates(.literal([regionalSslCert.ref])),
        sslPolicy: regionalSslPolicy.ref,
        dependsOn: [regionalSslCert, regionalSslPolicy],
      ),
    );

    final regionalMig = add(
      GoogleComputeRegionInstanceGroupManager(
        'regional_web_mig',
        name: .literal('app-regional-web-mig'),
        region: .literal(region),
        baseInstanceName: .literal('app-regional-web'),
        targetSize: .literal(2),
        distributionPolicyZones: .literal([zone]),
        versions: [
          ComputeRegionInstanceGroupManagerVersion(
            name: .literal('default'),
            instanceTemplate: webTemplate.selfLink,
          ),
        ],
      ),
    );

    add(
      GoogleComputeRegionAutoscaler(
        'regional_web_autoscaler',
        name: .literal('app-regional-web-autoscaler'),
        region: .literal(region),
        target: regionalMig.selfLink,
        autoscalingPolicy: ComputeRegionAutoscalerAutoscalingPolicy(
          minReplicas: .literal(2),
          maxReplicas: .literal(6),
          cpuUtilization: .new(target: .literal(0.65)),
        ),
      ),
    );

    final ilbHttps = add(
      GoogleComputeForwardingRule(
        'ilb_https',
        name: .literal('app-ilb-https'),
        region: .literal(region),
        target: regionHttpsProxy.selfLink,
        network: lbVpc.ref,
        subnetwork: lbSubnet.ref,
        ipAddress: ilbAddress.selfLink,
        ipProtocol: .tcp,
        portRange: .literal('443'),
        loadBalancingScheme: .internalManaged,
      ),
    );

    add(
      GoogleComputeForwardingRule(
        'ilb_http',
        name: .literal('app-ilb-http'),
        region: .literal(region),
        target: regionHttpProxy.selfLink,
        network: lbVpc.ref,
        subnetwork: lbSubnet.ref,
        ipAddress: ilbAddress.selfLink,
        ipProtocol: .tcp,
        portRange: .literal('80'),
        loadBalancingScheme: .internalManaged,
      ),
    );

    // ---- Wave 23: IAP on the global HTTPS backend ------------------------
    //
    // Member (additive) is the default pattern. Binding (authoritative per
    // role) is shown for stacks that fully own the IAP accessor list.

    add(
      GoogleIapWebBackendServiceIamMember(
        'lb_iap_accessor',
        webBackendService: lbBackend.name,
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .allAuthenticatedUsers,
        dependsOn: [lbBackend],
      ),
    );

    add(
      GoogleIapWebBackendServiceIamBinding(
        'lb_iap_binding',
        webBackendService: lbBackend.name,
        role: .literal('roles/iap.httpsResourceAccessor'),
        members: .literal([.group('platform-admins@example.com')]),
        dependsOn: [lbBackend],
      ),
    );

    // IAP on the regional ILB forwarding rule and regional backend service.
    add(
      GoogleIapWebForwardingRuleServiceIamMember(
        'ilb_https_iap_accessor',
        forwardingRuleServiceName: ilbHttps.name,
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .allAuthenticatedUsers,
        dependsOn: [ilbHttps],
      ),
    );

    add(
      GoogleIapWebRegionForwardingRuleServiceIamMember(
        'ilb_https_region_iap_accessor',
        forwardingRuleRegionServiceName: ilbHttps.name,
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .allAuthenticatedUsers,
        region: .literal(region),
        dependsOn: [ilbHttps],
      ),
    );

    add(
      GoogleIapWebRegionBackendServiceIamMember(
        'regional_backend_iap_accessor',
        webRegionBackendService: regionalBackend.name,
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .allAuthenticatedUsers,
        region: .literal(region),
        dependsOn: [regionalBackend],
      ),
    );
  }
}
