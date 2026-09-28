/// Public provider-meta constants for `hashicorp/google`.
///
/// `terradart`'s `StackSynth.synth(...)` reads these to emit
/// `terraform.required_providers.google = { source: ..., version: ... }`.
///
/// Pinned to provider major v7; bump `~> 8.0` only after a curated-surface
/// regression sweep. The exact release the wrappers were generated against
/// is `packages/terradart_codegen/test/fixtures/wrap/source/provider_version.txt`.
library;

/// Provider source identifier.
const String kProviderSource = 'hashicorp/google';

/// Beta provider source — `hashicorp/google-beta`, version-locked to the
/// same major as [kProviderVersionConstraint].
const String kBetaProviderSource = 'hashicorp/google-beta';

/// Version constraint pinning to provider major v7.
const String kProviderVersionConstraint = '~> 8.0';
