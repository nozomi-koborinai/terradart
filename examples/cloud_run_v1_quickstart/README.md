# Cloud Run v1 service quickstart

End-to-end terradart example for a Cloud Run **v1** service
(`google_cloud_run_service`) using the official hello image
(`us-docker.pkg.dev/cloudrun/container/hello`) plus an additive
`roles/run.invoker` grant to an in-stack service account.

Prefer Cloud Run v2 (`google_cloud_run_v2_service`) for new stacks.
This example does not grant `allUsers` and does not set min instances.
Default request-based billing does not charge while the service is idle.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/cloud_run_v1_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
