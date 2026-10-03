# Cloud Healthcare quickstart

End-to-end terradart example for Cloud Healthcare. Enables the Cloud Healthcare API and provisions a dataset with DICOM, consent, HL7v2, and FHIR stores, plus dataset/store IAM grants for an in-stack service account — and exports the dataset name as a typed Dart constant.

`GoogleHealthcareWorkspace` is curated but deferred from this stack (apply
returns 404 Method not found on terradart-validate; see
`tool/example_debt.yaml`).

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). The Cloud Healthcare API is enabled by the stack.

## Layout

```
examples/healthcare_quickstart/
├── lib/main.dart       # HealthcareStack (dataset + DICOM/consent/HL7v2/FHIR + IAM)
├── bin/infra.dart      # Synth: runStack → tf-out/
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
terradart synth

# 4. Plan:
terradart plan
```

Healthcare datasets and stores are free (billing is per stored data / operations); the stack creates and destroys cleanly in a single project.
