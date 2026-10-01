// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_image`.
const Set<String> _googleComputeImageSensitive = <String>{
  'image_encryption_key.raw_key',
  'image_encryption_key.rsa_encrypted_key',
  'source_disk_encryption_key.raw_key',
  'source_disk_encryption_key.rsa_encrypted_key',
  'source_image_encryption_key.raw_key',
  'source_image_encryption_key.rsa_encrypted_key',
  'source_snapshot_encryption_key.raw_key',
  'source_snapshot_encryption_key.rsa_encrypted_key',
};

/// Image source for [GoogleComputeImage]. Sealed so callers pick exactly
/// one of `source_disk` / `source_image` / `source_snapshot` / `raw_disk`
/// at the type level (MM documents mutual exclusion in prose; there is no
/// `exactly_one_of` metadata on this resource).
sealed class ComputeImageSource {
  const ComputeImageSource();

  /// Create the image from a Persistent Disk (name or self-link).
  const factory ComputeImageSource.disk({required TfArg<String> sourceDisk}) =
      ComputeImageSourceDisk;

  /// Create the image from another Image (name or self-link).
  const factory ComputeImageSource.image({required TfArg<String> sourceImage}) =
      ComputeImageSourceImage;

  /// Create the image from a Persistent Disk Snapshot (name or self-link).
  const factory ComputeImageSource.snapshot({
    required TfArg<String> sourceSnapshot,
  }) = ComputeImageSourceSnapshot;

  /// Import the image from a tarball in Cloud Storage (`raw_disk`).
  const factory ComputeImageSource.rawDisk(ComputeImageRawDisk rawDisk) =
      ComputeImageSourceRawDisk;

  /// Terraform attribute name (`source_disk`, `source_image`,
  /// `source_snapshot`, or `raw_disk`).
  String get blockKey;

  /// Value written under [blockKey].
  TfArg<Object?> get value;

  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// Create the image from a Persistent Disk (name or self-link).
@immutable
final class ComputeImageSourceDisk extends ComputeImageSource {
  const ComputeImageSourceDisk({required this.sourceDisk});

  final TfArg<String> sourceDisk;

  @override
  String get blockKey => 'source_disk';

  @override
  TfArg<String> get value => sourceDisk;
}

/// Create the image from another Image (name or self-link).
@immutable
final class ComputeImageSourceImage extends ComputeImageSource {
  const ComputeImageSourceImage({required this.sourceImage});

  final TfArg<String> sourceImage;

  @override
  String get blockKey => 'source_image';

  @override
  TfArg<String> get value => sourceImage;
}

/// Create the image from a Persistent Disk Snapshot (name or self-link).
@immutable
final class ComputeImageSourceSnapshot extends ComputeImageSource {
  const ComputeImageSourceSnapshot({required this.sourceSnapshot});

  final TfArg<String> sourceSnapshot;

  @override
  String get blockKey => 'source_snapshot';

  @override
  TfArg<String> get value => sourceSnapshot;
}

/// Import the image from a tarball in Cloud Storage (`raw_disk`).
@immutable
final class ComputeImageSourceRawDisk extends ComputeImageSource {
  const ComputeImageSourceRawDisk(this.rawDisk);

  final ComputeImageRawDisk rawDisk;

  @override
  String get blockKey => 'raw_disk';

  @override
  TfArg<Object?> get value => TfArg.literal(rawDisk.encode());
}

/// Typed helper for the `guest_os_features` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageGuestOsFeatures {
  const ComputeImageGuestOsFeatures({required this.type});

