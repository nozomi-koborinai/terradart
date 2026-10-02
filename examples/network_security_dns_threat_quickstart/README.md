# Network Security DNS threat detector quickstart

End-to-end terradart example for a **Network Security DNS threat detector**
(DNS Armor / Infoblox). Enables `networksecurity.googleapis.com` and creates a
global detector with provider `INFOBLOX`.

## Before you apply

Creating the detector enables DNS Armor for the project. Billing is usage-based
(workloads / internet-bound DNS queries), not a flat charge for the config alone.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/network_security_dns_threat_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
