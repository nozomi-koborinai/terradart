# Oracle Autonomous Database quickstart

End-to-end terradart example for Oracle Database@Google Cloud:

- `google_compute_network`
- `google_oracle_database_odb_network`
- `google_oracle_database_odb_subnet`
- `google_oracle_database_autonomous_database`

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with `oracledatabase.googleapis.com` and `compute.googleapis.com` enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- Custom VPC, ODB network/subnet, and an OLTP Autonomous Database in `us-east4`
