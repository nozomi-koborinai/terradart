# Schema fixture — cloudflare/cloudflare

Full catalog at the current pin (`5.23.0`): every resource and data source.
The keys of `schema.json` are the single source of truth for the set, and
`provider_version.txt` records the extraction version. Never hand-edit
either file. Re-extract the SAME set at the pinned version with:

```bash
dart tool/extract_schema_subset.dart \
  --provider=cloudflare/cloudflare \
  --version="$(cat packages/terradart_codegen/test/fixtures/wrap/source_cloudflare/provider_version.txt)" \
  --resources-from=packages/terradart_codegen/test/fixtures/wrap/source_cloudflare/schema.json \
  --out=packages/terradart_codegen/test/fixtures/wrap/source_cloudflare
```

To ADD a resource, append it via union:
`--resources-from=packages/terradart_codegen/test/fixtures/wrap/source_cloudflare/schema.json --resources=<new_type>`.
To ADD a data source: `--data-sources=<type>` (combined with
`--resources-from` so the current resource set is kept).
To REMOVE one, pass an explicit `--resources=` / `--data-sources=` list
without it.

To extract the FULL catalog at this pin (filled-at-pin providers):
`--all-resources --all-data-sources` (optionally with `--schema-json=`
to reuse a dump).
