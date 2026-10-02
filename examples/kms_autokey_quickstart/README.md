# Cloud KMS project Autokey config quickstart

End-to-end terradart example for the **project-level Cloud KMS Autokey
config** singleton. Enables `cloudkms.googleapis.com` and sets
`key_project_resolution_mode` to `DISABLED` (config metadata only — does not
provision CMEK keys).

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/kms_autokey_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
