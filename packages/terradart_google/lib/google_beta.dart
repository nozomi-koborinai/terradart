// packages/terradart_google/lib/google_beta.dart
/// `hashicorp/google-beta` utilities — service-agent minting used when the
/// GA provider has no equivalent resource.
library;

import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'src/_provider_meta.dart';

export 'src/_provider_meta.dart' show kBetaProviderSource;

/// Concrete [StackProvider] for `hashicorp/google-beta`, version-locked to
/// the same major as `GoogleProvider`.
///
/// Required when a resource sets the Terraform `provider` meta-argument to
/// `google-beta` (for example [GoogleProjectServiceIdentity]). Pass the same
/// [project] / [region] / [zone] as the sibling `GoogleProvider`.
@immutable
final class GoogleBetaProvider implements StackProvider {
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

  @override
  String get source => kBetaProviderSource;

  @override
  String get versionConstraint => kProviderVersionConstraint;

  @override
  Map<String, Object?> get configArgs => {
        if (project != null) 'project': project,
        if (region != null) 'region': region,
        if (zone != null) 'zone': zone,
      };
}

/// Hand-written wrapper for `google_project_service_identity`
/// (`hashicorp/google-beta`).
///
/// Mints the Google-managed service agent for [service] via Service Usage
/// `generateServiceIdentity`. Enabling the API with `GoogleProjectService`
/// does **not** create that agent — topic/project IAM then 400s with
/// "Service account … does not exist".
///
/// Always emits `provider = google-beta`. Add [GoogleBetaProvider] to
/// `Stack.providers` next to `GoogleProvider`.
///
/// ```dart
/// final assetSa = GoogleProjectServiceIdentity(
///   localName: 'cloudasset',
///   service: TfArg.literal('cloudasset.googleapis.com'),
/// );
/// ```
final class GoogleProjectServiceIdentity extends Resource {
  static const String tfType = 'google_project_service_identity';

  GoogleProjectServiceIdentity({
    required super.localName,
    required TfArg<String> service,
    TfArg<String>? project,
    super.dependsOn,
    super.lifecycle,
  }) : super(
          terraformType: tfType,
          provider: 'google-beta',
          argMap: {
            'service': service,
            if (project != null) 'project': project,
          },
        );

  @override
  Set<String> get sensitiveFields => const {};

  /// Google-managed agent email (`service-{number}@gcp-sa-….gserviceaccount.com`).
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// IAM member string (`serviceAccount:{email}`).
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Terraform id.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
