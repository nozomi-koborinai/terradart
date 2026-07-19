# Container Analysis quickstart

End-to-end terradart example for Container Analysis attestation-authority
notes (`google_container_analysis_note`) and note IAM members. Enables
`containeranalysis.googleapis.com`, creates a note, and grants
`roles/containeranalysis.notes.occurrences.viewer` to an in-stack service
account.

Occurrences (signed attestations against an image URI) need real KMS /
Binary Authorization payload material and are not exercised here.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`)

## Layout

```
examples/container_analysis_quickstart/
├── lib/main.dart       # ContainerAnalysisStack
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/container_analysis_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```
