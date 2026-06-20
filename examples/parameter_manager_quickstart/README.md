# Parameter Manager quickstart

End-to-end terradart example for Parameter Manager (the non-secret sibling of Secret Manager, for application configuration). Enables the Parameter Manager API and provisions a global JSON-formatted parameter and a regional YAML-formatted parameter — and exports the global parameter id as a typed Dart constant.

Parameter *versions* (which hold the payload) are tracked in `tool/example_debt.yaml`: their `parameter_data` field is sensitive, which synth refuses as a literal, and a Terraform variable would make this otherwise-applyable example require `-var`.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Parameter Manager API is enabled by the stack.

## Layout

```
examples/parameter_manager_quickstart/
├── lib/main.dart       # ParamsStack (API enablement + global + regional parameters)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) params_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/parameter_manager_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Parameters are free, project-scoped config resources; the stack creates and destroys cleanly in a single project.
