// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_disk`.
const Set<String> _googleComputeRegionDiskSensitive = <String>{};

/// Factory wrapper for `google_compute_region_disk`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRegionDisk extends Data {
  static const String tfType = 'google_compute_region_disk';

  DataGoogleComputeRegionDisk({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionDiskSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_mode` attribute.
  TfRef<String> get accessMode => TfRef.attribute<String>(this, 'access_mode');

  /// Reference to `async_primary_disk` attribute.
  TfRef<List<Map<String, Object?>>> get asyncPrimaryDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'async_primary_disk');

  /// Reference to `create_snapshot_before_destroy` attribute.
  TfRef<bool> get createSnapshotBeforeDestroy =>
      TfRef.attribute<bool>(this, 'create_snapshot_before_destroy');

  /// Reference to `create_snapshot_before_destroy_prefix` attribute.
  TfRef<String> get createSnapshotBeforeDestroyPrefix =>
      TfRef.attribute<String>(this, 'create_snapshot_before_destroy_prefix');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disk_encryption_key` attribute.
  TfRef<List<Map<String, Object?>>> get diskEncryptionKey =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'disk_encryption_key');

  /// Reference to `disk_id` attribute.
  TfRef<String> get diskId => TfRef.attribute<String>(this, 'disk_id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `guest_os_features` attribute.
  TfRef<List<Map<String, Object?>>> get guestOsFeatures =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'guest_os_features');

  /// Reference to `image` attribute.
  TfRef<String> get image => TfRef.attribute<String>(this, 'image');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `last_attach_timestamp` attribute.
  TfRef<String> get lastAttachTimestamp =>
      TfRef.attribute<String>(this, 'last_attach_timestamp');

  /// Reference to `last_detach_timestamp` attribute.
  TfRef<String> get lastDetachTimestamp =>
      TfRef.attribute<String>(this, 'last_detach_timestamp');

  /// Reference to `licenses` attribute.
  TfRef<List<String>> get licenses =>
      TfRef.attribute<List<String>>(this, 'licenses');

  /// Reference to `physical_block_size_bytes` attribute.
  TfRef<num> get physicalBlockSizeBytes =>
      TfRef.attribute<num>(this, 'physical_block_size_bytes');

  /// Reference to `provisioned_iops` attribute.
  TfRef<num> get provisionedIops =>
      TfRef.attribute<num>(this, 'provisioned_iops');

  /// Reference to `provisioned_throughput` attribute.
  TfRef<num> get provisionedThroughput =>
      TfRef.attribute<num>(this, 'provisioned_throughput');

  /// Reference to `replica_zones` attribute.
  TfRef<List<String>> get replicaZones =>
      TfRef.attribute<List<String>>(this, 'replica_zones');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `snapshot` attribute.
  TfRef<String> get snapshot => TfRef.attribute<String>(this, 'snapshot');

  /// Reference to `source_disk` attribute.
  TfRef<String> get sourceDisk => TfRef.attribute<String>(this, 'source_disk');

  /// Reference to `source_disk_id` attribute.
  TfRef<String> get sourceDiskId =>
      TfRef.attribute<String>(this, 'source_disk_id');

  /// Reference to `source_image_encryption_key` attribute.
  TfRef<List<Map<String, Object?>>> get sourceImageEncryptionKey =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'source_image_encryption_key',
      );

  /// Reference to `source_image_id` attribute.
  TfRef<String> get sourceImageId =>
      TfRef.attribute<String>(this, 'source_image_id');

  /// Reference to `source_snapshot_encryption_key` attribute.
  TfRef<List<Map<String, Object?>>> get sourceSnapshotEncryptionKey =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'source_snapshot_encryption_key',
      );

  /// Reference to `source_snapshot_id` attribute.
  TfRef<String> get sourceSnapshotId =>
      TfRef.attribute<String>(this, 'source_snapshot_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `users` attribute.
  TfRef<List<String>> get users => TfRef.attribute<List<String>>(this, 'users');
}
