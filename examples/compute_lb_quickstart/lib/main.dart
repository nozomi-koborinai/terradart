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
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/certificate_manager.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

final class ComputeLbStack extends Stack {
  ComputeLbStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    const region = 'asia-northeast1';
    const zone = 'asia-northeast1-a';

    // ---- 0a. VPC + subnet for the backend fleet --------------------------

    final lbVpc = add(
      GoogleComputeNetwork(
        localName: 'lb_vpc',
        name: TfArg.literal('app-lb-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        routingMode: TfArg.literal(RoutingMode.regional),
      ),
    );

    final lbSubnet = add(
      GoogleComputeSubnetwork(
        localName: 'lb_subnet',
        name: TfArg.literal('app-lb-subnet'),
        region: TfArg.literal(region),
        network: TfArg.ref(lbVpc.selfLink),
        ipCidrRange: TfArg.literal('10.20.0.0/20'),
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
        name: TfArg.literal('app-lb-backend-vm'),
        machineType: TfArg.literal('e2-small'),
        zone: TfArg.literal(zone),
        bootDisk: ComputeInstanceBootDisk(
          initializeParams: ComputeInstanceInitializeParams(
            image: TfArg.literal('debian-cloud/debian-12'),
          ),
        ),
        networkInterface: [
          ComputeInstanceNetworkInterface(
            subnetwork: TfArg.ref(lbSubnet.selfLink),
          ),
        ],
      ),
    );

    // ---- 1. Front-end VIP (global external IPv4) -------------------------

    final lbVip = add(
      GoogleComputeGlobalAddress(
        localName: 'lb_vip',
        name: TfArg.literal('app-lb-vip'),
        addressType: TfArg.literal(GlobalAddressType.external),
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
        name: TfArg.literal('app-lb-cert'),
        managed: ComputeManagedSslCertificateManagedSslCertificateConfig(
          domains: ['app.example.com'],
        ),
      ),
    );

    final selfManagedCert = add(
      GoogleComputeSslCertificate(
        localName: 'self_managed_cert',
        name: TfArg.literal('app-self-managed-cert'),
        certificate: TfArg.variable('lb_self_managed_certificate'),
        privateKey: TfArg.variable('lb_self_managed_private_key'),
      ),
    );

    // ---- 2b. Wave 26: Certificate Manager chain -------------------------
    //
    // Parallel to the classic `google_compute_managed_ssl_certificate`
    // above — DNS authorization, managed cert, map + entry. Wire
    // [GoogleComputeTargetHttpsProxy.certificateMap] to `cmMap.id` at
    // apply time when migrating off Compute SSL certificates.

    final apiCertificateManager = add(
      GoogleProjectService(
        localName: 'api_certificate_manager',
        service: TfArg.literal('certificatemanager.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final cmDnsAuth = GoogleCertificateManagerDnsAuthorization(
      localName: 'cm_dns_auth',
      name: TfArg.literal('app-cm-dns'),
      domain: TfArg.literal('app.example.com'),
      dependsOn: [ResourceDependency(apiCertificateManager)],
    );
    add(cmDnsAuth);

    final cmCert = GoogleCertificateManagerCertificate(
      localName: 'cm_cert',
      name: TfArg.literal('app-cm-cert'),
      provisioning: CertificateManagerCertificateManagedProvisioning(
        domains: ['app.example.com'],
        dnsAuthorizations: [TfArg.ref(cmDnsAuth.id)],
      ),
      dependsOn: [ResourceDependency(cmDnsAuth)],
    );
    add(cmCert);

    final cmMap = GoogleCertificateManagerCertificateMap(
      localName: 'cm_map',
      name: TfArg.literal('app-cm-map'),
      dependsOn: [ResourceDependency(apiCertificateManager)],
    );
    add(cmMap);

    add(
      GoogleCertificateManagerCertificateMapEntry(
        localName: 'cm_map_entry',
        name: TfArg.literal('app-cm-entry'),
        map: TfArg.ref(cmMap.id),
        hostname: TfArg.literal('app.example.com'),
        certificates: TfArg.literal([
          cmCert.id.interpolation,
        ]),
        dependsOn: [
          ResourceDependency(cmMap),
          ResourceDependency(cmCert),
        ],
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
        name: TfArg.literal('app-lb-hc'),
        checkIntervalSec: TfArg.literal(10),
        timeoutSec: TfArg.literal(5),
        healthyThreshold: TfArg.literal(2),
        unhealthyThreshold: TfArg.literal(3),
        httpsHealthCheck: ComputeHealthCheckHttpsHealthCheckConfig(
          port: TfArg.literal(443),
          requestPath: TfArg.literal('/healthz'),
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
        name: TfArg.literal('app-lb-neg'),
        zone: TfArg.literal(zone),
        network: TfArg.ref(lbVpc.selfLink),
        subnetwork: TfArg.ref(lbSubnet.selfLink),
        networkEndpointType:
            TfArg.literal(NetworkEndpointGroupType.gceVmIpPort),
        defaultPort: TfArg.literal(443),
        // Document the chain to the backing VM even though endpoint
        // registration itself is out of scope for this resource.
        dependsOn: [ResourceDependency(lbBackendVm)],
      ),
    );

    add(
      GoogleComputeNetworkEndpoint(
        localName: 'lb_neg_endpoint',
        networkEndpointGroup: TfArg.ref(lbNeg.id),
        instance: TfArg.ref(lbBackendVm.selfLink),
        ipAddress: TfArg.literal('10.20.0.2'),
        port: TfArg.literal(443),
        zone: TfArg.literal(zone),
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
        name: TfArg.literal('app-lb-armor'),
        type: TfArg.literal(SecurityPolicyType.cloudArmor),
        rules: [
          ComputeSecurityPolicySecurityPolicyRule(
            priority: TfArg.literal(2147483647),
            action: SecurityPolicyRuleAction.allow,
            match: ComputeSecurityPolicySecurityPolicyRuleMatch.config(
              versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
              config: ComputeSecurityPolicySecurityPolicyRuleMatchConfig(
                srcIpRanges: ['*'],
              ),
            ),
            description: TfArg.literal('default allow-all'),
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
        name: TfArg.literal('app-lb-backend'),
        protocol: TfArg.literal(BackendServiceProtocol.https),
        loadBalancingScheme: TfArg.literal(LoadBalancingScheme.externalManaged),
        timeoutSec: TfArg.literal(30),
        backends: [
          ComputeBackendServiceBackendServiceBackend(
            group: TfArg.ref(lbNeg.selfLink),
            balancingMode: BackendServiceBalancingMode.rate,
            maxRatePerEndpoint: TfArg.literal(100),
            capacityScaler: TfArg.literal(1.0),
          ),
        ],
        healthChecks: TfArg.literal([
          lbHealthCheck.selfLink.interpolation,
        ]),
        securityPolicy: TfArg.ref(lbArmor.selfLink),
      ),
    );

    // ---- 5. URL map: route everything to the backend service -------------

    final lbUrlMap = add(
      GoogleComputeUrlMap(
        localName: 'lb_url_map',
        name: TfArg.literal('app-lb-url-map'),
        defaultService: TfArg.ref(lbBackend.selfLink),
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
        name: TfArg.literal('app-lb-ssl-policy'),
        profile: TfArg.literal(SslPolicyProfile.modern),
        minTlsVersion: TfArg.literal(SslPolicyMinTlsVersion.tls12),
      ),
    );

    // ---- 6b. Target HTTPS proxy -----------------------------------------

    final lbHttpsProxy = add(
      GoogleComputeTargetHttpsProxy(
        localName: 'lb_https_proxy',
        name: TfArg.literal('app-lb-https-proxy'),
        urlMap: TfArg.ref(lbUrlMap.selfLink),
        // Reference `lbCert` by self_link rather than inlining the Terraform
        // interpolation string so that the cert resource is the source of
        // truth for the name.
        sslCertificates: TfArg.literal([
          lbCert.selfLink.interpolation,
        ]),
        sslPolicy: TfArg.ref(lbSslPolicy.selfLink),
      ),
    );

    // ---- 7. Global forwarding rule (port 443) ----------------------------

    add(
      GoogleComputeGlobalForwardingRule(
        localName: 'lb_forwarding_rule',
        name: TfArg.literal('app-lb-forwarding-rule'),
        ipAddress: TfArg.ref(lbVip.addressRef),
        ipProtocol: TfArg.literal(GlobalForwardingRuleIpProtocol.tcp),
        portRange: TfArg.literal('443'),
        loadBalancingScheme: TfArg.literal(
          GlobalForwardingRuleLoadBalancingScheme.externalManaged,
        ),
        target: TfArg.ref(lbHttpsProxy.selfLink),
      ),
    );

    // ---- Wave 18: additional LB / PSC factories ---------------------------

    add(
      GoogleComputeTargetSslProxy(
        localName: 'lb_ssl_proxy',
        name: TfArg.literal('app-lb-ssl-proxy'),
        backendService: TfArg.ref(lbBackend.selfLink),
        sslCertificates:
            TfArg.literal([selfManagedCert.selfLink.interpolation]),
        dependsOn: [ResourceDependency(selfManagedCert)],
      ),
    );

    add(
      GoogleComputeTargetTcpProxy(
        localName: 'lb_tcp_proxy',
        name: TfArg.literal('app-lb-tcp-proxy'),
        backendService: TfArg.ref(lbBackend.selfLink),
      ),
    );

    add(
      GoogleComputeSecurityPolicyRule(
        localName: 'lb_armor_deny_rule',
        securityPolicy: TfArg.ref(lbArmor.nameRef),
        priority: TfArg.literal(1000),
        action: TfArg.literal('deny(403)'),
        description: TfArg.literal('Block example CIDR'),
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
        name: TfArg.literal('app-lb-psc'),
        region: TfArg.literal(region),
        connectionPreference: TfArg.literal(
            ServiceAttachmentConnectionPreference.acceptAutomatic),
        enableProxyProtocol: TfArg.literal(false),
        natSubnets: TfArg.literal([lbSubnet.selfLink.interpolation]),
        targetService: TfArg.ref(lbBackend.selfLink),
      ),
    );

    final regionalHealthCheck = add(
      GoogleComputeRegionHealthCheck(
        localName: 'regional_hc',
        name: TfArg.literal('app-regional-hc'),
        region: TfArg.literal(region),
        httpsHealthCheck: ComputeRegionHealthCheckRegionHealthCheckHttpsConfig(
          port: TfArg.literal(443),
          requestPath: TfArg.literal('/healthz'),
          portSpecification: RegionHealthCheckPortSpecification.useFixedPort,
        ),
      ),
    );

    final regionalBackend = add(
      GoogleComputeRegionBackendService(
        localName: 'regional_backend',
        name: TfArg.literal('app-regional-backend'),
        region: TfArg.literal(region),
        protocol: TfArg.literal(RegionBackendServiceProtocol.tcp),
        loadBalancingScheme:
            TfArg.literal(RegionBackendServiceLoadBalancingScheme.internal),
        healthChecks:
            TfArg.literal([regionalHealthCheck.selfLink.interpolation]),
        backends: [
          ComputeRegionBackendServiceRegionBackendServiceBackend(
            group: TfArg.ref(lbNeg.selfLink),
            balancingMode: RegionBackendServiceBalancingMode.connection,
          ),
        ],
        dependsOn: [ResourceDependency(regionalHealthCheck)],
      ),
    );

    final regionalNeg = add(
      GoogleComputeRegionNetworkEndpointGroup(
        localName: 'regional_neg',
        name: TfArg.literal('app-regional-neg'),
        region: TfArg.literal(region),
        networkEndpointType: TfArg.literal(
          RegionNetworkEndpointGroupType.internetIpPort,
        ),
        network: TfArg.ref(lbVpc.selfLink),
      ),
    );

    add(
      GoogleComputeRegionNetworkEndpoint(
        localName: 'regional_neg_endpoint',
        regionNetworkEndpointGroup: TfArg.ref(regionalNeg.id),
        ipAddress: TfArg.literal('10.20.0.3'),
        port: TfArg.literal(443),
        region: TfArg.literal(region),
      ),
    );

    final regionalSslPolicy = add(
      GoogleComputeRegionSslPolicy(
        localName: 'regional_ssl_policy',
        name: TfArg.literal('app-regional-ssl-policy'),
        region: TfArg.literal(region),
        profile: TfArg.literal(RegionSslPolicyProfile.modern),
        minTlsVersion: TfArg.literal(RegionSslPolicyMinTlsVersion.tls12),
      ),
    );

    final regionalSslCert = add(
      GoogleComputeRegionSslCertificate(
        localName: 'regional_cert',
        name: TfArg.literal('app-regional-cert'),
        region: TfArg.literal(region),
        certificate: TfArg.variable('lb_regional_certificate'),
        privateKey: TfArg.variable('lb_regional_private_key'),
      ),
    );

    final regionalArmor = add(
      GoogleComputeRegionSecurityPolicy(
        localName: 'regional_armor',
        name: TfArg.literal('app-regional-armor'),
        region: TfArg.literal(region),
        type: TfArg.literal(RegionSecurityPolicyType.cloudArmor),
        rules: [
          ComputeRegionSecurityPolicyRegionSecurityPolicyRule(
            priority: TfArg.literal(2147483647),
            action: TfArg.literal('allow'),
            match:
                ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch.config(
              versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
              config:
                  ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchConfig(
                srcIpRanges: const ['*'],
              ),
            ),
            description: TfArg.literal('default allow-all'),
          ),
        ],
      ),
    );

    add(
      GoogleComputeRegionSecurityPolicyRule(
        localName: 'regional_armor_deny',
        securityPolicy: TfArg.ref(regionalArmor.nameRef),
        region: TfArg.literal(region),
        priority: TfArg.literal(2000),
        action: TfArg.literal('deny(403)'),
        description: TfArg.literal('Block example CIDR (regional)'),
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
        name: TfArg.literal('app-regional-tcp-proxy'),
        region: TfArg.literal(region),
        backendService: TfArg.ref(regionalBackend.selfLink),
      ),
    );

    final globalInternetNeg = add(
      GoogleComputeGlobalNetworkEndpointGroup(
        localName: 'global_internet_neg',
        name: TfArg.literal('app-global-internet-neg'),
        networkEndpointType:
            TfArg.literal(GlobalNetworkEndpointGroupType.internetIpPort),
        defaultPort: TfArg.literal(443),
      ),
    );

    add(
      GoogleComputeGlobalNetworkEndpoint(
        localName: 'global_internet_endpoint',
        globalNetworkEndpointGroup: TfArg.ref(globalInternetNeg.id),
        ipAddress: TfArg.literal('203.0.113.10'),
        port: TfArg.literal(443),
      ),
    );

    // ---- Backfill: fleet, firewall, HTTP path, backend bucket, regional ILB ---

    add(
      GoogleComputeFirewall(
        localName: 'allow_lb_health',
        name: TfArg.literal('app-allow-lb-health'),
        network: TfArg.ref(lbVpc.selfLink),
        direction: TfArg.literal(FirewallDirection.ingress),
        allow: [
          ComputeFirewallFirewallAllowRule(
            protocol: TfArg.literal('tcp'),
            ports: ['443'],
          ),
        ],
        sourceRanges: TfArg.literal(['130.211.0.0/22', '35.191.0.0/16']),
      ),
    );

    final webTemplate = add(
      GoogleComputeInstanceTemplate(
        localName: 'web_template',
        namePrefix: TfArg.literal('app-web-'),
        machineType: TfArg.literal('e2-small'),
        disk: [
          ComputeInstanceTemplateInstanceTemplateDisk(
            boot: TfArg.literal(true),
            sourceImage: TfArg.literal('debian-cloud/debian-12'),
            autoDelete: TfArg.literal(true),
          ),
        ],
        networkInterface: [
          ComputeInstanceTemplateInstanceTemplateNetworkInterface(
            network: TfArg.ref(lbVpc.selfLink),
            subnetwork: TfArg.ref(lbSubnet.selfLink),
          ),
        ],
        networkPerformanceConfig:
            const ComputeInstanceTemplateInstanceTemplateNetworkPerformanceConfig(
          totalEgressBandwidthTier:
              ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier
                  .tier1,
        ),
      ),
    );

    final webMig = add(
      GoogleComputeInstanceGroupManager(
        localName: 'web_mig',
        name: TfArg.literal('app-web-mig'),
        zone: TfArg.literal(zone),
        baseInstanceName: TfArg.literal('app-web'),
        targetSize: TfArg.literal(1),
        versions: [
          ComputeInstanceGroupManagerInstanceGroupManagerVersion(
            name: TfArg.literal('default'),
            instanceTemplate: TfArg.ref(webTemplate.selfLink),
          ),
        ],
      ),
    );

    add(
      GoogleComputeAutoscaler(
        localName: 'web_autoscaler',
        name: TfArg.literal('app-web-autoscaler'),
        zone: TfArg.literal(zone),
        target: TfArg.ref(webMig.selfLink),
        autoscalingPolicy: ComputeAutoscalerAutoscalerAutoscalingPolicy(
          minReplicas: TfArg.literal(1),
          maxReplicas: TfArg.literal(3),
          cpuUtilization: ComputeAutoscalerAutoscalerCpuUtilization(
            target: TfArg.literal(0.7),
          ),
        ),
      ),
    );

    add(
      GoogleComputeBackendBucket(
        localName: 'static_assets',
        name: TfArg.literal('app-static-assets'),
        bucketName: TfArg.literal('my-app-static-assets'),
        enableCdn: TfArg.literal(true),
      ),
    );

    final httpProxy = add(
      GoogleComputeTargetHttpProxy(
        localName: 'http_proxy',
        name: TfArg.literal('app-http-proxy'),
        urlMap: TfArg.ref(lbUrlMap.selfLink),
      ),
    );

    add(
      GoogleComputeGlobalForwardingRule(
        localName: 'lb_http_forwarding_rule',
        name: TfArg.literal('app-lb-http-forwarding-rule'),
        ipAddress: TfArg.ref(lbVip.addressRef),
        ipProtocol: TfArg.literal(GlobalForwardingRuleIpProtocol.tcp),
        portRange: TfArg.literal('80'),
        loadBalancingScheme: TfArg.literal(
          GlobalForwardingRuleLoadBalancingScheme.externalManaged,
        ),
        target: TfArg.ref(httpProxy.selfLink),
      ),
    );

    final ilbAddress = add(
      GoogleComputeAddress(
        localName: 'ilb_vip',
        name: TfArg.literal('app-ilb-vip'),
        region: TfArg.literal(region),
        subnetwork: TfArg.ref(lbSubnet.selfLink),
        addressType: TfArg.literal(AddressType.internal),
      ),
    );

    final regionUrlMap = add(
      GoogleComputeRegionUrlMap(
        localName: 'regional_url_map',
        name: TfArg.literal('app-regional-url-map'),
        region: TfArg.literal(region),
        defaultService: TfArg.ref(regionalBackend.selfLink),
      ),
    );

    final regionHttpProxy = add(
      GoogleComputeRegionTargetHttpProxy(
        localName: 'regional_http_proxy',
        name: TfArg.literal('app-regional-http-proxy'),
        region: TfArg.literal(region),
        urlMap: TfArg.ref(regionUrlMap.selfLink),
      ),
    );

    final regionHttpsProxy = add(
      GoogleComputeRegionTargetHttpsProxy(
        localName: 'regional_https_proxy',
        name: TfArg.literal('app-regional-https-proxy'),
        region: TfArg.literal(region),
        urlMap: TfArg.ref(regionUrlMap.selfLink),
        sslCertificates:
            TfArg.literal([regionalSslCert.selfLink.interpolation]),
        sslPolicy: TfArg.ref(regionalSslPolicy.selfLink),
        dependsOn: [
          ResourceDependency(regionalSslCert),
          ResourceDependency(regionalSslPolicy),
        ],
      ),
    );

    final regionalMig = add(
      GoogleComputeRegionInstanceGroupManager(
        localName: 'regional_web_mig',
        name: TfArg.literal('app-regional-web-mig'),
        region: TfArg.literal(region),
        baseInstanceName: TfArg.literal('app-regional-web'),
        targetSize: TfArg.literal(2),
        distributionPolicyZones: TfArg.literal([zone]),
        versions: [
          ComputeRegionInstanceGroupManagerRegionInstanceGroupManagerVersion(
            name: TfArg.literal('default'),
            instanceTemplate: TfArg.ref(webTemplate.selfLink),
          ),
        ],
      ),
    );

    add(
      GoogleComputeRegionAutoscaler(
        localName: 'regional_web_autoscaler',
        name: TfArg.literal('app-regional-web-autoscaler'),
        region: TfArg.literal(region),
        target: TfArg.ref(regionalMig.selfLink),
        autoscalingPolicy:
            ComputeRegionAutoscalerRegionAutoscalerAutoscalingPolicy(
          minReplicas: TfArg.literal(2),
          maxReplicas: TfArg.literal(6),
          cpuUtilization: ComputeRegionAutoscalerRegionAutoscalerCpuUtilization(
            target: TfArg.literal(0.65),
          ),
        ),
      ),
    );

    add(
      GoogleComputeForwardingRule(
        localName: 'ilb_https',
        name: TfArg.literal('app-ilb-https'),
        region: TfArg.literal(region),
        target: TfArg.ref(regionHttpsProxy.selfLink),
        network: TfArg.ref(lbVpc.selfLink),
        subnetwork: TfArg.ref(lbSubnet.selfLink),
        ipAddress: TfArg.ref(ilbAddress.selfLink),
        ipProtocol: TfArg.literal(ForwardingRuleIpProtocol.tcp),
        portRange: TfArg.literal('443'),
        loadBalancingScheme: TfArg.literal(
          ForwardingRuleLoadBalancingScheme.internalManaged,
        ),
      ),
    );

    add(
      GoogleComputeForwardingRule(
        localName: 'ilb_http',
        name: TfArg.literal('app-ilb-http'),
        region: TfArg.literal(region),
        target: TfArg.ref(regionHttpProxy.selfLink),
        network: TfArg.ref(lbVpc.selfLink),
        subnetwork: TfArg.ref(lbSubnet.selfLink),
        ipAddress: TfArg.ref(ilbAddress.selfLink),
        ipProtocol: TfArg.literal(ForwardingRuleIpProtocol.tcp),
        portRange: TfArg.literal('80'),
        loadBalancingScheme: TfArg.literal(
          ForwardingRuleLoadBalancingScheme.internalManaged,
        ),
      ),
    );

    // ---- Wave 23: IAP accessor on the global HTTPS backend ------------------

    add(
      GoogleIapWebBackendServiceIamMember(
        localName: 'lb_iap_accessor',
        webBackendService: TfArg.ref(lbBackend.nameRef),
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        member: TfArg.literal('allAuthenticatedUsers'),
      ),
    );
  }
}
