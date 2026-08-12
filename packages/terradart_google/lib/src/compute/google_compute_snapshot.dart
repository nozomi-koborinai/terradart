// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_snapshot`.
const Set<String> _googleComputeSnapshotSensitive = <String>{
  'snapshot_encryption_key.raw_key',
  'snapshot_encryption_key.rsa_encrypted_key',
  'source_disk_encryption_key.raw_key',
  'source_disk_encryption_key.rsa_encrypted_key',
};

/// Compute Snapshot Snapshot enum for `snapshot_type`.
enum ComputeSnapshotSnapshotType implements TerraformEnum {
  archive('ARCHIVE'),
  standard('STANDARD');

  const ComputeSnapshotSnapshotType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Snapshot source for [GoogleComputeSnapshot]. Sealed so the provider
/// `exactly_one_of` on `source_disk` / `source_instant_snapshot` is
/// exhaustive at the type level.
sealed class ComputeSnapshotSource {
  const ComputeSnapshotSource();

  /// Terraform attribute name (`source_disk` or `source_instant_snapshot`).
  String get blockKey;

  /// Scalar value written under [blockKey].
  TfArg<String> get value;

  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// Create the snapshot from a Persistent Disk (name or self-link).
@immutable
final class ComputeSnapshotDiskSource extends ComputeSnapshotSource {
  const ComputeSnapshotDiskSource({required this.sourceDisk});

  final TfArg<String> sourceDisk;

  @override
  String get blockKey => 'source_disk';

  @override
  TfArg<String> get value => sourceDisk;
}

/// Create the snapshot from a zonal Instant Snapshot (name or self-link).
@immutable
final class ComputeSnapshotInstantSource extends ComputeSnapshotSource {
  const ComputeSnapshotInstantSource({required this.sourceInstantSnapshot});

  final TfArg<String> sourceInstantSnapshot;

  @override
  String get blockKey => 'source_instant_snapshot';

  @override
  TfArg<String> get value => sourceInstantSnapshot;
}

/// Factory wrapper for `google_compute_snapshot`.
///
/// Represents a Persistent Disk Snapshot resource.
///
/// Use snapshots to back up data from your persistent disks. Snapshots are
/// different from public images and custom images, which are used primarily to
/// create instances or configure instance templates. Snapshots are useful for
/// periodic backup of the data on your persistent disks. You can create
/// snapshots from persistent disks even while they are attached to running
/// instances.
///
/// Snapshots are incremental, so you can create regular snapshots on a
/// persistent disk faster and at a much lower cost than if you regularly
/// created a full image of the disk.
///
/// A Snapshot must have exactly one [ComputeSnapshotSource]:
/// [ComputeSnapshotDiskSource] or [ComputeSnapshotInstantSource].
///
/// Prefer [ComputeSnapshotDiskSource] for a durable copy of a PD; use
/// [ComputeSnapshotInstantSource] when promoting a zonal Instant Snapshot.
final class GoogleComputeSnapshot extends Resource {
  static const String tfType = 'google_compute_snapshot';

  GoogleComputeSnapshot({
    required super.localName,
    required TfArg<String> name,
    required ComputeSnapshotSource source,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<List<String>>? storageLocations,
    TfArg<ComputeSnapshotSnapshotType>? snapshotType,
    TfArg<String>? chainName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (storageLocations != null) 'storage_locations': storageLocations,
           if (snapshotType != null) 'snapshot_type': snapshotType,
           if (chainName != null) 'chain_name': chainName,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
           source.blockKey: source.value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSnapshotSensitive;

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

  /// Reference to `licenses` attribute.
  TfRef<List<String>> get licenses =>
      TfRef.attribute<List<String>>(this, 'licenses');

  /// Reference to `snapshot_id` attribute.
  TfRef<num> get snapshotId => TfRef.attribute<num>(this, 'snapshot_id');

  /// Reference to `storage_bytes` attribute.
  TfRef<num> get storageBytes => TfRef.attribute<num>(this, 'storage_bytes');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
