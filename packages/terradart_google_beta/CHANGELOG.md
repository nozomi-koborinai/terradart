# Changelog

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
