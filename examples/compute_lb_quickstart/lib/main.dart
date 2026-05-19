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

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/provider.dart';

class ComputeLbStack extends Stack {
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
        bootDisk: const BootDisk(
          initializeParams: InitializeParams(
            image: 'debian-cloud/debian-12',
          ),
        ),
        networkInterface: const [
          NetworkInterface(
            subnetwork: r'${google_compute_subnetwork.lb_subnet.self_link}',
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
        managed: const ManagedSslCertificateConfig(
          domains: ['app.example.com'],
        ),
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
        httpsHealthCheck: const HttpsHealthCheckConfig(
          port: 443,
          requestPath: '/healthz',
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
          SecurityPolicyRule(
            priority: 2147483647,
            action: SecurityPolicyRuleAction.allow,
            match: SecurityPolicyRuleMatch.config(
              versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
              config: const SecurityPolicyRuleMatchConfig(
                srcIpRanges: ['*'],
              ),
            ),
            description: const TfArgLiteral<String>('default allow-all'),
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
          BackendServiceBackend(
            group: TfArg.ref(lbNeg.selfLink),
            balancingMode: BackendServiceBalancingMode.rate,
            maxRatePerEndpoint: 100,
            capacityScaler: 1.0,
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
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
