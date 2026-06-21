# BigLake Metastore quickstart

End-to-end terradart example for BigLake Metastore. Enables the BigLake API and provisions a Hive-compatible metastore hierarchy: a catalog, a database (with a Hive warehouse directory), and a table (with a Hive storage descriptor) — and exports the catalog name as a typed Dart constant.

The `hive_options` config is passed as a structured map, matching the thin curated factories.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The BigLake API is enabled by the stack.

## Layout

```
examples/biglake_quickstart/
├── lib/main.dart       # MetastoreStack (catalog + database + table)
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

BigLake Metastore stores catalog metadata only (the `gs://` URIs are warehouse pointers); the stack creates and destroys cleanly in a single project.
