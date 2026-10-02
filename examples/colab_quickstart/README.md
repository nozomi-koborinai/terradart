# Colab Enterprise quickstart

End-to-end terradart example for Colab Enterprise. Enables the Vertex AI and
Storage APIs and provisions:

- a runtime template (`e2-standard-4` + internet access)
- a service account + template IAM member (`roles/viewer`)
- a **paused** notebook execution schedule (GCS notebook + output bucket)

The schedule stays `PAUSED` so apply does not start Vertex Colab VMs.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/colab_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
