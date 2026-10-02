# Oracle Autonomous Database quickstart

End-to-end terradart example for Oracle Database@Google Cloud:

- `google_compute_network`
- `google_oracle_database_odb_network`
- `google_oracle_database_odb_subnet`
- `google_oracle_database_autonomous_database`

## Before you apply

Needs an Oracle Database@Google Cloud entitlement for the zone and a live ODB network and subnet; the API rejects the placeholder wiring.

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

- Custom VPC, ODB network/subnet, and an OLTP Autonomous Database in `us-east4`
