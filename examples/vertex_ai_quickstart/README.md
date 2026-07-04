# Vertex AI Feature Store quickstart

End-to-end terradart example for Vertex AI Feature Store and MLOps metadata. Enables the Vertex AI, BigQuery, and Cloud Storage APIs and provisions:

- a BigQuery dataset + table (feature source keyed by `entity_id`),
- a `google_vertex_ai_feature_group` reading from that table,
- a `google_vertex_ai_tensorboard` with an experiment and run,
- a far-future `google_vertex_ai_schedule` for an empty pipeline (no runs during smoke),
- a managed dataset, and GenAI cache config.

The feature group's `big_query` config is passed as a structured map, matching the thin curated factory.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Vertex AI API is enabled by the stack.

## Layout

```
examples/vertex_ai_quickstart/
├── lib/main.dart       # FeatureStack (BQ dataset + table + feature group)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) feature_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/vertex_ai_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

The feature group and its BigQuery source are free to define; the stack creates and destroys cleanly in a single project.
