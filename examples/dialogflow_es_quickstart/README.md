# Dialogflow ES quickstart

End-to-end terradart example for the Dialogflow ES agent plus its
design-time children: intent, entity type, fulfillment, version, and
environment.

The agent is Standard tier (`TIER_STANDARD`). The stack never calls
DetectIntent, so Cloud Dialogflow query SKUs do not fire. Fulfillment is
created disabled (no webhook URI). Text-to-speech is not enabled.

The ES agent is a per-project singleton. Do not apply this stack in the
same project as another stack that also creates `google_dialogflow_agent`.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/dialogflow_es_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
