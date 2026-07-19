# Public CA external account key quickstart

End-to-end terradart example for a **Public CA ACME external account binding
(EAB) key**. Enables `publicca.googleapis.com` and creates a global
`google_public_ca_external_account_key`.

The resource is create-only: Terraform cannot read it back, and destroy removes
it from state only. Creating the key alone does not issue a certificate and
does not bill Certificate Manager certificate-usage SKUs.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/public_ca_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
