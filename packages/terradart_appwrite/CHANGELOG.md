# Changelog

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
