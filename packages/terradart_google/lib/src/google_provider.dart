import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '_provider_meta.dart';

/// Concrete `StackProvider` for `hashicorp/google ~> 7.0`.
///
/// `StackSynth.synth(...)` reads [source] / [versionConstraint] to populate
/// the `terraform.required_providers.google` block, and [configArgs] to
/// populate the `provider.google[]` block.
///
/// All configuration fields are plain Dart types (not `TfArg`) — provider
/// blocks in Terraform JSON do not interpolate references to resources, so
/// there is no `TfArgRef` use case here. Pass literal strings only.
@immutable
final class GoogleProvider implements StackProvider {
  const GoogleProvider({
    this.project,
    this.region,
    this.zone,
    this.providerAlias,
  });

  /// Default GCP project ID.
  final String? project;

  /// Default GCP region (e.g. `us-central1`).
  final String? region;

  /// Default GCP zone (e.g. `us-central1-a`).
  final String? zone;

  @override
  final String? providerAlias;

  @override
  String get providerName => 'google';

  /// Provider registry source — `hashicorp/google`.
  @override
  String get source => kProviderSource;

  /// Version constraint — `~> 7.0`.
  @override
  String get versionConstraint => kProviderVersionConstraint;

  @override
  Map<String, Object?> get configArgs => {
        if (project != null) 'project': project,
        if (region != null) 'region': region,
        if (zone != null) 'zone': zone,
      };

  @override
  Map<String, Object?> toTfJson() => configArgs;
}
