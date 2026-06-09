// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_fleet`.
const Set<String> _googleGkeHubFleetSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_fleet`.
///
/// Registers the **default GKE Hub fleet** for a project. Every project has
/// at most one fleet; this resource creates it when absent.
///
/// Pair with [GoogleGkeHubMembership] to enroll a [GoogleContainerCluster]
/// in fleet management (config sync, multi-cluster services, etc.).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_gke_hub_fleet.`).
///
/// Optional:
/// - `displayName`: human-readable fleet label in the GCP console.
/// - `project`: defaults to the provider's `project` when omitted.
///
/// Example:
/// ```dart
/// final fleet = GoogleGkeHubFleet(
///   localName: 'default',
///   displayName: TfArg.literal('Production fleet'),
/// );
/// ```
final class GoogleGkeHubFleet extends Resource {
  static const String tfType = 'google_gke_hub_fleet';

  GoogleGkeHubFleet({
    required super.localName,
    TfArg<String>? displayName,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? defaultClusterConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (displayName != null) 'display_name': displayName,
           if (project != null) 'project': project,
           if (defaultClusterConfig != null)
             'default_cluster_config': defaultClusterConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubFleetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
