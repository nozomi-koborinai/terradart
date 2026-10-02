# Compute Engine Cloud Armor tier quickstart

End-to-end terradart example for the project-level **Cloud Armor tier**
singleton (`google_compute_project_cloud_armor_tier`). Enables
`compute.googleapis.com` and sets the tier to `CA_STANDARD`.

Do **not** use `CA_ENTERPRISE_ANNUAL` / `CA_ENTERPRISE_PAYGO` in smoke —
Enterprise Annual bills about $3000/month.

`terradart destroy` removes the resource from state only and leaves the GCP
tier unchanged.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/compute_cloud_armor_tier_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
