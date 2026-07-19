# Gemini for Google Cloud quickstart

End-to-end terradart example for Gemini for Google Cloud (Gemini Code Assist). Enables the Gemini API and configures the project's settings: a GCP enablement setting, a logging setting (log metadata, not prompts/responses), a release-channel setting, and a data-sharing-with-Google setting — and exports the enablement setting id as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Gemini for Google Cloud API is enabled by the stack.

## Layout

```
examples/gemini_quickstart/
├── lib/main.dart       # GeminiStack (enablement + logging + release-channel + data-sharing)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) gemini_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/gemini_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Gemini settings are free, project/location-scoped config; the stack creates and destroys cleanly in a single project.
