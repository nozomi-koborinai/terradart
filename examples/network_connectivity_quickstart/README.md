# Network Connectivity quickstart

End-to-end terradart example for `google_network_connectivity_transport` (Partner Cross-Cloud Interconnect).

## Before you apply

The Partner Cross-Cloud Interconnect transport needs a real partner account and remote transport profile; the placeholder `remote_account_id` fails at apply time.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with Compute and Network Connectivity APIs enabled

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
```

## What gets created

- `GoogleComputeNetwork` — custom VPC for the transport attachment
- `GoogleNetworkConnectivityTransport` — AWS us-east-1 remote profile in `us-east4`
