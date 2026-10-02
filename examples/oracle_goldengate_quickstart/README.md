# Oracle GoldenGate quickstart

End-to-end terradart example for Oracle Database@Google Cloud factories:

- `google_compute_network` (VPC for ODB attachment)
- `google_oracle_database_odb_network`
- `google_oracle_database_odb_subnet`
- `google_oracle_database_goldengate_deployment`
- `google_oracle_database_goldengate_connection`
- `google_oracle_database_goldengate_connection_assignment`

## Before you apply

Needs an Oracle Database@Google Cloud entitlement for the zone and a live ODB network and subnet; the API rejects the placeholder VPC / ODB wiring.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with `oracledatabase.googleapis.com` and `compute.googleapis.com` enabled

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
```

## What gets created

- Custom VPC, ODB network/subnet, GoldenGate deployment, generic connection, and assignment in `us-east4`
