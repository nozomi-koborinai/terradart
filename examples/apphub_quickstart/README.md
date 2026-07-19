# App Hub quickstart

End-to-end terradart example for App Hub host boundary
(`google_apphub_boundary`) and a regional application
(`google_apphub_application`). Enables `apphub.googleapis.com`, registers the
current project number as the CRM boundary node, and creates an application
with `scope.type = REGIONAL` in `us-central1`.

Service / workload registration and service-project attachment need a second
GCP project plus discovered resource URIs and are not exercised here.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`)

## Layout

```
examples/apphub_quickstart/
├── lib/main.dart       # ApphubStack
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/apphub_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```
