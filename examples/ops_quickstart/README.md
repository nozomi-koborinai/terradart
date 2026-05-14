# Ops quickstart

End-to-end terradart example for routing Cloud Audit Logs into BigQuery via a logging sink. Provisions a BigQuery dataset (`audit_logs`) as the destination, then a `GoogleLoggingProjectSink` filtering `cloudaudit.googleapis.com` entries, with partitioned tables enabled and a single exclusion dropping high-volume DNS query logs.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the BigQuery API and Cloud Logging API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/ops_quickstart/
├── lib/main.dart        # AuditPipelineStack: dataset + project sink
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

- A BigQuery dataset `audit_logs` in `asia-northeast1` as the sink destination.
- A logging project sink `audit-to-bq` routing entries matching `logName:"cloudaudit.googleapis.com"`:
  - `BigqueryOptions(usePartitionedTables: true)` so the resulting tables use `_PARTITIONTIME` partitioning instead of date-sharded tables.
  - One `LogSinkExclusion` dropping `resource.type="dns_query"` entries before they hit BigQuery.
  - `uniqueWriterIdentity: TfArg.literal(true)` — GCP mints a dedicated writer service account whose ID is exposed as `sink.writerIdentityRef` for downstream IAM grants.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_bigquery_dataset": {
      "audit_logs": { "dataset_id": "audit_logs", "location": "asia-northeast1" }
    },
    "google_logging_project_sink": {
      "audit_to_bq": {
        "name": "audit-to-bq",
        "destination": "bigquery.googleapis.com/projects/your-project-id/datasets/audit_logs",
        "filter": "logName:\"cloudaudit.googleapis.com\"",
        "unique_writer_identity": true,
        "bigquery_options": [{ "use_partitioned_tables": true }],
        "exclusions": [
          { "name": "drop-noisy-dns", "filter": "resource.type=\"dns_query\"", "description": "Skip high-volume DNS query logs." }
        ]
      }
    }
  }
}
```

To wire the sink's writer identity to the destination's IAM, add a separate `GoogleBigqueryDatasetIamMember` granting `roles/bigquery.dataEditor` to `TfArg.ref(sink.writerIdentityRef)` (available via `terradart codegen` until it lands as a curated factory).

## Next steps

- [monitoring_quickstart](../monitoring_quickstart/) — alert when the audit log volume exceeds a threshold.
