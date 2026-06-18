# Cloud KMS quickstart

End-to-end terradart example for Cloud KMS plus Contact Center AI Insights CMEK. Provisions a regional key ring (`main-ring`) and `payments` crypto key in `asia-northeast1`, IAM bindings, and a `GoogleContactCenterInsightsEncryptionSpec` wired to the payments key.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
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
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
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
