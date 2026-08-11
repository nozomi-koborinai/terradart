# BigQuery Data Policy V2 quickstart

End-to-end terradart example for BigQuery Data Policy **V2**. Enables
`bigquerydatapolicy.googleapis.com` and provisions a raw-data access policy, an
email-mask data-masking policy, and an additive `maskedReader` IAM grant.

Unlike the V1 data-policy surface (which needs a Data Catalog policy tag /
taxonomy), V2 raw-data access and predefined masking apply on a standalone
project.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`)

## Usage

```bash
# From repo root (workspace member):
dart pub get
cd examples/bigquery_datapolicyv2_quickstart && dart pub get

GCP_PROJECT_ID=my-proj-123 dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```
