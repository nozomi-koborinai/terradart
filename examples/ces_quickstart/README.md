# Customer Engagement Suite (Conversational Agents) quickstart

End-to-end terradart example for a CES app plus an LLM agent, root-agent
association, app version, model-safety guardrail, and Google Search tool.

Session SKUs fire only on CX Agent Studio chat/voice traffic. This stack
never creates `google_ces_deployment` and never sends sessions.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/ces_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
