# GKE Hub fleet quickstart

End-to-end terradart example for GKE Hub fleet team management — **no cluster required**. Enables the GKE Hub API and provisions a fleet scope (`terradart-scope`), a fleet namespace (`terradart-team`) inside it, a scope RBAC role binding (`VIEW` for a demo principal), and a rollout sequence for staged fleet upgrades — and exports the scope id as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The GKE Hub API is enabled by the stack; the project's default fleet is auto-created.

## Layout

```
examples/gke_hub_quickstart/
├── lib/main.dart       # FleetStack (API + scope + namespace + scope RBAC + rollout sequence)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) fleet_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/gke_hub_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Fleet scopes, namespaces, scope RBAC bindings, and rollout sequences are free fleet-management resources; the stack creates and destroys cleanly in a single project.
