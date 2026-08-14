# Data Catalog quickstart (legacy)

End-to-end terradart example for the **legacy** Data Catalog API. Enables
`datacatalog.googleapis.com` and provisions an entry group + custom entry, a
taxonomy + policy tag, a tag template, a tag on the custom entry, and additive IAM grants.

Prefer [Dataplex Universal Catalog](../dataplex_quickstart/) for new catalogs.
Apply-smoke skips this example: some projects reject Data Catalog writes due to
upstream deprecation (HTTP 400). Synth + `terraform validate` still cover the
factories.

## Usage

```bash
dart pub get
cd examples/data_catalog_quickstart && dart pub get

GCP_PROJECT_ID=my-proj-123 dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```
