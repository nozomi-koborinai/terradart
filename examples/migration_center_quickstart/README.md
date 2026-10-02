# Migration Center quickstart

End-to-end terradart example for Migration Center factories:

- `google_migration_center_settings`
- `google_migration_center_source`
- `google_migration_center_discovery_client`
- `google_migration_center_import_job`
- `google_migration_center_import_data_file`
- `google_migration_center_assets_export_job`
- `google_migration_center_group`
- `google_migration_center_preference_set`
- `google_migration_center_report_config`
- `google_migration_center_report`

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with Migration Center API enabled

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
```

## What gets created

- Regional settings singleton, upload + discovery sources, in-stack discovery
  SA + client, import job, and import data file slot in `us-central1`
- Assets export job (performance-data export type)
- Asset group + preference set wired into a report config and assessment report
