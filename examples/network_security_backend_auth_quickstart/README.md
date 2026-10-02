# Network Security backend authentication config quickstart

End-to-end terradart example for a **Network Security backend authentication
config** used with backend mTLS. Enables `networksecurity.googleapis.com` and
creates a global config with public trust roots (no BackendService attachment).

Creating the config alone does not bill Network Security data-plane SKUs.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/network_security_backend_auth_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
