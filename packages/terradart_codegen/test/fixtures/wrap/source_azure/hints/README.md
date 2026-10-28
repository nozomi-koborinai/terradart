# Provider enum hints — hashicorp/terraform-provider-azurerm

One file per resource type: the enum value sets the provider's Go source
enforces (`validation.StringInSlice` in the resource schemas under
`internal/services/`, including `PossibleValuesFor*()` sets from the
vendored `go-azure-sdk`), as a Magic Modules YAML subset
(`properties[].api_name` / `enum_values`). `terradart wrap
--provider-enums` merges them into the schema IR (top-level attributes)
and the nested helper types. `provider_version` must match
`../provider_version.txt`; `wrap` fails otherwise.

`exactly_one_of_groups` lists the input sets the provider requires
exactly one of (`ExactlyOneOf` in SDKv2 schemas, `*validator.ExactlyOneOf`
in framework schemas and `ConfigValidators`, or an `AtLeastOneOf` set
whose members all pairwise `ConflictsWith` / `Conflicting`), as dotted
paths that share one parent block; `wrap` turns each into a required
sealed type. `at_most_one_of_groups` lists the other sets of one
block's inputs that pairwise `ConflictsWith` / `Conflicting` (and
conflict with nothing else): the provider accepts none of them, so
`wrap` turns each into a nullable sealed type. A conflict neither
expresses is listed on stdout.

Never hand-edit. Re-extract at the fixture's pin with:

```bash
dart tool/extract_provider_hints.dart \
  --repo=hashicorp/terraform-provider-azurerm \
  --version="$(cat /tmp/azure-schema/provider_version.txt)" \
  --schema-dir=/tmp/azure-schema
```
