# Cloud Run v1 service quickstart

End-to-end terradart example for a Cloud Run **v1** service
(`google_cloud_run_service`) using the official hello image
(`us-docker.pkg.dev/cloudrun/container/hello`) plus an additive
`roles/run.invoker` grant to an in-stack service account.

Prefer Cloud Run v2 (`google_cloud_run_v2_service`) for new stacks.
This example does not grant `allUsers` and does not set min instances.
Default request-based billing does not charge while the service is idle.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/cloud_run_v1_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
