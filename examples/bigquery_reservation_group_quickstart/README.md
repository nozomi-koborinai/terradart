# BigQuery reservation group quickstart

End-to-end terradart example for a BigQuery **reservation group** (named
container for reservations). Enables `bigqueryreservation.googleapis.com`
and provisions an empty `google_bigquery_reservation_group`.

Creating a group alone does **not** allocate slots or bill Reservation API
capacity SKUs — attach reservations (and assignments) separately.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/bigquery_reservation_group_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
