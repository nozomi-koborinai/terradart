# Compute Engine instance settings quickstart

End-to-end terradart example for zonal **instance settings**
(`google_compute_instance_settings`). Enables `compute.googleapis.com` and
sets a single project-zonal metadata item in `us-central1-a`.

No VMs are created. Terraform destroy clears the zonal settings via the
provider custom delete.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/compute_instance_settings_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