  final TfArg<ComputeImageType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ComputeImageType implements TerraformEnum {
  multiIpSubnet('MULTI_IP_SUBNET'),
  secureBoot('SECURE_BOOT'),
  sevCapable('SEV_CAPABLE'),
  uefiCompatible('UEFI_COMPATIBLE'),
  virtioScsiMultiqueue('VIRTIO_SCSI_MULTIQUEUE'),
  windows('WINDOWS'),
  gvnic('GVNIC'),
  idpf('IDPF'),
  sevLiveMigratable('SEV_LIVE_MIGRATABLE'),
  sevSnpCapable('SEV_SNP_CAPABLE'),
  suspendResumeCompatible('SUSPEND_RESUME_COMPATIBLE'),
  tdxCapable('TDX_CAPABLE'),
  sevLiveMigratableV2('SEV_LIVE_MIGRATABLE_V2'),
  snpSvsmCapable('SNP_SVSM_CAPABLE');

  const ComputeImageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `image_encryption_key` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageEncryptionKey {
  const ComputeImageEncryptionKey({
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
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageParams {
  const ComputeImageParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `raw_disk` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageRawDisk {
  const ComputeImageRawDisk({
    this.containerType,
    this.sha1,
    required this.source,
  });

  final TfArg<String>? containerType;

  final TfArg<String>? sha1;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    'container_type': ?containerType?.toTfJson(),
    'sha1': ?sha1?.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Typed helper for the `shielded_instance_initial_state` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageShieldedInstanceInitialState {
  const ComputeImageShieldedInstanceInitialState({
    this.dbs,
    this.dbxs,
    this.keks,
    this.pk,
  });

  final List<ComputeImageDbs>? dbs;

  final List<ComputeImageDbxs>? dbxs;

  final List<ComputeImageKeks>? keks;

  final ComputeImagePk? pk;

  Map<String, Object?> encode() => {
    if (dbs != null) 'dbs': [for (final e in dbs!) e.encode()],
    if (dbxs != null) 'dbxs': [for (final e in dbxs!) e.encode()],
    if (keks != null) 'keks': [for (final e in keks!) e.encode()],
    'pk': ?pk?.encode(),
  };
}

/// Typed helper for the `shielded_instance_initial_state.dbs` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageDbs {
  const ComputeImageDbs({required this.content, this.fileType});

  final TfArg<String> content;

  final TfArg<String>? fileType;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'file_type': ?fileType?.toTfJson(),
  };
}

/// Typed helper for the `shielded_instance_initial_state.dbxs` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageDbxs {
  const ComputeImageDbxs({required this.content, this.fileType});

  final TfArg<String> content;

  final TfArg<String>? fileType;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'file_type': ?fileType?.toTfJson(),
  };
}

/// Typed helper for the `shielded_instance_initial_state.keks` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageKeks {
  const ComputeImageKeks({required this.content, this.fileType});

  final TfArg<String> content;

  final TfArg<String>? fileType;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'file_type': ?fileType?.toTfJson(),
  };
}

/// Typed helper for the `shielded_instance_initial_state.pk` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImagePk {
  const ComputeImagePk({required this.content, this.fileType});

  final TfArg<String> content;

  final TfArg<String>? fileType;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'file_type': ?fileType?.toTfJson(),
  };
}

