// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_snapshot`.
const Set<String> _googleComputeSnapshotSensitive = <String>{};

/// Factory wrapper for `google_compute_snapshot`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeSnapshot extends Data {
  static const String tfType = 'google_compute_snapshot';

  DataGoogleComputeSnapshot({
    required super.localName,
    TfArg<String>? filter,
    TfArg<bool>? mostRecent,
    TfArg<String>? name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (name != null) 'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSnapshotSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `chain_name` attribute.
  TfRef<String> get chainName => TfRef.attribute<String>(this, 'chain_name');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGb => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `licenses` attribute.
  TfRef<List<String>> get licenses =>
      TfRef.attribute<List<String>>(this, 'licenses');

  /// Reference to `params` attribute.
  TfRef<List<Map<String, Object?>>> get params =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'params');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `snapshot_encryption_key` attribute.
  TfRef<List<Map<String, Object?>>> get snapshotEncryptionKey =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'snapshot_encryption_key',
      );

  /// Reference to `snapshot_id` attribute.
  TfRef<num> get snapshotId => TfRef.attribute<num>(this, 'snapshot_id');

  /// Reference to `snapshot_type` attribute.
  TfRef<String> get snapshotType =>
      TfRef.attribute<String>(this, 'snapshot_type');

  /// Reference to `source_disk` attribute.
  TfRef<String> get sourceDisk => TfRef.attribute<String>(this, 'source_disk');

  /// Reference to `source_disk_encryption_key` attribute.
  TfRef<List<Map<String, Object?>>> get sourceDiskEncryptionKey =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'source_disk_encryption_key',
      );

  /// Reference to `source_instant_snapshot` attribute.
  TfRef<String> get sourceInstantSnapshot =>
      TfRef.attribute<String>(this, 'source_instant_snapshot');

  /// Reference to `storage_bytes` attribute.
  TfRef<num> get storageBytes => TfRef.attribute<num>(this, 'storage_bytes');

  /// Reference to `storage_locations` attribute.
  TfRef<List<String>> get storageLocations =>
      TfRef.attribute<List<String>>(this, 'storage_locations');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
