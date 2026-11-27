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

/// Version constraint for [kGoogleProviderSource].
const String kGoogleProviderVersionConstraint = '~> 8.0';
