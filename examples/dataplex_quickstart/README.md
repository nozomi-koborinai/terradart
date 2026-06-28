# Dataplex quickstart

End-to-end terradart example for Dataplex governed data products and resource-scoped IAM.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Dataplex API enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- `GoogleDataplexLake` — top-level analytics lake container
- `GoogleDataplexZone` — raw zone under the lake
- `GoogleDataplexAsset` — GCS bucket registered as a lake asset
- `GoogleDataplexZoneIamMember` — grants the reader SA `roles/dataplex.viewer` on the zone
