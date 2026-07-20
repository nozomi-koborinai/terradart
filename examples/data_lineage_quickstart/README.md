# Data Lineage config quickstart

End-to-end terradart example for project-level **Data Lineage config**
(`google_data_lineage_config`). Enables Dataproc lineage ingestion under
`projects/<id>` at `location: global`.

This is control-plane config only — it does not provision Dataproc clusters
or Dataplex Metadata Storage.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/data_lineage_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
