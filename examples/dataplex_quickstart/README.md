# Dataplex quickstart

End-to-end terradart example for Dataplex governed data products and resource-scoped IAM.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Dataplex API enabled

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
```

## What gets created

- `GoogleDataplexLake` — top-level analytics lake container
- `GoogleDataplexZone` — raw zone under the lake
- `GoogleDataplexAsset` — GCS bucket registered as a lake asset
- `GoogleDataplexZoneIamMember` — grants the reader SA `roles/dataplex.viewer` on the zone
