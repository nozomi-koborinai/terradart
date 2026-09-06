# terradart_migrate

[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.10-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/nozomi-koborinai/terradart/blob/main/LICENSE)

The HCL → Dart migrator for existing Terraform users (`terradart-migrate`, [#80](https://github.com/nozomi-koborinai/terradart/issues/80)). Reads a Terraform module through [`terradart_hcl`](../terradart_hcl/) and rewrites what the curated [TerraDart](https://terradart.dev) factories cover as a Dart `Stack`, leaving the rest in a Terraform sidecar.

## Status

**Under construction** — the library migrates a Terraform module (`*.tf.json` today, HCL through `terradart_hcl`) into a Dart package; the leftover sidecar, the `terradart-migrate` CLI and the Homebrew binary follow in [#661](https://github.com/nozomi-koborinai/terradart/issues/661) / [#664](https://github.com/nozomi-koborinai/terradart/issues/664). `publish_to: none`.

## Library

```dart
import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/terradart_migrate.dart';

final module = loadTfModule(Directory('infra/dev'));
final result = migrateModule(module, name: 'dev');

result.files['lib/dev_stack.dart']; // final class DevStack extends Stack { ... }
result.files['bin/infra.dart'];     // synth entry point
result.files['pubspec.yaml'];       // lockstep pins on terradart_core + the provider packages used
print(result.report.renderText());  // what became Dart, what stays in Terraform and why
```

**Translation is resource-atomic.** A resource whose arguments all translate becomes a curated factory call; one untranslatable argument keeps the whole block in Terraform, listed in `report.kept` with the reason — nothing is dropped silently. Resource addresses are preserved (`localName` is the Terraform name), so a migrated Stack plans with *No changes* once the leftover blocks sit beside its `main.tf.json`.

What translates (the conversion rules of [#655](https://github.com/nozomi-koborinai/terradart/issues/655)):

- literals (`TfArg.literal(...)`, `${` / `%{` re-escaped), enum members from the manifest, typed nested helpers (single, repeated, exactly-one-of variants), opaque passthrough maps;
- references to migrated resources and data sources as typed `TfArg.ref(x.id)` (or `TfRef.attribute<T>` when the wrapper has no getter), `var.x` as `TfArg.variable`, everything else — function calls, conditionals, `local.x`, `module.x` — verbatim as a `${...}` string on string arguments;
- `depends_on` and `lifecycle`, `terraform.required_version`, `backend "gcs" | "local" | "s3"`, `provider` blocks of the four providers (and `time`), `variable` blocks as `addVariable`, single-attribute `output`s as exports;
- blockers, always with a reason: types outside every catalog, `count` / `for_each` / `dynamic` / `provisioner` / `timeouts`, provider aliases, an argument with no Dart parameter, an expression on a non-string argument (until `TfArg.expression`, #662), a sensitive literal (never copied), a `depends_on` on a resource that stays in Terraform.

## Round-trip gate

`tool/migrate_roundtrip_gates.dart` migrates every quickstart's synth output back to Dart, analyzes the generated Stacks and re-synthesizes them: `synth(migrate(synth(S))) == synth(S)`, byte-for-byte after JSON canonicalization. Strict examples must round-trip completely; [`tool/migrate_roundtrip_debt.yaml`](../../tool/migrate_roundtrip_debt.yaml) ratchets the reasoned exceptions. It runs in `tool/agent_verify.sh` (full mode) and as the CI `migrate round-trip gate` job.

## Migration manifests

One [`MigrateManifest`](lib/src/migrate_manifest.dart) per curated catalog, generated into `lib/src/manifest/` by `terradart wrap --migrate-manifest` from the **same** inputs (schema IR, override YAML, emitted wrapper source) the factories are generated from — so the recipe cannot drift from the generated Dart API:

| Constant | Package | Source lane |
| :--- | :--- | :--- |
| `googleMigrateManifest` | `terradart_google` | `hashicorp/google` |
| `googleBetaMigrateManifest` | `terradart_google_beta` | `hashicorp/google-beta` |
| `appwriteMigrateManifest` | `terradart_appwrite` | `appwrite/appwrite` |
| `cloudflareMigrateManifest` | `terradart_cloudflare` | `cloudflare/cloudflare` |

Each manifest lists, per curated factory (`MigrateEntry`), how every constructor slot maps back to Terraform (`MigrateSlot`: a `TfArg` scalar, an enum, a typed nested helper, a sealed exactly-one-of choice, an opaque passthrough, or `manual` with a reason), the package-wide helper-class and enum tables those slots refer to by name, and the output-attribute getters. `allMigrateManifests` lists the four in lookup precedence (a `google_*` type is looked up in `terradart_google` before `terradart_google_beta`); `findMigrateEntry` and `MigrateManifest.entryFor` resolve a Terraform type.

The runtime types are hand-written (`lib/src/migrate_manifest.dart`); the `*.g.dart` values are regenerated by the four `terradart wrap --check` lanes (`tool/agent_verify.sh`, CI `wrap_check`) and fail the gate when stale. Shapes the generator cannot derive are recorded as `manual` and gated by `terradart lint-override` (`migrate-shape-underivable`) with [`tool/migrate_manifest_debt.yaml`](../../tool/migrate_manifest_debt.yaml) as the reasoned escape hatch.

```dart
import 'package:terradart_migrate/terradart_migrate.dart';

final hit = findMigrateEntry('google_pubsub_topic', CatalogKind.resource)!;
print('${hit.manifest.package}: ${hit.entry.className}'); // terradart_google: GooglePubsubTopic
for (final slot in hit.entry.slots) {
  print('${slot.tfName} -> ${slot.dartName} (${slot.kind.name})');
}
```

## Development

Source lives under `packages/terradart_migrate/`. Regenerate a manifest with the matching wrap lane, e.g. for GA google:

```sh
cd packages/terradart_codegen && dart run bin/terradart.dart wrap \
  --provider hashicorp/google \
  --source test/fixtures/wrap/source \
  --output ../terradart_google/lib/src \
  --migrate-manifest ../terradart_migrate/lib/src/manifest/google.g.dart
```

See [`tool/providers.yaml`](../../tool/providers.yaml) for the other lanes' coordinates.
