# BigQuery Data Policy V2 quickstart

End-to-end terradart example for BigQuery Data Policy **V2**. Enables
`bigquerydatapolicy.googleapis.com` and provisions a raw-data access policy, an
email-mask data-masking policy, and an additive `maskedReader` IAM grant.

Unlike the V1 data-policy surface (which needs a Data Catalog policy tag /
taxonomy), V2 raw-data access and predefined masking apply on a standalone
project.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`)

## Usage

```bash
# From repo root (workspace member):
dart pub get
cd examples/bigquery_datapolicyv2_quickstart && dart pub get

export GCP_PROJECT_ID=my-proj-123
terradart synth
```
