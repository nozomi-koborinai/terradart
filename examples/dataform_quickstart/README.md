# Dataform folder quickstart

End-to-end terradart example for Dataform **folder metadata**:

- `google_dataform_team_folder`
- `google_dataform_folder` nested via `containing_folder`

This stack does not create a Dataform repository (GA `hashicorp/google`
does not ship `google_dataform_repository` — that resource is beta) and
does not compile or run SQL workflows.

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
