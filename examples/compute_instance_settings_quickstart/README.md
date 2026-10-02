# Compute Engine instance settings quickstart

End-to-end terradart example for zonal **instance settings**
(`google_compute_instance_settings`). Enables `compute.googleapis.com` and
sets a single project-zonal metadata item in `us-central1-a`.

No VMs are created. `terradart destroy` clears the zonal settings via the
provider custom delete.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/compute_instance_settings_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
