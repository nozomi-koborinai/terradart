# Compute quickstart

End-to-end terradart example for Cloud Compute networking primitives. Provisions a custom-mode VPC network and a regional external IPv4 address, demonstrating the typed `RoutingMode`, `AddressType`, `NetworkTier`, and `IpVersion` enums.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Compute Engine API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/compute_quickstart/
├── lib/main.dart        # NetworkStack: VPC + load-balancer VIP
├── bin/infra.dart       # Synth entry: NetworkStack.synth(outDir: 'tf-out')
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml         # path-deps to ../../packages/terradart_{core,google}
```

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

- A custom-mode VPC network `main-vpc` (`auto_create_subnetworks = false`, `routing_mode = "REGIONAL"`).
- An external IPv4 regional address `lb-vip-prod` in `asia-northeast1` on the `PREMIUM` network tier.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_compute_network": {
      "main": {
        "name": "main-vpc",
        "auto_create_subnetworks": false,
        "routing_mode": "REGIONAL"
      }
    },
    "google_compute_address": {
      "lb_vip": {
        "name": "lb-vip-prod",
        "region": "asia-northeast1",
        "address_type": "EXTERNAL",
        "network_tier": "PREMIUM",
        "ip_version": "IPV4"
      }
    }
  }
}
```

The `routing_mode`, `address_type`, `network_tier`, and `ip_version` strings are all encoded via the typed `.terraformValue` convention on `RoutingMode.regional`, `AddressType.external`, `NetworkTier.premium`, and `IpVersion.ipv4` respectively.

## Next steps

- [dns_quickstart](../dns_quickstart/) — private DNS zone attached to a VPC, demonstrating `DnssecConfig` + DNSSEC enums.
