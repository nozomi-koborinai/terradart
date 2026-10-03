# Changelog

## 0.34.0 - 2026-10-03

- No API changes. Lockstep release with the `terradart` command's `init`, `validate` and `state migrate`; no provider pin moves.

## 0.33.0 - 2026-10-02

- No API changes. Lockstep release with the new `terradart_cli` package (the `terradart` command); no provider pin moves.

## 0.32.1 - 2026-10-02

- No API changes. Republishes the 0.32.0 workspace so `terradart_appwrite`, `terradart_cloudflare`, `terradart_aws` and `terradart_migrate` reach pub.dev; the 0.32.0 publish workflow stopped them at a wrapper-count check that also counted hand-written files, and now counts only generated wrappers ([#877](https://github.com/nozomi-koborinai/terradart/pull/877)).

## 0.32.0 - 2026-10-02

- `terradart_time.dart` re-exports `terradart_core`. See [MIGRATING.md](../../MIGRATING.md#fewer-imports).
- `TimeSleep` takes `provider:`, the registered `TimeProvider` instance (an aliased `TimeProvider(alias: ...)` from `addProvider`). See [MIGRATING.md](../../MIGRATING.md#providers-are-instances).
- **Breaking:** `TimeSleep` takes its local name as the first positional argument: `TimeSleep('wait', createDuration: ...)`.

## 0.31.0 - 2026-10-01

- **Breaking** — requires Dart 3.10 (`sdk: ^3.10.0`, was `^3.6.0`).
- pub.dev: add `example/main.dart` (a `TimeSleep` synthesized to Terraform JSON) and dartdoc on the `TimeProvider` and `TimeSleep` constructors. No API changes.

## 0.30.0 - 2026-09-28

Lockstep release. No `terradart_time` API changes.

## 0.29.0 - 2026-09-27

Initial package. `TimeProvider` and `TimeSleep` move here from `terradart_google` (`package:terradart_google/time.dart` is gone) so a stack on any provider package can use the `hashicorp/time` wait without depending on `terradart_google`. See [MIGRATING.md](../../MIGRATING.md).

- `kTimeProviderVersionConstraint` — the `hashicorp/time` pin (`~> 0.12`) `TimeProvider` emits, exported so `terradart-migrate` reads it instead of repeating it.
