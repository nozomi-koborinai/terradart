# Compute Engine usage export quickstart

End-to-end terradart example for the project-level **usage export bucket**
(`google_project_usage_export_bucket`). Enables Compute + Storage APIs,
creates an empty GCS bucket (`force_destroy`), and points daily GCE usage
reports at that bucket.

The export config itself does not bill; report objects (if any) use normal
Cloud Storage pricing.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/usage_export_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
