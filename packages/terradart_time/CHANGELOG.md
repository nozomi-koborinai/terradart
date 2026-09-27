# Changelog

## Unreleased

Initial package. `TimeProvider` and `TimeSleep` move here from `terradart_google` (`package:terradart_google/time.dart` is gone) so a stack on any provider package can use the `hashicorp/time` wait without depending on `terradart_google`. See [MIGRATING.md](../../MIGRATING.md).

- `kTimeProviderVersionConstraint` — the `hashicorp/time` pin (`~> 0.12`) `TimeProvider` emits, exported so `terradart-migrate` reads it instead of repeating it.
