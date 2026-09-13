# Changelog

## 0.28.1 - 2026-09-13

Lockstep release with `terradart_migrate` 0.28.1 (passthrough emission fix — a bare `Map` / `List` parameter no longer comes out as `TfArg.literal`). No `terradart_google_beta` API changes.

## 0.28.0 - 2026-09-13

- **`GoogleBetaProvider.alias`** and a **`provider:`** parameter on every factory and data source. Wrappers keep pinning `provider = google-beta` by default; `provider: 'google-beta.<alias>'` selects an aliased `GoogleBetaProvider(alias: ...)` instead (#666).

## 0.27.0 - 2026-08-30

Lockstep release with `terradart_core` 0.27.0 (`TfVariable` / `Stack.addVariable` and `S3Backend`). No `terradart_google_beta` API changes.
## 0.26.0 - 2026-08-24

Lockstep release with the TerraDart workspace. Schema fixture re-extracted at `hashicorp/google-beta` 7.45.0 (same resource set). No factory or provider API changes.

## 0.25.3 - 2026-08-23

Lockstep release with the TerraDart workspace. No factory or provider changes.

## 0.25.2 - 2026-08-22

- Add an in-package `example/main.dart` (pub.dev pana example check). No
  factory or provider changes; the schema pin now tracks the weekly GA
  bump automatically.

## 0.25.1

- Fill the beta-only `hashicorp/google-beta` catalog: **128 resource
  factories** (74 core + 54 IAM adjuncts) at provider 7.44.0. Wrappers
  pin the `google-beta` provider meta-argument. Coverage is synth +
  `terraform validate` via `beta_leftover_quickstart` (apply-smoke
  skip-listed; beta apply policy is not designed). Data sources stay
  uncurated.

## 0.25.0

- Initial release: `GoogleBetaProvider` and the first curated beta-only
  factory, `GoogleProjectServiceIdentity` (`project` barrel). Versioned in
  lockstep with the TerraDart workspace.
