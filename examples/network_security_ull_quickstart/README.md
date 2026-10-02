# Network Security ULL mirroring quickstart

End-to-end terradart example for Ultra Low Latency (ULL) mirroring factories:

- `google_network_security_ull_mirroring_engine`
- `google_network_security_ull_mirroring_collector`
- `google_network_security_ull_mirroring_collector_rule`

## Before you apply

ULL mirroring needs a real internal forwarding rule and zonal Network Security resources; the placeholder forwarding-rule self-link fails at apply time.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Network Security API enabled

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
```

## What gets created

- ULL mirroring engine and collector in zone `us-south1-d`
- Collector rule matching ingress TCP from `10.0.0.0/8`
- Placeholder regional forwarding rule self-link on the collector
