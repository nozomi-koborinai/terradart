# BigLake Metastore quickstart

End-to-end terradart example for BigLake Metastore. Enables the BigLake and
Storage APIs and provisions:

- a Hive-compatible metastore hierarchy (catalog → database → table)
- an Iceberg REST catalog on a GCS bucket (catalog → namespace → table)

Hive `hive_options` and Iceberg `schema` / `partition_spec` are passed as
structured maps, matching the thin curated factories.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Layout

```
examples/biglake_quickstart/
├── lib/main.dart       # MetastoreStack (Hive + Iceberg trees)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
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
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Hive metastore stores catalog metadata only. The Iceberg table incurs BigLake
Table Management hourly charges while it exists — the per-PR apply-smoke gate
defers this example to the full sweep (`tool/apply_smoke_pr_skip.yaml`).
