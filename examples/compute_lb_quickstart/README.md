# Compute LB quickstart

End-to-end terradart example for an **L7 Global External Application
Load Balancer** on GCP. Provisions the full front-door chain -- VIP,
managed TLS cert, backend service, URL map, HTTPS proxy, and global
forwarding rule -- using only Wave 6 Batch 1 resources.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Compute Engine API enabled and credentials
  configured (`gcloud auth application-default login`).

## Dependency chain

```
global_forwarding_rule (:443)
  -> target_https_proxy   (terminates TLS via managed_ssl_certificate)
       -> url_map         (default_service)
            -> backend_service (global, EXTERNAL_MANAGED)
```

The `global_address` is bound to the forwarding rule as the front-end
VIP; the `managed_ssl_certificate` is bound to the HTTPS proxy.

## Usage

```bash
dart run bin/infra.dart && cd tf-out && terraform init && terraform validate
```

## Wave 6 batch progression

This is the **Wave 6 Batch 1** quickstart: the chain validates but is
not yet a fully serving LB. Later batches extend the same stack:

- **Batch 2** -- adds `google_compute_health_check` and wires it into
  `backend_service.healthChecks`.
- **Batch 4** -- attaches NEG backends (`backends[].group`), a Cloud
  Armor `securityPolicy`, and a curated `GoogleComputeSslPolicy` on the
  HTTPS proxy.

`// TODO(Wave6-Batch2):` and `// TODO(Wave6-Batch4):` markers in
`lib/main.dart` point at the exact extension lines.