/// Typed helper for the `source_disk_encryption_key` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageSourceDiskEncryptionKey {
  const ComputeImageSourceDiskEncryptionKey({
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

/// Typed helper for the `source_image_encryption_key` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageSourceImageEncryptionKey {
  const ComputeImageSourceImageEncryptionKey({
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

/// Typed helper for the `source_snapshot_encryption_key` block of
/// `google_compute_image` (derived from provider schema).
@immutable
final class ComputeImageSourceSnapshotEncryptionKey {
  const ComputeImageSourceSnapshotEncryptionKey({
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

/// Factory wrapper for `google_compute_image`.
///
/// Represents an Image resource.
///
/// Google Compute Engine uses operating system images to create the root
/// persistent disks for your instances. You specify an image when you create an
/// instance. Images contain a boot loader, an operating system, and a root file
/// system. Linux operating system images are also capable of running containers
/// on Compute Engine.
///
/// Images can be either public or custom.
///
/// Public images are provided and maintained by Google, open-source
/// communities, and third-party vendors. By default, all projects have access
/// to these images and can use them to create instances. Custom images are
/// available only to your project. You can create a custom image from root
/// persistent disks and other images. Then, use the custom image to create an
/// instance.
///
/// An Image must have exactly one [ComputeImageSource]:
/// [ComputeImageSourceDisk], [ComputeImageSourceImage],
/// [ComputeImageSourceSnapshot], or [ComputeImageSourceRawDisk] (a tarball
/// imported from Cloud Storage).
///
/// Prefer [ComputeImageSourceSnapshot] when promoting a PD Snapshot into a
/// reusable image; use [ComputeImageSourceDisk] for a live disk.
final class GoogleComputeImage extends Resource {
  static const String tfType = 'google_compute_image';

  GoogleComputeImage({
    required super.localName,
    required TfArg<String> name,
    required ComputeImageSource source,
    TfArg<String>? description,
    TfArg<String>? family,
    TfArg<Map<String, String>>? labels,
    TfArg<List<String>>? licenses,
    TfArg<List<String>>? storageLocations,
    TfArg<num>? diskSizeGb,
    TfArg<String>? deletionPolicy,
    List<ComputeImageGuestOsFeatures>? guestOsFeatures,
    ComputeImageParams? params,
    ComputeImageShieldedInstanceInitialState? shieldedInstanceInitialState,
    TfArg<String>? project,
    ComputeImageEncryptionKey? imageEncryptionKey,
    ComputeImageSourceDiskEncryptionKey? sourceDiskEncryptionKey,
    ComputeImageSourceImageEncryptionKey? sourceImageEncryptionKey,
    ComputeImageSourceSnapshotEncryptionKey? sourceSnapshotEncryptionKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'description': ?description,
           'family': ?family,
           'labels': ?labels,
           'licenses': ?licenses,
           'storage_locations': ?storageLocations,
           'disk_size_gb': ?diskSizeGb,
           'deletion_policy': ?deletionPolicy,
           if (guestOsFeatures != null)
             'guest_os_features': TfArg.literal([
               for (final e in guestOsFeatures) e.encode(),
             ]),
           if (params != null) 'params': TfArg.literal(params.encode()),
           if (shieldedInstanceInitialState != null)
             'shielded_instance_initial_state': TfArg.literal(
               shieldedInstanceInitialState.encode(),
             ),
           'project': ?project,
           source.blockKey: source.value,
           if (imageEncryptionKey != null)
             'image_encryption_key': TfArg.literal(imageEncryptionKey.encode()),
           if (sourceDiskEncryptionKey != null)
             'source_disk_encryption_key': TfArg.literal(
               sourceDiskEncryptionKey.encode(),
             ),
           if (sourceImageEncryptionKey != null)
             'source_image_encryption_key': TfArg.literal(
               sourceImageEncryptionKey.encode(),
             ),
           if (sourceSnapshotEncryptionKey != null)
             'source_snapshot_encryption_key': TfArg.literal(
               sourceSnapshotEncryptionKey.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeImageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeImage>`.
  RefTo<GoogleComputeImage> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `archive_size_bytes` attribute.
  TfRef<num> get archiveSizeBytes =>
      TfRef.attribute<num>(this, 'archive_size_bytes');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGbRef => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `family` attribute.
  TfRef<String> get familyRef => TfRef.attribute<String>(this, 'family');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `licenses` attribute.
  TfRef<List<String>> get licensesRef =>
      TfRef.attribute<List<String>>(this, 'licenses');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `source_disk` attribute.
  TfRef<String> get sourceDiskRef =>
      TfRef.attribute<String>(this, 'source_disk');

  /// Reference to `source_image` attribute.
  TfRef<String> get sourceImageRef =>
      TfRef.attribute<String>(this, 'source_image');

  /// Reference to `source_snapshot` attribute.
  TfRef<String> get sourceSnapshotRef =>
      TfRef.attribute<String>(this, 'source_snapshot');

  /// Reference to `storage_locations` attribute.
  TfRef<List<String>> get storageLocationsRef =>
      TfRef.attribute<List<String>>(this, 'storage_locations');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
