# Artifact Registry quickstart

End-to-end terradart example for Artifact Registry project config — the per-location platform logs policy (`google_artifact_registry_project_config`). Enables the Artifact Registry API and sets platform logs to `ENABLED` at `INFO` severity in `asia-northeast1`.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Artifact Registry API is enabled by the stack.

## Layout

```
examples/artifact_registry_quickstart/
├── lib/main.dart       # ArtifactRegistryStack (API + project config)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) artifact_registry_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/artifact_registry_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

The project config is a metadata resource; destroy removes it from Terraform state but leaves the live GCP config in place (per provider docs).
