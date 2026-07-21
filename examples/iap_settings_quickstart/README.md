# IAP settings quickstart

End-to-end terradart example for **IAP settings** on the project-level
`iap_web` resource. Enables `iap.googleapis.com` and manages
`google_iap_settings` with name `projects/<projectId>/iap_web`.

Creating settings alone does not enable IAP on a backend. Cloud IAP for
GCP-hosted targets is free; Chrome Enterprise Premium features are not used.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/iap_settings_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
