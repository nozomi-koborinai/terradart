# Network Security ULL mirroring quickstart

End-to-end terradart example for Ultra Low Latency (ULL) mirroring factories:

- `google_network_security_ull_mirroring_engine`
- `google_network_security_ull_mirroring_collector`
- `google_network_security_ull_mirroring_collector_rule`

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Network Security API enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- ULL mirroring engine and collector in zone `us-south1-d`
- Collector rule matching ingress TCP from `10.0.0.0/8`
- Placeholder regional forwarding rule self-link on the collector
