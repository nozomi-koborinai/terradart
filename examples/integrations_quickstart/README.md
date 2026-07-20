# Application Integration client quickstart

End-to-end terradart example for a regional Application Integration client
(`google_integrations_client`). Provisions the Integration control plane in
`us-east1` without sample flows or CMEK (also enables Secret Manager +
Connectors APIs and waits for propagation, matching Application Integration
quick setup).

Billing for Application Integration is flow execution / data processed — this
stack only provisions the client.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/integrations_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
