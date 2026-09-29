# Provider enum hints — appwrite/terraform-provider-appwrite

One file per resource type: the enum value sets the provider's Go source
enforces (`stringvalidator.OneOf` / `OneOfCaseInsensitive` in the resource
schemas under `internal/services/`), as a Magic Modules YAML subset
(`properties[].api_name` / `enum_values`). `terradart wrap
--provider-enums` merges them into the schema IR (top-level attributes)
and the nested helper types. `provider_version` must match
`../provider_version.txt`; `wrap` fails otherwise.

`exactly_one_of_groups` lists the input sets the provider requires
exactly one of (`<kind>validator.ExactlyOneOf` on an attribute or
`resourcevalidator.ExactlyOneOf` in `ConfigValidators`, or an
`AtLeastOneOf` set whose members all pairwise `ConflictsWith` /
`Conflicting`), as dotted paths that share one parent block; `wrap`
turns each into a sealed type. A `ConflictsWith` set no rule requires
one of is at most one, which a sealed type cannot express: the tool
lists it on stdout instead.

Never hand-edit. Re-extract at the fixture's pin with:

```bash
dart tool/extract_provider_hints.dart \
  --repo=appwrite/terraform-provider-appwrite \
  --version="$(cat packages/terradart_codegen/test/fixtures/wrap/source_appwrite/provider_version.txt)" \
  --schema-dir=packages/terradart_codegen/test/fixtures/wrap/source_appwrite
```
