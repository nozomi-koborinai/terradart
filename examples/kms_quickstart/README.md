# Cloud KMS quickstart

End-to-end terradart example for Cloud KMS plus Contact Center AI Insights CMEK.
Provisions a regional key ring (`main-ring`) and `payments` crypto key in
`asia-northeast1`, IAM bindings, a secret-ciphertext encrypt helper, a software
import job, and a `GoogleContactCenterInsightsEncryptionSpec` wired to the
payments key.

## Before you apply

KMS key rings, keys, and import jobs can never be deleted. Applying leaves them in the project permanently, and a second apply with the same names fails with 409.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Cloud KMS API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/kms_quickstart/
├── lib/main.dart        # CryptoStack: key ring
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

- A Cloud KMS key ring `main-ring`, `payments` crypto key + primary version, and IAM bindings in `asia-northeast1`.
- A Contact Center AI Insights location-level encryption spec (`GoogleContactCenterInsightsEncryptionSpec`) referencing the payments KMS key.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_kms_key_ring": {
      "main": {
        "name": "main-ring",
        "location": "asia-northeast1"
      }
    }
  }
}
```

## Next steps

- [storage_quickstart](../storage_quickstart/) — GCS bucket with lifecycle rules, suitable for hosting customer-managed-encryption-protected objects.
