# Provider enum hints — hashicorp/terraform-provider-aws

One file per resource type: the enum value sets the provider's Go source
enforces (`enum.Validate[T]`, `fwtypes.StringEnumType[T]`,
`validation.StringInSlice` and `stringvalidator.OneOf` in the resource
schemas under `internal/service/`, with `T`'s members read from the
aws-sdk-go-v2 `types/enums.go` at the version the provider's `go.mod`
requires), as a Magic Modules YAML subset
(`properties[].api_name` / `enum_values`). `terradart wrap
--provider-enums` merges them into the schema IR (top-level attributes)
and the nested helper types. `provider_version` must match
`../provider_version.txt`; `wrap` fails otherwise.

`exactly_one_of_groups` lists the input sets the provider requires
exactly one of (`ExactlyOneOf` in SDKv2 schemas, `*validator.ExactlyOneOf`
in framework schemas and `ConfigValidators`), as dotted paths that share
one parent block; `wrap` turns each into a sealed type.

Never hand-edit. Re-extract at the fixture's pin with:

```bash
dart tool/extract_provider_hints.dart \
  --repo=hashicorp/terraform-provider-aws \
  --version="$(cat packages/terradart_codegen/test/fixtures/wrap/source_aws/provider_version.txt)" \
  --schema-dir=packages/terradart_codegen/test/fixtures/wrap/source_aws
```
