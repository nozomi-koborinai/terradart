# Network Security TLS policies quickstart

End-to-end terradart example for Network Security **client** and **server**
TLS policies. Enables `networksecurity.googleapis.com` and provisions empty
global policies (no cert-provider wiring).

Creating a policy alone does **not** attach it to a backend/proxy or bill
Anthos Service Mesh / Traffic Director data-plane SKUs.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/network_security_tls_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
