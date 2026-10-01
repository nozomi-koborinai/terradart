// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_region_disk`.
const Set<String> _googleComputeRegionDiskSensitive = <String>{
  'disk_encryption_key.raw_key',
  'disk_encryption_key.rsa_encrypted_key',
  'source_image_encryption_key.raw_key',
  'source_image_encryption_key.rsa_encrypted_key',
  'source_snapshot_encryption_key.raw_key',
};

/// `guest_os_features[].type` for regional persistent disks.
enum ComputeRegionDiskGuestOsFeatureType implements TerraformEnum {
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

  const ComputeRegionDiskGuestOsFeatureType(this.terraformValue);
  @override
  final String terraformValue;
}

/// One entry of the `guest_os_features` block (repeatable list).
@immutable
class ComputeRegionDiskGuestOsFeature {
  const ComputeRegionDiskGuestOsFeature({required this.type});

  final ComputeRegionDiskGuestOsFeatureType type;

  Map<String, Object?> toArgMap() => {'type': type.terraformValue};
}

/// Typed helper for the `async_primary_disk` block of
/// `google_compute_region_disk` (derived from provider schema).
@immutable
final class ComputeRegionDiskAsyncPrimaryDisk {
  const ComputeRegionDiskAsyncPrimaryDisk({required this.disk});

  final TfArg<String> disk;

  Map<String, Object?> encode() => {'disk': disk.toTfJson()};
}

/// Typed helper for the `disk_encryption_key` block of
/// `google_compute_region_disk` (derived from provider schema).
@immutable
final class ComputeRegionDiskEncryptionKey {
  const ComputeRegionDiskEncryptionKey({
    this.kmsKeyName,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `source_image_encryption_key` block of
/// `google_compute_region_disk` (derived from provider schema).
@immutable
final class ComputeRegionDiskSourceImageEncryptionKey {
  const ComputeRegionDiskSourceImageEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  final TfArg<String>? rsaEncryptedKey;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
    'rsa_encrypted_key': ?rsaEncryptedKey?.toTfJson(),
  };
}

/// Typed helper for the `source_snapshot_encryption_key` block of
/// `google_compute_region_disk` (derived from provider schema).
@immutable
final class ComputeRegionDiskSourceSnapshotEncryptionKey {
  const ComputeRegionDiskSourceSnapshotEncryptionKey({this.rawKey});

  final TfArg<String>? rawKey;

  Map<String, Object?> encode() => {'raw_key': ?rawKey?.toTfJson()};
}

/// Factory wrapper for `google_compute_region_disk`.
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
final class GoogleComputeRegionDisk extends Resource {
  static const String tfType = 'google_compute_region_disk';

  GoogleComputeRegionDisk(
    super.localName, {
    required TfArg<String> name,
    required TfArg<List<String>> replicaZones,
    TfArg<String>? type,
    TfArg<num>? size,
    TfArg<String>? image,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    List<ComputeRegionDiskGuestOsFeature>? guestOsFeatures,
    TfArg<String>? region,
    TfArg<String>? project,
    ComputeRegionDiskEncryptionKey? diskEncryptionKey,
    ComputeRegionDiskSourceImageEncryptionKey? sourceImageEncryptionKey,
    ComputeRegionDiskSourceSnapshotEncryptionKey? sourceSnapshotEncryptionKey,
    ComputeRegionDiskAsyncPrimaryDisk? asyncPrimaryDisk,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'replica_zones': replicaZones,
           'type': ?type,
           'size': ?size,
           'image': ?image,
           'description': ?description,
           'labels': ?labels,
           if (guestOsFeatures != null)
             'guest_os_features': TfArg.literal(
               guestOsFeatures.map((f) => f.toArgMap()).toList(),
             ),
           'region': ?region,
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
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionDiskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionDisk>`.
  RefTo<GoogleComputeRegionDisk> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `source_snapshot_id` attribute.
  TfRef<String> get sourceSnapshotId =>
      TfRef.attribute<String>(this, 'source_snapshot_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `users` attribute.
  TfRef<List<String>> get users => TfRef.attribute<List<String>>(this, 'users');

  /// Reference to `access_mode` attribute.
  TfRef<String> get accessMode => TfRef.attribute<String>(this, 'access_mode');

  /// Reference to `create_snapshot_before_destroy` attribute.
  TfRef<bool> get createSnapshotBeforeDestroy =>
      TfRef.attribute<bool>(this, 'create_snapshot_before_destroy');

  /// Reference to `create_snapshot_before_destroy_prefix` attribute.
  TfRef<String> get createSnapshotBeforeDestroyPrefix =>
      TfRef.attribute<String>(this, 'create_snapshot_before_destroy_prefix');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `image` attribute.
  TfRef<String> get image => TfRef.attribute<String>(this, 'image');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `licenses` attribute.
  TfRef<List<String>> get licenses =>
      TfRef.attribute<List<String>>(this, 'licenses');

  /// Reference to `physical_block_size_bytes` attribute.
  TfRef<num> get physicalBlockSizeBytes =>
      TfRef.attribute<num>(this, 'physical_block_size_bytes');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `provisioned_iops` attribute.
  TfRef<num> get provisionedIops =>
      TfRef.attribute<num>(this, 'provisioned_iops');

  /// Reference to `provisioned_throughput` attribute.
  TfRef<num> get provisionedThroughput =>
      TfRef.attribute<num>(this, 'provisioned_throughput');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replica_zones` attribute.
  TfRef<List<String>> get replicaZones =>
      TfRef.attribute<List<String>>(this, 'replica_zones');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');

  /// Reference to `snapshot` attribute.
  TfRef<String> get snapshot => TfRef.attribute<String>(this, 'snapshot');

  /// Reference to `source_disk` attribute.
  TfRef<String> get sourceDisk => TfRef.attribute<String>(this, 'source_disk');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
