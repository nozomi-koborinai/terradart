# Vertex AI Workbench (Notebooks) quickstart

End-to-end terradart example for a Workbench **environment** (image recipe).
Enables `notebooks.googleapis.com` and provisions a container-based
environment from `gcr.io/deeplearning-platform-release/base-cpu`.

Creating an environment does **not** start a notebook VM — instances that
reference the environment would bill for Compute; this stack stops at the
recipe.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/notebooks_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
