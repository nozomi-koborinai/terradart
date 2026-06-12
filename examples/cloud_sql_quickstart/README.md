# Cloud SQL quickstart

End-to-end terradart example for Cloud SQL with **private-IP only**
connectivity, plus AlloyDB on the same PSA chain. Provisions the full
private-services peering chain (VPC + reserved global address + service
networking connection), a PostgreSQL primary with database and user, and
an AlloyDB cluster with primary instance and app user.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Cloud SQL Admin API and Service Networking API
  enabled and credentials configured
  (`gcloud auth application-default login`).

## Layout

```
examples/cloud_sql_quickstart/
├── lib/main.dart        # CloudSqlStack: VPC + global_address + svc_net +
│                        #   sql_database_instance + sql_database + sql_user
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id \
DB_PASSWORD=$(openssl rand -base64 24) \
dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

1. `cloudsql-vpc` -- a custom-mode VPC dedicated to Cloud SQL.
2. `cloudsql-psa-range` -- a `/16` `INTERNAL` global address with
   `purpose: VPC_PEERING` reserved on that VPC.
3. A peering connection between the VPC and
   `servicenetworking.googleapis.com` over the reserved range.
4. `orders-primary` -- a `POSTGRES_15` instance, `db-custom-2-7680` tier,
   zonal (single-zone) availability, 20 GB SSD, **private IP only**
   (`ipv4_enabled: false`).
5. `orders` -- one logical database inside the instance.
6. `app` -- one `BUILT_IN` user whose password is sourced from
   `DB_PASSWORD` and masked at synth time.
7. `app-alloydb` -- AlloyDB cluster on the same VPC + PSA range (Wave 33).
8. `primary` -- AlloyDB primary instance (2 vCPU).
9. `app` -- AlloyDB built-in user (`AlloydbUserType.alloydbBuiltIn`).

`SqlUserType.builtIn` is the right choice for password-based access.
Switch to `SqlUserType.cloudIamServiceAccount` and drop the `password`
field for keyless IAM token authentication.

## Next steps

- [iam_quickstart](../iam_quickstart/) -- adds a Workload Identity
  Federation pool you can use to grant CI/CD pipelines access to the
  database via short-lived IAM tokens (no SA keys).
