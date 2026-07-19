# Network Management VPC Flow Logs quickstart

End-to-end terradart example for a **VPC Flow Logs config** on an empty VPC.
Enables Compute + Network Management APIs, creates a network with no
subnets/VMs, and attaches a global `google_network_management_vpc_flow_logs_config`.

An empty VPC generates no flow log volume. Cloud Logging storage
(SKU `143F-A1B0-E0BE`, free tier then ~$0.50/GiB) bills only when traffic is
logged.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/network_management_vpc_flow_logs_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
