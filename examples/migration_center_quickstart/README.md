# Migration Center quickstart

End-to-end terradart example for Migration Center factories:

- `google_migration_center_settings`
- `google_migration_center_source`
- `google_migration_center_discovery_client`
- `google_migration_center_import_job`
- `google_migration_center_report_config`
- `google_migration_center_report`
- `google_migration_center_assets_export_job`

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

- Regional settings singleton, upload source, discovery client, and import job in `us-central1`
- Report config (with placeholder group/preference-set self-links) and a child report
- Minimal assets export job
