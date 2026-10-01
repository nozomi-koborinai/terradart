// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_snapshot`.
const Set<String> _googleComputeSnapshotSensitive = <String>{
  'snapshot_encryption_key.raw_key',
  'snapshot_encryption_key.rsa_encrypted_key',
  'source_disk_encryption_key.raw_key',
  'source_disk_encryption_key.rsa_encrypted_key',
};

/// Compute Snapshot enum for `snapshot_type`.
extension type const ComputeSnapshotType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeSnapshotType.variable(String name) : this._(TfArg.variable(name));
  ComputeSnapshotType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeSnapshotType.arg(TfArg<String> arg) : this._(arg);

  static const archive = ComputeSnapshotType._(TfArgLiteral('ARCHIVE'));
  static const standard = ComputeSnapshotType._(TfArgLiteral('STANDARD'));

  static const List<ComputeSnapshotType> values = [archive, standard];
}

/// Snapshot source for [GoogleComputeSnapshot]. Sealed so the provider
/// `exactly_one_of` on `source_disk` / `source_instant_snapshot` is
/// exhaustive at the type level.
sealed class ComputeSnapshotSource {
  const ComputeSnapshotSource();

  /// Create the snapshot from a Persistent Disk (name or self-link).
  const factory ComputeSnapshotSource.disk({
    required TfArg<String> sourceDisk,
  }) = ComputeSnapshotDiskSource;

  /// Create the snapshot from a zonal Instant Snapshot (name or self-link).
  const factory ComputeSnapshotSource.instantSnapshot({
    required TfArg<String> sourceInstantSnapshot,
  }) = ComputeSnapshotInstantSource;

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

/// Typed helper for the `params` block of
/// `google_compute_snapshot` (derived from provider schema).
@immutable
final class ComputeSnapshotParams {
  const ComputeSnapshotParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `snapshot_encryption_key` block of
/// `google_compute_snapshot` (derived from provider schema).
@immutable
final class ComputeSnapshotEncryptionKey {
  const ComputeSnapshotEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final Sensitive<String>? rawKey;

  final Sensitive<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `source_disk_encryption_key` block of
/// `google_compute_snapshot` (derived from provider schema).
@immutable
final class ComputeSnapshotSourceDiskEncryptionKey {
  const ComputeSnapshotSourceDiskEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final Sensitive<String>? rawKey;

  final Sensitive<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
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

  GoogleComputeSnapshot(
    super.localName, {
    required TfArg<String> name,
    required ComputeSnapshotSource source,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<List<String>>? storageLocations,
    ComputeSnapshotType? snapshotType,
    TfArg<String>? chainName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? zone,
    TfArg<String>? project,
    ComputeSnapshotEncryptionKey? snapshotEncryptionKey,
    ComputeSnapshotSourceDiskEncryptionKey? sourceDiskEncryptionKey,
    ComputeSnapshotParams? params,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'description': ?description,
           'labels': ?labels,
           'storage_locations': ?storageLocations,
           'snapshot_type': ?snapshotType,
           'chain_name': ?chainName,
           'deletion_policy': ?deletionPolicy,
           'zone': ?zone,
           'project': ?project,
           source.blockKey: source.value,
           if (snapshotEncryptionKey != null)
             'snapshot_encryption_key': TfArg.literal(
               snapshotEncryptionKey.encode(),
             ),
           if (sourceDiskEncryptionKey != null)
             'source_disk_encryption_key': TfArg.literal(
               sourceDiskEncryptionKey.encode(),
             ),
           if (params != null) 'params': TfArg.literal(params.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSnapshotSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSnapshot>`.
  RefTo<GoogleComputeSnapshot> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `chain_name` attribute.
  TfRef<String> get chainName => TfRef.attribute<String>(this, 'chain_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `snapshot_type` attribute.
  TfRef<String> get snapshotType =>
      TfRef.attribute<String>(this, 'snapshot_type');

  /// Reference to `source_disk` attribute.
  TfRef<String> get sourceDisk => TfRef.attribute<String>(this, 'source_disk');

  /// Reference to `source_instant_snapshot` attribute.
  TfRef<String> get sourceInstantSnapshot =>
      TfRef.attribute<String>(this, 'source_instant_snapshot');

  /// Reference to `storage_locations` attribute.
  TfRef<List<String>> get storageLocations =>
      TfRef.attribute<List<String>>(this, 'storage_locations');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
