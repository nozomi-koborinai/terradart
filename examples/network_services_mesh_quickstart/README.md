# Network Services Mesh quickstart

End-to-end terradart example for a Cloud Network Services **Mesh** (logical
service-mesh namespace). Enables `networkservices.googleapis.com` and
provisions a global `google_network_services_mesh`.

Creating a Mesh alone does **not** attach clusters or bill Anthos Service Mesh
cluster/endpoint SKUs — those apply when workloads join the mesh.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/network_services_mesh_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
