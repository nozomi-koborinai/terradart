# Sensitive Data Protection (DLP) quickstart

End-to-end terradart example for Cloud DLP. Enables `dlp.googleapis.com` and provisions:

- an inspect template (EMAIL_ADDRESS),
- a de-identify template (replace EMAIL_ADDRESS with the info-type name),
- a regex stored info type,
- a **paused** job trigger over an empty GCS prefix (so apply does not start scans).

Templates and paused triggers are configuration metadata; DLP bills for bytes inspected/transformed when jobs run.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`)

## Usage

```bash
dart pub get
cd examples/dlp_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
