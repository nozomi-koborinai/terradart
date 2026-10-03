# BigLake Metastore quickstart

End-to-end terradart example for BigLake Metastore. Enables the BigLake and
Storage APIs and provisions:

- a Hive-compatible metastore hierarchy (catalog → database → table)
- an Iceberg REST catalog on a GCS bucket (catalog → namespace → table)

Hive `hive_options` and Iceberg `schema` / `partition_spec` are passed as
structured maps, matching the thin curated factories.

## Before you apply

The Hive metastore stores catalog metadata only, but the Iceberg table incurs BigLake Table Management charges hourly while it exists. Destroy it when you are done.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Layout

```
examples/biglake_quickstart/
├── lib/main.dart       # MetastoreStack (Hive + Iceberg trees)
├── bin/infra.dart      # Synth: runStack → tf-out/
├── lib/generated/      # (created on synth) metastore_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/biglake_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
terradart synth

# 4. Plan:
terradart plan
```
