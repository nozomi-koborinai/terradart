# Compute route quickstart

End-to-end terradart example for free Compute networking extras. Enables the Compute API and provisions a custom-mode VPC (`terradart-route-demo`), a `google_compute_route` sending an unused RFC-1918 range to the default internet gateway, and a `google_compute_project_metadata_item` (an ops-owner tag) — all free (no VMs) — and exports the VPC name as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Compute API is enabled by the stack.

## Layout

```
examples/compute_route_quickstart/
├── lib/main.dart       # NetworkRouteStack (VPC + route + metadata + exports)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) network_route_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/compute_route_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Routes, custom-mode VPCs, and project metadata items are free; the stack creates and destroys cleanly in a single project.
