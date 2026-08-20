# Filtered schema fixture — hashicorp/google-beta

Machine-extracted subset containing ONLY the curated resources. The keys of
`schema.json` are the single source of truth for the set, and
`provider_version.txt` records the extraction version. Never hand-edit
either file. Re-extract the SAME set at the pinned version with:

```bash
dart tool/extract_schema_subset.dart \
  --provider=hashicorp/google-beta \
  --version="$(cat packages/terradart_codegen/test/fixtures/wrap/source_beta/provider_version.txt)" \
  --resources-from=packages/terradart_codegen/test/fixtures/wrap/source_beta/schema.json \
  --out=packages/terradart_codegen/test/fixtures/wrap/source_beta
```

To ADD a resource, append it via union:
`--resources-from=packages/terradart_codegen/test/fixtures/wrap/source_beta/schema.json --resources=<new_type>`.
To REMOVE one, pass an explicit `--resources=` list without it.
