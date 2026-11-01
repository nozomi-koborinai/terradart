# Storage quickstart

End-to-end terradart example for Cloud Storage. Provisions a GCS bucket with a typed `StorageBucketLifecycleRule` and uploads one object via the sealed `StorageBucketObjectBody` argument.

## Before you apply

The bucket objects upload local files (`config/app.json`, `legacy/readme.txt`) that are not part of the generated `tf-out/`. Provide them next to `main.tf.json` before applying.

The managed SFTP server (`google_storage_ftp_server`) only accepts connections from its `allowed_cidr_blocks`; replace the documentation range `203.0.113.0/24` with your client's range, and check that Cloud Storage SFTP is offered in `asia-northeast1` for your project.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
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
export GCP_PROJECT_ID=your-project-id
terradart plan
terradart apply
```

## What gets created

- A GCS bucket `my-app-assets-prod` in `ASIA-NORTHEAST1` on `STANDARD` storage class.
- A second bucket `my-app-assets-prod-eu` in `EUROPE-WEST1`, created through the aliased provider configuration (`final eu = addProvider(GoogleProvider(alias: 'eu', ...))` selected with `provider: eu` — the `provider "google" { alias = "eu" }` / `provider = google.eu` pattern in HCL), with a `moved` block (`addMoved('google_storage_bucket.assets_europe', 'google_storage_bucket.assets_eu')`) carrying the state of its earlier name.
- Object versioning enabled via `StorageBucketVersioning(enabled: .literal(true))`, and a `timeouts` block (`TfTimeouts(create: Duration(minutes: 10), read: Duration(minutes: 5), update: Duration(minutes: 10))` — `google_storage_bucket` declares no `delete` timeout, and the provider rejects one).
- One `StorageBucketLifecycleRule` transitioning objects to `ARCHIVE` storage class after 365 days.
- One object `config/app.json` uploaded from the local file `./config/app.json` via `body: .source(...)`.
- A local Terraform module `modules/object_prefix` called with `addModule(ModuleCall(source: '../modules/object_prefix', ...))`; its `prefix` output feeds the object-notification filter as a `TfRef` (`objectPrefix.output<String>('prefix')`).

## Expected `tf-out/main.tf.json` (excerpt)

Synthesized with the CI placeholder `GCP_PROJECT_ID=ci-test-project-id` (`tool/example_synth_env.dart`); your run carries your own value.

```json
{
  "provider": {
    "google": [
      {
        "project": "ci-test-project-id",
        "region": "asia-northeast1"
      },
      {
        "alias": "eu",
        "project": "ci-test-project-id",
        "region": "europe-west1"
      }
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
        "location": "ASIA-NORTHEAST1"
      }
    }
  },
  "moved": [
    {
      "from": "google_storage_bucket.assets_europe",
      "to": "google_storage_bucket.assets_eu"
    }
  ]
}
```

The `assets` bucket itself:

```json
{
  "resource": {
    "google_storage_bucket": {
      "assets": {
        "name": "my-app-assets-prod",
        "location": "ASIA-NORTHEAST1",
        "storage_class": "STANDARD",
        "force_destroy": false,
        "uniform_bucket_level_access": true,
        "versioning": {
          "enabled": true
        },
        "lifecycle_rule": [
          {
            "action": {
              "type": "SetStorageClass",
              "storage_class": "ARCHIVE"
            },
            "condition": {
              "age": 365
            }
          }
        ]
      }
    },
    "google_storage_bucket_object": {
      "config": {
        "bucket": "${google_storage_bucket.assets.name}",
        "name": "config/app.json",
        "content_type": "application/json",
        "storage_class": "STANDARD"
      }
    }
  }
}
```

`body: .source(...)` (a local file) and `body: .content(...)` (inline text) are the two variants of the sealed `StorageBucketObjectBody` argument: exactly one is required, and the compiler enforces the choice at construction time.

```dart
final assets = add(
  GoogleStorageBucket('assets', name: .literal('my-project-assets'), location: .literal('EU')),
);
add(
  GoogleStorageBucketObject(
    'robots',
    bucket: assets.ref,
    name: .literal('robots.txt'),
    body: .content(.literal('User-agent: *\nDisallow:\n')),
  ),
);
```

## Next steps

- [bigquery_quickstart](../bigquery_quickstart/) — analytics dataset with a typed `BigqueryDatasetAccess` list.
