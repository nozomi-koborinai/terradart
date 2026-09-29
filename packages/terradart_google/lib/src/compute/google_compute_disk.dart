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
final class ComputeDiskDiskEncryptionKey {
  const ComputeDiskDiskEncryptionKey({
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
    ComputeDiskDiskEncryptionKey? diskEncryptionKey,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
