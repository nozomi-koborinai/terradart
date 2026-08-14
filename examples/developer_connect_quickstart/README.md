# Developer Connect account connector quickstart

End-to-end terradart example for a Developer Connect account connector
(`google_developer_connect_account_connector`) using the official GitHub
recipe (`system_provider_id = GITHUB`, `scopes = ["repo"]`).

Creating the connector does **not** complete OAuth or clone a repository.
This example does not create `google_developer_connect_connection` and
omits `proxy_config` (Git proxy). Official pricing: if you do not use
the Git proxy, Developer Connect has no charge
(https://cloud.google.com/developer-connect/pricing).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/developer_connect_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
