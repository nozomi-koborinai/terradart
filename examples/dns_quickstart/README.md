# Cloud DNS quickstart

End-to-end terradart example for a private Cloud DNS managed zone. Provisions a VPC network, then a private DNS zone (`internal.corp.`) scoped to that VPC via `DnsManagedZonePrivateVisibilityConfig`. DNSSEC is not configured: it is a public-zone feature, and a private zone rejects `dnssec_config`.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Compute Engine API and Cloud DNS API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/dns_quickstart/
├── lib/main.dart        # InternalDnsStack: VPC + private zone
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
terradart apply
```

## What gets created

- A custom-mode VPC network `gnd-vpc` (`auto_create_subnetworks = false`).
- A private Cloud DNS managed zone `internal-corp` for `internal.corp.`, scoped to the VPC.
- No `dnssecConfig`: a private zone rejects DNSSEC at apply time ("Private zones do not support DNSSEC").

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
        "description": "Private DNS for internal services in gnd-vpc.",
        "visibility": "private",
        "private_visibility_config": [
          { "networks": [{ "network_url": "${google_compute_network.gnd_vpc.id}" }] }
        ]
      }
    }
  }
}
```

`visibility: .private` is a typed enum member, so the Dart side stays in enum-land all the way to JSON emission.

## Next steps

- [cloud_run_quickstart](../cloud_run_quickstart/) — Cloud Run v2 Service with the sealed `CloudRunV2ServiceEnvSource` env var source.
