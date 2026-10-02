# IAP tunnel destination group quickstart

End-to-end terradart example for an **IAP tunnel destination group**. Enables
`iap.googleapis.com` and creates a regional `google_iap_tunnel_dest_group`
with a private CIDR used for TCP-by-host forwarding.

Creating the group alone does not open tunnels. Cloud IAP for GCP-hosted
targets is free; Chrome Enterprise Premium features are not used.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/iap_tunnel_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
