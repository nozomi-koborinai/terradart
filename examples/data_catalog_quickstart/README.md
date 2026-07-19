# Data Catalog entry group quickstart

End-to-end terradart example for a **Data Catalog entry group** (legacy Data
Catalog API). Enables `datacatalog.googleapis.com` and creates a regional
entry group. Prefer Dataplex Universal Catalog for new catalogs.

Creating the entry group alone does not create entries or bill catalog SKUs.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/data_catalog_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
