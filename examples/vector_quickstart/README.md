# Vector Search collection quickstart

End-to-end terradart example for a Vector Search 2.0 collection
(`google_vector_search_collection`) with a JSON data schema and a dense
vector field — the same shape as the provider
`vectorsearch_collection_basic` example (without Vertex embedding config).

Creating a collection alone does not provision index-serving capacity.
`google_vector_search_index` is curated in `terradart_google` but listed in
`tool/example_debt.yaml` because the API defaults dedicated infrastructure
to two PERFORMANCE_OPTIMIZED replicas (hourly billing).

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
