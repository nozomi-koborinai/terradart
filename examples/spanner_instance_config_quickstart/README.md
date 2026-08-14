# Cloud Spanner user-managed instance config quickstart

End-to-end terradart example for a user-managed Cloud Spanner instance
configuration (`google_spanner_instance_config`) cloned from Google-managed
`nam11` plus one optional `us-west1` READ_ONLY replica.

Creating the config does **not** create a Spanner instance. This example
does not create `google_spanner_instance`, so no node or processing-unit
SKUs are reserved.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/spanner_instance_config_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
