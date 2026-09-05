# Dataform quickstart

End-to-end terradart example for Dataform folder metadata and a repository:

- `google_dataform_team_folder`
- `google_dataform_folder` nested via `containing_folder`
- `google_dataform_repository` running workflow invocations as an in-stack
  `google_service_account`
- `google_dataform_repository_iam_member` granting that service account
  `roles/dataform.editor` on the repository

The repository is created without a Git remote (linking one needs an external
Git URL plus a Secret Manager token version, or a Developer Connect link), so
this stack does not compile or run SQL workflows and incurs no BigQuery
analysis charge.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/dataform_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
