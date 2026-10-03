# Workflows quickstart

End-to-end terradart example for Workflows. Enables the Workflows API and provisions a `google_workflows_workflow` (`terradart-hello`) from inline YAML source — a single step that returns a greeting — with error-only call logging and `deletion_protection = false` so it can be torn down. Exports the workflow name as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). The Workflows API is enabled by the stack.

## Layout

```
examples/workflows_quickstart/
├── lib/main.dart       # WorkflowStack (API enablement + workflow + exports)
├── bin/infra.dart      # Synth: runStack → tf-out/
├── lib/generated/      # (created on synth) workflow_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/workflows_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
terradart synth

# 4. Plan:
terradart plan
```

Defining a workflow is free (only executions are billed); the stack creates and destroys cleanly in a single project.
