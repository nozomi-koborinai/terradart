# WIF trust-domain quickstart

End-to-end terradart example for Workload Identity Federation **trust-domain**
identities:

- `google_iam_workload_identity_pool` with `mode = TRUST_DOMAIN`
- `google_iam_workload_identity_pool_namespace`
- `google_iam_workload_identity_pool_managed_identity`

Federation-only pools cannot host namespaces. This stack uses a dedicated
pool id (`terradart-trust`), not the skip-listed `iam_quickstart` pool
(`github-actions`).

Real apply against `terradart-validate` is skipped: WIF IDs are soft-deleted
for about 30 days and Terraform create does not undelete, so a fixed-id
re-apply after destroy returns 409.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`).

## Usage

```bash
dart pub get
cd examples/wif_trust_domain_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
