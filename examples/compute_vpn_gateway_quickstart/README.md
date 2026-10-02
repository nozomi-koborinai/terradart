# Compute VPN gateway shells quickstart

End-to-end terradart example for VPN **gateway** metadata only:

- `google_compute_vpn_gateway` (classic target VPN gateway)
- `google_compute_ha_vpn_gateway`
- `google_compute_external_vpn_gateway` (off-GCP peer shell)

**Does not** create `google_compute_vpn_tunnel` (tunnels bill hourly) or
forwarding rules / Cloud Router BGP scaffolding.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/compute_vpn_gateway_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
