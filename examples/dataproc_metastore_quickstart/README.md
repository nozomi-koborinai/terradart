# Dataproc Metastore quickstart

End-to-end terradart example for Dataproc Metastore factories:

- `google_dataproc_metastore_service` (DEVELOPER tier)
- `google_dataproc_metastore_service_iam_member`
- `google_dataproc_metastore_federation`
- `google_dataproc_metastore_federation_iam_member`

The stack also provisions a dedicated `google_compute_network`: the
Metastore THRIFT endpoint attaches to a VPC, and the API otherwise defaults
to the project `default` network, which standalone projects do not have.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with Dataproc Metastore API enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## Cost note

DEVELOPER-tier Metastore bills hourly (~$0.34/h list). Per-PR apply-smoke
defers this example to the full sweep (`tool/apply_smoke_pr_skip.yaml`).
