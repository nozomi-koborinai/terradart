/// Public provider-meta constants for `hashicorp/google`.
///
/// `Stack.synth()` reads these to emit
/// the `source` and `version` of `terraform.required_providers.google`.
///
/// Pinned to the major in [kGoogleProviderVersionConstraint]. Move it only
/// after a curated-surface regression sweep. The exact release the wrappers
/// were generated against is
/// `packages/terradart_codegen/test/fixtures/wrap/source/provider_version.txt`.
library;

/// Provider source identifier.
const String kGoogleProviderSource = 'hashicorp/google';

/// Beta provider source — `hashicorp/google-beta`, version-locked to the
/// same major as [kGoogleProviderVersionConstraint].
const String kBetaProviderSource = 'hashicorp/google-beta';

/// Version constraint for [kGoogleProviderSource] and [kBetaProviderSource].
const String kGoogleProviderVersionConstraint = '~> 8.0';
