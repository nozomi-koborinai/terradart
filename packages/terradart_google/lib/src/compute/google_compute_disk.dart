// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_disk`.
const Set<String> _googleComputeDiskSensitive = <String>{
  'disk_encryption_key.raw_key',
  'disk_encryption_key.rsa_encrypted_key',
  'source_image_encryption_key.raw_key',
  'source_snapshot_encryption_key.raw_key',
};

/// `guest_os_features[].type` for zonal persistent disks.
enum ComputeDiskGuestOsFeatureType implements TerraformEnum {
  multiIpSubnet('MULTI_IP_SUBNET'),
  secureBoot('SECURE_BOOT'),
  sevCapable('SEV_CAPABLE'),
  uefiCompatible('UEFI_COMPATIBLE'),
  virtioScsiMultiqueue('VIRTIO_SCSI_MULTIQUEUE'),
  windows('WINDOWS'),
  gVnic('GVNIC'),
  sevLiveMigratable('SEV_LIVE_MIGRATABLE'),
  sevSnpCapable('SEV_SNP_CAPABLE'),
  suspendResumeCompatible('SUSPEND_RESUME_COMPATIBLE'),
  tdxCapable('TDX_CAPABLE'),
  sevLiveMigratableV2('SEV_LIVE_MIGRATABLE_V2'),
  snpSvsmCapable('SNP_SVSM_CAPABLE');

  const ComputeDiskGuestOsFeatureType(this.terraformValue);
  @override
  final String terraformValue;
}

/// One entry of the `guest_os_features` block (repeatable list).
@immutable
class ComputeDiskGuestOsFeature {
  const ComputeDiskGuestOsFeature({required this.type});

  final ComputeDiskGuestOsFeatureType type;

  Map<String, Object?> toArgMap() => {'type': type.terraformValue};
}

/// Typed helper for the `async_primary_disk` block of
/// `google_compute_disk` (derived from provider schema).
@immutable
final class ComputeDiskAsyncPrimaryDisk {
  const ComputeDiskAsyncPrimaryDisk({required this.disk});

  final TfArg<String> disk;

  Map<String, Object?> encode() => {'disk': disk.toTfJson()};
}

/// Typed helper for the `disk_encryption_key` block of
/// `google_compute_disk` (derived from provider schema).
@immutable
final class ComputeDiskEncryptionKey {
  const ComputeDiskEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_disk` (derived from provider schema).
@immutable
final class ComputeDiskParams {
  const ComputeDiskParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `source_image_encryption_key` block of
/// `google_compute_disk` (derived from provider schema).
@immutable
final class ComputeDiskSourceImageEncryptionKey {
  const ComputeDiskSourceImageEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
  };
}

/// Typed helper for the `source_snapshot_encryption_key` block of
/// `google_compute_disk` (derived from provider schema).
@immutable
final class ComputeDiskSourceSnapshotEncryptionKey {
  const ComputeDiskSourceSnapshotEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeySelfLink;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  Map<String, Object?> encode() => {
    'kms_key_self_link': ?kmsKeySelfLink?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_disk`.
///
/// Persistent disks are durable storage devices that function similarly to the
/// physical disks in a desktop or a server. Compute Engine manages the hardware
/// behind these devices to ensure data redundancy and optimize performance for
/// you. Persistent disks are available as either standard hard disk drives
/// (HDD) or solid-state drives (SSD).
///
/// Persistent disks are located independently from your virtual machine
/// instances, so you can detach or move persistent disks to keep your data even
/// after you delete your instances. Persistent disk performance scales
/// automatically with size, so you can resize your existing persistent disks or
/// add more persistent disks to an instance to meet your performance and
/// storage space requirements.
///
/// Add a persistent disk to your instance when you need reliable and affordable
/// storage with consistent performance characteristics.
final class GoogleComputeDisk extends Resource {
  static const String tfType = 'google_compute_disk';

