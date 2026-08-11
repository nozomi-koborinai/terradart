# Compute Engine rollout plan quickstart

End-to-end terradart example for:

- `google_compute_rollout_plan` (wave strategy metadata)
- `google_compute_global_vm_extension_policy` (global Ops Agent policy
  referencing that custom plan)

No VMs are created. The global policy selects a label that no instance
uses (`terradart-smoke=never`), so it cannot attach extensions to
existing VMs in the project.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/compute_rollout_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
