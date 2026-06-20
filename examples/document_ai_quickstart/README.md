# Document AI quickstart

End-to-end terradart example for Document AI. Enables the Document AI API and provisions an OCR document processor (`terradart-ocr`) in the `us` multi-region — and exports the processor display name as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Document AI API is enabled by the stack.

## Layout

```
examples/document_ai_quickstart/
├── lib/main.dart       # DocAiStack (API enablement + OCR processor + exports)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) doc_ai_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/document_ai_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Creating a processor is free (billing is per document processed); the stack creates and destroys cleanly in a single project.
