# Cloud Deploy quickstart

End-to-end terradart example for Cloud Deploy. Enables the Cloud Deploy API and provisions a Cloud Run delivery target, a delivery pipeline with a single stage targeting it, a custom target type, and resource-scoped viewer IAM members for a deployer service account — and exports the pipeline name as a typed Dart constant.

Nested config blocks are passed as structured maps (`TfArg<Map<String, dynamic>>`), matching the thin curated factories.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Cloud Deploy API is enabled by the stack.

## Layout

```
examples/clouddeploy_quickstart/
├── lib/main.dart       # DeployStack (target + pipeline + custom type + IAM members)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) deploy_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/clouddeploy_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Pipelines, targets, and custom target types are free config (billing is per rollout); the stack creates and destroys cleanly in a single project.
