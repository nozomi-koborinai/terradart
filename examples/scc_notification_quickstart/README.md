# Security Command Center v2 project notification config quickstart

End-to-end terradart example for a **project-level SCC v2 notification
config**. Enables `securitycenter.googleapis.com` and
`pubsub.googleapis.com`, creates a Pub/Sub topic, and streams findings with
`state = "ACTIVE"` to that topic.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack. Standard-tier Security Command Center is sufficient for project notification configs.

## Usage

```bash
dart pub get
cd examples/scc_notification_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
