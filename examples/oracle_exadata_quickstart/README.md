# Oracle Exadata quickstart

End-to-end terradart example for Oracle Exadata on Oracle Database@Google Cloud:

- `google_compute_network`
- `google_oracle_database_odb_network`
- `google_oracle_database_odb_subnet` (client + backup)
- `google_oracle_database_exascale_db_storage_vault`
- `google_oracle_database_exadb_vm_cluster`
- `google_oracle_database_cloud_exadata_infrastructure`
- `google_oracle_database_cloud_vm_cluster`

## Before you apply

Needs an Oracle Database@Google Cloud entitlement for the zone and live Exascale vault wiring; the API rejects the placeholder wiring.

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

- Custom VPC, ODB network/subnets, Exascale vault, ExaDB cluster, and Exadata VM cluster in `us-east4`
