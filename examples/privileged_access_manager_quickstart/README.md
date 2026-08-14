# Privileged Access Manager entitlement quickstart

End-to-end terradart example for a project-scoped Privileged Access
Manager entitlement (`google_privileged_access_manager_entitlement`)
using the official recipe (`location = global`, unstructured
justification, no approval workflow).

Creating the entitlement does **not** grant access. This example does
not request a grant. The eligible principal is an in-stack service
account; the gated role is `roles/browser` for 30 minutes. The stack
also grants `roles/privilegedaccessmanager.serviceAgent` to the
project PAM service agent created when the API is enabled.

Official IAM pricing: all use of the Identity and Access Management API
is free of charge
(https://cloud.google.com/iam/pricing).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/privileged_access_manager_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
