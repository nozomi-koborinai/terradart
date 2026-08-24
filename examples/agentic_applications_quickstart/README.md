# Agentic Applications quickstart

End-to-end terradart example for a Gemini Enterprise **analyst agent
persona** and the data it is grounded on:

- `google_bigquery_dataset` + `google_bigquery_table` — the `cash_positions`
  table the persona reads
- `google_agentic_applications_analyst_agent_persona` — treasury-analyst
  persona with a BigQuery resource, a raw-file policy document, a markdown
  skill, table schema overrides, an artifact example, and the Treasury
  securities auctions external data source

The persona is design-time configuration: Agentic Applications meters agent
tokens and chat sessions, so creating it runs no inference.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/agentic_applications_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
