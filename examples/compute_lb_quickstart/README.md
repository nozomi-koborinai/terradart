# Compute LB quickstart

End-to-end terradart example for an **L7 Global External Application
Load Balancer** on GCP. Provisions the full front-door chain --
VPC, subnet, backend VM, health check, NEG, Cloud Armor policy,
backend service, URL map, SSL policy, managed TLS cert, target HTTPS
proxy, VIP, and global forwarding rule -- using only Wave 6 resources.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Compute Engine API enabled and credentials
  configured (`gcloud auth application-default login`).

## Dependency chain

```
global_forwarding_rule (:443)
  -> target_https_proxy   (terminates TLS via managed_ssl_certificate
                           and pins protocol via ssl_policy)
       -> url_map         (default_service)
            -> backend_service (global, EXTERNAL_MANAGED)
                 -> health_check         (HTTPS probe on /healthz)
                 -> security_policy      (Cloud Armor: allow-all default)
                 -> network_endpoint_group (zonal GCE_VM_IP_PORT NEG)
                      -> compute_instance  (placeholder backend VM)
                           -> subnetwork
                                -> network (custom-mode VPC)
```

The `global_address` is bound to the forwarding rule as the front-end
VIP; the `managed_ssl_certificate` and `ssl_policy` are both bound to
the HTTPS proxy.

## Resources demonstrated

Thirteen Wave 6 resources are wired together in `lib/main.dart`:

1. `google_compute_network`                   -- custom-mode VPC
2. `google_compute_subnetwork`                -- regional backend subnet
3. `google_compute_instance`                  -- placeholder backend VM
4. `google_compute_health_check`              -- HTTPS `/healthz` probe
5. `google_compute_network_endpoint_group`    -- zonal `GCE_VM_IP_PORT` NEG
6. `google_compute_security_policy`           -- Cloud Armor (allow-all default)
7. `google_compute_backend_service`           -- global, `EXTERNAL_MANAGED`
8. `google_compute_url_map`                   -- routes all traffic to the backend
9. `google_compute_managed_ssl_certificate`   -- Google-managed TLS cert
10. `google_compute_ssl_policy`               -- TLS 1.2 floor + `MODERN` profile
11. `google_compute_target_https_proxy`       -- terminates HTTPS
12. `google_compute_global_address`           -- front-end VIP
13. `google_compute_global_forwarding_rule`   -- VIP:443 -> HTTPS proxy

Wave 6 ships additional curated resources that pair with this stack but
are out of scope for a single quickstart -- pick them up as the design
demands:

- `google_compute_region_health_check` and
  `google_compute_region_network_endpoint_group` -- regional siblings
  for internal / regional-managed LBs.
- `google_compute_global_network_endpoint_group` and
  `google_compute_region_backend_service` -- global hybrid NEG and the
  regional backend-service variant.
- `google_compute_target_http_proxy`, `google_compute_target_tcp_proxy`,
  `google_compute_target_ssl_proxy`, and
  `google_compute_target_grpc_proxy` -- non-HTTPS L7 proxies.
- `google_compute_forwarding_rule` -- regional L4 forwarding.
- `google_compute_url_map` path-matcher rules and
  `google_compute_region_url_map` -- richer routing topologies.
- `google_compute_region_ssl_certificate`,
  `google_compute_region_target_https_proxy`, and
  `google_compute_address` -- regional cert / proxy / address variants.

## Usage

```bash
dart run bin/infra.dart && cd tf-out && terraform init && terraform validate
```

## Design notes

- The Cloud Armor policy intentionally ships only a default `allow` rule
  at priority `2147483647`. In production this is where deny / rate-limit
  / geo / preconfigured-WAF rules layer in above the default.
- `compute_instance` is a single VM purely so the NEG has a tangible
  network-adjacent target; real deployments use a MIG fleet with the
  autohealer registering endpoints. Endpoint registration itself (the
  `google_compute_network_endpoint` resource) is not curated yet.
- The SSL policy combines `MODERN` cipher selection with a TLS 1.2 floor.
  Compliance-grade workloads (PCI-DSS, SOC 2, HIPAA) should instead use
  `SslPolicyProfile.restricted`, which is updated by Google as suites
  age out.
- The HTTPS proxy references the SSL cert via interpolation rather than
  by raw name so the cert resource remains the source of truth.
