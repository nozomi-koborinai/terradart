# Changelog

## Unreleased

- Fill the curated catalog at the `appwrite/appwrite` `2.0.0-beta.1` pin:
  every remaining resource factory and data source (38 resources + 24
  data sources). `examples/appwrite_quickstart` synths the full set.

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
