# Privileged Access Manager entitlement quickstart

End-to-end terradart example for a project-scoped Privileged Access
Manager entitlement (`google_privileged_access_manager_entitlement`)
using the official recipe (`location = global`, unstructured
justification, no approval workflow).

Creating the entitlement does **not** grant access. This example does
not request a grant. The eligible principal is an in-stack service
account; the gated role is `roles/browser` for 30 minutes.

Official IAM pricing: all use of the Identity and Access Management API
is free of charge
(https://cloud.google.com/iam/pricing).

## Before you apply

Privileged Access Manager only works on a project that belongs to an organization. On a standalone project the entitlement create call returns 400 `ORGLESS_RESOURCE`.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project that belongs to an organization. Privileged Access
  Manager rejects org-less projects (`ORGLESS_RESOURCE`).
- Credentials configured (`gcloud auth application-default login`).
  APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/privileged_access_manager_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
