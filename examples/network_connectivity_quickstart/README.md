# Network Connectivity quickstart

End-to-end terradart example for `google_network_connectivity_transport` (Partner Cross-Cloud Interconnect).

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with Compute and Network Connectivity APIs enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- `GoogleComputeNetwork` — custom VPC for the transport attachment
- `GoogleNetworkConnectivityTransport` — AWS us-east-1 remote profile in `us-east4`
