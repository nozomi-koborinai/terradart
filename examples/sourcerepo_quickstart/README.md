# Cloud Source Repositories quickstart

End-to-end terradart example for Cloud Source Repositories. Enables
`sourcerepo.googleapis.com` and provisions:

- a Git repository (`terradart-hello`)
- a service account + repository IAM member (`roles/source.reader`)

Empty repositories are usage-metered only (storage / MAU free tiers cover
this smoke stack).

## Before you apply

Cloud Source Repositories is in maintenance mode: `sourcerepo.googleapis.com` cannot be enabled on a project that did not already use it (enabling returns 403). Prefer Secure Source Manager for new work.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/sourcerepo_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
