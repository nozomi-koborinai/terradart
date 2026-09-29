# Changelog

## Unreleased

- Every resource has a `ref` getter returning `RefTo<ItsClass>`, and so does every data source that reads a resource of this package — the reference the arguments naming another resource will take. Additive.
- **Breaking** — requires Dart 3.10 (`sdk: ^3.10.0`, was `^3.6.0`). The generated wrappers were already formatted in the Dart 3.7+ tall style, so the constraint now matches them (pub.dev static analysis no longer reports a formatter mismatch).
- Generated wrappers encode optional inputs as null-aware map elements (`'k': ?x`, `'k': ?x?.toTfJson()`) instead of `if (x != null) 'k': x` guards, regenerated with `terradart wrap`. No API change; synth output is unchanged.

## 0.30.0 - 2026-09-28

- **Breaking:** inputs with a fixed value set are enums — 23 string slots on 17 resources (e.g. `AppwriteMessagingProvider.type` → `MessagingProviderType`, `AppwriteStorageBucket.compression` → `StorageBucketCompression`). Synth output is unchanged. See `MIGRATING.md`.

## 0.29.0 - 2026-09-27

Lockstep release. No `terradart_appwrite` API changes.

## 0.28.1 - 2026-09-13

Lockstep release with `terradart_migrate` 0.28.1 (passthrough emission fix — a bare `Map` / `List` parameter no longer comes out as `TfArg.literal`). No `terradart_appwrite` API changes.

## 0.28.0 - 2026-09-13

- **`AppwriteProvider.alias`** (`provider "appwrite" { alias = "staging" }`) and a **`provider:`** parameter on every factory and data source, so a resource can select an aliased configuration (`provider: 'appwrite.staging'`) (#666).

## 0.27.0 - 2026-08-30

Lockstep release with `terradart_core` 0.27.0 (`TfVariable` / `Stack.addVariable` and `S3Backend`). No `terradart_appwrite` API changes.
## 0.26.0 - 2026-08-24

Lockstep release with the TerraDart workspace. No Appwrite factory or provider changes.

## 0.25.3 - 2026-08-23

- Fill the curated catalog at the `appwrite/appwrite` `2.0.0-beta.1` pin:
  every remaining resource factory and data source (38 resources + 24
  data sources). `examples/appwrite_quickstart` synths every applyable
  factory; `AppwriteProjectKey` is import-only and listed in
  `tool/example_debt.yaml`.

## 0.25.2 - 2026-08-22

- Add an in-package `example/main.dart` (pub.dev pana example check) and
  rewrite the catalog note as a feature-request invitation. No factory or
  provider changes.

## 0.25.1

- Lockstep release with the TerraDart workspace. No Appwrite factory or
  provider changes.

## 0.25.0

- Initial release: `AppwriteProvider` (credential-free by design — apply
  authenticates via `APPWRITE_*` environment variables) and the first
  curated factories, `AppwriteProject` and `AppwriteStorageBucket`.
  Provider pinned at `appwrite/appwrite 2.0.0-beta.1`. Versioned in
  lockstep with the TerraDart workspace.
