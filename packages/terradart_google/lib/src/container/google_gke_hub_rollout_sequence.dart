// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_rollout_sequence`.
const Set<String> _googleGkeHubRolloutSequenceSensitive = <String>{};

/// Typed helper for the `auto_upgrade_config` block of
/// `google_gke_hub_rollout_sequence` (derived from provider schema).
@immutable
final class GkeHubRolloutSequenceAutoUpgradeConfig {
  const GkeHubRolloutSequenceAutoUpgradeConfig({this.rolloutCreationScope});

  final GkeHubRolloutSequenceAutoUpgradeConfigRolloutCreationScope?
  rolloutCreationScope;

  Map<String, Object?> encode() => {
    'rollout_creation_scope': ?rolloutCreationScope?.encode(),
  };
}

/// Typed helper for the `auto_upgrade_config.rollout_creation_scope` block of
/// `google_gke_hub_rollout_sequence` (derived from provider schema).
@immutable
final class GkeHubRolloutSequenceAutoUpgradeConfigRolloutCreationScope {
  const GkeHubRolloutSequenceAutoUpgradeConfigRolloutCreationScope({
    this.upgradeTypes,
  });

  final TfArg<List<String>>? upgradeTypes;

  Map<String, Object?> encode() => {'upgrade_types': ?upgradeTypes?.toTfJson()};
}

/// Typed helper for the `ignored_clusters_selector` block of
/// `google_gke_hub_rollout_sequence` (derived from provider schema).
@immutable
final class GkeHubRolloutSequenceIgnoredClustersSelector {
  const GkeHubRolloutSequenceIgnoredClustersSelector({
    required this.labelSelector,
  });

  final TfArg<String> labelSelector;

  Map<String, Object?> encode() => {'label_selector': labelSelector.toTfJson()};
}

/// Typed helper for the `stages` block of
/// `google_gke_hub_rollout_sequence` (derived from provider schema).
@immutable
final class GkeHubRolloutSequenceStages {
  const GkeHubRolloutSequenceStages({
    required this.fleetProjects,
    this.soakDuration,
    this.clusterSelector,
  });

  final TfArg<List<String>> fleetProjects;

  final TfArg<String>? soakDuration;

  final GkeHubRolloutSequenceStagesClusterSelector? clusterSelector;

  Map<String, Object?> encode() => {
    'fleet_projects': fleetProjects.toTfJson(),
    'soak_duration': ?soakDuration?.toTfJson(),
    'cluster_selector': ?clusterSelector?.encode(),
  };
}

/// Typed helper for the `stages.cluster_selector` block of
/// `google_gke_hub_rollout_sequence` (derived from provider schema).
@immutable
final class GkeHubRolloutSequenceStagesClusterSelector {
  const GkeHubRolloutSequenceStagesClusterSelector({
    required this.labelSelector,
  });

  final TfArg<String> labelSelector;

  Map<String, Object?> encode() => {'label_selector': labelSelector.toTfJson()};
}

/// Factory wrapper for `google_gke_hub_rollout_sequence`.
///
/// RolloutSequence defines the desired order of upgrades.
final class GoogleGkeHubRolloutSequence extends Resource {
  static const String tfType = 'google_gke_hub_rollout_sequence';

  GoogleGkeHubRolloutSequence({
    required super.localName,
    required TfArg<String> rolloutSequenceId,
    required List<GkeHubRolloutSequenceStages> stages,
    TfArg<String>? displayName,
    GkeHubRolloutSequenceAutoUpgradeConfig? autoUpgradeConfig,
    GkeHubRolloutSequenceIgnoredClustersSelector? ignoredClustersSelector,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'rollout_sequence_id': rolloutSequenceId,
           'stages': TfArg.literal([for (final e in stages) e.encode()]),
           'display_name': ?displayName,
           if (autoUpgradeConfig != null)
             'auto_upgrade_config': TfArg.literal(autoUpgradeConfig.encode()),
           if (ignoredClustersSelector != null)
             'ignored_clusters_selector': TfArg.literal(
               ignoredClustersSelector.encode(),
             ),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubRolloutSequenceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubRolloutSequence>`.
  RefTo<GoogleGkeHubRolloutSequence> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `min_control_plane_version` attribute.
  TfRef<String> get minControlPlaneVersionRef =>
      TfRef.attribute<String>(this, 'min_control_plane_version');

  /// Reference to `min_node_version` attribute.
  TfRef<String> get minNodeVersionRef =>
      TfRef.attribute<String>(this, 'min_node_version');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `rollout_sequence_id` attribute.
  TfRef<String> get rolloutSequenceIdRef =>
      TfRef.attribute<String>(this, 'rollout_sequence_id');
}
