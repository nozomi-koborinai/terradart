import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Provider source identifier — `hashicorp/google-beta`.
const String kBetaProviderSource = 'hashicorp/google-beta';

/// Version constraint pinning to provider major v7, tracking the GA
/// `terradart_google` pin (google-beta versions in lockstep upstream).
const String kBetaProviderVersionConstraint = '~> 7.0';

/// Concrete `StackProvider` for `hashicorp/google-beta ~> 7.0`.
///
/// `StackSynth.synth(...)` reads [source] / [versionConstraint] to populate
/// the `terraform.required_providers.google-beta` block, and [configArgs]
/// to populate the `provider.google-beta[]` block. Composes with
/// `terradart_google`'s `GoogleProvider` in one `Stack` when a stack mixes
/// GA and beta resources.
///
/// All configuration fields are plain Dart types (not `TfArg`) — provider
/// blocks in Terraform JSON do not interpolate references to resources, so
/// there is no `TfArgRef` use case here. Pass literal strings only.
@immutable
final class GoogleBetaProvider implements StackProvider {
  /// Creates a `google-beta` provider block.
  const GoogleBetaProvider({
    this.project,
    this.region,
    this.zone,
  });

  /// Default GCP project ID.
  final String? project;

  /// Default GCP region (e.g. `us-central1`).
  final String? region;

  /// Default GCP zone (e.g. `us-central1-a`).
  final String? zone;

  @override
  String get providerName => 'google-beta';

  /// Provider registry source — `hashicorp/google-beta`.
  @override
  String get source => kBetaProviderSource;

  /// Version constraint — `~> 7.0`.
  @override
  String get versionConstraint => kBetaProviderVersionConstraint;

  @override
  Map<String, Object?> get configArgs => {
        if (project != null) 'project': project,
        if (region != null) 'region': region,
        if (zone != null) 'zone': zone,
      };
}
