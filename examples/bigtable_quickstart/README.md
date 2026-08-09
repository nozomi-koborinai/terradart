# Bigtable quickstart

Provisions a production Cloud Bigtable instance with table, app profile, GC policy, authorized / logical / materialized views, and additive IAM grants.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project (the stack enables `bigtableadmin.googleapis.com` via `Apis.enable`).

## Usage

```bash
dart pub get

GCP_PROJECT_ID=my-proj-123 dart run bin/infra.dart

cd tf-out
terraform init -backend=false
terraform validate
```

## What gets created

- A **production** Bigtable instance `quickstart-events` with one cluster in `us-central1-b`
- Table `events` with column family `cf1`
- Default app profile routing to the cluster
- 7-day max-age GC policy on `cf1`
- Authorized view `tenant-a`, logical view `recent-events`, materialized view `event-counts`
- IAM grants: `roles/bigtable.viewer` on the instance and `roles/bigtable.reader` on the table for service account `bt-reader`

Protobuf schema bundles are curated but tracked in `tool/example_debt.yaml` — create races with table settle (`Parent table is either creating or deleting`) even after a 90s wait.

## Factories exercised

- `google_bigtable_instance`
- `google_bigtable_table`
- `google_bigtable_app_profile`
- `google_bigtable_gc_policy`
- `google_bigtable_authorized_view`
- `google_bigtable_logical_view`
- `google_bigtable_materialized_view`
- `google_bigtable_instance_iam_member`
- `google_bigtable_table_iam_member`
