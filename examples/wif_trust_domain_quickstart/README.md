# WIF trust-domain quickstart

End-to-end terradart example for Workload Identity Federation **trust-domain**
identities:

- `google_iam_workload_identity_pool` with `mode = TRUST_DOMAIN`
- `google_iam_workload_identity_pool_namespace`
- `google_iam_workload_identity_pool_managed_identity`

Federation-only pools cannot host namespaces. This stack uses a dedicated
pool id (`terradart-trust`), distinct from the `iam_quickstart` pool
(`github-actions`).

## Before you apply

Workload identity pool, namespace, and managed identity ids are soft-deleted for about 30 days, and Terraform create does not undelete them (hashicorp/terraform-provider-google#14191). Applying again with the same ids after a destroy returns 409.

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
