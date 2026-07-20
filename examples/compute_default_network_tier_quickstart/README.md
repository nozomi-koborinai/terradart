# Compute Engine default network tier quickstart

End-to-end terradart example for the project-level **default network tier**
singleton (`google_compute_project_default_network_tier`). Enables
`compute.googleapis.com` and sets the default to `STANDARD`.

The settings resource itself does not bill; it only chooses the default
network service tier (`PREMIUM` or `STANDARD`) for new external IPs.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/compute_default_network_tier_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
