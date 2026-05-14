/// Public provider-meta constants for `hashicorp/google`.
///
/// `terradart`'s `StackSynth.synth(...)` reads these to emit
/// `terraform.required_providers.google = { source: ..., version: ... }`.
///
/// Pinned to provider major v7. Confirmed against registry latest 7.31.0 on
/// 2026-05-08; bump `~> 8.0` only after a curated-surface regression sweep.
library;

/// Provider source identifier.
const String kProviderSource = 'hashicorp/google';

/// Version constraint pinning to provider major v7.
const String kProviderVersionConstraint = '~> 7.0';
