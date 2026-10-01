// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_disk.dart' show GoogleComputeDisk;

/// Sensitive field paths for `google_compute_instant_snapshot`.
const Set<String> _googleComputeInstantSnapshotSensitive = <String>{};

/// Typed helper for the `params` block of
/// `google_compute_instant_snapshot` (derived from provider schema).
@immutable
final class ComputeInstantSnapshotParams {
  const ComputeInstantSnapshotParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_instant_snapshot`.
///
/// Represents an instant snapshot resource.
///
/// An instant snapshot is an in-place backup of a disk that can be used to
/// rapidly create a new disk in minutes.
///
/// Instant snapshots capture data at a specific point in time. They are
/// optimized for rapidly restoring captured data to a new disk. Use instant
/// snapshots to quickly recover data in cases where the zone and disk are still
/// intact but the data on the disk has been lost or corrupted
final class GoogleComputeInstantSnapshot extends Resource {
  static const String tfType = 'google_compute_instant_snapshot';

  GoogleComputeInstantSnapshot({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GoogleComputeDisk> sourceDisk,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    ComputeInstantSnapshotParams? params,
    TfArg<String>? deletionPolicy,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'source_disk': sourceDisk.encodeAs('name'),
           'description': ?description,
           'labels': ?labels,
           if (params != null) 'params': TfArg.literal(params.encode()),
           'deletion_policy': ?deletionPolicy,
           'zone': ?zone,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstantSnapshotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstantSnapshot>`.
  RefTo<GoogleComputeInstantSnapshot> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `source_disk_id` attribute.
  TfRef<String> get sourceDiskId =>
      TfRef.attribute<String>(this, 'source_disk_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_disk` attribute.
  TfRef<String> get sourceDiskRef =>
      TfRef.attribute<String>(this, 'source_disk');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
