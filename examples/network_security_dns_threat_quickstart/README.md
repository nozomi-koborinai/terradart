# Network Security DNS threat detector quickstart

End-to-end terradart example for a **Network Security DNS threat detector**
(DNS Armor / Infoblox). Enables `networksecurity.googleapis.com` and creates a
global detector with provider `INFOBLOX`.

Creating the detector enables DNS Armor for the project. Billing is usage-based
(workloads / internet-bound DNS queries), not a flat charge for the config alone.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/network_security_dns_threat_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
dart run bin/infra.dart
cd tf-out && terraform init && terraform plan
```
