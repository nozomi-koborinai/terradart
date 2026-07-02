/// Shared input helpers for the `wrap` / `wrap-init` / `wrap-promote`
/// commands, so provider-id validation, schema-file resolution, and the
/// provider-version sidecar are read one way instead of three.
library;

import 'dart:io';

import 'package:path/path.dart' as p;

/// `namespace/name` shape for `--provider` values.
final RegExp providerIdPattern =
    RegExp(r'^[a-z0-9][a-z0-9-]*\/[a-z0-9][a-z0-9-]*$');

/// Reads `<source>/provider_version.txt` — the sidecar the schema-bump
/// workflow writes next to `schema.json` recording which provider release
/// the schema was captured from. Returns `''` when the sidecar is absent
/// (e.g. per-resource test fixtures), so the IR carries no version claim
/// instead of a stale hardcoded one.
String readProviderVersion(String source) {
  final file = File(p.join(source, 'provider_version.txt'));
  if (!file.existsSync()) return '';
  return file.readAsStringSync().trim();
}

/// Resolves the schema file for [resourceName] under [source]: the canonical
/// `<source>/schema.json` when present, else the per-resource fixture layout
/// `<source>/schema/<resourceName>_v7.schema.json`. Returns null when
/// neither exists (callers print their own command-prefixed error).
File? resolveSchemaFile(String source, String resourceName) {
  final canonical = File(p.join(source, 'schema.json'));
  if (canonical.existsSync()) return canonical;
  final perResource = File(
    p.join(source, 'schema', '${resourceName}_v7.schema.json'),
  );
  if (perResource.existsSync()) return perResource;
  return null;
}
