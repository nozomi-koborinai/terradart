# Oracle GoldenGate quickstart

End-to-end terradart example for Oracle Database@Google Cloud factories:

- `google_compute_network` (VPC for ODB attachment)
- `google_oracle_database_odb_network`
- `google_oracle_database_odb_subnet`
- `google_oracle_database_goldengate_deployment`
- `google_oracle_database_goldengate_connection`
- `google_oracle_database_goldengate_connection_assignment`

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

- Custom VPC, ODB network/subnet, GoldenGate deployment, generic connection, and assignment in `us-east4`
