# Model Armor template quickstart

End-to-end terradart example for a Model Armor template
(`google_model_armor_template`) with an empty `filter_config` — the same
shape as the provider `modelarmor_template_basic` example.

Screening is billed per Model Armor PAYG usage; this stack only creates
template metadata.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/model_armor_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
