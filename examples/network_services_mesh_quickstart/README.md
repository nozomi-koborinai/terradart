# Network Services Mesh quickstart

End-to-end terradart example for a Cloud Network Services **Mesh** (logical
service-mesh namespace) plus config-only **HTTP / gRPC / TCP routes** and an
**endpoint policy**. Enables `networkservices.googleapis.com` and provisions a
global `google_network_services_mesh`. Routes attach to that Mesh; they do not
attach a Gateway (Secure Web Gateway is $1.25/h) or a BackendService. HTTP uses
the mesh-basic matcher (no redirect); TCP uses `original_destination` with a
`*/0` address match.

Creating these objects does **not** attach clusters or bill Anthos Service Mesh
cluster/endpoint SKUs — those apply when workloads join the mesh.

`GoogleNetworkServicesTlsRoute` (needs a BackendService destination),
`GoogleNetworkServicesServiceBinding` (Service Directory integration sunset;
creating new bindings is being disabled), and the Service Extensions factories
(`GoogleNetworkServicesAuthzExtension`, `GoogleNetworkServicesLbTrafficExtension`,
`GoogleNetworkServicesLbRouteExtension`, `GoogleNetworkServicesLbEdgeExtension` —
schema required forwarding rules / callout backends; Cloud LB Forwarding Rule
Minimum is $0.025/h) are tracked in `tool/example_debt.yaml`.

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
