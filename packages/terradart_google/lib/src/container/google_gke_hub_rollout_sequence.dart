// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_rollout_sequence`.
const Set<String> _googleGkeHubRolloutSequenceSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_rollout_sequence`.
///
/// RolloutSequence defines the desired order of upgrades.
final class GoogleGkeHubRolloutSequence extends Resource {
  static const String tfType = 'google_gke_hub_rollout_sequence';

  GoogleGkeHubRolloutSequence({
    required super.localName,
    required TfArg<String> rolloutSequenceId,
    required TfArg<List<Map<String, dynamic>>> stages,
    TfArg<String>? displayName,
    TfArg<Map<String, dynamic>>? autoUpgradeConfig,
    TfArg<Map<String, dynamic>>? ignoredClustersSelector,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'rollout_sequence_id': rolloutSequenceId,
           'stages': stages,
           if (displayName != null) 'display_name': displayName,
           if (autoUpgradeConfig != null)
             'auto_upgrade_config': autoUpgradeConfig,
           if (ignoredClustersSelector != null)
             'ignored_clusters_selector': ignoredClustersSelector,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubRolloutSequenceSensitive;

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

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `operational_state` attribute.
  TfRef<List<Map<String, Object?>>> get operationalState =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'operational_state');

  /// Reference to `target_control_plane_version` attribute.
  TfRef<String> get targetControlPlaneVersion =>
      TfRef.attribute<String>(this, 'target_control_plane_version');

  /// Reference to `target_node_version` attribute.
  TfRef<String> get targetNodeVersion =>
      TfRef.attribute<String>(this, 'target_node_version');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
