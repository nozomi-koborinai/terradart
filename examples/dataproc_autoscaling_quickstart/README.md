# Dataproc autoscaling policy quickstart

End-to-end terradart example for `google_dataproc_autoscaling_policy` — a
reusable YARN autoscaler document (no Dataproc cluster).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/dataproc_autoscaling_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
