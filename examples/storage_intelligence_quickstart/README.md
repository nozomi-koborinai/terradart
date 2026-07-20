# Cloud Storage Intelligence project config quickstart

End-to-end terradart example for the **project-level Cloud Storage
Intelligence config** singleton. Enables `storage.googleapis.com` and sets
`edition_config` to `DISABLED` (config metadata only — does not enable the
paid STANDARD Storage Intelligence edition).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/storage_intelligence_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
