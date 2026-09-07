# Storage quickstart

End-to-end terradart example for Cloud Storage. Provisions a GCS bucket with a typed `LifecycleRule` and uploads one inline-content object via the sealed `BucketObjectContent` API.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Cloud Storage API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/storage_quickstart/
├── lib/main.dart        # AssetsStack: bucket + bucket_object
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

- A GCS bucket `my-app-assets-prod` in `ASIA-NORTHEAST1` on `STANDARD` storage class.
- A second bucket `my-app-assets-prod-eu` in `EUROPE-WEST1`, created through the aliased provider configuration (`GoogleProvider(alias: 'eu', ...)` selected with `provider: 'google.eu'` — the `provider "google" { alias = "eu" }` / `provider = google.eu` pattern in HCL).
- Object versioning enabled via `Versioning(enabled: true)`.
- One `LifecycleRule` transitioning objects to `ARCHIVE` storage class after 365 days.
- One inline-content object `config/app.json` uploaded via `BucketObjectFromContent`.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "provider": {
    "google": [
      { "project": "your-project-id", "region": "asia-northeast1" },
      { "alias": "eu", "project": "your-project-id", "region": "europe-west1" }
    ]
  },
  "resource": {
    "google_storage_bucket": {
      "assets_eu": {
        "name": "my-app-assets-prod-eu",
        "location": "EUROPE-WEST1",
        "storage_class": "STANDARD",
        "force_destroy": false,
        "uniform_bucket_level_access": true,
        "provider": "google.eu"
      },
      "assets": {
        "name": "my-app-assets-prod",
        "location": "ASIA-NORTHEAST1",
        "storage_class": "STANDARD",
        "force_destroy": false,
        "uniform_bucket_level_access": true,
        "versioning": [{ "enabled": true }],
        "lifecycle_rule": [
          {
            "action": [{ "type": "SetStorageClass", "storage_class": "ARCHIVE" }],
            "condition": [{ "age": 365 }]
          }
        ]
      }
    },
    "google_storage_bucket_object": {
      "config": {
        "bucket": "${google_storage_bucket.assets.name}",
        "name": "config/app.json",
        "content": "...",
        "content_type": "application/json",
        "storage_class": "STANDARD"
      }
    }
  }
}
```

`BucketObjectFromContent` and `BucketObjectFromSource` are the two subclasses of the sealed `BucketObjectContent` type — exactly one is required, the compiler enforces the choice at construction time.

## Next steps

- [bigquery_quickstart](../bigquery_quickstart/) — analytics dataset with the sealed `Access` hierarchy.
