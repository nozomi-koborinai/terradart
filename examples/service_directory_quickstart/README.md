# Service Directory quickstart

End-to-end terradart example for Service Directory. Provisions a `google_service_directory_namespace` (`terradart-registry`), a `google_service_directory_service` (`api`), a `google_service_directory_endpoint` (`api-primary`), enables the Service Directory API, and grants two resource-level IAM members (`google_service_directory_namespace_iam_member` + `google_service_directory_service_iam_member`) to an in-stack service account — and exports the namespace id as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Service Directory API is enabled by the stack.

## Layout

```
examples/service_directory_quickstart/
├── lib/main.dart       # RegistryStack (namespace + service + endpoint + IAM + exports)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) registry_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/service_directory_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Service Directory namespaces/services/endpoints are lightweight registry metadata; the stack creates and destroys cleanly in a single project.
