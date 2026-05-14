# Cloud DNS quickstart

End-to-end terradart example for a private Cloud DNS managed zone with DNSSEC. Provisions a VPC network, then a private DNS zone (`internal.corp.`) scoped to that VPC via `PrivateVisibilityConfig`. DNSSEC is enabled with two `DnssecKeySpec` entries (KSK + ZSK) using typed `DnssecKeyAlgorithm` and `DnssecKeyType` enums.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Compute Engine API and Cloud DNS API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/dns_quickstart/
├── lib/main.dart        # InternalDnsStack: VPC + private zone + DNSSEC
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
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

- A custom-mode VPC network `gnd-vpc` (`auto_create_subnetworks = false`).
- A private Cloud DNS managed zone `internal-corp` for `internal.corp.`, scoped to the VPC.
- DNSSEC enabled with `DnssecState.on` + `DnssecNonExistence.nsec3`.
- Two `DnssecKeySpec`:
  - KSK: `DnssecKeyAlgorithm.rsasha256` + `DnssecKeyType.keySigning` + 2048-bit.
  - ZSK: `DnssecKeyAlgorithm.rsasha256` + `DnssecKeyType.zoneSigning` + 1024-bit.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_compute_network": {
      "gnd_vpc": { "name": "gnd-vpc", "auto_create_subnetworks": false }
    },
    "google_dns_managed_zone": {
      "internal": {
        "name": "internal-corp",
        "dns_name": "internal.corp.",
        "visibility": "private",
        "private_visibility_config": [
          { "networks": [{ "network_url": "${google_compute_network.gnd_vpc.id}" }] }
        ],
        "dnssec_config": [
          {
            "state": "on",
            "non_existence": "nsec3",
            "default_key_specs": [
              { "algorithm": "rsasha256", "key_length": 2048, "key_type": "keySigning" },
              { "algorithm": "rsasha256", "key_length": 1024, "key_type": "zoneSigning" }
            ]
          }
        ]
      }
    }
  }
}
```

Every `state` / `algorithm` / `key_type` / `visibility` / `non_existence` string is encoded via the typed `.terraformValue` convention — the Dart side stays in enum-land all the way to JSON emission.

## Next steps

- [cloud_run_quickstart](../cloud_run_quickstart/) — Cloud Run v2 Service with the sealed `EnvVarSource` env var dispatch.
