// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_node_template.dart'
    show GoogleComputeNodeTemplate;

/// Sensitive field paths for `google_compute_node_group`.
const Set<String> _googleComputeNodeGroupSensitive = <String>{};

/// Typed helper for the `autoscaling_policy` block of
/// `google_compute_node_group` (derived from provider schema).
@immutable
final class ComputeNodeGroupAutoscalingPolicy {
  const ComputeNodeGroupAutoscalingPolicy({
    this.maxNodes,
    this.minNodes,
    this.mode,
  });

  final TfArg<num>? maxNodes;

  final TfArg<num>? minNodes;

  final TfArg<ComputeNodeGroupMode>? mode;

  Map<String, Object?> encode() => {
    'max_nodes': ?maxNodes?.toTfJson(),
    'min_nodes': ?minNodes?.toTfJson(),
    'mode': ?mode?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum ComputeNodeGroupMode implements TerraformEnum {
  off('OFF'),
  on('ON'),
  onlyScaleOut('ONLY_SCALE_OUT');

  const ComputeNodeGroupMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `maintenance_window` block of
/// `google_compute_node_group` (derived from provider schema).
@immutable
final class ComputeNodeGroupMaintenanceWindow {
  const ComputeNodeGroupMaintenanceWindow({required this.startTime});

  final TfArg<String> startTime;

  Map<String, Object?> encode() => {'start_time': startTime.toTfJson()};
}

/// Typed helper for the `share_settings` block of
/// `google_compute_node_group` (derived from provider schema).
@immutable
final class ComputeNodeGroupShareSettings {
  const ComputeNodeGroupShareSettings({
    required this.shareType,
    this.projectMap,
  });

  final TfArg<ComputeNodeGroupShareType> shareType;

  final List<ComputeNodeGroupProjectMap>? projectMap;

  Map<String, Object?> encode() => {
    'share_type': shareType.toTfJson(),
    if (projectMap != null)
      'project_map': [for (final e in projectMap!) e.encode()],
  };
}

/// `share_type` — derived from the provider schema description.
enum ComputeNodeGroupShareType implements TerraformEnum {
  organization('ORGANIZATION'),
  specificProjects('SPECIFIC_PROJECTS'),
  local('LOCAL');

  const ComputeNodeGroupShareType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `share_settings.project_map` block of
/// `google_compute_node_group` (derived from provider schema).
@immutable
final class ComputeNodeGroupProjectMap {
  const ComputeNodeGroupProjectMap({required this.id, required this.projectId});

  final TfArg<String> id;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_node_group`.
///
/// Represents a NodeGroup resource to manage a group of sole-tenant nodes.
///
/// Compute Engine **sole-tenant node group** — zonal pool of dedicated
/// hosts created from a [GoogleComputeNodeTemplate].
///
/// **Cost / apply:** Bills sole-tenant node capacity while the group has
/// nodes (e.g. N4A Sole Tenancy Instance Core Iowa SKU `6DD8-C2A8-A106`
/// **$0.02646/h** + Premium SKU `0F1E-4428-FCCB` **$0.002646/h** on
/// Compute Engine `6F81-5844-456A`). Far too expensive for apply-smoke —
/// debt-only. **Never** wire into apply-smoke.
///
/// Provide [initialSize] or [autoscalingPolicy]. [zone] should match the
/// template region.
final class GoogleComputeNodeGroup extends Resource {
  static const String tfType = 'google_compute_node_group';

  GoogleComputeNodeGroup(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? zone,
    required RefTo<GoogleComputeNodeTemplate> nodeTemplate,
    TfArg<num>? initialSize,
    ComputeNodeGroupAutoscalingPolicy? autoscalingPolicy,
    TfArg<String>? maintenancePolicy,
    ComputeNodeGroupMaintenanceWindow? maintenanceWindow,
    ComputeNodeGroupShareSettings? shareSettings,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'zone': ?zone,
           'node_template': nodeTemplate.encodeAs('self_link'),
           'initial_size': ?initialSize,
           if (autoscalingPolicy != null)
             'autoscaling_policy': TfArg.literal(autoscalingPolicy.encode()),
           'maintenance_policy': ?maintenancePolicy,
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal(maintenanceWindow.encode()),
           if (shareSettings != null)
             'share_settings': TfArg.literal(shareSettings.encode()),
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeNodeGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeNodeGroup>`.
  RefTo<GoogleComputeNodeGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `initial_size` attribute.
  TfRef<num> get initialSize => TfRef.attribute<num>(this, 'initial_size');

  /// Reference to `maintenance_policy` attribute.
  TfRef<String> get maintenancePolicy =>
      TfRef.attribute<String>(this, 'maintenance_policy');

  /// Reference to `node_template` attribute.
  TfRef<String> get nodeTemplate =>
      TfRef.attribute<String>(this, 'node_template');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
