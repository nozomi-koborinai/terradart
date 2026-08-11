# NetApp Volumes metadata quickstart

End-to-end terradart example for **control-plane only** NetApp resources:

- `google_netapp_backup_vault` (empty vault — no backup data)
- `google_netapp_backup_policy` (`enabled: false` — not attached to any volume)
- `google_netapp_host_group` (iSCSI initiator list with a smoke-only IQN)

**Does not** create `google_netapp_storage_pool` / volumes (those bill capacity
and are `never_apply`).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/netapp_metadata_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
