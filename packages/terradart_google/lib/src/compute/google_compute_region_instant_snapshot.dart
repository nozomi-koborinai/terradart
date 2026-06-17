// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_instant_snapshot`.
const Set<String> _googleComputeRegionInstantSnapshotSensitive = <String>{};

/// Terraform `deletion_policy` for regional instant snapshots.
enum ComputeRegionInstantSnapshotDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const ComputeRegionInstantSnapshotDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `params` block (max=1). Carries request-time metadata such as
/// Resource Manager tags applied at create time.
@immutable
class ComputeRegionInstantSnapshotParams {
  const ComputeRegionInstantSnapshotParams({this.resourceManagerTags});

  final Map<String, String>? resourceManagerTags;

  Map<String, Object?> toArgMap() => {
    if (resourceManagerTags != null)
      'resource_manager_tags': resourceManagerTags,
  };
}

/// Factory wrapper for `google_compute_region_instant_snapshot`.
final class GoogleComputeRegionInstantSnapshot extends Resource {
  static const String tfType = 'google_compute_region_instant_snapshot';

  GoogleComputeRegionInstantSnapshot({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> sourceDisk,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<ComputeRegionInstantSnapshotDeletionPolicy>? deletionPolicy,
    ComputeRegionInstantSnapshotParams? params,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'source_disk': sourceDisk,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (params != null) 'params': TfArg.literal([params.toArgMap()]),
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionInstantSnapshotSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `architecture` attribute.
  TfRef<String> get architecture =>
      TfRef.attribute<String>(this, 'architecture');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGb => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `resource_status` attribute.
  TfRef<List<Map<String, Object?>>> get resourceStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_status');

  /// Reference to `source_disk_id` attribute.
  TfRef<String> get sourceDiskId =>
      TfRef.attribute<String>(this, 'source_disk_id');

  /// Reference to `source_instant_snapshot_group` attribute.
  TfRef<String> get sourceInstantSnapshotGroup =>
      TfRef.attribute<String>(this, 'source_instant_snapshot_group');

  /// Reference to `source_instant_snapshot_group_id` attribute.
  TfRef<String> get sourceInstantSnapshotGroupId =>
      TfRef.attribute<String>(this, 'source_instant_snapshot_group_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
