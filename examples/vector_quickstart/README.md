# Vector Search collection quickstart

End-to-end terradart example for Vector Search 2.0:

- `google_vector_search_collection` — JSON data schema + dense vector field
- `google_vector_search_data_object` — one sample row (zero embedding)

Creating a collection alone does not provision index-serving capacity.
`google_vector_search_index` stays in `tool/example_debt.yaml` because the
API defaults dedicated infrastructure to two PERFORMANCE_OPTIMIZED replicas
(hourly billing).

## Before you apply

Vector Search data objects are metered per write operation and for stored payload. Destroy the stack when you are done.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/vector_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