  GoogleComputeDisk({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? zone,
    TfArg<String>? type,
    TfArg<num>? size,
    TfArg<String>? image,
    TfArg<String>? snapshot,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    List<ComputeDiskGuestOsFeature>? guestOsFeatures,
    TfArg<String>? project,
    ComputeDiskEncryptionKey? diskEncryptionKey,
    ComputeDiskSourceImageEncryptionKey? sourceImageEncryptionKey,
    ComputeDiskSourceSnapshotEncryptionKey? sourceSnapshotEncryptionKey,
    ComputeDiskAsyncPrimaryDisk? asyncPrimaryDisk,
    ComputeDiskParams? params,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'zone': ?zone,
           'type': ?type,
           'size': ?size,
           'image': ?image,
           'snapshot': ?snapshot,
           'description': ?description,
           'labels': ?labels,
           if (guestOsFeatures != null)
             'guest_os_features': TfArg.literal(
               guestOsFeatures.map((f) => f.toArgMap()).toList(),
             ),
           'project': ?project,
           if (diskEncryptionKey != null)
             'disk_encryption_key': TfArg.literal(diskEncryptionKey.encode()),
           if (sourceImageEncryptionKey != null)
             'source_image_encryption_key': TfArg.literal(
               sourceImageEncryptionKey.encode(),
             ),
           if (sourceSnapshotEncryptionKey != null)
             'source_snapshot_encryption_key': TfArg.literal(
               sourceSnapshotEncryptionKey.encode(),
             ),
           if (asyncPrimaryDisk != null)
             'async_primary_disk': TfArg.literal(asyncPrimaryDisk.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeDiskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeDisk>`.
  RefTo<GoogleComputeDisk> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `disk_id` attribute.
  TfRef<String> get diskId => TfRef.attribute<String>(this, 'disk_id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `last_attach_timestamp` attribute.
  TfRef<String> get lastAttachTimestamp =>
      TfRef.attribute<String>(this, 'last_attach_timestamp');

  /// Reference to `last_detach_timestamp` attribute.
  TfRef<String> get lastDetachTimestamp =>
      TfRef.attribute<String>(this, 'last_detach_timestamp');

  /// Reference to `source_disk_id` attribute.
  TfRef<String> get sourceDiskId =>
      TfRef.attribute<String>(this, 'source_disk_id');

  /// Reference to `source_image_id` attribute.
  TfRef<String> get sourceImageId =>
      TfRef.attribute<String>(this, 'source_image_id');

  /// Reference to `source_instant_snapshot_id` attribute.
  TfRef<String> get sourceInstantSnapshotId =>
      TfRef.attribute<String>(this, 'source_instant_snapshot_id');

  /// Reference to `source_snapshot_id` attribute.
  TfRef<String> get sourceSnapshotId =>
      TfRef.attribute<String>(this, 'source_snapshot_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `users` attribute.
  TfRef<List<String>> get users => TfRef.attribute<List<String>>(this, 'users');

  /// Reference to `access_mode` attribute.
  TfRef<String> get accessModeRef =>
      TfRef.attribute<String>(this, 'access_mode');

  /// Reference to `architecture` attribute.
  TfRef<String> get architectureRef =>
      TfRef.attribute<String>(this, 'architecture');

  /// Reference to `create_snapshot_before_destroy` attribute.
  TfRef<bool> get createSnapshotBeforeDestroyRef =>
      TfRef.attribute<bool>(this, 'create_snapshot_before_destroy');

  /// Reference to `create_snapshot_before_destroy_prefix` attribute.
  TfRef<String> get createSnapshotBeforeDestroyPrefixRef =>
      TfRef.attribute<String>(this, 'create_snapshot_before_destroy_prefix');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_confidential_compute` attribute.
  TfRef<bool> get enableConfidentialComputeRef =>
      TfRef.attribute<bool>(this, 'enable_confidential_compute');

  /// Reference to `image` attribute.
  TfRef<String> get imageRef => TfRef.attribute<String>(this, 'image');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `licenses` attribute.
  TfRef<List<String>> get licensesRef =>
      TfRef.attribute<List<String>>(this, 'licenses');

  /// Reference to `physical_block_size_bytes` attribute.
  TfRef<num> get physicalBlockSizeBytesRef =>
      TfRef.attribute<num>(this, 'physical_block_size_bytes');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `provisioned_iops` attribute.
  TfRef<num> get provisionedIopsRef =>
      TfRef.attribute<num>(this, 'provisioned_iops');

  /// Reference to `provisioned_throughput` attribute.
  TfRef<num> get provisionedThroughputRef =>
      TfRef.attribute<num>(this, 'provisioned_throughput');

  /// Reference to `size` attribute.
  TfRef<num> get sizeRef => TfRef.attribute<num>(this, 'size');

  /// Reference to `snapshot` attribute.
  TfRef<String> get snapshotRef => TfRef.attribute<String>(this, 'snapshot');

  /// Reference to `source_disk` attribute.
  TfRef<String> get sourceDiskRef =>
      TfRef.attribute<String>(this, 'source_disk');

  /// Reference to `source_instant_snapshot` attribute.
  TfRef<String> get sourceInstantSnapshotRef =>
      TfRef.attribute<String>(this, 'source_instant_snapshot');

  /// Reference to `source_storage_object` attribute.
  TfRef<String> get sourceStorageObjectRef =>
      TfRef.attribute<String>(this, 'source_storage_object');

  /// Reference to `storage_pool` attribute.
  TfRef<String> get storagePoolRef =>
      TfRef.attribute<String>(this, 'storage_pool');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
