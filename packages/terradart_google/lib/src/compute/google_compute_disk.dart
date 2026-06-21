// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

/// Factory wrapper for `google_compute_disk`.
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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (zone != null) 'zone': zone,
           if (type != null) 'type': type,
           if (size != null) 'size': size,
           if (image != null) 'image': image,
           if (snapshot != null) 'snapshot': snapshot,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (guestOsFeatures != null)
             'guest_os_features': TfArg.literal(
               guestOsFeatures.map((f) => f.toArgMap()).toList(),
             ),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeDiskSensitive;

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
