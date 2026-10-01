# Changelog

## Unreleased

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
