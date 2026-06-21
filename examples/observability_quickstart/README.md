# Cloud Observability quickstart

End-to-end terradart example for Cloud Observability. Enables the Cloud Observability API and provisions a Trace scope (`terradart-traces`) covering the current project's trace data — and exports the trace scope id as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Cloud Observability API is enabled by the stack.

## Layout

```
examples/observability_quickstart/
├── lib/main.dart       # ObservabilityStack (API enablement + trace scope + exports)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) observability_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/observability_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Trace scopes are free, project-scoped config; the stack creates and destroys cleanly in a single project.
