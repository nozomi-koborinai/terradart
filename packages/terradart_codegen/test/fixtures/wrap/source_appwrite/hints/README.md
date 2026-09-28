# Provider enum hints — appwrite/terraform-provider-appwrite

One file per resource type: the enum value sets the provider's Go source
enforces (`stringvalidator.OneOf` / `OneOfCaseInsensitive` in the resource
schemas under `internal/services/`), as a Magic Modules YAML subset
(`properties[].api_name` / `enum_values`). `terradart wrap
--provider-enums` merges them into the schema IR (top-level attributes)
and the nested helper types. `provider_version` must match
`../provider_version.txt`; `wrap` fails otherwise.

Never hand-edit. Re-extract at the fixture's pin with:

```bash
dart tool/extract_provider_hints.dart \
  --repo=appwrite/terraform-provider-appwrite \
  --version="$(cat packages/terradart_codegen/test/fixtures/wrap/source_appwrite/provider_version.txt)" \
  --schema-dir=packages/terradart_codegen/test/fixtures/wrap/source_appwrite
```
