# BigQuery quickstart

End-to-end terradart example for BigQuery. Provisions a dataset (`analytics_prod`) with a typed sealed `Access` list (8 variants — this example uses `AccessUserByEmail` for an OWNER role and `AccessSpecialGroup` for a READER role over `allAuthenticatedUsers`).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the BigQuery API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/bigquery_quickstart/
├── lib/main.dart        # AnalyticsStack: dataset + sealed Access list
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

- A BigQuery dataset `analytics_prod` in `asia-northeast1`, friendly name `Production analytics`.
- Default table expiration: 30 days (`30 * 24 * 60 * 60 * 1000` ms).
- Storage billing model: `DatasetStorageBillingModel.logical` → `LOGICAL`.
- Two `Access` entries:
  - `AccessUserByEmail(userByEmail: 'data-eng@example.com', role: 'OWNER')`.
  - `AccessSpecialGroup(specialGroup: 'allAuthenticatedUsers', role: 'READER')`.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_bigquery_dataset": {
      "analytics": {
        "dataset_id": "analytics_prod",
        "location": "asia-northeast1",
        "friendly_name": "Production analytics",
        "default_table_expiration_ms": 2592000000,
        "storage_billing_model": "LOGICAL",
        "access": [
          { "user_by_email": "data-eng@example.com", "role": "OWNER" },
          { "special_group": "allAuthenticatedUsers", "role": "READER" }
        ]
      }
    }
  }
}
```

The `Access` sealed type has 8 schema-faithful variants — `AccessUserByEmail`, `AccessGroupByEmail`, `AccessSpecialGroup`, `AccessDomain`, `AccessIamMember`, `AccessView`, `AccessDataset`, `AccessRoutine` — each carrying the fields BigQuery's API requires for that variant. The compiler keeps mutually-exclusive identity fields honest.

## Next steps

- [ops_quickstart](../ops_quickstart/) — route Cloud Audit Logs into a BigQuery dataset via `GoogleLoggingProjectSink`.
