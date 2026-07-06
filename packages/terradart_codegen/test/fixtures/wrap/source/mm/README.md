# Magic Modules fixture provenance

The `google_*.yaml` files in this directory are **verbatim, byte-for-byte
copies** of mmv1 resource definitions from
[GoogleCloudPlatform/magic-modules](https://github.com/GoogleCloudPlatform/magic-modules),
which is licensed under the Apache License 2.0 — the same license as this
repository (see the root `LICENSE`). They are Copyright Google LLC, and each
file retains its original license header. No modifications are made on sync:
`tool/sync_mm_yaml.dart` writes the fetched bytes as-is.

- **Per-file upstream URLs** live in the manifest,
  [`tool/mm_yaml_sources.yaml`](../../../../../../../tool/mm_yaml_sources.yaml).
- Files whose manifest entry says `upstream: null` cover resources that are
  handwritten in terraform-provider-google and have **no mmv1 counterpart**;
  those YAML files are TerraDart-authored in the same format (not Google
  copies).
- Drift against upstream is audited by
  `tool/check_mm_upstream_fingerprint.dart` and refreshed by the weekly
  schema-bump workflow.
