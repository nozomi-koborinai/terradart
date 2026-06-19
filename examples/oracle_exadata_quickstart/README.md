# Oracle Exadata quickstart

End-to-end terradart example for Oracle Exadata on Oracle Database@Google Cloud:

- `google_compute_network`
- `google_oracle_database_odb_network`
- `google_oracle_database_odb_subnet` (client + backup)
- `google_oracle_database_exascale_db_storage_vault`
- `google_oracle_database_exadb_vm_cluster`
- `google_oracle_database_cloud_exadata_infrastructure`
- `google_oracle_database_cloud_vm_cluster`

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

- Custom VPC, ODB network/subnets, Exascale vault, ExaDB cluster, and Exadata VM cluster in `us-east4`
