# Compute VPN gateway shells quickstart

End-to-end terradart example for VPN **gateway** metadata only:

- `google_compute_vpn_gateway` (classic target VPN gateway)
- `google_compute_ha_vpn_gateway`
- `google_compute_external_vpn_gateway` (off-GCP peer shell)

**Does not** create `google_compute_vpn_tunnel` (hourly `sweep_only` tunnel
SKUs) or forwarding rules / Cloud Router BGP scaffolding.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/compute_vpn_gateway_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
