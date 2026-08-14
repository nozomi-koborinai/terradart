# Project IAM audit config quickstart

End-to-end terradart example for **project-level IAM audit logging**
(`google_project_iam_audit_config`) plus a **project IAM deny policy**
(`google_iam_deny_policy`). Enables `ADMIN_READ` for
`storage.googleapis.com`, then denies `storage.googleapis.com/objects.get`
for an in-stack service account only.

Admin Activity audit logs are free. This example does **not** enable
Data Access logging (`DATA_READ` / `DATA_WRITE`), which would count toward
Cloud Logging ingestion volume. The deny rule does **not** target
`public:all` or project-admin permissions.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`).
- The caller needs `iam.googleapis.com/denypolicies.create` (for example
  `roles/iam.denyAdmin`) to apply the deny policy.

## Usage

```bash
dart pub get
cd examples/project_iam_audit_config_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
