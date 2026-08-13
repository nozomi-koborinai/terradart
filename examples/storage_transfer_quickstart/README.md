# Storage Transfer + inventory reports quickstart

End-to-end terradart example for Storage Transfer Service (a disabled
GCS→GCS job and an empty on-prem agent pool), a Cloud Storage inventory
report config whose first run is in 2099, and authoritative bucket /
default-object ACLs on separate fine-grained (UBLA off) buckets.

The transfer job never runs (`DISABLED`). Inventory reports do not
generate objects during apply. Storage Insights **dataset** configs are
not in this stack — they require the paid Storage Intelligence
subscription.

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out && terraform init && terraform validate
```

## What gets created

- Two UBLA-on buckets plus a `DISABLED` GCS→GCS `GoogleStorageTransferJob`
- `GoogleStorageTransferAgentPool` — empty pool (no agents, no POSIX bytes)
- `GoogleStorageInsightsReportConfig` — weekly CSV inventory starting in 2099
- `GoogleStorageBucketAcl` / `GoogleStorageDefaultObjectAcl` — each on its own UBLA-off bucket
