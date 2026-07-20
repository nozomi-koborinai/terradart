// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_feature`.
const Set<String> _googleGkeHubFeatureSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_feature`.
///
/// Feature represents the settings and status of any Hub Feature.
///
/// GKE Hub **feature** — enables a fleet-level Feature such as
/// Multi-Cluster Service Discovery, Service Mesh, or Config Management.
///
/// For smoke stacks prefer `name: multiclusterservicediscovery` at
/// `location: global` — no cluster membership is required (see provider
/// `gkehub_feature_multi_cluster_service_discovery`). Features that need
/// a membership (`multiclusteringress`) or paid Anthos add-ons are out of
/// scope for the quickstart.
///
/// Enable `gkehub.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleGkeHubFeature(
///   localName: 'mcsd',
///   name: TfArg.literal('multiclusterservicediscovery'),
///   location: TfArg.literal('global'),
/// );
/// ```
final class GoogleGkeHubFeature extends Resource {
  static const String tfType = 'google_gke_hub_feature';

  GoogleGkeHubFeature({
    required super.localName,
    TfArg<String>? name,
    required TfArg<String> location,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           'location': location,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFeatureSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `resource_state` attribute.
  TfRef<List<Map<String, Object?>>> get resourceState =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_state');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
