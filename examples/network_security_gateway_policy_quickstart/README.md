# Network Security gateway security policy quickstart

End-to-end terradart example for a **Network Security gateway security policy**
used with Secure Web Proxy. Enables `networksecurity.googleapis.com` and
creates a regional policy plus one ALLOW rule (CEL `host() == 'example.com'`).

No Secure Web Proxy gateway is attached, so creating the policy and rule
does not bill Secure Web Proxy / NGFW data-plane SKUs.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/network_security_gateway_policy_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
