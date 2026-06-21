# Cloud Healthcare quickstart

End-to-end terradart example for Cloud Healthcare. Enables the Cloud Healthcare API and provisions a dataset, a DICOM store and a consent store inside it, and a `roles/healthcare.datasetViewer` grant on the dataset for an in-stack service account — and exports the dataset name as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Cloud Healthcare API is enabled by the stack.

## Layout

```
examples/healthcare_quickstart/
├── lib/main.dart       # HealthcareStack (dataset + DICOM/consent stores + IAM)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) healthcare_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/healthcare_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Healthcare datasets and stores are free (billing is per stored data / operations); the stack creates and destroys cleanly in a single project.
