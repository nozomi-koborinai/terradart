# Application Integration client + auth-config quickstart

End-to-end terradart example for a regional Application Integration client
(`google_integrations_client`) plus dummy credential metadata
(`google_integrations_auth_config`). Provisions the Integration control
plane in `us-east1` and a `USERNAME_AND_PASSWORD` auth profile with
placeholder username/password — not a real secret, not OAuth, not a PEM
cert. No sample flows, CMEK, or connectors (also enables Secret Manager +
Connectors APIs and waits for propagation, matching Application
Integration quick setup).

Billing for Application Integration is flow execution / data processed —
this stack only provisions the client and unused credential metadata.

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
