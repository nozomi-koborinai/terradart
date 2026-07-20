# Project IAM audit config quickstart

End-to-end terradart example for **project-level IAM audit logging**
(`google_project_iam_audit_config`). Enables `ADMIN_READ` for
`storage.googleapis.com`.

Admin Activity audit logs are free. This example does **not** enable
Data Access logging (`DATA_READ` / `DATA_WRITE`), which would count toward
Cloud Logging ingestion volume.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`).

## Usage

```bash
dart pub get
cd examples/project_iam_audit_config_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
