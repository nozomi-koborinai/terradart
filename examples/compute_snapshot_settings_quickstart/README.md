# Compute Engine snapshot settings quickstart

End-to-end terradart example for the project-level **snapshot settings**
singleton (`google_compute_snapshot_settings`). Enables
`compute.googleapis.com` and sets the default snapshot storage location
policy to `LOCAL_REGION`.

Terraform create/update use `PATCH`. Destroy removes the resource from state
only (upstream `exclude_delete`) and leaves the GCP settings in place.

The settings resource itself does not bill; it only configures where new
snapshots are stored.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/compute_snapshot_settings_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
