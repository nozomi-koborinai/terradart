/// Compute LB quickstart -- Wave 6 Batch 1 end-to-end example.
///
/// Defines a `ComputeLbStack` that provisions the canonical L7 Global
/// External Application Load Balancer chain:
///
/// 1. `google_compute_global_address` -- the LB front-end VIP (a global,
///    external IPv4 address).
/// 2. `google_compute_managed_ssl_certificate` -- a Google-managed cert
///    that terminates TLS at the front-end domain.
/// 3. `google_compute_backend_service` (global) -- the policy plane:
///    timeouts, protocol, eventual NEG backends + health check wiring.
///    Backends and health_checks are intentionally empty in Batch 1;
///    Batch 2 wires a real health_check and Batch 4 wires NEG backends
///    + Cloud Armor + a custom SSL policy.
/// 4. `google_compute_url_map` -- routes all traffic to the backend
///    service (`defaultService`).
/// 5. `google_compute_target_https_proxy` -- terminates HTTPS using the
///    managed SSL cert and forwards into the URL map.
/// 6. `google_compute_global_forwarding_rule` -- binds the VIP and port
///    443 to the target HTTPS proxy as an `EXTERNAL_MANAGED` L7 LB.
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
        managed: const ManagedSslCertificateManaged(
          domains: ['app.example.com'],
        ),
      ),
    );

    // ---- 3. Backend service (global) -------------------------------------
    //
    // Batch 1: stand up the resource with the minimum schema required for
    // `terraform validate` to pass. The real wiring lands in later
    // batches.
    //
    // TODO(Wave6-Batch2): replace `healthChecks: TfArg.literal([])` with
    // `TfArg.literal(['\${google_compute_health_check.lb_hc.self_link}'])`
    // once the health_check resource is curated.
    //
    // TODO(Wave6-Batch4): wire backends[].group to a serverless or zonal
    // NEG (`google_compute_region_network_endpoint_group`), attach a
    // `securityPolicy` (Cloud Armor), and bind a `GoogleComputeSslPolicy`
    // on the target_https_proxy below.

    final lbBackend = add(
      GoogleComputeBackendService(
        localName: 'lb_backend',
        name: TfArg.literal('app-lb-backend'),
        protocol: TfArg.literal(BackendServiceProtocol.https),
        loadBalancingScheme: TfArg.literal(LoadBalancingScheme.externalManaged),
        timeoutSec: TfArg.literal(30),
        // Empty until Batch 4 attaches a NEG.
        // TODO(Wave6-Batch4): wire backends[].group to NEG.
        backends: TfArg.literal([]),
        // Empty until Batch 2 curates google_compute_health_check.
        healthChecks: TfArg.literal([]),
      ),
    );

    // ---- 4. URL map: route everything to the backend service -------------

    final lbUrlMap = add(
      GoogleComputeUrlMap(
        localName: 'lb_url_map',
        name: TfArg.literal('app-lb-url-map'),
        defaultService: TfArg.ref(lbBackend.selfLink),
      ),
    );

    // ---- 5. Target HTTPS proxy -------------------------------------------
    //
    // TODO(Wave6-Batch4): set `sslPolicy` to a curated GoogleComputeSslPolicy
    // pinning TLS 1.2+ and a restricted cipher profile.

    final lbHttpsProxy = add(
      GoogleComputeTargetHttpsProxy(
        localName: 'lb_https_proxy',
        name: TfArg.literal('app-lb-https-proxy'),
        urlMap: TfArg.ref(lbUrlMap.selfLink),
        // Reference `lbCert` by self_link rather than inlining the Terraform
        // interpolation string so that the cert resource is the source of
        // truth for the name.
        sslCertificates: TfArg.literal([
          '\${google_compute_managed_ssl_certificate.${lbCert.localName}.self_link}',
        ]),
      ),
    );

    // ---- 6. Global forwarding rule (port 443) ----------------------------

    add(
      GoogleComputeGlobalForwardingRule(
        localName: 'lb_forwarding_rule',
        name: TfArg.literal('app-lb-forwarding-rule'),
        ipAddress: TfArg.ref(lbVip.address),
        ipProtocol: TfArg.literal(ForwardingRuleIpProtocol.tcp),
        portRange: TfArg.literal('443'),
        loadBalancingScheme: TfArg.literal(LoadBalancingScheme.externalManaged),
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
