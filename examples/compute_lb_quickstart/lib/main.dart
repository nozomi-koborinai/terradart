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
        localName: 'lb_vpc',
        name: .literal('app-lb-vpc'),
        autoCreateSubnetworks: .literal(false),
        routingMode: .literal(.regional),
      ),
    );

    final lbSubnet = add(
      GoogleComputeSubnetwork(
        localName: 'lb_subnet',
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
        localName: 'lb_backend_vm',
        name: .literal('app-lb-backend-vm'),
        machineType: .literal('e2-small'),
        zone: .literal(zone),
        bootDisk: ComputeInstanceBootDisk(
          initializeParams: ComputeInstanceInitializeParams(
            image: .literal('debian-cloud/debian-12'),
          ),
        ),
        networkInterface: [
          ComputeInstanceNetworkInterface(subnetwork: lbSubnet.ref),
        ],
      ),
    );

    // ---- 1. Front-end VIP (global external IPv4) -------------------------

    final lbVip = add(
      GoogleComputeGlobalAddress(
        localName: 'lb_vip',
        name: .literal('app-lb-vip'),
        addressType: .literal(.external),
      ),
    );

    // ---- 2. Google-managed SSL certificate -------------------------------
    //
    // Substitute the real served domain at apply time. Google-managed
    // certs require the domain's A/AAAA record to resolve to `lb_vip`
    // before the cert provisions.

    final lbCert = add(
      GoogleComputeManagedSslCertificate(
        localName: 'lb_cert',
        name: .literal('app-lb-cert'),
        managed: ComputeManagedSslCertificateConfig(
          domains: ['app.example.com'],
        ),
      ),
    );

    final selfManagedCert = add(
      GoogleComputeSslCertificate(
        localName: 'self_managed_cert',
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
      localName: 'cm_dns_auth',
      name: .literal('app-cm-dns'),
      domain: .literal('app.example.com'),
      dependsOn: [ResourceDependency(apiCertificateManager)],
    );
    add(cmDnsAuth);

    // ---- 2c. Wave 28: Private CA pool (CAS backend for issuance) ---------

    final cmCaPool = GooglePrivatecaCaPool(
      localName: 'cm_ca_pool',
      name: .literal('app-cm-pool'),
      location: .literal(region),
      tier: .literal(.enterprise),
      dependsOn: [ResourceDependency(apiPrivateca)],
    );
    add(cmCaPool);

    final cmCertTemplate = GooglePrivatecaCertificateTemplate(
      localName: 'cm_cert_template',
      name: .literal('app-cm-template'),
      location: .literal(region),
      identityConstraints: PrivatecaCertificateTemplateIdentityConstraints(
        allowSubjectAltNamesPassthrough: .literal(true),
        allowSubjectPassthrough: .literal(true),
        celExpression: PrivatecaCertificateTemplateCelExpression(
          expression: .literal('true'),
          title: .literal('allow-all'),
          location: .literal('any.file.anywhere'),
          description: .literal('Always true'),
        ),
      ),
      dependsOn: [ResourceDependency(cmCaPool)],
    );
    add(cmCertTemplate);

    add(
      GooglePrivatecaCaPoolIamMember(
        localName: 'cm_ca_pool_auditor',
        caPool: .ref(cmCaPool.id),
        role: .literal('roles/privateca.auditor'),
        member: .literal('group:security-admins@example.com'),
        dependsOn: [ResourceDependency(cmCaPool)],
      ),
    );

    add(
      GooglePrivatecaCertificateTemplateIamMember(
        localName: 'cm_cert_template_user',
        certificateTemplate: .ref(cmCertTemplate.nameRef),
        location: .literal(region),
        role: .literal('roles/privateca.templateUser'),
        member: .literal('group:security-admins@example.com'),
        dependsOn: [ResourceDependency(cmCertTemplate)],
      ),
    );

    final cmRootCa = GooglePrivatecaCertificateAuthority(
      localName: 'cm_root_ca',
      certificateAuthorityId: .literal('app-root-ca'),
      pool: .ref(cmCaPool.id),
      location: .literal(region),
      config: PrivatecaCertificateAuthorityConfig(
        subjectConfig: PrivatecaCertificateAuthoritySubjectConfig(
          subject: PrivatecaCertificateAuthoritySubject(
            commonName: .literal('app.example.com'),
          ),
        ),
        x509Config: PrivatecaCertificateAuthorityX509Config(
          caOptions: PrivatecaCertificateAuthorityCaOptions(
            isCa: .literal(true),
          ),
          keyUsage: PrivatecaCertificateAuthorityKeyUsage(
            baseKeyUsage: PrivatecaCertificateAuthorityBaseKeyUsage(
              certSign: .literal(true),
              crlSign: .literal(true),
            ),
            extendedKeyUsage: PrivatecaCertificateAuthorityExtendedKeyUsage(),
          ),
        ),
      ),
      keySpec: .algorithm(.literal(.rsaPkcs14096Sha256)),
      dependsOn: [ResourceDependency(cmCaPool)],
    );
    add(cmRootCa);

    add(
      GooglePrivatecaCertificate(
        localName: 'cm_cas_cert',
        name: .literal('app-cas-cert'),
        pool: .ref(cmCaPool.id),
        location: .literal(region),
        certificateAuthority: .literal('app-root-ca'),
        lifetime: .literal('86400s'),
        request: .pemCsr(TfArg.variable('cm_cas_cert_csr_pem')),
        certificateTemplate: .ref(cmCertTemplate.id),
        dependsOn: [
          ResourceDependency(cmRootCa),
          ResourceDependency(cmCertTemplate),
        ],
      ),
    );

    final cmIssuance = GoogleCertificateManagerCertificateIssuanceConfig(
      localName: 'cm_issuance',
      name: .literal('app-cm-issuance'),
      certificateAuthorityConfig:
          CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig(
            certificateAuthorityServiceConfig:
                CertificateManagerCertificateIssuanceConfigCertificateAuthorityServiceConfig(
                  caPool: .ref(cmCaPool.id),
                ),
          ),
      keyAlgorithm: .literal(.rsa2048),
      lifetime: .literal('2592000s'),
      rotationWindowPercentage: .literal(50),
      dependsOn: [
        ResourceDependency(apiCertificateManager),
        ResourceDependency(cmCaPool),
        ResourceDependency(cmRootCa),
      ],
    );
    add(cmIssuance);

    add(
      GoogleCertificateManagerTrustConfig(
        localName: 'cm_trust',
        name: .literal('app-cm-trust'),
        location: .literal('global'),
        trustStores: [
          CertificateManagerTrustConfigTrustStore(
            trustAnchors: [
              CertificateManagerTrustConfigTrustAnchor(
                pemCertificate: TfArg.variable('cm_trust_anchor_pem'),
              ),
            ],
          ),
        ],
        dependsOn: [ResourceDependency(apiCertificateManager)],
      ),
    );

    final cmCert = GoogleCertificateManagerCertificate(
      localName: 'cm_cert',
      name: .literal('app-cm-cert'),
      provisioning: .managed(
        CertificateManagerCertificateManaged(
          domains: .literal(['app.example.com']),
          dnsAuthorizations: .literal([cmDnsAuth.id.interpolation]),
        ),
      ),
      dependsOn: [ResourceDependency(cmDnsAuth)],
    );
    add(cmCert);

    final cmMap = GoogleCertificateManagerCertificateMap(
      localName: 'cm_map',
      name: .literal('app-cm-map'),
      dependsOn: [ResourceDependency(apiCertificateManager)],
    );
    add(cmMap);

    add(
      GoogleCertificateManagerCertificateMapEntry(
        localName: 'cm_map_entry',
        name: .literal('app-cm-entry'),
        map: .ref(cmMap.id),
        match: CertificateManagerCertificateMapEntryMatch.hostname(
          .literal('app.example.com'),
        ),
        certificates: .literal([cmCert.id.interpolation]),
        dependsOn: [ResourceDependency(cmMap), ResourceDependency(cmCert)],
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
        localName: 'lb_hc',
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
        localName: 'lb_neg',
        name: .literal('app-lb-neg'),
        zone: .literal(zone),
        network: lbVpc.ref,
        subnetwork: lbSubnet.ref,
        networkEndpointType: .literal(.gceVmIpPort),
        defaultPort: .literal(443),
        // Document the chain to the backing VM even though endpoint
        // registration itself is out of scope for this resource.
        dependsOn: [ResourceDependency(lbBackendVm)],
      ),
    );

    add(
      GoogleComputeNetworkEndpoint(
        localName: 'lb_neg_endpoint',
        networkEndpointGroup: .ref(lbNeg.id),
        instance: .ref(lbBackendVm.selfLink),
        ipAddress: .literal('10.20.0.2'),
        port: .literal(443),
        zone: .literal(zone),
        dependsOn: [ResourceDependency(lbNeg), ResourceDependency(lbBackendVm)],
      ),
    );

    // ---- 3c. Cloud Armor security policy ---------------------------------
    //
    // A minimal Cloud Armor policy with a single allow-all default rule.
    // Real policies layer higher-priority deny / rate-limit / geo rules
    // above this default; here it exists to demonstrate the wiring.

    final lbArmor = add(
      GoogleComputeSecurityPolicy(
        localName: 'lb_armor',
        name: .literal('app-lb-armor'),
        type: .literal(.cloudArmor),
        rules: [
          ComputeSecurityPolicyRules(
            priority: .literal(2147483647),
            action: SecurityPolicyRuleAction.allow,
            match: ComputeSecurityPolicyRulesMatch.config(
              versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
              config: ComputeSecurityPolicyRulesMatchConfig(srcIpRanges: ['*']),
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
        localName: 'lb_backend',
        name: .literal('app-lb-backend'),
        protocol: .literal(.https),
        loadBalancingScheme: .literal(.externalManaged),
        timeoutSec: .literal(30),
        backend: [
          ComputeBackendServiceBackend(
            group: .ref(lbNeg.selfLink),
            balancingMode: .literal(.rate),
            maxRatePerEndpoint: .literal(100),
            capacityScaler: .literal(1.0),
          ),
        ],
        healthChecks: .literal([lbHealthCheck.selfLink.interpolation]),
        securityPolicy: .ref(lbArmor.selfLink),
      ),
    );

    add(
      GoogleComputeBackendServiceSignedUrlKey(
        localName: 'lb_backend_signed_url_key',
        name: .literal('app-lb-cdn-key'),
        backendService: .ref(lbBackend.nameRef),
        keyValue: TfArg.variable('lb_backend_service_signed_url_key'),
      ),
    );

    // ---- 5. URL map: route everything to the backend service -------------

    final lbUrlMap = add(
      GoogleComputeUrlMap(
        localName: 'lb_url_map',
        name: .literal('app-lb-url-map'),
        defaultService: .ref(lbBackend.selfLink),
      ),
    );

    // ---- 6a. SSL policy --------------------------------------------------
    //
    // Pins a TLS 1.2 floor + the `MODERN` cipher profile. Locks out
    // legacy 1.0 / 1.1 negotiation while keeping the broad-coverage
    // cipher set the modern profile ships with.

    final lbSslPolicy = add(
      GoogleComputeSslPolicy(
        localName: 'lb_ssl_policy',
        name: .literal('app-lb-ssl-policy'),
        profile: .literal(.modern),
        minTlsVersion: .literal(.tls12),
      ),
    );

    // ---- 6b. Target HTTPS proxy -----------------------------------------

    final lbHttpsProxy = add(
      GoogleComputeTargetHttpsProxy(
        localName: 'lb_https_proxy',
        name: .literal('app-lb-https-proxy'),
        urlMap: .ref(lbUrlMap.selfLink),
        // Reference `lbCert` by self_link rather than inlining the Terraform
        // interpolation string so that the cert resource is the source of
        // truth for the name.
        certificates: .sslCertificates(
          .literal([lbCert.selfLink.interpolation]),
        ),
        sslPolicy: .ref(lbSslPolicy.selfLink),
      ),
    );

    // ---- 7. Global forwarding rule (port 443) ----------------------------

    add(
      GoogleComputeGlobalForwardingRule(
        localName: 'lb_forwarding_rule',
        name: .literal('app-lb-forwarding-rule'),
        ipAddress: .ref(lbVip.addressRef),
        ipProtocol: .literal(.tcp),
        portRange: .literal('443'),
        loadBalancingScheme: .literal(.externalManaged),
        target: .ref(lbHttpsProxy.selfLink),
      ),
    );

    // ---- Wave 18: additional LB / PSC factories ---------------------------

    add(
      GoogleComputeTargetSslProxy(
        localName: 'lb_ssl_proxy',
        name: .literal('app-lb-ssl-proxy'),
        backendService: .ref(lbBackend.selfLink),
        sslCertificates: .literal([selfManagedCert.selfLink.interpolation]),
        dependsOn: [ResourceDependency(selfManagedCert)],
      ),
    );

    add(
      GoogleComputeTargetTcpProxy(
        localName: 'lb_tcp_proxy',
        name: .literal('app-lb-tcp-proxy'),
        backendService: .ref(lbBackend.selfLink),
      ),
    );

    add(
      GoogleComputeSecurityPolicyRule(
        localName: 'lb_armor_deny_rule',
        securityPolicy: .ref(lbArmor.nameRef),
        priority: .literal(1000),
        action: .literal('deny(403)'),
        description: .literal('Block example CIDR'),
        match: const ComputeSecurityPolicyRuleMatch(
          versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
          config: ComputeSecurityPolicyRuleMatchConfig(
            srcIpRanges: ['203.0.113.0/24'],
          ),
        ),
      ),
    );

    add(
      GoogleComputeServiceAttachment(
        localName: 'lb_psc_attachment',
        name: .literal('app-lb-psc'),
        region: .literal(region),
        connectionPreference: .literal(.acceptAutomatic),
        enableProxyProtocol: .literal(false),
        natSubnets: .literal([lbSubnet.selfLink.interpolation]),
        targetService: .ref(lbBackend.selfLink),
      ),
    );

    final regionalHealthCheck = add(
      GoogleComputeRegionHealthCheck(
        localName: 'regional_hc',
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
        localName: 'regional_backend',
        name: .literal('app-regional-backend'),
        region: .literal(region),
        protocol: .literal(.tcp),
        loadBalancingScheme: .literal(.internal),
        healthChecks: .literal([regionalHealthCheck.selfLink.interpolation]),
        backend: [
          ComputeRegionBackendServiceBackend(
            group: .ref(lbNeg.selfLink),
            balancingMode: .literal(.connection),
          ),
        ],
        dependsOn: [ResourceDependency(regionalHealthCheck)],
      ),
    );

    final regionalNeg = add(
      GoogleComputeRegionNetworkEndpointGroup(
        localName: 'regional_neg',
        name: .literal('app-regional-neg'),
        region: .literal(region),
        networkEndpointType: .literal(.internetIpPort),
        network: lbVpc.ref,
      ),
    );

    add(
      GoogleComputeRegionNetworkEndpoint(
        localName: 'regional_neg_endpoint',
        regionNetworkEndpointGroup: .ref(regionalNeg.id),
        ipAddress: .literal('10.20.0.3'),
        port: .literal(443),
        region: .literal(region),
      ),
    );

    final regionalSslPolicy = add(
      GoogleComputeRegionSslPolicy(
        localName: 'regional_ssl_policy',
        name: .literal('app-regional-ssl-policy'),
        region: .literal(region),
        profile: .literal(.modern),
        minTlsVersion: .literal(.tls12),
      ),
    );

    final regionalSslCert = add(
      GoogleComputeRegionSslCertificate(
        localName: 'regional_cert',
        name: .literal('app-regional-cert'),
        region: .literal(region),
        certificate: TfArg.variable('lb_regional_certificate'),
        privateKey: .privateKey(TfArg.variable('lb_regional_private_key')),
      ),
    );

    final regionalArmor = add(
      GoogleComputeRegionSecurityPolicy(
        localName: 'regional_armor',
        name: .literal('app-regional-armor'),
        region: .literal(region),
        type: .literal(.cloudArmor),
        rules: [
          ComputeRegionSecurityPolicyRules(
            priority: .literal(2147483647),
            action: .literal('allow'),
            match: ComputeRegionSecurityPolicyRulesMatch.config(
              versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
              config: ComputeRegionSecurityPolicyRulesMatchConfig(
                srcIpRanges: const ['*'],
              ),
            ),
            description: .literal('default allow-all'),
          ),
        ],
      ),
    );

    add(
      GoogleComputeRegionSecurityPolicyRule(
        localName: 'regional_armor_deny',
        securityPolicy: .ref(regionalArmor.nameRef),
        region: .literal(region),
        priority: .literal(2000),
        action: .literal('deny(403)'),
        description: .literal('Block example CIDR (regional)'),
        match: const ComputeRegionSecurityPolicyRuleMatch(
          versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
          config: ComputeRegionSecurityPolicyRuleMatchConfig(
            srcIpRanges: ['198.51.100.0/24'],
          ),
        ),
      ),
    );

    add(
      GoogleComputeRegionTargetTcpProxy(
        localName: 'regional_tcp_proxy',
        name: .literal('app-regional-tcp-proxy'),
        region: .literal(region),
        backendService: .ref(regionalBackend.selfLink),
      ),
    );

    final globalInternetNeg = add(
      GoogleComputeGlobalNetworkEndpointGroup(
        localName: 'global_internet_neg',
        name: .literal('app-global-internet-neg'),
        networkEndpointType: .literal(.internetIpPort),
        defaultPort: .literal(443),
      ),
    );

    add(
      GoogleComputeGlobalNetworkEndpoint(
        localName: 'global_internet_endpoint',
        globalNetworkEndpointGroup: .ref(globalInternetNeg.id),
        ipAddress: .literal('203.0.113.10'),
        port: .literal(443),
      ),
    );

    // ---- Backfill: fleet, firewall, HTTP path, backend bucket, regional ILB ---

    add(
      GoogleComputeFirewall(
        localName: 'allow_lb_health',
        name: .literal('app-allow-lb-health'),
        network: lbVpc.ref,
        direction: .literal(.ingress),
        rulePolicy: .allow(protocol: .literal('tcp'), ports: ['443']),
        sourceRanges: .literal(['130.211.0.0/22', '35.191.0.0/16']),
      ),
    );

    final webTemplate = add(
      GoogleComputeInstanceTemplate(
        localName: 'web_template',
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
              totalEgressBandwidthTier: .literal(.tier1),
            ),
      ),
    );

    final webMig = add(
      GoogleComputeInstanceGroupManager(
        localName: 'web_mig',
        name: .literal('app-web-mig'),
        zone: .literal(zone),
        baseInstanceName: .literal('app-web'),
        targetSize: .literal(1),
        versions: [
          ComputeInstanceGroupManagerVersion(
            name: .literal('default'),
            instanceTemplate: .ref(webTemplate.selfLink),
          ),
        ],
      ),
    );

    add(
      GoogleComputeAutoscaler(
        localName: 'web_autoscaler',
        name: .literal('app-web-autoscaler'),
        zone: .literal(zone),
        target: .ref(webMig.selfLink),
        autoscalingPolicy: ComputeAutoscalerAutoscalingPolicy(
          minReplicas: .literal(1),
          maxReplicas: .literal(3),
          cpuUtilization: ComputeAutoscalerCpuUtilization(
            target: .literal(0.7),
          ),
        ),
      ),
    );

    final staticAssets = add(
      GoogleComputeBackendBucket(
        localName: 'static_assets',
        name: .literal('app-static-assets'),
        bucketName: .literal('my-app-static-assets'),
        enableCdn: .literal(true),
      ),
    );

    add(
      GoogleComputeBackendBucketSignedUrlKey(
        localName: 'static_assets_signed_url_key',
        name: .literal('app-static-cdn-key'),
        backendBucket: .ref(staticAssets.nameRef),
        keyValue: TfArg.variable('lb_backend_bucket_signed_url_key'),
      ),
    );

    final httpProxy = add(
      GoogleComputeTargetHttpProxy(
        localName: 'http_proxy',
        name: .literal('app-http-proxy'),
        urlMap: .ref(lbUrlMap.selfLink),
      ),
    );

    add(
      GoogleComputeGlobalForwardingRule(
        localName: 'lb_http_forwarding_rule',
        name: .literal('app-lb-http-forwarding-rule'),
        ipAddress: .ref(lbVip.addressRef),
        ipProtocol: .literal(.tcp),
        portRange: .literal('80'),
        loadBalancingScheme: .literal(.externalManaged),
        target: .ref(httpProxy.selfLink),
      ),
    );

    final ilbAddress = add(
      GoogleComputeAddress(
        localName: 'ilb_vip',
        name: .literal('app-ilb-vip'),
        region: .literal(region),
        subnetwork: lbSubnet.ref,
        addressType: .literal(.internal),
      ),
    );

    final regionUrlMap = add(
      GoogleComputeRegionUrlMap(
        localName: 'regional_url_map',
        name: .literal('app-regional-url-map'),
        region: .literal(region),
        defaultService: .ref(regionalBackend.selfLink),
      ),
    );

    final regionHttpProxy = add(
      GoogleComputeRegionTargetHttpProxy(
        localName: 'regional_http_proxy',
        name: .literal('app-regional-http-proxy'),
        region: .literal(region),
        urlMap: .ref(regionUrlMap.selfLink),
      ),
    );

    final regionHttpsProxy = add(
      GoogleComputeRegionTargetHttpsProxy(
        localName: 'regional_https_proxy',
        name: .literal('app-regional-https-proxy'),
        region: .literal(region),
        urlMap: .ref(regionUrlMap.selfLink),
        certificates: .sslCertificates(
          .literal([regionalSslCert.selfLink.interpolation]),
        ),
        sslPolicy: .ref(regionalSslPolicy.selfLink),
        dependsOn: [
          ResourceDependency(regionalSslCert),
          ResourceDependency(regionalSslPolicy),
        ],
      ),
    );

    final regionalMig = add(
      GoogleComputeRegionInstanceGroupManager(
        localName: 'regional_web_mig',
        name: .literal('app-regional-web-mig'),
        region: .literal(region),
        baseInstanceName: .literal('app-regional-web'),
        targetSize: .literal(2),
        distributionPolicyZones: .literal([zone]),
        versions: [
          ComputeRegionInstanceGroupManagerVersion(
            name: .literal('default'),
            instanceTemplate: .ref(webTemplate.selfLink),
          ),
        ],
      ),
    );

    add(
      GoogleComputeRegionAutoscaler(
        localName: 'regional_web_autoscaler',
        name: .literal('app-regional-web-autoscaler'),
        region: .literal(region),
        target: .ref(regionalMig.selfLink),
        autoscalingPolicy: ComputeRegionAutoscalerAutoscalingPolicy(
          minReplicas: .literal(2),
          maxReplicas: .literal(6),
          cpuUtilization: ComputeRegionAutoscalerCpuUtilization(
            target: .literal(0.65),
          ),
        ),
      ),
    );

    final ilbHttps = add(
      GoogleComputeForwardingRule(
        localName: 'ilb_https',
        name: .literal('app-ilb-https'),
        region: .literal(region),
        target: .ref(regionHttpsProxy.selfLink),
        network: lbVpc.ref,
        subnetwork: lbSubnet.ref,
        ipAddress: .ref(ilbAddress.selfLink),
        ipProtocol: .literal(.tcp),
        portRange: .literal('443'),
        loadBalancingScheme: .literal(.internalManaged),
      ),
    );

    add(
      GoogleComputeForwardingRule(
        localName: 'ilb_http',
        name: .literal('app-ilb-http'),
        region: .literal(region),
        target: .ref(regionHttpProxy.selfLink),
        network: lbVpc.ref,
        subnetwork: lbSubnet.ref,
        ipAddress: .ref(ilbAddress.selfLink),
        ipProtocol: .literal(.tcp),
        portRange: .literal('80'),
        loadBalancingScheme: .literal(.internalManaged),
      ),
    );

    // ---- Wave 23: IAP on the global HTTPS backend ------------------------
    //
    // Member (additive) is the default pattern. Binding (authoritative per
    // role) is shown for stacks that fully own the IAP accessor list.

    add(
      GoogleIapWebBackendServiceIamMember(
        localName: 'lb_iap_accessor',
        webBackendService: .ref(lbBackend.nameRef),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .literal('allAuthenticatedUsers'),
        dependsOn: [ResourceDependency(lbBackend)],
      ),
    );

    add(
      GoogleIapWebBackendServiceIamBinding(
        localName: 'lb_iap_binding',
        webBackendService: .ref(lbBackend.nameRef),
        role: .literal('roles/iap.httpsResourceAccessor'),
        members: .literal(['group:platform-admins@example.com']),
        dependsOn: [ResourceDependency(lbBackend)],
      ),
    );

    // IAP on the regional ILB forwarding rule and regional backend service.
    add(
      GoogleIapWebForwardingRuleServiceIamMember(
        localName: 'ilb_https_iap_accessor',
        forwardingRuleServiceName: .ref(ilbHttps.nameRef),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .literal('allAuthenticatedUsers'),
        dependsOn: [ResourceDependency(ilbHttps)],
      ),
    );

    add(
      GoogleIapWebRegionForwardingRuleServiceIamMember(
        localName: 'ilb_https_region_iap_accessor',
        forwardingRuleRegionServiceName: .ref(ilbHttps.nameRef),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .literal('allAuthenticatedUsers'),
        region: .literal(region),
        dependsOn: [ResourceDependency(ilbHttps)],
      ),
    );

    add(
      GoogleIapWebRegionBackendServiceIamMember(
        localName: 'regional_backend_iap_accessor',
        webRegionBackendService: .ref(regionalBackend.nameRef),
        role: .literal('roles/iap.httpsResourceAccessor'),
        member: .literal('allAuthenticatedUsers'),
        region: .literal(region),
        dependsOn: [ResourceDependency(regionalBackend)],
      ),
    );
  }
}
