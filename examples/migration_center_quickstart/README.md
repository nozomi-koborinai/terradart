# Migration Center quickstart

End-to-end terradart example for Migration Center factories:

- `google_migration_center_settings`
- `google_migration_center_source`
- `google_migration_center_discovery_client`
- `google_migration_center_import_job`
- `google_migration_center_import_data_file`
- `google_migration_center_assets_export_job`

Report / report-config are deferred (`tool/example_debt.yaml`) until
`google_migration_center_group` and `preference_set` are curated.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with Migration Center API enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- Regional settings singleton, upload + discovery sources, in-stack discovery
  SA + client, import job, and import data file slot in `us-central1`
- Assets export job (performance-data export type)
